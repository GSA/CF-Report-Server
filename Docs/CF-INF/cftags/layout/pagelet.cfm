<cfif compareNoCase(thisTag.executionMode,"start") eq 0>
	<cfsilent>
	<!--- 
		Template: pagelet.cfm
		Author:  	Benoit Hediard (ben@benorama.com)
		Creation date:		
			21/09/2000 
		LastUpdate date:
			16/10/2002 by Ryan Wood (ryan@sourcescape.com)
				added caching feature (timeout, dateTo, dateFrom) 
			24/05/2003 by Benoit Hediard
				code optimisation
			20/06/2004 by Ryan Williams
				CFMX compatibility/optimization
		Description:
			Insert a pagelet 
			
		Usage:
	
			<layout:pagelet 
				name = "..."
				parameters = "..."
				outputType = "..."
				useCache = "true|false" 
				cacheTimeout = "timespan"
				cacheDateTo = "date"
				cacheDateFrom = "date"
				cacheToken = "...">
	
	 --->
	
	<cfparam name="attributes.name" type="string">
	<cfif isDefined("attributes.parameters")>
		<cfparam name="attributes.parameters" type="struct">
	</cfif>
	<cfparam name="attributes.outputType" type="string" default="html">
	<cfparam name="attributes.useCache" type="boolean" default="false">
	<cfif attributes.useCache>
		<cfset today = now()>
		<cfparam name="attributes.cacheTimeout" type="numeric" default="0">
		<cfparam name="attributes.cacheDateFrom" type="string" default="">
		<cfparam name="attributes.cacheDateTo" type="string" default="">
		<cfparam name="attributes.cacheToken" type="string" default="">
	</cfif>
	
	<cfset pageletURL = replace(attributes.name,".","/","ALL") & ".cfm">
	<cfset doCacheExists = false>
	<cfset doRefreshCache = false>
	<cfif attributes.useCache>
		<cfset cacheName = replace(attributes.name,".",application.os.separator,"ALL")>
		<cfset cacheFilePath = application.physicalPaths.CFCACHE & application.os.separator & cacheName & attributes.cacheToken & "." & attributes.outputType>
		<cfset cacheFileURL = application.virtualPaths.CFCACHE & application.os.separator & cacheName  & attributes.cacheToken & "." & attributes.outputType>
		<cfif fileExists(cacheFilePath)>
			<cfset doCacheExists = true>
			<!--- get lastRefreshed date --->
			<cfset fileName = listLast(cacheFilePath, application.os.separator)>
			<cfset directory = mid(cacheFilePath, 1, find(fileName, cacheFilePath)-2)>
			<cfdirectory action="list" directory="#directory#" name="file"	filter="#fileName#">
			<cfset lastRefreshed = file.dateLastModified>
			
			<cfif attributes.cacheTimeout gt 0>
				<cfset expireDate = lastRefreshed + attributes.cacheTimeout>
				<cfif dateCompare(now(),expireDate) is 1>
					<cfset doRefreshCache = true>
				</cfif>
			</cfif>
			
			<cfif isDate(attributes.cacheDateFrom)>
				<cfif dateCompare(lastRefreshed, attributes.cacheDateFrom) is -1>
					<cfset doRefreshCache = true>
				</cfif>
			</cfif>	
				
			<cfif isDate(attributes.cacheDateTo)>
				<cfif dateCompare(lastRefreshed, attributes.cacheDateTo) is 1>
					<cfset doRefreshCache = true>
				</cfif>
			</cfif>				
		</cfif>
	</cfif>
	
	<cfif not attributes.useCache or not doCacheExists or doRefreshCache>
		
		<!--- Execute pagelet --->
		<cfsavecontent variable="pageletContent">
			<cfif isDefined("attributes.parameters")>
				<cfmodule template="#application.virtualPaths.CFPAGELETS#/#pageletURL#" parameters="#attributes.parameters#" outputType="#attributes.outputType#">
			<cfelse>
				<cfmodule template="#application.virtualPaths.CFPAGELETS#/#pageletURL#" outputType="#attributes.outputType#">
			</cfif>
		</cfsavecontent>
		
		<cfif attributes.useCache>
			<!--- Write content to pagelet cache --->
			<cflock name="#attributes.name#_cache" timeout="10" type="exclusive">
				<cffile action="write" file="#cacheFilePath#" output="#pageletContent#">
			</cflock>
		</cfif>
	</cfif>
	</cfsilent>
	
	<!--- Output pagelet content --->
	<cfif doCacheExists>
		<cfinclude template="#cacheFileURL#">
	<cfelse>
		<cfoutput>#pageletContent#</cfoutput>
	</cfif>
	
</cfif>

