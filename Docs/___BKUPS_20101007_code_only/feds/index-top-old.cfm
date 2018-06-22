<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<CFIF IsDefined("cookie.ReptRegion")>
	<CFSET RegionNO = "#Cookie.ReptRegion#">
	<CFelse>
	<CFSET RegionNO = "03">
	<CFSET ReptYear = "1998">
</CFIF>	

<CFQUERY NAME="GetReg" DATASOURCE="onlinereports">
	SELECT *
	FROM Region
	WHERE RegionNo = '#RegionNo#'
</CFQUERY> 
<HEAD>
	<TITLE>Untitled</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">

<a href="selectreg.cfm" target="Frame-btm"><img src="<CFOUTPUT>#getreg.graphic#</CFOUTPUT>"  border=0 alt="Click here to change"></a>
	
<!-- <a href="selectreg.cfm" target="_blank"><img src="<CFOUTPUT>#getreg.graphic#</CFOUTPUT>"  border=0 alt="Click here to change"></a> -->

		
	



</BODY>
</HTML>
