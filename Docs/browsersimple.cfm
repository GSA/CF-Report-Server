<!--- BrowserSimple - Simple Browser Detection

Author: Albert Popkov (dynamite@artq.com)
		Quantum Art,Inc (http://www.artq.com)

Date: Apr 21 1999 (last updated on Dec 10 1999)

Purpose:  Quite easily looks at the user agent string, and decide the browser type.
		
Parameter: user_agent (optional, by default #cgi.http_user_agent#) = HTTP USER-AGENT 
					string returned by browser.

Returns: browserName = MSIE, Netscape or Unknown
		 browserVersion = browser version  --->

======================
Sample code:
======================
<cfapplication name="sampleBrowserSimple" sessionmanagement="Yes">
<cfsetting enablecfoutputonly="Yes">
<cfparam name="session.browserName" default="">
<cfif not Len(session.browserName)>
	<cf_BrowserSimple>
	<cfset session.browserName=browserName>
	<cfset session.browserVersion=browserVersion>
</cfif>
<cfif ((not CompareNoCase(session.browserName,"MSIE")) and (session.browserVersion gte 4))>
<cfhtmlhead text="#chr(60)#style#chr(62)#
table { font-size: 8pt; font-family: Tahoma,tahoma,""ms sans serif"",Arial,sans-serif;
  background-color: ##FFFFFF; border: black 1px solid; width=150; spacing: 1; }
td { padding: 4px; background-color: ##CCCCCC;}
#chr(60)#/style#chr(62)# ">
<cfoutput><table><tr><td></cfoutput>
<cfelse>
<cfoutput><table width=150 bgcolor=##000000 cellspacing="1" cellpadding="0" border="0"><tr><td>
<table width=100% bgcolor=##FFFFFF cellspacing="1" cellpadding="0" border="0"><tr><td>
<table width=100% bgcolor=##CCCCCC cellspacing="1" cellpadding="2"><tr><td>
<font size="-2" face="Tahoma,tahoma,ms sans serif,Arial,sans-serif"></cfoutput>
</cfif>

<cfoutput>
Simple bordered table
<br><b>User Agent:</b> #cgi.http_user_agent#
<br><b>Browser:</b> #session.browserName# 
<br><b>Version:</b> #session.browserVersion#
</cfoutput>

<cfif ((not CompareNoCase(session.browserName,"MSIE")) and (session.browserVersion gte 4))>
<cfoutput></td></tr></table></cfoutput>
<cfelse>
<cfoutput></font></td></tr></table></td></tr></table></td></tr></table></cfoutput>
</cfif>

======================
Notes:
======================
This file can be used either as custom tag, or module, or with cfinclude

For more information about browser detection technique used in this file look at
http://msdn.microsoft.com/library/partbook/asptech/summaryofbrowserdetectiontechniques.htm

Happy coding,
Altr (ICQ 2266297).
======================================================================================== --->

<cfparam name="attributes.user_agent" default="#cgi.http_user_agent#">
<cfscript>
attributes.browserName="Unknown";
attributes.browserVersion="0";
if (Len(attributes.user_agent)) {
	if (Find("MSIE",attributes.user_agent)) { // it's a Microsoft browser
		attributes.browserName="MSIE";
		attributes.browserVersion=Val(RemoveChars(attributes.user_agent,1,Find("MSIE",attributes.user_agent)+4));
	}
	else {
		if (Find("Mozilla",attributes.user_agent)) { // it's a Netscape compatible browser
			if (not Find("compatible",attributes.user_agent)) { // its probably a Netscape browser
				attributes.browserName="Netscape";
				attributes.browserVersion=Val(RemoveChars(attributes.user_agent,1,Find("/",attributes.user_agent)));
			}
			else {
				attributes.browserName="compatible";	// not Netscape
			}
		}
		if (Find("ColdFusion",attributes.user_agent)) { // Customisation sample - detection of Colf Fusion Scheduler or CFHTTP tag
			attributes.browserName="ColdFusion";
		}
	}
}
// for using as tag or module
caller.browserName=attributes.browserName;
caller.browserVersion=attributes.browserVersion;
</cfscript>
<!--- Debugging code, uncomment it if you're having any troubles --->
<!---
<cfoutput><hr><b>User Agent:</b> #attributes.user_agent# <b>Browser:</b> #caller.browserName# <b>Version:</b> #caller.browserVersion#<hr></cfoutput>
--->
