<cfquery name="qy_GetRegion" datasource="OnlineReports">
	select RecordNo, RegionName, RegionNo
	from Region
	order by RegionNo
</cfquery> 