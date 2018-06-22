<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>FSS-19 Load the url and go</TITLE>
<SCRIPT LANGUAGE="JavaScript">
<!--
function newwindow(alias)
 {
 var xurl = "passet.cfm?file=" + alias
msgWindow=window.open(xurl,'JavaScriptIt','toolbar= 0,location= 0,directories= 0,status= 0,menubar= 0,scrollbars= 0,resizable= 1,copyhistory= 0,width=800,height=600');
 }
// End the hiding here.-->
</SCRIPT>
</HEAD>
<CFSET RootURL = #ServerUrl# & #ReportDir# & "/">
<CFSET PreviousURL = #HTTP_REFERER#>
<CFIF #ParameterExists(Year)# IS "YES">
	<CFSET client.ReptYear = "#Year#">
	<CFSET session.ReptYear = "#Year#">
</cfif>	

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
	<CFSET ReptDate = #Year# & #Month2# & #Month_Day2# & "." & #Doy2#>
</CFIF>
<CFSET DateSelected = '#Year#' & '/' & '#doy2#'>

<CFIF #DateSelected# GT '#Session.HistoryDate#'>
	<CFSET RootDir = "d:\reports\docs\#ReportDir#\">
<cfelse>
	<CFSET RootDir = "e:\#ReportDir#\">
</cfif> 

<CFSET session.directory = #RootDir# & "#session.ReptYear#" & "\"  & "#ReptDate#" & "\" & "0" & "#session.regionCode#"  & "\" & "#session.reportcatagory#">
<CFSET session.linkurl = #RootURL# & "#session.ReptYear#" & "/"  & "#ReptDate#" & "/" & "0" & "#session.regionCode#" & "/" & "#session.reportcatagory#" & "/">


<CFDIRECTORY action="list" directory="#session.directory#" name="contents" sort="name" filter="*.rtf">
<CFDIRECTORY action="list" directory="#session.directory#" name="CSV" sort="name" filter="*.csv">
<CFDIRECTORY action="list" directory="#session.directory#" name="txt" sort="name" filter="*.txt">

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">
		
<cfoutput>
<!--- #session.browsername# - #session.browserversion# --->
<!--- Link URL = #session.linkurl# <br>
#session.directory#  --->
<UL>
<h3>Date Selected - #month2#/#month_day2#/#YEAR#</h3>

<a href="#previousURL#"><img src="images/previous.gif" width=70 height=14 alt="" border="0"></a>
</UL>
</cfoutput>

