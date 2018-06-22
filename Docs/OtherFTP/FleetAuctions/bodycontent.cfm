<cfif not thistag.HasEndTag>
	<cfset thistag.generatedcontent="">
	You must have an end Tag
	<cfabort>
</cfif>

<cfparam name="request.headerfile" default="">
<cfparam name="request.footerfile" default="">
<cfparam name="request.useapplayout" default="no">
<cfparam name="attributes.showbody" default="yes">
<cfparam name="attributes.name" default="bodycontent">


<cfif thistag.executionmode is "end">
	<cfset "request.#attributes.name#"=thistag.generatedcontent>
	<cfif request.useapplayout>
	 	<cfif len(request.headerfile)><cfinclude template="#request.headerfile#"></cfif>
	 	<cfif attributes.showbody><cfoutput>#thistag.generatedcontent#</cfoutput></cfif>
	 	<cfif len(request.footerfile)><cfinclude template="#request.footerfile#"></cfif>
	</cfif>
	<cfset thistag.generatedcontent="">
</cfif>