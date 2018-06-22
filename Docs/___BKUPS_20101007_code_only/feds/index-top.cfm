<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>

<CFQUERY NAME="GetReg" DATASOURCE="onlinereports">
	SELECT *
	FROM Region
	WHERE RegionNo = '#client.reptregion#'
</CFQUERY> 
<HEAD>
	<TITLE>Untitled</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">
<Table>
<tr>
<td><a href="selectreg.cfm" target="Frame-btm"><img src="<CFOUTPUT>#getreg.graphic#</CFOUTPUT>"  border=0 alt="Click here to change"></a>
</td>
 
<td ><a HREF="SetMonth.cfm?type=asreq" target="Frame-btm"><font size="+1" color="Navy">As Required Reports</font></a> &nbsp; &nbsp; 
	<a HREF="SetMonth.cfm?type=allregions" target="Frame-btm"><font size="+1" color="Navy">All Regions Reports</font></a></td>
	
</tr>
</TABLE>
<!-- <a href="selectreg.cfm" target="_blank"><img src="<CFOUTPUT>#getreg.graphic#</CFOUTPUT>"  border=0 alt="Click here to change"></a> -->

		
	



</BODY>
</HTML>
