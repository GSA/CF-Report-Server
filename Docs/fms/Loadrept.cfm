<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>FMS Load the url and go</TITLE>
<CFSET PreviousURL = #HTTP_REFERER#>
<CFSET RootURL = #ServerUrl# & #ReportDir# & "/">
<cfset titlesw = 0>
<CFIF NOT IsDefined("Year")>
	<CFSET Year = "#session.ReptYear#">
</cfif>

<CFIF IsDefined("ReptMo")>	
	<CFSET ReptDate = #ReptMo#>
	<CFSET Selected = "#ReptMo#/#session.ReptYear#">
	<CFSET DateSelected = "#session.ReptYear#/#ReptMo#">
</CFIF>

<CFIF IsDefined("Month_Day")>
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
	<cfset session.reportcatagory = "Da">
	<CFSET Selected = "#month2#/#month_day2#/#YEAR#">
	<CFSET DateSelected = "#YEAR#/#doy2#">
</CFIF>

<CFIF #DateSelected# GT '#Session.HistoryDate#'>
	<CFSET RootDir = "T:\reports\docs\#ReportDir#\">
<cfelse>
	<CFSET RootDir = "e:\#ReportDir#\">
</cfif>

<CFSET Directory = #RootDir# & "#Year#" & "\" & "#session.regionCode#" & "\" & #session.ReportCatagory# & "\" & "#ReptDate#" & "\">
<CFSET LinkUrl = #RootURL# & "#Year#" & "/" & "#session.regionCode#" & "/"  & #session.ReportCatagory# & "/" &  "#ReptDate#" & "/">

<!--- <CFIF #session.ReportCatagory# IS "mo">
	<cfif session.regioncode is '01'>
		<cflocation url="01-MO.cfm?ReptMo=#ReptMo#&ReptYear=#session.reptYear#&previousURL=#previousURL#" addtoken="Yes">
	<cfelse>
		<cflocation url="MO.cfm?ReptMo=#ReptMo#&ReptYear=#session.reptYear#&previousURL=#previousURL#" addtoken="Yes">
	</cfif>
</cfif>
 --->
<CFDIRECTORY action="list" directory="#directory#" name="contents" sort="name" filter="*.rtf">
<CFDIRECTORY action="list" directory="#directory#" name="CSV" sort="name" filter="*.csv">

</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">
		
<cfoutput>
<!--- selected date: #DateSelected# history date: #Session.HistoryDate#<br>
Directory = #directory#<br>
LinkURL = #linkurl#<br>  --->
<h3>Date Selected - #selected#</h3>
<a href="#previousURL#"><img src="images/previous.gif" width=70 height=14 alt="" border="0"></a>
</cfoutput>

