<cfquery name="qy_GetCategory" datasource="OnlineReports" cachedwithin="#delaytime#">
	select	* from CSCReportName
	order by ReptFileName
</cfquery> 