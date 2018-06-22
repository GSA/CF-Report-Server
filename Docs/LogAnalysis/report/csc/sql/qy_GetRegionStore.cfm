<cfquery name="qy_GetRegionStore" datasource="OnlineReports">
	select country, storename, storeid, storenumber
	from CSCStores
	where country like '#trim(qy_GetRegion.region)#'
	order by country, storename
</cfquery> 