<cfcomponent displayname="ENT Active Directory Login Service" hint="Web
service used to validate a login against the ENT domain.">
		 <cffunction name="remoteLogin" access="remote" output="true" returntype="query">
  		 		 <cfargument name="login" type="string" required="yes" hint="The user's username." />
  		 		 <cfargument name="password" type="string" required="yes" hint="The user's password." />

<!--- Creates a query with the following columns. --->
<cfset userAuthenticated = QueryNew("authenticated,firstname,lastname,login") />
		 		 <cfset newRow = QueryAddRow(userAuthenticated)>
		 		 <cfset temp = QuerySetCell(userAuthenticated, "authenticated", "false", 1) />
		 		 <cfset temp = QuerySetCell(userAuthenticated, "firstname", "", 1) />
		 		 <cfset temp = QuerySetCell(userAuthenticated, "lastname", "", 1) />
		 		 <cfset temp = QuerySetCell(userAuthenticated, "login", "", 1) />		 

<cftry>
  <cfldap action="query"
		 name="validatedUser"
		 attributes="sAMAccountName,sn,givenname"
		 start="dc=ENT,dc=DS,dc=GSA,dc=GOV"
		 scope="SUBTREE"
		 server="192.168.113.6"
		 port="389"
		 timeout="60"
		 filter="sAMAccountName=#arguments.login#"
		 username="ENT\#arguments.login#"
		 password="#arguments.password#"
		 rebind="Yes"
  />

<!--- Populate the query 'userAuthenticated' to return the results of the CFLDAP query. --->
  		 <cfif validatedUser.samaccountname NEQ "">
		 		 <cfset newRow = QueryAddRow(userAuthenticated) />
		 		 <cfset temp = QuerySetCell(userAuthenticated, "authenticated", "true", 1) />
		 		 <cfset temp = QuerySetCell(userAuthenticated, "firstname", validatedUser.givenname, 1) />
		 		 <cfset temp = QuerySetCell(userAuthenticated, "lastname", validatedUser.sn, 1) />
		 		 <cfset temp = QuerySetCell(userAuthenticated, "login", validatedUser.sAMAccountName, 1) />
		 </cfif>

<!--- If authentication fails, catch the error and return a blank recordset. --->
		 <cfcatch type="any">
		 <cfset x="failed">
		 </cfcatch>
</cftry>

<cfreturn userAuthenticated />

		 </cffunction>
</cfcomponent>

<!--- <cfcomponent displayname="ENT Active Directory Login Service" hint="Web service used to validate a login against the ENT domains.">
	<cffunction name="remoteLogin" access="remote" output="true" returntype="any">
  		<cfargument name="login" type="any" required="yes" hint="The user's username." />
  		<cfargument name="password" type="any" required="yes" hint="The user's password." />

<!--- Creates a query with the following columns. --->
<cfset userAuthenticated = QueryNew("authenticated,firstname,lastname,login") />

<cftry>
  <cfldap action="query"
	name="validatedUser"
	attributes="sAMAccountName,sn,givenname"
	start="dc=ENT,dc=DS,dc=GSA,dc=GOV"
	scope="SUBTREE"
	server="ent.ds.gsa.gov"
	port="389"
	timeout="60"
	filter="sAMAccountName=#arguments.login#"
	username="ENT\#arguments.login#"
	password="#arguments.password#"
	rebind="Yes"
  />

<!--- Populate the query 'userAuthenticated' to return the results of the CFLDAP query. --->
  	<cfif validatedUser.samaccountname NEQ "">
		<cfset newRow = QueryAddRow(userAuthenticated) />
		<cfset temp = QuerySetCell(userAuthenticated, "authenticated", "true", 1) />
		<cfset temp = QuerySetCell(userAuthenticated, "firstname", validatedUser.givenname, 1) />
		<cfset temp = QuerySetCell(userAuthenticated, "lastname", validatedUser.sn, 1) />
		<cfset temp = QuerySetCell(userAuthenticated, "login", validatedUser.sAMAccountName, 1) />
	</cfif>

<!--- If authentication fails, catch the error and return a blank record set. --->
	<cfcatch type="any">
		<cfset newRow = QueryAddRow(userAuthenticated)>
		<cfset temp = QuerySetCell(userAuthenticated, "authenticated", "false", 1) />
		<cfset temp = QuerySetCell(userAuthenticated, "firstname", "", 1) />
		<cfset temp = QuerySetCell(userAuthenticated, "lastname", "", 1) />
		<cfset temp = QuerySetCell(userAuthenticated, "login", "", 1) />	
	</cfcatch>
</cftry>

<cfreturn userAuthenticated />

	</cffunction>
</cfcomponent>
 --->