<cfquery name="qy_GetCategory" datasource="OnlineReports" cachedwithin="#delaytime#">
	select tier, reptfreqcode as reportfreq, reportname, reptfilename 
	from FLreportname	
	order by tier, reptfreqcode, reptfilename
</cfquery> 