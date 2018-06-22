<CFMODULE NAME="StdPortalPageInsite" Homebar="False" StatusBar="False"  banner="/_images/BannerReports.jpg" TITLE="FSS19 Report Search"  Topline="No" GSALogo="No" sidenavname="" Leftnav="FALSE" bottomnav="No" TabBar="TRUE">
<link rel=stylesheet type="text/css" href="style1.css">
<!--- <cfif not isdefined("form.reportfile") or '#Form.reportfile#' is ''>
	<cfabort showerror="You need to select the report">
</cfif> --->
<cfset url.system = 'Sasy'>
<cfset form.reportfile = 'CRCPAY'>
<cfset form.fromdate = '01/01/2006'>
<cfset form.todate = '07/06/2006'>
<cfset reqcopy = 'N'> <!--- use this set to 'Y' to copy a group of reports to the copies directory --->
<cfset totalfound = 0>
<cfset CurrentYear = #Year(now())#>
<cfset FromYear = #right(form.fromdate, 4)#>
<cfset ToYear = #right(form.todate, 4)#>
<cfset julian = #datepart('Y', form.fromdate)#>
<cfset searchYear = '#fromYear#'>
<cfset StartDay = #left(form.fromdate, 2)# & #mid(form.fromdate, 4, 2)#>
<cfset startsearchday = Startday>
<cfset endDay = #left(form.todate, 2)# & #mid(form.todate, 4, 2)#>
<cfset session.system = '#url.system#'>
<cfset systemdir = '#url.system#'>


<CFQUERY NAME="GetReportName" DATASOURCE="OnlineReports">
	SELECT ReportName
	<cfif systemdir is 'FL_Financial'>
		<cfset rfile = 'FL'>
	<cfelseif systemdir is 'FEDS'>
		<cfset rfile = 'Feds23'>
	<cfelse>
		<cfset rfile = systemdir>	
	</cfif>
	FROM #rfile#ReportName
	where reptfilename = '#form.reportfile#'
</CFQUERY>



<table border="0" cellspacing="2" cellpadding="2">
	<tr>
		<form action="searchsetup.cfm?action=change" method="POST" enablecab="Yes">
		<cfoutput>
		<input type="Hidden" name="fromdate" value="#form.fromdate#">
		<input type="Hidden" name="todate" value="#form.todate#">
		<input type="Hidden" name="ReptFileName" value="from.reptfilename">
		</cfoutput>
		<td align="left" valign="bottom"><input type="Submit" value="Change Search Criteria"></td>
		
	</tr>
	
	<TR>
		<TD colspan="2">&nbsp;</TD>
	</TR> 
	<tr>
		<td>
			<table align="center" width="700">
				<tr>
					<th>Report Name</th>
					<th>Report Link</th>
					<th>Size</th>
					<th>Last Changed</th>
				</tr>
				<cfloop condition="#searchyear# LTE #toyear#"> 
					<!--- Establish proper directory to use for search --->
					<cfif searchyear is '#currentyear#'>		
						<CFSET RootDir = "d:\reports\docs\#systemdir#\#SearchYear#"> <!--- set current year volume --->	
					<CFELSE>	
						<CFSET RootDir = "e:\#systemdir#\#searchYear#">		<!--- set to History volume --->
					</cfif>					
					<cfif searchyear is '#fromyear#'>	
						<cfset startsearchday = '#startday#'>	
						<cfset fmonth = #left(fromdate, 2)#>	
						<cfset emonth = 12>
					<cfelse>		
						<!--- need to set search to beginning of the year ---> 
						<cfset startsearchday = '0101'>
						<cfset julian = 001>	
						<cfset fmonth = '01'>
					</cfif>					
					<cfif searchyear is '#toyear#'>
						<cfset endsearchday = '#endday#'>	
						<cfset emonth = #left(todate, 2)#>
					<cfelse>		
						<!--- need to set search to end of the year ---> 
						<cfset endsearchday = '1231'>			
					</cfif>					
					<CFSET RootURL = #ServerUrl# & '#systemdir#' & "/" & #searchYear#>					
				 	<TR><TD colspan="5"><cfoutput>StartsearchDay = #StartsearchDay#, root url = #rooturl#, root dir = #rootdir#,</cfoutput> </TD></TR> --->
					<!--- <cfif systemdir is 'SASY'> --->
						<cfdirectory name="thisyear" directory="#rootdir#" action="LIST" filter="????-#form.reportfile#-??.rtf">
						<cfoutput query="thisyear">
							<cfset FileDay = #left(thisyear.name, 4)#>
							<cfif fileday gte startsearchday and fileday lte endsearchday>
								<cfset totalfound = #totalfound# + 1>
								<TR>
									<td>Del=#rootdir#\#thisyear.name# #GetReportName.reportname#</td>
									<TD>#thisyear.name#, #left(fileday, 2)#/#right(fileday, 2)#/#searchyear#</a></TD>
									<td align="right">#size#</td>
									<td>#dateformat(datelastmodified, "mm/dd/yy")#</td>		
								</TR>
								<cffile action = "delete"  file = "#rootdir#\#thisyear.name#">
							</cfif>
						</cfoutput>
					<cfset searchyear = searchyear +1>
				</cfloop>
				<TR>
					<TD colspan="5">	
					<cfoutput>Total Found: #totalfound#</cfoutput>
					</TD>
				</TR>
			</table>		
		</td>
	</tr>	
</TABLE>
</cfmodule>