<HTML>
<CFQUERY NAME="GetReport" DATASOURCE="OnlineReports">
	SELECT *
	FROM Reports
	where ReportFreq = '#client.ReportFreq#'
	ORDER BY ReportName
</CFQUERY> 

<CFQUERY NAME="Region" DATASOURCE="OnlineReports">
	SELECT *
	FROM Region
	WHERE RegionNo = '#client.ReptRegion#'
</CFQUERY> 


<HEAD>
	<TITLE>Display the report set</TITLE>


</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">
		


<UL>


<table width="610" border="1" cellspacing="0" cellpadding="6" nowrap bordercolor="#808080" cols="3">

			<TR VALIGN="BASELINE" BGCOLOR="#800000">
				<TD WIDTH="15%" ALIGN="CENTER">
				<FONT COLOR="#FFFFFF"><B>Report Number</B></FONT>
				</TD>
				
				<TD WIDTH="55%">
				<FONT COLOR="#FFFFFF"><B>Report Title</B></FONT>
				</TD>
			</TR>
		<cfoutput query="GetReport">
			<TR VALIGN="BASELINE">
				<TD WIDTH="15%" ALIGN="CENTER">
				<FONT SIZE="2">#GetReport.ReptFileName#</FONT>
				</TD>
				
				<TD WIDTH="55%">
				<FONT SIZE="2"><a href="datechoice.cfm?ReptFileName=#ReptFileName#&ReptFrequency=#Frequency#" target="Frame-btm">#GetReport.ReportName#</a></FONT>
				</TD>
			</TR>
		</cfoutput>
	

</table>

</UL>
</UL>




</BODY>
</HTML>
