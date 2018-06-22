<cfquery name="qy_GetReport" datasource="OnlineReports" cachedwithin="#delaytime#">
	select	* from TassReportName
	order by ReptFileName
</cfquery> 