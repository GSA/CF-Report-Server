<cfquery name="qy_GetCategory" datasource="OnlineReports" cachedwithin="#delaytime#">
	select id, ReptFreqCode, ReportName, ReptFileName
	from FEDS23ReportName
	order by ReportName
</cfquery> 