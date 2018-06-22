<cfquery name="qy_GetReport" datasource="OnlineReports" cachedwithin="#delaytime#">
	select		reptfreqcode as reportfreq, reportname, reptfilename 
	from 		FMSreportname
	where 		ReptFreqCode LIKE '#trim(form.ReptFreqCode)#'	
	order by 	reptfreqcode, reptfilename
</cfquery> 