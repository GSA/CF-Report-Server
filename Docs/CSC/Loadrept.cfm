<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<CFSET PreviousURL = #HTTP_REFERER#>
<CFQUERY NAME="GetStore" DATASOURCE="onlinereports">
	SELECT *
	FROM CSCStores
	ORDER BY StoreID
</CFQUERY> 
<CFSET StoresList =''>
<cfloop query="getStore">
	<CFSET StoresList = ListAppend(StoresList, "StoreID")>
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
	<CFSET RootDir = "T:\reports\docs\#ReportDir#\">
	<cfelse>
	<CFSET RootDir = "e:\#ReportDir#\">
</cfif>

<CFSET Directory = #RootDir# & "#ReptYear#" & "\">
<CFSET LinkUrl = #RootURL# & "#ReptYear#" & "/">
<CFSET compdate = month2 & month_day2>


<CFDIRECTORY action="list" directory="#directory#" name="contents" sort="name" filter="#compdate#*.*">
<CFDIRECTORY action="list" directory="#directory#" name="CSV" sort="name" filter="#compdate#*.csv">

</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">
		
<cfoutput>
<!--- Link URL = #linkurl# count = contents.recordcount#---> 
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
		<FONT COLOR="#FFFFFF"><B>Report Name</B></FONT>
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
		<CFSET FileName2 = Replace("#filename1#", ".RTF", "")>
		<CFSET FileStore = #Left(#filename2#,2)#>
		<CFSET FileName = RemoveChars("#filename2#", 1, 3)>
	
		<!--- <cfoutput>#FileName1#, #FileName2#, #fileName#<br></cfoutput> --->
		<CFIF #FileStore# IS '#ReptStore#'>
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
								<FONT SIZE="2"><a href="#LinkURL##contents.name#" target="_new">#FileName#</a></FONT>
							<CFELSE>
								<FONT SIZE="2"><a href="#LinkURL##contents.name#">#FileName#</a></FONT>					
							</cfif>
						<CFELSE>
							<FONT SIZE="2"><a href="getpassword.cfm">#FileName#</a></FONT>
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
	</CFLOOP>		
</table>

</BODY>
</HTML>
