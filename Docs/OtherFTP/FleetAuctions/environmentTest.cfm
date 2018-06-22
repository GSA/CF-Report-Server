<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>environment testing</title>
<link href="an.css" type="text/css">
</head>

<body>

<cfparam name="myHomeURL" default="http://#http_host#/">
	<cfoutput>#myHomeURL#</cfoutput><br><br>

<CFIF FindNoCase(".FAS.", myHomeURL)>
	<CFSET myNewURL = #replaceNoCase(myHomeURL, ".FAS.", ".fss.")#>
	<cfoutput>#myNewURL# --- #CGI.SCRIPT_NAME#<br><br></cfoutput>
</CFIF>



<cfparam name="myHomeDir" default="#Reverse(right(Reverse(path_translated), len(path_translated)-findNoCase("\",Reverse(path_translated),1)))#">

<cfoutput>myHomeURL =#myHomeURL#</cfoutput>&nbsp;<br>
<cfoutput>myHomeDir =#myHomeDir#</cfoutput><br>
<cfoutput>path_translated =#path_translated#</cfoutput>

<!--- Define Location for running environement --->
<cfif left(myHomeDir, 6) eq "D:\Dev" >D:\Dev
	<cfset uploadLocation = "d:\Dev\apps80\farms\upload\">
	<cfset uploadLocationTrap = "d:\Dev\apps80\farms\trap\"> 
<cfelseif left(myHomeDir, 7) eq "D:\Test" >D:\Test
	<cfset uploadLocation = "d:\Test\apps80\farms\upload\">
	<cfset uploadLocationTrap = "d:\Test\apps80\farms\trap\">
<cfelseif left(myHomeDir, 9) eq "D:\apps80" >D:\apps80
	<cfset uploadLocation = "d:\apps80\farms\upload\">
	<cfset uploadLocationTrap = "d:\apps80\farms\trap\">
</cfif>




<p>environment testing</p>
<cfoutput>
#Server.ColdFusion.AppServer# <br>
#Server.ColdFusion.Expiration# <br>
#Server.ColdFusion.ProductLevel#  <br>
#Server.ColdFusion.ProductName# <br> 
#Server.ColdFusion.ProductVersion# <br> 
#Server.ColdFusion.Rootdir# <br> 
<!--- #Server.ColdFusion.SerialNumber# <br>  --->
#Server.ColdFusion.SupportedLocales# <br> 
#Server.OS.AdditionalInformation# <br> 
#Server.OS.arch#  <br>
#Server.OS.BuildNumber#  <br>
#Server.OS.Name#  <br>
#Server.OS.Version#  <br> 

#CGI.SERVER_SOFTWARE#  <br>
#CGI.SERVER_NAME#  <br>
#CGI.GATEWAY_INTERFACE#  <br>
#CGI.SERVER_PROTOCOL#  <br>
#CGI.SERVER_PORT#  <br>
#CGI.REQUEST_METHOD#  <br>
#CGI.PATH_INFO#  <br>
#CGI.PATH_TRANSLATED#  <br>
#CGI.SCRIPT_NAME#  <br>
#CGI.QUERY_STRING#  <br>
#CGI.REMOTE_HOST#  <br>
#CGI.REMOTE_ADDR#  <br>
#CGI.AUTH_TYPE#  <br>
#CGI.REMOTE_USER#  <br>
#CGI.AUTH_USER#  <br>
#CGI.REMOTE_IDENT#  <br>
#CGI.CONTENT_TYPE#  <br>
#CGI.CONTENT_LENGTH#  <br>
#CGI.HTTP_REFERER#  <br>
#CGI.HTTP_USER_AGENT#  <br>
#CGI.HTTP_IF_MODIFIED_SINCE#  <br>
#CGI.CERT_SUBJECT#  <br>
#CGI.CERT_ISSUER#  <br>
#CGI.CLIENT_CERT_ENCODED#  <br>
 
</cfoutput> 
 


</body>
</html>
