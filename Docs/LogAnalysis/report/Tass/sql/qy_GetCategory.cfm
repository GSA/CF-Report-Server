<cfquery name="qy_GetCategory" datasource="OnlineReports" cachedwithin="#delaytime#">
	select	* from tassReportName
	where 	catagorycode LIKE 'T'
	order by ReptFileName
</cfquery> 