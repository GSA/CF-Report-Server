<cfquery name="qy_GetCategoryName" datasource="OnlineReports">
	select	ReportName, ReportFreq from TassReportName
	where ReptFileName like '#trim(form.reportfile)#'
	and 	catagorycode LIKE 'T'
</cfquery> 
