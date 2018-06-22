<cfquery name="qy_GetReport" datasource="OnlineReports" cachedwithin="#delaytime#">
	select	* from sasyReportName
	order by ReptFileName
</cfquery> 