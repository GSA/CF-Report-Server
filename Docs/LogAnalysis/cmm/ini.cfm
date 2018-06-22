<!--- Initialize local variables --->
<cfparam name="client.display_system" default="">
<cfparam name="client.category" default="">
<cfparam name="client.RegionCode" default="">
<cfparam name="client.ReptFreqCode" default="">
<cfparam name="client.ReptRegion" default="">
<cfparam name="client.reportfile" default="">
<cfparam name="client.month_selected" default="#month(now())#">
<cfparam name="client.year_selected" default="#year(now())#">
<cfparam name="client.reportLevel" default="">
<cfparam name="client.region" default="">
<cfparam name="client.regionstore" default="">

<!--- NGL:: Set category selected in session as a client variable --->
<cfif IsDefined("form.ReportCatagory") and len(trim(form.ReportCatagory)) gt 0>
<cfset StructDelete(client, "ReportCatagory")>
<cfset client.category = "#form.ReportCatagory#">
<cfelseif IsDefined("client.RegionCode") and len(trim(client.RegionCode)) gt 0>
<cfset client.category = "#client.category#">
</cfif>
<!--- NGL:: Set Region selected in session as a client variable --->
<cfif IsDefined("form.RegionCode") and len(trim(form.RegionCode)) gt 0>
<cfset StructDelete(client, "RegionCode")>
<cfset client.RegionCode = "#form.RegionCode#">
<cfelseif IsDefined("client.RegionCode") and len(trim(client.RegionCode)) gt 0>
<cfset client.RegionCode = "#client.RegionCode#">
</cfif>
<!--- NGL:: Set category selected in session as a client variable --->
<cfif IsDefined("form.ReptFreqCode") and len(trim(form.ReptFreqCode)) gt 0>
<cfset StructDelete(client, "ReptFreqCode")>
<cfset client.ReptFreqCode = "#form.ReptFreqCode#">
<cfelseif IsDefined("client.ReptFreqCode") and len(trim(client.ReptFreqCode)) gt 0>
<cfset client.ReptFreqCode = "#client.ReptFreqCode#">
</cfif>
<!--- NGL:: Set Region selected in session as a client variable --->
<cfif IsDefined("form.ReptRegion") and len(trim(form.ReptRegion)) gt 0>
<cfset client.ReptRegion = "#form.ReptRegion#">
<cfelseif IsDefined("client.ReptRegion") and len(trim(client.ReptRegion)) gt 0>
<cfset client.ReptRegion = "#client.ReptRegion#">
</cfif>
<!--- NGL:: Set Report file selected in session as a client variable --->
<cfif IsDefined("form.reportfile") and len(trim(form.reportfile)) gt 0>
<cfset StructDelete(client, "reportfile")>
<cfset client.reportfile = "#form.reportfile#">
<cfelseif IsDefined("client.reportfile") and len(trim(client.reportfile)) gt 0>
<cfset client.reportfile = "#client.reportfile#">
</cfif>
<!--- NGL:: Set Month selected in session as a client variable --->
<cfif IsDefined("form.month_selected") and form.month_selected gt 0>
<cfset StructDelete(client, "month_selected")>
<cfset client.month_selected = #form.month_selected#>
<cfelseif IsDefined("client.month_selected") and client.month_selected gt 0>
<cfset client.month_selected = #client.month_selected#>
<cfelse>
<cfset client.month_selected = #month(now())#>
</cfif>
<!--- NGL:: Set Month selected in session as a client variable --->
<cfif IsDefined("form.year_selected") and form.year_selected gt 0>
<cfset StructDelete(client, "year_selected")>
<cfset client.year_selected = #form.year_selected#>
<cfelseif IsDefined("client.year_selected") and len(client.year_selected) gt 0>
<cfset client.year_selected = #client.year_selected#>
<cfelse>
<cfset client.year_selected = #year(now())#>
</cfif>
<!--- NGL:: Set Report Level selected in session as a client variable --->
<cfif IsDefined("form.reportLevel") and len(trim(form.reportLevel)) gt 0>
<cfset StructDelete(client, "reportLevel")>
<cfset client.reportLevel = "#form.reportLevel#">
<cfelseif IsDefined("client.reportLevel") and client.reportLevel gt 0>
<cfset client.reportLevel = "#client.reportLevel#">
</cfif>

<!--- NGL:: Set Report Level selected in session as a client variable --->
<cfif IsDefined("form.region") and len(trim(form.region)) gt 0>
<cfset StructDelete(client, "region")>
<cfset client.region = "#form.region#">
<cfelseif IsDefined("client.region") and client.region gt 0>
<cfset client.region = "#client.region#">
</cfif>
<!--- NGL:: Set Report Level selected in session as a client variable --->
<cfif IsDefined("form.regionstore") and len(trim(form.regionstore)) gt 0>
<cfset StructDelete(client, "regionstore")>
<cfset client.regionstore = "#form.regionstore#">
<cfelseif IsDefined("client.regionstore") and client.regionstore gt 0>
<cfset client.regionstore = "#client.regionstore#">
</cfif>

<!--- NGL:: BEGIN:: Handles display of report navigation bar  --->
<cfif IsDefined("url.report") and len(trim(url.report)) gt 0>
<cfset client.display_system = "#url.report#">
</cfif>
