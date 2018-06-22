<cfquery name="qy_GetCategoryName" datasource="OnlineReports">
	select	ReportName, ReportFreq from sasyReportName
	where ReptFileName like '#trim(form.reportfile)#'
</cfquery> 
