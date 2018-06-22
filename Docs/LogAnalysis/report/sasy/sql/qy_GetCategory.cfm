<cfquery name="qy_GetCategory" datasource="OnlineReports" cachedwithin="#delaytime#">
	select	* from sasyReportName
	order by ReptFileName
</cfquery> 