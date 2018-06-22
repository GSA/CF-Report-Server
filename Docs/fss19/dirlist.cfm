<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<CFSET RootDir = "http://test.fss.gsa.gov/templates/feds/reports/">
<CFDIRECTORY action="list" directory="#directory#" name="contents" sort="name" filter="*.rtf">


<HEAD>
	<TITLE>Untitled</TITLE>
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
			<CFLOOP query="contents">
				<cfquery name="getreport" DATASOURCE="OnlineReports">
					select	reportname from reportname
							where reptfilename = '#Contents.name#'
				</cfquery>
					<cfoutput>
				<TR VALIGN="BASELINE">
					<TD WIDTH="15%" ALIGN="CENTER">
						<FONT SIZE="2">#contents.name#</FONT>
						</TD>
					<TD WIDTH="55%">
						<FONT SIZE="2"><a href="#RootDir##Contents.name#">#getreport.reportname#</a></FONT>
					</TD>
					</cfoutput>
				</TR>
			</CFLOOP>
</table>
</ul>

</BODY>
</HTML>
