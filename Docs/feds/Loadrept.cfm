<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
<TITLE>FEDS Load the url and go</TITLE>
<CFSET PreviousURL = #HTTP_REFERER#>
<CFSET MainRegion = '#ReptRegion#'>
<CFIF #ParameterExists(Month_Day)# IS "YES">
	<CFSET Doy2 = #Doy#>
		<CFIF #Doy# LT 10>
			<CFSET Doy2 = "00" & #Doy#>
		<CFELSEIF #Doy# LT 100>
			<CFSET Doy2 = "0" & #Doy#>
		</CFIF>
	<CFSET Year2 = RemoveChars("#YEAR#", 1, 2)>
		<CFIF #month# LT 10>
			<CFSET Month2 = "0" & #Month#>
		<CFELSE>
			<CFSET Month2 = #Month#>
		</CFIF>
		<CFIF #Month_Day# LT 10>
			<CFSET Month_Day2 = "0" & #Month_Day#>
		<CFELSE>
			<CFSET Month_Day2 = #Month_Day#>	
		</CFIF>
	<CFSET ReptDate = #Month2# & #Month_Day2# & #Year2# & "." & #Doy2#>
	<CFSET Selected = "#month2#/#month_day2#/#YEAR#">
	<cfset client.reptyear = "#Year#">
	<CFSET DateSelected = "#YEAR#/#doy2#">
</CFIF>
<CFIF IsDefined("Type")>
	<CFIF Type is 'asreq'>
		<CFSET ReptRegion = "ASREQ">
		<CFSET ReptDate = #AsReqMo#>
		<CFSET Selected = "#AsReqMo#/#client.ReptYear#">
		<CFSET DateSelected = "#ReptYear#/#AsReqMo#">
		<CFSET PreviousURL = #HTTP_REFERER#>	
	<CFELSEIF type is 'allregions'>
		<CFSET ReptRegion = "NW">
		<CFSET ReptDate = #AsReqMo#>
		<CFSET Selected = "#AsReqMo#/#client.ReptYear#">
		<CFSET DateSelected = "#ReptYear#/#AsReqMo#">
		<CFSET PreviousURL = #HTTP_REFERER#>
	</CFIF>
</cfif>
<CFSET RootURL = #ServerUrl# & #ReportDir# & "/">
<CFIF #DateSelected# GT '#Session.HistoryDate#'>
	<CFSET RootDir = "T:\reports\docs\#ReportDir#\">
	<cfelse>
	<CFSET RootDir = "e:\#ReportDir#\">
</cfif>

<CFIF #ParameterExists(client.ReptYear)# IS "YES" AND #ParameterExists(client.ReptRegion)# IS "YES">
	<CFSET Directory = #RootDir# & "#ReptYear#" & "\" & "#ReptRegion#" & "\fss23" & "\" & "#ReptDate#" & "\">
	<CFSET LinkUrl = #RootURL# & "#ReptYear#" & "/" & "#ReptRegion#" & "/" & "fss23/" &  "#ReptDate#" & "/">
</CFIF>
<CFDIRECTORY action="list" directory="#directory#" name="contents" sort="name" filter="*.rtf">

</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">
		
<cfoutput>
<!--- Region = #mainRegion#<br>
selected date: #DateSelected# history date: #Session.HistoryDate#<br>
Directory = #directory#<br>
LinkURL = #linkurl#<br>  --->
<UL>
<h3>Date Selected - #Selected#</h3>

<a href="#previousURL#"><img src="images/previous.gif" width=70 height=14 alt="" border="0"></a>
</cfoutput>
</UL>



<table align="center" width="500" border="1" cellspacing="0" cellpadding="6" nowrap bordercolor="#808080" cols="4">

			<TR VALIGN="BASELINE" BGCOLOR="#800000">
				<TD width="10" align="center">
					<FONT COLOR="#FFFFFF"><B>Frequency</B></FONT>
				</TD>
				<TD width="10" align="center">
					<FONT COLOR="#FFFFFF"><B>Date</B></FONT>
				</TD>
				<TD WIDTH="15" ALIGN="CENTER">
				<FONT COLOR="#FFFFFF"><B>Report Number</B></FONT>
				</TD>
				
				<TD WIDTH="400">
				<FONT COLOR="#FFFFFF"><B>Report Title</B></FONT>
				</TD>
				<TD WIDTH="10" ALIGN="CENTER">
				<FONT COLOR="#FFFFFF"><B>Size</B><br>(bytes)</FONT>
				</TD>
			</TR>
			<CFLOOP query="contents">				
				<CFSET FileNamex = #Contents.name#>				
				
				<CFIF #Mid(FileNamex,3 ,1)# is '-' and #left(FileNamex,2)# is #MainRegion#>
					<CFSET Filenamex = #RemoveChars(FileNamex,1 ,3)#>
				<CFElseIF #Mid(FileNamex,3 ,1)# is '-' and #left(FileNamex,2)# is not #MainRegion#>
					<CFSET Filenamex = 'SKIP'>	
				</cfif>
				
				<CFSET FileName = Replace("#FileNamex#", ".RTF", "")>
				<CFIF #Len(FileName)# GT 8>
					<cfset stpt = #Len(FileName)# - 3>
					<Cfset filedate = Right(FileName, 4)>
					<CFSET FileName = RemoveChars(FileName, #stpt#, 4)>
				<CFELSE>
					<Cfset filedate = '-'>
				</cfif>
				<cfquery name="getreport" datasource="onlinereports">
					select	* from feds23reports
							where reptfilename = '#FileName#'
				</cfquery>
				
				<cfoutput>
				<!--- #FileName# , #getreport.RecordCount#<br> --->
				<CFIF getreport.RecordCount is 0>
					<CFSET reportnm = '#FileName#'>
				<CFELSE>
					<CFSET reportnm = '#Getreport.reportName#'>
				
				</cfif>
				<CFIF ReportNm IS 'SKIP'>
				<CFELSE>
					<CFSET ReportNm = UCase(#reportnm#)>
					<TR VALIGN="BASELINE">
						<TD  align="center">
							<FONT SIZE="2">#getreport.ReportFreq#</FONT>
						</td>	
						<TD  align="center">
							<FONT SIZE="2">#filedate#</FONT>
						</td>
					
						<CFIF #session.browserName# IS 'MSIE'>
							<TD ALIGN="CENTER">
								<FONT SIZE="2"><a href="#LinkURL##contents.name#" target="_new">#getreport.ReptFileName#</a></FONT>
							</TD>
							<TD >
								<FONT SIZE="2"><a href="#LinkURL##contents.name#" target="_new">#ReportNm#</a></FONT>
							</TD>
						<CFELSE>
							<TD ALIGN="CENTER">
								<FONT SIZE="2"><a href="#LinkURL##contents.name#">#getreport.ReptFileName#</a></FONT>
							</TD>
							<TD >
								<FONT SIZE="2"><a href="#LinkURL##contents.name#">#ReportNm#</a></FONT>
							</TD>
						</CFIF>	
					
						<TD ALIGN="CENTER">
							<FONT SIZE="2">#size#</FONT>
						</TD>
					</cfif>
					</cfoutput>
				</TR>
			</CFLOOP>
</table>
</ul>
</BODY>
</HTML>
