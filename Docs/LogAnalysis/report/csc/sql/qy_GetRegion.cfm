<cfquery name="qy_GetRegion" datasource="OnlineReports">
	SELECT DISTINCT(country) AS region
	FROM CSCStores
	ORDER BY (country) DESC
</cfquery> 