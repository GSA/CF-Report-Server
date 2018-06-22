<cfquery name="qy_GetRegion" datasource="OnlineReports">
	select RegionCode, RegionName, Type
	from Fss19Region
	where type like 'l' or type like 'p'
	order by RegionCode
</cfquery> 