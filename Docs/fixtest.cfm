<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<cfquery name="fixtest" datasource="onlinereports">
select * from test
</cfquery>
<cfoutput query="fixtest">

<cfset key = '#left(description, 8)#'>
<cfset desc = '#removechars(description, 1, 8)#'>
<cfset desc = '#replace(desc, "FMC", "")#'>
<cfquery name="updtest" datasource="onlinereports">
	update test
	set fmccode = '#key#',
		description = '#desc#'
	where id = #fixtest.id#
</cfquery>

</cfoutput>