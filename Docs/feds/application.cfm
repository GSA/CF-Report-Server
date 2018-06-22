<cfinclude template="../application.cfm">

<cfparam name="client.ReptYear" default="#Year(Now())#">
<cfparam name="client.ReptRegion" default="02">
<cfparam name="session.ReptRegion" default="02">
<cfparam name="client.ReptFreq" default="daily">

<CFSET session.ReptYear = "#client.ReptYear#">
<CFSET session.RegionCode = "#session.ReptRegion#">
<CFSET session.ReportCatagory = "#client.ReptFreq#">


<CFSET ReportDir = 'FEDS'>
