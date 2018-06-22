<!--- Clear all info on session variables --->
<cfset StructDelete(Session, "directory")>
<cfset StructDelete(Session, "linkurl")>

<cfset ReportDir = "fl_financial">

<!--- NGL: Determine the day of the year --->
<!--- NGL:: Make sure that we have the date selected by the user --->
<cfif IsDefined("form.year_selected")><cfset session.year = form.year_selected><cfelse><cfset year = session.year></cfif>
<cfif IsDefined("form.month_selected")><cfset session.month = form.month_selected><cfelse><cfset month = session.month></cfif>

<cfset RootURL = #ServerUrl# & #ReportDir# & "/">
<cfset session.level = "tier1">

<cfif IsDefined("session.month")>
	<!--- NGL:: BEGIN:: Format month properly for report retreival --->
	<cfif session.month lt 10>
		<cfset Month2 = "0" & session.month>
	<cfelse>
		<cfset Month2 = session.month>
	</cfif>
	<!--- NGL:: END:: Format month properly for report retreival --->
</cfif>
<cfif IsDefined("session.year")>
	<!--- NGL:: BEGIN:: Format Year properly for report retreival --->
	<cfset ReptYear = session.year>
	<!--- NGL:: END:: Format Year properly for report retreival --->
</cfif>
<!--- REAL ONE:::  ---><cfset RootDir = "d:\reports\docs\#ReportDir#\">
<!--- LOCAL ONE::: <cfset RootDir = "c:\cfusionmx7\wwwroot\my_test_environment\onlinereport\report\#ReportDir#\">--->


<cfset session.directory = #RootDir# & "#ReptYear#" & "\">
<cfset session.linkurl = #RootURL# & "#ReptYear#" & "/">
<!--- Initialize number of result returned --->
<cfparam name="nbr_report_result" default="0" type="numeric">
<cfset nbr_report_result = 0>

<!--- NGL:: BEGIN:: Determine which report to display --->
<cfif form.reportlevel eq 1><!--- Tier 1 --->
	<cfquery name="qy_GetReportTier" datasource="OnLineReports">
		select	ReptFileName from FLreportname
		Where tier  = <cfqueryPARAM value = "#form.reportlevel#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfloop query="qy_GetReportTier">
		<cfset compdate = month2 & qy_GetReportTier.ReptFileName>
		<cfdirectory action="list" directory="#session.directory#" name="contents" filter="#compdate#*.xls" sort="name">
		<!--- NGL:: Counter increment --->
		<cfif contents.recordcount gt 0>
			<cfset nbr_report_result = nbr_report_result + contents.recordcount>
		</cfif>	
	</cfloop>
<cfelseif form.reportlevel eq 2><!--- Tier 2 --->
	<cfquery name="qy_GetReportTier" datasource="OnLineReports">
		select	ReptFileName from FLreportname
		Where tier  = <cfqueryPARAM value = "#form.reportlevel#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfloop query="qy_GetReportTier">
		<cfset compdate = month2 & qy_GetReportTier.ReptFileName>
		<cfdirectory action="list" directory="#session.directory#" name="contents" filter="#compdate#*.xls" sort="name">
		<!--- NGL:: Counter increment --->
		<cfif contents.recordcount gt 0>
			<cfset nbr_report_result = nbr_report_result + contents.recordcount>
		</cfif>	
	</cfloop>
<cfelseif form.reportlevel eq 3><!--- Tier 3 --->
	<cfquery name="qy_GetReportTier" datasource="OnLineReports">
		select	ReptFileName from FLreportname
		Where tier  = <cfqueryPARAM value = "#form.reportlevel#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfloop query="qy_GetReportTier">
		<cfset compdate = month2 & qy_GetReportTier.ReptFileName>
		<cfdirectory action="list" directory="#session.directory#" name="contents" filter="#compdate#*.xls" sort="name">
		<!--- NGL:: Counter increment --->
		<cfif contents.recordcount gt 0>
			<cfset nbr_report_result = nbr_report_result + contents.recordcount>
		</cfif>	
	</cfloop>
</cfif>
<!--- NGL:: END:: Determine which report to display --->