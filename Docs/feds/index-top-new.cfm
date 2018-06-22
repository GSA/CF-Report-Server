<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<CFIF IsDefined("cookie.ReptRegion")>
	<CFSET RegionNO = "#Cookie.ReptRegion#">
	<CFelse>
	<CFSET RegionNO = "03">
	<CFSET ReptYear = "1998">
</CFIF>	

<CFQUERY NAME="GetReg" DATASOURCE="onlinereports">
	SELECT graphic
	FROM Region
	WHERE RegionNo = '#RegionNo#'
</CFQUERY> 
<HEAD>
	<TITLE>Untitled</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">

<CF_New_Window
	url = "selectreg.cfm" 	
	toolbar = 0	
	location = 0		
	width = 100			
	height = 300		
	title = "Brand New screen" 
	returnvalue = 0		
	method="img"
	imgsource="<CFOUTPUT>#getreg.graphic#</CFOUTPUT>"  
	imgborder = 0		
	methodtext="Click here to change">


<!-- <a href="selectreg.cfm" target="Frame-btm"><img src="<CFOUTPUT>#getreg.graphic#</CFOUTPUT>"  border=0 alt="Click here to change"></a> -->
	
<!-- <a href="selectreg.cfm" target="_blank"><img src="<CFOUTPUT>#getreg.graphic#</CFOUTPUT>"  border=0 alt="Click here to change"></a> -->

		
	



</BODY>
</HTML>
