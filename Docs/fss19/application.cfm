<cfinclude template="../application.cfm">

<cfparam name="client.ReptYear" default="#Year(Now())#">
<cfparam name="client.RegionCode" default="a">
<cfparam name="client.ReportCatagory" default="im">

<cfparam name="session.ReportCatagory" default="im">
<cfparam name="session.RegionCode" default="a">

<CFSET session.ReptYear = "#client.ReptYear#">

<CFSET ReportDir = 'FSS19'>
