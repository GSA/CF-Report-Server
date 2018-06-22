<cfquery name="qy_GetCategory" datasource="OnlineReports" cachedwithin="#delaytime#">
	select		reptfreqcode, reportname, reptfilename 
	from 		FMSreportname	
	order by 	reptfreqcode, reptfilename
</cfquery> 