<cfquery name="qy_GetReport" datasource="OnlineReports" cachedwithin="#delaytime#">
	select	* from FEDS23ReportName
	where ReptFreqCode LIKE '#trim(form.ReptFreqCode)#'
	order by ReptFileName
</cfquery> 