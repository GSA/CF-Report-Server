
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<CFQUERY NAME="GetReg" DATASOURCE="OnlineReports">
	SELECT *
	FROM FSS19region
	WHERE RegionCode = '#client.RegionCode#'
</CFQUERY> 

<CFIF getreg.recordcount is 0>
	<CFSET client.RegionCode = "a">
	<CFQUERY NAME="GetReg" DATASOURCE="OnlineReports">
		SELECT *
		FROM FSS19region
		WHERE RegionCode = '#client.RegionCode#'
	</CFQUERY> 
</CFIF>
<CFQUERY NAME="Getcatagory" DATASOURCE="OnlineReports">
	SELECT *
	FROM FSS19ReportCatagory
	WHERE CatagoryCode = '#client.ReportCatagory#' 
</CFQUERY> 
<CFIF getcatagory.recordcount is 0>
	<CFSET client.ReportCatagory = "im">
	<CFQUERY NAME="Getcatagory" DATASOURCE="OnlineReports">
		SELECT *
		FROM FSS19ReportCatagory
		WHERE CatagoryCode = '#client.ReportCatagory#' 
	</CFQUERY> 
</cfif>
<HTML>

<HEAD>
	<TITLE>Untitled</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">
<!--- <cfoutput>
CatagoryCode = '#session.ReportCatagory#'<br>
RegionCode = '#session.RegionCode#'
</cfoutput> --->



<TABLE width="400">
<tr>
	<td>
	<CFOUTPUT query="getreg">
	<a href="selectreg.cfm" target="Frame-btm"><img src="images/#getreg.graphic#.jpg"  border=0 alt="Click here to change" ></a>
	</cfoutput></td>
	
	
	<td>
	<CFOUTPUT query="getcatagory">	
	<a href="selectcatagory.cfm" target="Frame-btm"><img src="#getcatagory.graphic#"  border=0 alt="Click here to change"></a>
	</cfoutput></td>
</tr>

</table>
		




</BODY>
</HTML>
