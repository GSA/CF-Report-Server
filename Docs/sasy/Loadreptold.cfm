<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<CFQUERY NAME="GetRegion" DATASOURCE="onlinereports">
	SELECT *
	FROM SASYRegion
	ORDER BY RegionNo
</CFQUERY> 
<CFSET RegionsList =''>
<cfloop query="getregion">
	<CFSET RegionsList = ListAppend(RegionsList, "RegionNo")>
</cfloop>
	
<HTML>
<HEAD>
	<TITLE><cfoutput>#ReportDir#</cfoutput> Load the url and go</TITLE>

<CFIF #ParameterExists(Year)# IS "YES">
	<CFSET ReptYear = "#Year#">
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

<CFSET RootURL = #ServerUrl# & #ReportDir# & "/">
<CFSET DateSelected = '#Year#' & '/' & '#doy2#'>
<CFIF #DateSelected# GT '#Session.HistoryDate#'>
	<CFSET RootDir = "d:\reports\docs\#ReportDir#\">
	<cfelse>
	<CFSET RootDir = "e:\#ReportDir#\">
</cfif>

<CFSET Directory = #RootDir# & "#ReptYear#" & "\">
<CFSET LinkUrl = #RootURL# & "#ReptYear#" & "/">
<CFSET compdate = month2 & month_day2>


<CFDIRECTORY action="list" directory="#directory#" name="contents" sort="name" filter="#compdate#*.rtf">
<CFDIRECTORY action="list" directory="#directory#" name="CSV" sort="name" filter="#compdate#*.csv">

</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">
		
<cfoutput>
<!--- Link URL = #linkurl# --->
<UL>

<h3>Date Selected - #month2#/#month_day2#/#YEAR#</h3><br>


<CFSET PreviousURL = "#ServerUrl#" & "#ReportDir#/cal.cfm?Month_day=#Month_day2#&Month=#Month2#&Year=#Year#">
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
		<!--- test if this is a on request report...if so we need to deal with a 1 char region code + HHMM info added to name --->
		<CFIF #findoneof('-', #reverse(#Contents.name#)#)# is 9>
			<CFSET rtime = mid(#reverse(#Contents.name#)#, 5, 4)>
			<CFSET runtime1 = reverse(rtime)>
			<CFSET runtime = insert(':', runtime1, 2)>
			<CFSET rName =  RemoveChars(#reverse(#Contents.name#)#, 5, 5)>
					<!--- check for region 10 using A as i char region code  ..  if so convert to 10 .. otherwise just insert a zero in front of region code--->
				<CFIF #Mid(rname, 6, 1)# is 'A'>
					<CFSET Iname1 = removeChars(rname, 6, 1)>
					<CFSET IName = insert('01', #iname1#, 5)>
				<CFELSE>
					<CFSET IName = insert('0', #rname#, 6)>
				</cfif>
			
			<CFSET newName = reverse(iname)>
			
			<CFSET FileName1 = RemoveChars("#newName#", 1, 5)>
			<CFSET FileName2 = Replace("#filename1#", ".RTF", "")>
			<CFIF #Left(#filename2#,3)# IS 'PRO'>
				<CFSET FileName = Left(#fileName2#, #Len(FileName2)# - 3)>
			<CFELSE>	
				<CFSET FileName = SpanExcluding("#filename2#", "-")>
			</cfif>
			<CFSET FileName3 = Reverse(filename2)>
			<CFSET FileRegxx = SpanExcluding("#filename3#", "-")>
			<CFSET Fileregx = Reverse(fileregxx)>
			<CFSET FileRegion = left(FileRegx, 2)>
			
			<!--- <cfoutput>#FileName2#, #fileName#<br></cfoutput> --->
			<CFIF #FileRegion# IS '#ReptRegion#'>
				<cfquery name="getreport" datasource="OnLineReports">
					select	* from #ReportDir#reportname
							Where reptfilename = '#FileName#'
				</cfquery>
				<cfoutput>
			
				<CFSET ReportNm = UCase(#getreport.reportname#)>
				<TR VALIGN="BASELINE">
					<TD width="10%" align="center">
						<FONT SIZE="2">Requested<br>#runtime#<!--- <br>#rname#<br>#newname#<br>#fileregion#<br>#Fileregx# ---></FONT>
					<TD WIDTH="10%" ALIGN="CENTER">
						<CFIF #Getreport.password# IS "">
							<CFIF #session.browserName# IS 'MSIE'>
								<FONT SIZE="2"><a href="#LinkURL##contents.name#" target="_new">#FileName2#</a></FONT>
							<CFELSE>
								<FONT SIZE="2"><a href="#LinkURL##contents.name#">#FileName2#</a></FONT>					
							</cfif>
						<CFELSE>
							<FONT SIZE="2"><a href="getpassword.cfm">#FileName2#</a></FONT>
						</CFIF>
						</TD>
					<TD WIDTH="70%">
						<FONT face="Arial" SIZE="1">#ReportNm#</FONT>
					</TD>
					<TD WIDTH="10%" ALIGN="CENTER">
						<FONT SIZE="2">#size#</FONT>
						</TD>
				</TR>
				</cfoutput>	
			</cfif>
		<CFELSE>
			<CFSET FileName1 = RemoveChars("#Contents.name#", 1, 5)>
			<CFSET FileName2 = Replace("#filename1#", ".RTF", "")>
			<CFIF #Left(#filename2#,3)# IS 'PRO'>
				<CFSET FileName = Left(#fileName2#, #Len(FileName2)# - 3)>
			<CFELSE>	
				<CFSET FileName = SpanExcluding("#filename2#", "-")>
			</cfif>
			<CFSET FileName3 = Reverse(filename2)>
			<CFSET FileRegx = SpanExcluding("#filename3#", "-")>
			<CFSET Fileregion = Reverse(fileregx)>
			<!--- <cfoutput>#FileName2#, #fileName#<br></cfoutput> --->
			<CFIF #FileRegion# IS '#ReptRegion#'>
				<cfquery name="getreport" datasource="OnLineReports">
					select	* from #ReportDir#reportname
							Where reptfilename = '#FileName#'
				</cfquery>
				<cfoutput>
					<CFSET ReportNm = UCase(#getreport.reportname#)>
					<TR VALIGN="BASELINE">
						<TD width="10%" align="center">
							<FONT SIZE="2">#getreport.ReportFreq#</FONT>
						<TD WIDTH="10%" ALIGN="CENTER">
							<CFIF #Getreport.password# IS "">
								<CFIF #session.browserName# IS 'MSIE'>
									<FONT SIZE="2"><a href="#LinkURL##contents.name#" target="_new">#FileName2#</a></FONT>
								<CFELSE>
									<FONT SIZE="2"><a href="#LinkURL##contents.name#">#FileName2#</a></FONT>					
								</cfif>
							<CFELSE>
								<FONT SIZE="2"><a href="getpassword.cfm">#FileName2#</a></FONT>
							</CFIF>
							</TD>
						<TD WIDTH="70%">
							<FONT face="Arial" SIZE="1">#ReportNm#</FONT>
						</TD>
						<TD WIDTH="10%" ALIGN="CENTER">
							<FONT SIZE="2">#size#</FONT>
							</TD>
					</TR>
				</cfoutput>	
			</cfif>
		</cfif>	
	</cfif>	
	</CFLOOP>
</table>

</BODY>
</HTML>
