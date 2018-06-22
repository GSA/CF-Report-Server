<cfquery name="qy_GetRegion" datasource="OnlineReports" cachedwithin="#delaytime#">
	select 		RecordNo, RegionName, RegionNo
	from 		Region
	order by 	RegionNo
</cfquery> 