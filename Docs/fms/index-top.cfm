<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>

<HEAD>
	<TITLE>Untitled</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">
<CFQUERY NAME="GetReg" DATASOURCE="OnlineReports">
	SELECT *
	FROM FSS19region
	WHERE RegionCode = '#RegionCode#'
</CFQUERY> 

<CFOUTPUT query="getreg">
	<a href="selectreg.cfm" target="Frame-btm"><img src="images/#getreg.RegionName#.jpg"  border=0 alt="Click here to change" ></a>
</cfoutput>

<CFQUERY NAME="Getcatagory" DATASOURCE="OnlineReports">
	SELECT *
	FROM FSS19ReportCatagory
	WHERE CatagoryCode = '#ReportCatagory#'
</CFQUERY> 

<CFOUTPUT query="getcatagory">	


<UL>
<a href="selectcatagory.cfm" target="Frame-btm"><img src="#getcatagory.graphic#"  border=0 alt="Click here to change"></a>
</ul>
</cfoutput>
<p>&nbsp;<br><p>&nbsp;<br><p>&nbsp;<br>		
	
<p>&nbsp;<br><p>&nbsp;<br><p>&nbsp;<br>	
<p>&nbsp;<br><p>&nbsp;<br><p>&nbsp;<br>	


</BODY>
</HTML>
