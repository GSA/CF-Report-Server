<cfquery name="qy_GetReport" datasource="OnlineReports" cachedwithin="#delaytime#">
	select	* from TassReportName
	where catagorycode = 'A'
	order by ReptFileName
</cfquery> 