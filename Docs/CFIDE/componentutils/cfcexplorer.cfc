<cfcomponent><cfsetting enablecfoutputonly="yes" showdebugoutput="no">

	<!--- where we store our data in the server scope --->
	<cfset CACHE_ROOT = "cfc">
	<!--- cache time out in minutes --->
	<cfset CACHE_TIMEOUT = 30>
	<!--- do we even use the cache? --->
	<cfset CACHE_ENABLED = TRUE>
	
	<cfinclude template="cfcexplorer_utils.cfm">

	<cffunction name="getComponentRoots" returnType="array" access="remote"
		hint="Returns array of component root directories. Each root directory is specified by its physical path using forward slashes a no trailing slash.">

		<cfscript>
			factory = CreateObject("java", "coldfusion.server.ServiceFactory");
			runtime = factory.getRuntimeService();
			customTagRoots = runtime.getCustomtags();
			mappings = runtime.getMappings() ;
						
			roots = ArrayNew(1) ;
			
			// add first all cf virtual directories in descendent order, this will
			// help preserve resolution precedence
			skipWebroot = false ;
			virtualDirs = StructKeyArray(mappings) ;
			ArraySort( virtualDirs, "TEXTNOCASE", "DESC" ) ;
			for ( i=1; i lte ArrayLen(virtualDirs); i=i+1 ) {
				prefix = NormalizePath( virtualDirs[i] );
				prefix = Replace( prefix, '/', '.', 'ALL' ) ;
				if ( Find( '.', prefix ) eq 1 )
					prefix = RemoveChars( prefix, 1, 1 ) ;
				if ( prefix eq '' and not skipWebroot )
					skipWebroot = true ;
			
				root = StructNew() ;
				root.prefix = prefix  ;
				root.physicalPath = NormalizePath( mappings[virtualDirs[i]] ) ;
				ArrayAppend( roots, root ) ;
			}
			
			// add webroot
			if ( not skipWebroot ) {
				temp = 'abcdefghijklmno.abcdefghijklmno' ; // temporary hack for IIS
				webroot = Replace(expandPath('/' & temp ), temp, '') ;
				root = StructNew() ;
				root.prefix = '' ;
				root.physicalPath = NormalizePath( webroot ) ;
				ArrayAppend( roots, root ) ;			
			}
			
			// get custom tag roots
			installationRoot = Replace( server.coldfusion.rootdir, '\', '/', 'ALL' ) ;
			for ( ctRoot in customTagRoots ) {
				root = StructNew() ;
				root.prefix = '' ;
				// temporary workaround
				root.physicalPath = NormalizePath( 
					Replace( CustomTagRoots[ctRoot], "##server.coldfusion.rootdir##", installationRoot ) ) ;
				ArrayAppend( roots, root ) ;
			}
			return roots ;
		</cfscript>
	</cffunction>
	
	<cffunction name="getcfcs" returnType="array" access="remote"
		hint="Returns array of component metadata structs. Each metadata struct contains: <ul><li>name - full component name</li><li>package - package name</li><li>path - physical path of the component with forward slashes</li><li>cfcroot - physical path of the root under which this component was found (all forward slashes, no trailing slash)</li></ul>">

		<cfargument name="refreshCache" type="boolean" default="no">

		<cfscript>
			
			readFromCache = checkCache("getcfcs") and not refreshCache ;
			if ( readFromCache ) {
				return getCache("getcfcs") ;
			}
			else {
				roots = getComponentRoots() ;

				components = StructNew() ;
				packages = StructNew() ;				
				ignoreShadowedPackages = true ;
				
				for ( i=1; i lte ArrayLen( roots ); i=i+1 ) {

					root = CreateObject( "java", "java.io.File" ) ;
					root.init( roots[i].physicalPath ) ;
					browseForComponents( roots[i].prefix, root, roots[i].physicalPath, ignoreShadowedPackages ) ;

					// toggle the switch once we passed the web root (first root without
					// the package prefix
					if ( ignoreShadowedPackages and roots[i].prefix eq '' )
						ignoreShadowedPackages = false ;

				}
				
				result = ArrayNew(1) ;
				for ( name in components ) {
					ArrayAppend( result, components[name] ) ;
				}
				
				setCache("getcfcs", result) ;
				
				return result ;
			}
		</cfscript>

	</cffunction>
	
	
	<cffunction name="getcfcsinmcdl" returnType="struct" output="false" access="remote"
		hint="Returns associative array (struct) where keys are full component names and values are MCDL documents representing the components.">

		<cfargument name="refreshCache" type="boolean" default="no" />

 		<!--- check to see if we have a cached version --->
		<cfset readCache = checkCache("getcfcsinmcdl") and not refreshcache>
		<cfif readCache>
			<cfset result = getCache("getcfcsinmcdl")>
		<cfelse>
			<cfset mcdl_struct = structNew()>
			<cfset cfcs = getcfcs(refreshCache)>
			<cfloop index="x" from=1 to="#arrayLen(cfcs)#">
				<cfset error = structNew()>
				
				<cftry>
					<cfset mcdl = getcfcinmcdl( cfcs[x].name )>
					<cfcatch>
						<cfset error = cfcatch>
						<cfset mcdl = "">
					</cfcatch>
				</cftry>

				<cfif structIsEmpty(error)>
					<cfset mcdl_struct[cfcs[x].name] = trim(mcdl)>
				<cfelse>
					<cfset tempError = structnew()>
					<cfset tempError.Name = error.message>
					<cfset mcdl_struct[cfcs[x].name] = tempError>
				</cfif>
			
			</cfloop>
			<cfset result = mcdl_struct>
			<cfset setCache("getcfcsinmcdl", result)>
			
		</cfif>
	
		<cfreturn result>

	</cffunction>

	
	
	<cffunction name="getcfcinmcdl" returnType="string" output="no" access="remote"
		hint="Returns MCDL document representing the specified component.">

		<cfargument name="name" type="string" required="yes" />
		
		<cfscript>
			comp = CreateObject( "component", name ) ;
			utils = CreateObject( "component", "utils" ) ;
			return utils.cfcToMCDL(comp) ;
		</cfscript>
	</cffunction>
	
	
	<cffunction name="getcfcinhtml" access="remote"
		hint="Generates html descriptor of a component with the specified name or URI path as the http response.">
		<cfargument name="name" type="string" required="yes" />
		<cfargument name="path" type="string" required="no" />
		
		<cftry>
			<cfscript>
				if ( IsDefined('arguments.path') and arguments.path neq '' ) {
					proxy = CreateObject( "java", "coldfusion.runtime.TemplateProxyFactory" ) ;
					comp = proxy.ResolvePath( arguments.path, getPageContext() ) ;
				} else {
					comp = CreateObject( "component", name ) ;
				}
				
				utils = CreateObject( "component", "utils" ) ;
				WriteOutput( utils.cfcToHTML(comp) ) ;
			</cfscript>
		<cfcatch type="coldfusion.runtime.CfJspPage$NoSuchTemplateException">
			<cfoutput><h4>Component not found</h4>
			The component definition file for component '#name#' cannot be found on this server.</cfoutput>
		</cfcatch>
		</cftry>
	</cffunction>


	<cffunction name="getcfctree" returnType="struct" access="remote"
		hint="Returns associative array (struct) where keys are physical paths for each component root and values are associative arrays of packages found under each root. Each associative array of packages is a struct where keys are package names and values are arrays of short component names belonging to a package.</li></ul>">

		<cfargument name="refreshCache" type="boolean" default="no"  />

		<cfscript>
			tree = StructNew() ;

			cfcs = getcfcs(refreshCache) ;

			roots = getcomponentroots() ;
			for ( i=1; i lte ArrayLen(roots); i=i+1 ) {
				tree[roots[i].physicalPath] = StructNew() ;
			}

			for ( i=1; i lte ArrayLen(cfcs); i=i+1 ) {
				cfc = cfcs[i] ;
				if ( StructKeyExists( tree, cfc.cfcroot ) ) {
					if ( not StructKeyExists( tree[cfc.cfcroot], cfc.package ) ) {
						// add new package to the package struct
						tree[cfc.cfcroot][cfc.package] = ArrayNew(1) ;
					}
					ArrayAppend( tree[cfc.cfcroot][cfc.package], ListLast( cfc.name, '.' ) ) ;
				}
			}
			
			return tree ;
		</cfscript>
		
	</cffunction>
	


	<cffunction name="exists" returnType="boolean" output="no" access="remote"
		hint="Returns true if component with specifed name exists, false otherwise. This method always refreshes the internal cfc cache.">

		<cfargument name="name" type="string" required="yes" />

		<cfscript>
			cfcs = getcfcs(true) ;
		
			for ( i=1; i lte ArrayLen(cfcs); i=i+1 ) {
				if ( cfcs[i].name eq name )
					return true ;
			}
			
			return false ;
		</cfscript>

	</cffunction>

<cfsetting enablecfoutputonly="no"></cfcomponent>