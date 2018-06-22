<cfquery name="qy_GetRegionSelected" datasource="OnlineReports">
	select RegionCode, RegionName, Type
	from Fss19Region
	where type IN('l', 'p')
	and RegionCode LIKE '#client.RegionCode#'
</cfquery> 