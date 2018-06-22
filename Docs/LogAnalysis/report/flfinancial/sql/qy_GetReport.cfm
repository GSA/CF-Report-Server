<cfquery name="qy_GetReport" datasource="OnlineReports" cachedwithin="#delaytime#">
	select tier, reptfreqcode as reportfreq, reportname, reptfilename 
	from FLreportname	
	order by tier, reptfreqcode, reptfilename
</cfquery> 