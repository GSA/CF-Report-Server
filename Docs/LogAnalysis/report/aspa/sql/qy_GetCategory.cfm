<cfquery name="qy_GetCategory" datasource="OnlineReports" cachedwithin="#delaytime#">
	select	* from TassReportName
	where catagorycode = 'A'
	order by ReptFileName
</cfquery> 