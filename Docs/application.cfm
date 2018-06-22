<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfapplication name="FedReports" clientmanagement="Yes"
               sessionmanagement="Yes"
			   setclientcookies="Yes"
               sessiontimeout="#CreateTimeSpan(0, 8, 0, 0)#"
               clientstorage="registry">
<CFSET Session.po = 'FIA'>
<CFSET Session.HistoryDate = "2010/366">
<cfparam name="session.browserName" default="">
<cfif not Len(session.browserName)>
	<cf_BrowserTest>
	<cfset session.browserName=browserName>
	<cfset session.browserVersion=browserVersion>
</cfif>

<cfif Not IsDefined("session.reptyear")>	
	<cfset session.ReptYear = "#Year(Now())#">
</cfif>


<CFSET ServerURL = "http://159.142.4.59/">
<CFINCLUDE template="/_includes/basic.css">


