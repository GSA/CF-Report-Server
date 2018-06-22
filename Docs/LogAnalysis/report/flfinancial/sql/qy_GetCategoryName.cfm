<cfquery name="qy_GetCategoryName" datasource="OnlineReports">
	select tier, reptfreqcode as reportfreq, reportname, reptfilename 
	from FLreportname	
	where ReptFileName like '#trim(form.reportfile)#'
</cfquery> 
