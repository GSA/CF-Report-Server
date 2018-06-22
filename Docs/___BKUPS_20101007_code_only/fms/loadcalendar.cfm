<cfif isdefined("form.month")>
	<cfset url.activemonth = form.month>
	<cfset url.activeYear = form.year>
</cfif>
<cfIf Isdefined("form.modify")>
	<cf_bigcalendar ActiveDay="#url.ActiveDay#" ActiveYear="#url.activeyear#" ActiveMonth="#url.activemonth#">
<cfelse>
	<cf_bigcalendar>
</cfif>