<UL>
<table width="610" border="1" cellspacing="0" cellpadding="6" nowrap bordercolor="#808080" cols="3">
	<CFIF #session.ReportCatagory# IS "mo">
		<TR VALIGN="BASELINE" BGCOLOR="#800000">				
			<TD WIDTH="15%" ALIGN="CENTER"><FONT COLOR="#FFFFFF"><B>FMC</B></FONT></TD>
			<TD WIDTH="55%"><FONT COLOR="#FFFFFF"><B>Vehicle Detail for Location</B></FONT></TD>
			<TD><FONT COLOR="#FFFFFF"><B>File Name</B></FONT></td>
		</TR>
	</cfif>
	<cfset hfmc = '        '>
	<CFLOOP query="contents">		
		<CFSET FileNamex = Replace("#Contents.name#", ".RTF", "")>
		<CFSET FileNamey = RemoveChars("#FileNamex#", 1, 4)>
		<CFSET FileName = Replace("#FileNamey#", "FE", "FM")>		
		<cfif #mid(#name#, 7, 2)# is 'MO'>	<!--- This must be the FMC inventory detail --->
			<cfset FMC = '#session.regioncode#-#mid(Contents.name, 3, 2)#-#mid(Contents.name, 5, 2)#'>		
			<cfoutput>
				<cfif hfmc is not '#fmc#'>
					<cfif hfmc is not '        '>
						</td></tr>
					</cfif>
					<TR VALIGN="BASELINE">					
						<TD WIDTH="15%" ALIGN="CENTER"><FONT SIZE="2">#FMC#</FONT></TD>
							<cfquery name="getFMC" datasource="onlinereports">
								select	* from fmsFMCTable
								where FMCCode = '#fmc#'							
							</cfquery>					
						<TD WIDTH="55%"><FONT SIZE="2">
							<a href="#LinkURL##contents.name#" 
							<CFIF #session.browserName# IS 'MSIE'>
								target="_new"
							</cfif>
							>#getfmc.description#</a></FONT>
						</TD>							
						<TD>						
							<a href="#LinkURL##contents.name#" 
							<CFIF #session.browserName# IS 'MSIE'>
								target="_new"
							</cfif>		
							>#mid(contents.name, 9, 5)#</a>
							
					<cfset hfmc = '#fmc#'>
				<cfelse>	
					<a href="#LinkURL##contents.name#" 
					<CFIF #session.browserName# IS 'MSIE'>
						target="_new"
					</cfif>
						>&nbsp;&nbsp;#mid(contents.name, 9, 5)#</a>					
				</cfif>
			</cfoutput>			
		<cfelse>			
			<cfif titlesw is 0>
				</td></tr>
				</table>
				<table width="610" border="1" cellspacing="0" cellpadding="6" nowrap bordercolor="#808080" cols="3">
					<TR VALIGN="BASELINE" BGCOLOR="#800000">				
						<TD WIDTH="15%" ALIGN="CENTER"><FONT COLOR="#FFFFFF"><B>Report Number</B></FONT></TD>
						<TD WIDTH="55%"><FONT COLOR="#FFFFFF"><B>Report Title</B></FONT></TD>
						<TD><FONT COLOR="#FFFFFF"><B>File Name</B></FONT></td>
					</TR>	
				<cfset titlesw = 1>
			</cfif>	
			<cfquery name="getreport" datasource="onlinereports">
				select	* from fmsreportname
				where reptfilename = '#FileName#'							
			</cfquery>		
			<cfoutput>
				<TR VALIGN="BASELINE">					
					<TD WIDTH="15%" ALIGN="CENTER"><FONT SIZE="2">#getreport.ReportID#</FONT></TD>
					<CFIF #session.browserName# IS 'MSIE'>
						<TD WIDTH="55%"><FONT SIZE="2"><a href="#LinkURL##contents.name#" target="_new">#getreport.ReportName#</a></FONT></TD>
						<TD><a href="#LinkURL##contents.name#" target="_new">#filename#</a></td>
					<CFELSE>	
						<TD WIDTH="55%"><FONT SIZE="2"><a href="#LinkURL##contents.name#">#getreport.ReportName#</a></FONT></TD>
						<TD><a href="#LinkURL##contents.name#">#filename#</a></td>
					</CFIF>
				</TR>		
			</cfoutput>	
		</cfif>						
	</CFLOOP>
	<CFIF #CSV.RecordCount# is not 0>
		<CFLOOP query="CSV">
			<CFSET FileNamex = Replace("#CSV.name#", ".CSV", "")>
			<CFSET FileNamey = RemoveChars("#FileNamex#", 1, 4)>
			<CFSET FileName = Replace("#FileNamey#", "FE", "FM")>
			<cfquery name="getreport" datasource="onlinereports">
				select	* from fmsreportname
				where reptfilename = '#FileName#'
			</cfquery>						
			<cfoutput>
				<TR VALIGN="BASELINE">							
					<TD WIDTH="15%" ALIGN="CENTER"><FONT SIZE="2">#getreport.ReportID#</FONT></TD>
					<CFIF #session.browserName# IS 'MSIE'>
						<TD WIDTH="55%"><FONT SIZE="2"><a href="#LinkURL##csv.name#" target="_new">#getreport.ReportName#</a></FONT></TD>
						<TD><a href="#LinkURL##csv.name#" target="_new">#filename#</a></td>
					<CFELSE>	
						<TD WIDTH="55%"><FONT SIZE="2"><a href="#LinkURL##csv.name#">#getreport.ReportName#</a></FONT></TD>
						<TD><a href="#LinkURL##csv.name#">#filename#</a></td>
					</CFIF>
				</TR>		
			</cfoutput>									
		</CFLOOP>
	</cfif>
</table>
</ul>
</BODY>
</HTML>
