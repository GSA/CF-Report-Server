<cfquery name="qy_GetReport" datasource="OnlineReports" cachedwithin="#delaytime#">
	select	* from CSCReportName
	order by ReptFileName
</cfquery> 