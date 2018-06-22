<cfinclude template="../application.cfm">

<cfparam name="client.ReptYear" default="#Year(Now())#">
<cfparam name="client.RegionCode" default="a">
<cfparam name="client.ReportCatagory" default="im">

<CFSET session.ReptYear = "#client.ReptYear#">
<CFSET session.RegionCode = "#client.RegionCode#">
<CFSET session.ReportCatagory = "#client.ReportCatagory#">

<CFSET ReportDir = 'FSS19'>
