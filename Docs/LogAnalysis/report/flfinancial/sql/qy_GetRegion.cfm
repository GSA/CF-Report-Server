<cfquery name="qy_GetRegion" datasource="OnlineReports">
	select RecordNo, RegionName, RegionNo
	from SasyRegion
	order by RegionNo
</cfquery> 