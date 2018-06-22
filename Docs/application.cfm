<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfapplication name="FedReports" clientmanagement="Yes"
               sessionmanagement="Yes"
			   setclientcookies="Yes"
               sessiontimeout="#CreateTimeSpan(0, 8, 8, 0)#"
               clientstorage="clientvariablesR">

<!---  
<cfif (CGI.https NEQ "on")>
 <cfheader statuscode="301" statustext="Moved permanently" >
<cfheader name="Location" value="https://reports.fas.gsa.gov/#CGI.SCRIPT_NAME#">
</cfif>
  --->

<CFSET Session.po = 'FIA'>
<CFSET Session.HistoryDate = "2016/366">
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
<CFSET ServerURL = "http://Reports.fas.gsa.gov/">
<CFINCLUDE template="/_includes/basic.css">



