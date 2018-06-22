<cfquery name="qy_GetCategory" datasource="OnlineReports">
	select CatagoryCode, CatagoryName
	from Fss19ReportCatagory
	order by CatagoryName
</cfquery> 