<table align="center" width="520" border="1" cellspacing="0" cellpadding="6" nowrap bordercolor="#808080" cols="4">
	
	<TR VALIGN="BASELINE" BGCOLOR="#800000">
		<TD width="10%" align="center">
			<FONT COLOR="#FFFFFF"><B>Frequency</B></FONT>
		</TD>
		
		<TD WIDTH="10%" ALIGN="CENTER">
		<FONT COLOR="#FFFFFF"><B>Report Number</B></FONT>
		</TD>
		
		<TD WIDTH="70%" ALIGN="CENTER">
		<FONT COLOR="#FFFFFF"><B>Report Title</B></FONT>
		</TD>
		
		<TD WIDTH="10%" ALIGN="CENTER">
		<FONT COLOR="#FFFFFF"><B>Size</B><br>(bytes)</FONT>
		</TD>
	</TR>		
	<cfif month_day2 is '01'> <!--- check for first of the month --->
	
	
	<cfif year GE 2009> <!--- new way --->
		<cfset monthname = '#MonthasString(month2)#'>
		<!--- <cfquery name="getmonth" datasource="OnLineReports">
				select	monthname from months
				where month = '#month2#'
			</cfquery> --->
		<TR VALIGN="BASELINE">
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<TD align="center" lspan="3">
			<cfoutput>
			<FONT SIZE="2"><a href="#rooturl##year#/CloseingSchedules/FSS19-2009-PROCESSING.doc" target="_new">Closing Schedule</a> For #Monthname#</FONT></td>		
			</cfoutput>
		</tr>	
	<cfelse> 	<!--- old way --->
		<cfset monthname = '#MonthasString(month2)#'>
		<!--- <cfquery name="getmonth" datasource="OnLineReports">
				select	monthname from months
				where month = '#month2#'
			</cfquery> --->
		<TR VALIGN="BASELINE">
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<TD align="center" lspan="3">
			<cfoutput>
			<FONT SIZE="2"><a href="#rooturl##year#/CloseingSchedules/Closeing#month2#.rtf" target="_new">Closing Schedule</a> For #Monthname#</FONT></td>		
			</cfoutput>
		</tr>	
	</cfif>			


	</cfif>			
	<CFIF #Contents.RecordCount# is not 0>
		<CFLOOP query="contents">
			<CFSET FileName = Replace("#Contents.name#", ".RTF", "")>
			<CFSET FileName = Replace("#filename#", ".rtf", "")>
			<cfquery name="getreport" datasource="OnLineReports">
				select	* from fss19reportname
				<cfif #session.reportcatagory# is 'S3'> <!--- S3 and SD have the same report names --->
					where catagorycode = 'SD'	AND reptfilename = '#FileName#'
				<cfelse>
					where catagorycode = '#session.reportcatagory#'	AND reptfilename = '#FileName#'
				</cfif>
			</cfquery>
			<cfoutput>
			<CFSET ReportNm = UCase(#getreport.reportname#)>
			<TR VALIGN="BASELINE">
				<TD width="10%" align="center"><FONT SIZE="2">#getreport.ReportFreq#</FONT></td>
				<TD WIDTH="10%" ALIGN="CENTER">
					<CFIF #Getreport.password# IS "">										
						<CFIF #session.browserName# IS 'MSIE'>
							<FONT SIZE="2"><a href="#session.linkurl##contents.name#" target="_new">#FileName#</a></FONT>
						<CFELSE>
							<FONT SIZE="2"><a href="#session.linkurl##contents.name#">#FileName#</a></FONT>					
						</cfif>
					<CFELSE>									
						<FONT SIZE="2"><a href="passset.cfm?file=#getreport.alias#&ext=RTF" target="_new">#getreport.alias#</a></FONT>
					</CFIF>
					</TD>
				<TD WIDTH="70%"><FONT SIZE="1">#ReportNm#</FONT></TD>
				<TD WIDTH="10%" ALIGN="CENTER"><FONT SIZE="2">#size#</FONT></TD>
			</TR></cfoutput>
			
		</CFLOOP>
	</cfif>	
	<CFIF #CSV.RecordCount# is not 0>
		<CFLOOP query="CSV">
			
			<CFSET FileName = Replace("#csv.name#", ".CSV", "")>
			<CFSET FileName = Replace("#filename#", ".csv", "")>
			<cfquery name="getreport" datasource="OnLineReports">
				select	* from fss19reportname
						where catagorycode = '#session.reportcatagory#'
							AND reptfilename = '#FileName#'
			</cfquery>
				<cfoutput>
					<CFSET ReportNm = UCase(#getreport.reportname#)>
			<TR VALIGN="BASELINE">
				<TD width="10%" align="center"><FONT SIZE="2">#getreport.ReportFreq#</FONT></td>
				<TD WIDTH="10%" ALIGN="CENTER">
					<CFIF #Getreport.password# IS "">
						<CFIF #session.browserName# IS 'MSIE'>
							<FONT SIZE="2"><a href="#session.linkurl##csv.name#" target="_new">#FileName#</a></FONT>
						<CFELSE>	
							<FONT SIZE="2"><a href="#session.linkurl##csv.name#">#FileName#</a></FONT>
						</cfif>
					<CFELSE>
					
						<FONT SIZE="2"><a href="passset.cfm?file=#getreport.alias#&ext=csv" target="_new">#getreport.alias#</a></FONT>
					</CFIF>
					</TD>
				<TD WIDTH="70%"><FONT SIZE="1">#ReportNm#</FONT></TD>
				<TD WIDTH="10%" ALIGN="CENTER"><FONT SIZE="2">#size#</FONT></TD>
				</TR></cfoutput>
			
		</CFLOOP>
	</cfif>
	<CFIF #TXT.RecordCount# is not 0>
		<CFLOOP query="TXT">
			<CFSET FileName = Replace("#TXT.name#", ".TXT", "")>
			<CFSET FileName = Replace("#filename#", ".TXT", "")>
			<cfquery name="getreport" datasource="OnLineReports">
				select	* from fss19reportname
				<cfif #session.reportcatagory# is 'S3'> <!--- S3 and SD have the same report names --->
					where catagorycode = 'SD'	AND reptfilename = '#FileName#'
				<cfelse>
					where catagorycode = '#session.reportcatagory#'	AND reptfilename = '#FileName#'
				</cfif>
			</cfquery>
			<cfoutput>
			<CFSET ReportNm = UCase(#getreport.reportname#)>
			<TR VALIGN="BASELINE">
				<TD width="10%" align="center"><FONT SIZE="2">Text File</FONT></td>
				<TD WIDTH="10%" ALIGN="CENTER">
					<CFIF #Getreport.password# IS "">
						<CFIF #session.browserName# IS 'MSIE'>
							<FONT SIZE="2"><a href="#session.linkurl##TXT.name#" target="_new">#FileName#</a></FONT>
						<CFELSE>
							<FONT SIZE="2"><a href="#session.linkurl##TXT.name#">#FileName#</a></FONT>					
						</cfif>
					<CFELSE>	
								
						<FONT SIZE="2"><a href="passset.cfm?file=#getreport.alias#&ext=RTF" target="_new">#getreport.alias#</a></FONT>
					</CFIF>
					</TD>
				<TD WIDTH="70%"><FONT SIZE="1">#ReportNm#</FONT></TD>
				<TD WIDTH="10%" ALIGN="CENTER"><FONT SIZE="2">#size#</FONT></TD>
			</TR></cfoutput>
			
		</CFLOOP>
	</cfif>		
</table>

</BODY>
</HTML>
