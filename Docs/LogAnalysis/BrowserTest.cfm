
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
