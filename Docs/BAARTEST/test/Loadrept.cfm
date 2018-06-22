<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
<TITLE><cfoutput>#ReportDir#</cfoutput> Load the url and go</TITLE>
<SCRIPT LANGUAGE="JavaScript">
<!--
function newwindow(alias)
 {
 var xurl = "passet.cfm?file=" + alias
msgWindow=window.open(xurl,'JavaScriptIt','toolbar= 0,location= 0,directories= 0,status= 0,menubar= 0,scrollbars= 0,resizable= 1,copyhistory= 0,width=800,height=600');
 }
// End the hiding here.-->
</SCRIPT>

<CFIF #ParameterExists(Year)# IS "YES">	
	<CFSET ReptYear = "#Year#">
</cfif>	
<CFSET PreviousURL = #HTTP_REFERER#>
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

<CFSET RootURL = #ServerUrl# & #ReportDir# & "/">
<CFSET DateSelected = '#Year#' & '/' & '#doy2#'>
<CFIF #DateSelected# GT '#Session.HistoryDate#'>
	<CFSET RootDir = "d:\reports\docs\#ReportDir#\">
	<cfelse>
	<CFSET RootDir = "e:\#ReportDir#\">
</cfif>

<CFSET session.directory = #RootDir# & "#ReptYear#" & "\">
<CFSET session.LinkUrl = #RootURL# & "#ReptYear#" & "/">
<CFSET compdate = month2 & month_day2>


<cfdirectory action="LIST" directory="#session.directory#" name="contents" filter="#compdate#*.*" sort="name">
<!--- <CFDIRECTORY action="list" directory="#session.directory#" name="CSV" sort="name" filter="#compdate#*.csv"> --->

</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">
		
<cfoutput>
<!--- ink URL = #linkurl# , date = #compdate#, dir = #session.directory# --->
<UL>

<h3>Date Selected - #month2#/#month_day2#/#YEAR#</h3><br>


<a href="#previousURL#"><img src="images/previous.gif" width=70 height=14 alt="" border="0"></a>
</UL>
</cfoutput>




<table align="center" width="520" border="1" cellspacing="0" cellpadding="6" nowrap bordercolor="#808080" cols="4">

	<TR VALIGN="BASELINE" BGCOLOR="#800000">
		<TD width="10%" align="center">
			<FONT COLOR="#FFFFFF"><B>Frequency</B></FONT>
		</TD>
		
		<TD WIDTH="25%" ALIGN="CENTER">
		<FONT COLOR="#FFFFFF"><B>Report Number</B></FONT>
		</TD>
		
		<TD WIDTH="55%" ALIGN="CENTER">
		<FONT COLOR="#FFFFFF"><B>Report Title</B></FONT>
		</TD>
		
		<TD WIDTH="10%" ALIGN="CENTER">
		<FONT COLOR="#FFFFFF"><B>Size</B><br>(bytes)</FONT>
		</TD>
	</TR>
	<CFLOOP query="contents">
	<cfif #compdate# is #left(name, 4)#>
		<CFSET FileName1 = RemoveChars("#Contents.name#", 1, 5)>
		<CFSET session.FileName2 = Replace("#filename1#", ".RTF", "")>
		<CFSET session.FileName2 = Replace("#session.FileName2#", ".TXT", "")>
		<CFSET FileName = SpanExcluding("#session.filename2#", "-")>

<cfif FindNoCase('GSAF2PCAF', session.FileName2)>
   <cfset srchname = 'GSAF2PCAF'>
<cfelseif FindNoCase('PCC-CYCLE-AUDIT', session.FileName2)>
   <cfset srchname = 'PCC-CYCLE-AUDIT'>
<cfelseif FindNoCase('PCC-EXECSUMM-AUDIT', session.FileName2)>
   <cfset srchname = 'PCC-EXECSUMM-AUDIT'>
<cfelseif FindNoCase('PCC-COLLECT-AUDIT', session.FileName2)>
   <cfset srchname = 'PCC-COLLECT-AUDIT'>
<cfelseif FindNoCase('B70009W1', session.FileName2)>
   <cfset srchname = 'B70009W1'>
   <CFSET session.currentPWfile = #Contents.name#>
<cfelseif FindNoCase('B70006W1', session.FileName2)>
   <cfset srchname = 'B70006W1'>
<cfelseif FindNoCase('B70013W1', session.FileName2)>
   <cfset srchname = 'B70013W1'>
<cfelseif FindNoCase('FINANCE-DOD-INTERFUND', session.FileName2)>
   <cfset srchname = 'FINANCE-DOD-INTERFUND'>
<cfelse>
   <cfset srchname = 'XXXXXXXXXXXXXXXXXXX'>
</cfif>

		<cfquery name="getreport" datasource="OnLineReports">
			select	* from Baarreportname
					Where reptfilename = '#srchname#'
						AND CatagoryCode = '#session.CatagoryCode#'
		</cfquery>
		<!--- <CFIF #left(FileName, 1)# is '#session.CatagoryCode#'> --->
			<cfoutput>
				<CFSET ReportNm = UCase(#getreport.reportname#)>
				<TR VALIGN="BASELINE">
					<TD width="10%" align="center">
						<FONT SIZE="2">#getreport.ReportFreq#</FONT>
					<TD WIDTH="10%" ALIGN="CENTER">
						<CFIF #getreport.password# IS "">
							<CFIF #session.browserName# IS 'MSIE'>
								<FONT SIZE="2"><a href="#session.LinkURL##contents.name#" target="_new">#session.FileName2#</a></FONT>
							<CFELSE>
								<FONT SIZE="2"><a href="#session.LinkURL##contents.name#">#session.FileName2#</a></FONT>					
							</cfif>
						<CFELSE>
						<FONT SIZE="2"><a href="passset.cfm?file=#getreport.alias#&ext=TXT" target="_new">#session.FileName2#</a></FONT>
							<!--- <FONT SIZE="2"><a href="getpassword.cfm">#session.FileName2#</a></FONT> --->
						</CFIF>
						</TD>
					<TD WIDTH="70%">
						<FONT SIZE="1">#ReportNm#</FONT>
					</TD>
					<TD WIDTH="10%" ALIGN="CENTER">
						<FONT SIZE="2">#size#</FONT>
						</TD>
				</TR>
			</cfoutput>	
		<!--- </cfif> --->	
	</cfif>	
	</CFLOOP>
</table>

</BODY>
</HTML>
