<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfapplication name="FedReports" clientmanagement="Yes"
               sessionmanagement="Yes"
			   setclientcookies="Yes"
               sessiontimeout="#CreateTimeSpan(0, 8, 8, 0)#"
               clientstorage="clientvariablesR">

	
<CFSET Session.po = 'FIA'>
<CFSET Session.HistoryDate = "2004/365">
<cfparam name="session.browserName" default="">
<cfif not Len(session.browserName)>
	<cf_BrowserTest>
	<cfset session.browserName=browserName>
	<cfset session.browserVersion=browserVersion>
</cfif>
<cfif Not IsDefined("session.reptyear")>	
	<cfset session.ReptYear = "#Year(Now())#">
</cfif>
<cfset reptyear = "#session.reptyear#">
<CFSET ServerURL = "http://159.142.4.53/">
<CFSET Home = "http://159.142.4.53:85">
<CFINCLUDE template="_includes/basic.css">


<!--- NGL:: Create Cache Time Span for queries --->
<cfset delaytime = CreateTimeSpan(0, 8, 0, 0)>

<!--- NGL:: BEGIN:: Load application.cfm content on fss19 --->
<cfparam name="client.ReptYear" default="#Year(Now())#">
<cfparam name="client.RegionCode" default="a">
<cfparam name="client.ReportCatagory" default="im">

<CFSET session.ReptYear = "#client.ReptYear#">
<CFSET session.RegionCode = "#client.RegionCode#">
<CFSET session.ReportCatagory = "#client.ReportCatagory#">

<CFSET ReportDir = 'FSS19'>
<!--- NGL:: Add Undefined parameter for testing ---> <cfparam name="doy2" default="39"><cfparam name="reptdate" default="">
<!--- NGL:: END:: Load application.cfm content on fss19 --->



