<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<CFIF IsDefined("url.changeyear")>
	<CFset client.ReptYear = "#url.changeyear#">
	<CFset session.ReptYear = "#url.changeyear#">
	<!--- <cfset session.ReptYear = "#client.reptyear#"> --->
</cfif>
<CFIF url.type is 'allregions'>
	<CFSET Header = 'All Regions'>
<CFELSEIF url.type is 'asreq'>
	<CFSET Header = 'As Required'>
</cfif>
<html>
<head>
	<title>Select the month for <cfoutput>#Header#</cfoutput> Reports</title>
</head>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">

<ul><a href="index.cfm"><img src="images/previous.gif" width=70 height=14 alt="" border="0"></a></ul>

<CENTER>
<TABLE BORDER="0">
<tr><td><center><font face="Arial" size="+2" color="Navy">For Year <cfoutput>"#session.reptyear#"....</cfoutput>Select the Month</font></center></td></tr>
<TR><TD>
	<TABLE WIDTH="500" BORDER="0" CELLPADDING="7" COLS="4">
	
	<TR ALIGN="CENTER">
		<TD><A HREF="loadrept.cfm?type=<cfoutput>#type#&AsReqMo=01&year=#session.reptyear#</cfoutput>"><FONT FACE="Arial"><B>January</B></FONT></A></TD>
		<TD><A HREF="loadrept.cfm?type=<cfoutput>#type#&AsReqMo=02&year=#session.reptyear#</cfoutput>"><FONT FACE="Arial"><B>February</B></FONT></A></TD>
		<TD><A HREF="loadrept.cfm?type=<cfoutput>#type#&AsReqMo=03&year=#session.reptyear#</cfoutput>"><FONT FACE="Arial"><B>March</B></FONT></A></TD>
		<TD><A HREF="loadrept.cfm?type=<cfoutput>#type#&AsReqMo=04&year=#session.reptyear#</cfoutput>"><FONT FACE="Arial"><B>April</B></FONT></A></TD>
	</TR>
	<TR ALIGN="CENTER">
		<TD><A HREF="loadrept.cfm?type=<cfoutput>#type#&AsReqMo=05&year=#session.reptyear#</cfoutput>"><FONT FACE="Arial"><B>May</B></FONT></A></TD>
		<TD><A HREF="loadrept.cfm?type=<cfoutput>#type#&AsReqMo=06&year=#session.reptyear#</cfoutput>"><FONT FACE="Arial"><B>June</B></FONT></A></TD>
		<TD><A HREF="loadrept.cfm?type=<cfoutput>#type#&AsReqMo=07&year=#session.reptyear#</cfoutput>"><FONT FACE="Arial"><B>July</B></FONT></A></TD>
		<TD><A HREF="loadrept.cfm?type=<cfoutput>#type#&AsReqMo=08&year=#session.reptyear#</cfoutput>"><FONT FACE="Arial"><B>August</B></FONT></A></TD>
	</TR>
	<TR ALIGN="CENTER">
		<TD><A HREF="loadrept.cfm?type=<cfoutput>#type#&AsReqMo=09&year=#session.reptyear#</cfoutput>"><FONT FACE="Arial"><B>September</B></FONT></A></TD>
		<TD><A HREF="loadrept.cfm?type=<cfoutput>#type#&AsReqMo=10&year=#session.reptyear#</cfoutput>"><FONT FACE="Arial"><B>October</B></FONT></A></TD>
		<TD><A HREF="loadrept.cfm?type=<cfoutput>#type#&AsReqMo=11&year=#session.reptyear#</cfoutput>"><FONT FACE="Arial"><B>November</B></FONT></A></TD>
		<TD><A HREF="loadrept.cfm?type=<cfoutput>#type#&AsReqMo=12&year=#session.reptyear#</cfoutput>"><FONT FACE="Arial"><B>December</B></FONT></A></TD>
	</TR>
	<tr><td>&nbsp;</td></tr>
	<tr>
		<th colspan="2">Change Year to: </th>
		<cfloop index="yearvar" from="1999" to="#Year(Now())#" step="1">
			<td><a href="SetMonth.cfm?type=<cfoutput>#type#&ChangeYear=#yearvar#">#yearvar#</a></cfoutput></td>
		</cfloop>
	
	</tr>
</TABLE></td>
</tr>
</TABLE>


</body>
</html>
