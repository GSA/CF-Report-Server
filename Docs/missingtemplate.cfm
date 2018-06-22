<!--- <cfquery name="CheckURL" datasource="GlobalSettings">
	Select *
	FROM URLRedirects
	WHERE OrigFilePath = '#Path_Translated#'
</cfquery>

<CFIF CheckURL.recordcount is 0> --->
	
		<cfmail to="webpage.errors@gsa.gov" from="webpage.errors@gsa.gov" subject="Missing Page" type="HTML">
		The page #Script_Name# <br>
		on Server #Server_Name#
		located at #path_Translated# is missing from the server.<br>
		<CFIF IsDefined("http_referer")>
			The Referring page is: <em>#http_referer#</em>
		<CFELSE>
			The page was a direct reference	
		</cfif>
		<br>
		Time occurred #now()#
		</cfmail> 

		<html>
		<head>
		<title>Missing Template</title>
		</head>
		
		<body>
		<IMG SRC="/_images/gsa_logo1.gif" WIDTH="47" HEIGHT="47" HSPACE="10" VSPACE="10" BORDER="0" ALT="GSA">
		  						<IMG SRC="/_images/federalSupplyServicesmall.jpg" BORDER="0" ALT="Federal Supply Service"><br>
		<img src="/_images/newflagmain.gif" border="0" alt="FLAG" width="770" height="55"><br>
		<Table border="1">
		<tr><td><cfoutput><H2>The page you requested <i>#Script_Name#</i> on Server <i>#Server_Name#</i><br> is no longer available. The webmanster has been notified of this situation.<br>
		Thank you!  You may return to the main page by clicking here: <A href="index.cfm">Home</a>
		
		</cfoutput></H2></td></tr>
		</table> 
		</body>
		</html>
<!--- <CFELSE>
	<CFLOCATION url="#Checkurl.UpdatedURL#" addtoken="Yes">
</CFIF>  --->
