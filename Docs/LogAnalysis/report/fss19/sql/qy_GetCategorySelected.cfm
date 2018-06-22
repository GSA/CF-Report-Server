<cfquery name="qy_GetCategorySelected" datasource="OnlineReports">
	select CatagoryCode, CatagoryName
	from Fss19ReportCatagory
	Where CatagoryCode LIKE '#client.category#'
</cfquery> 