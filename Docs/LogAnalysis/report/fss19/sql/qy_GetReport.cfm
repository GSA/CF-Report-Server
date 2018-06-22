<cfquery name="qy_GetReport" datasource="OnlineReports">
	select	* from fss19reportname
	where catagorycode LIKE '#trim(qy_GetCategory.catagorycode)#' and password is NULL
	order by reptfilename
</cfquery> 