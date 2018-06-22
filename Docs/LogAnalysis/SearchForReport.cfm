<CFMODULE NAME="StdPortalPageInsite" Homebar="False" StatusBar="False"  banner="/_images/BannerReports.jpg" TITLE="FSS19 Report Search"  Topline="No" GSALogo="No" sidenavname="" Leftnav="FALSE" bottomnav="No" TabBar="TRUE">
<link rel=stylesheet type="text/css" href="style1.css">
<cfif not isdefined("form.reportfile") or '#Form.reportfile#' is ''>
	<cfabort showerror="You need to select the report">
</cfif>
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

<cfif url.system is 'ASPA' or url.system is 'TARPS'>
	<cfset systemdir = 'TASS'>
<cfelse>
	<cfset systemdir = '#url.system#'>
</cfif>	

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

<cfif url.system is 'FSS19'>
	<cfset fdate = #right(form.fromdate, 4)# & #left(form.fromdate, 2)# & #mid(form.fromdate, 4, 2)# >
	<cfset tdate = #right(form.todate, 4)# & #left(form.todate, 2)# & #mid(form.todate, 4, 2)# >	
	<cfset dircat = '0' & #form.RegionCode# & '\' & #form.catagoryCode#>
	<cfset linkcat = '0' & #form.RegionCode# & '/' & #form.catagoryCode#>
</cfif>

<cfif #url.system# is 'FEDS' or #url.system# is 'FMS'>
	<cfset fdate = #left(form.fromdate, 2)# & #mid(form.fromdate, 4, 2)# & #mid(form.fromdate, 9, 2)#>
	<cfset tdate = #left(form.todate, 2)# & #mid(form.todate, 4, 2)# & #mid(form.todate, 9, 2)#>	
</cfif>
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
		<td align="center" colspan="5">
			<cfoutput>
			<font size="+1">Searching "#url.system#" &nbsp;for Report #form.reportfile# in:<br> 
			<cfif url.system is 'FSS19'>
				#linkcat# 
			<cfelseif url.system is 'FMS'>
				Region &nbsp;#form.regioncode#,	Frequency #form.freqcode#
			<cfelseif url.system is 'feds' or url.system is 'sasy'>
				Region &nbsp;#form.regioncode#	 			
			<cfelseif url.system is 'CSC'>
				Store &nbsp;#form.StoreID#		
			</cfif>
			&nbsp; From:  #form.fromdate#, To:  #form.todate#</font>
			</cfoutput>
		</td>

	</TR>	
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
				 	<!--- <TR><TD colspan="5"><cfoutput>StartsearchDay = #StartsearchDay#, root url = #rooturl#, root dir = #rootdir#,</cfoutput> </TD></TR> --->
					<cfif systemdir is 'SASY'>
						<cfdirectory name="thisyear" directory="#rootdir#" action="LIST" filter="????-#form.reportfile#-#form.regioncode#.rtf">
						<cfoutput query="thisyear">
							<cfset FileDay = #left(thisyear.name, 4)#>
							<cfif fileday gte startsearchday and fileday lte endsearchday>
								<cfset totalfound = #totalfound# + 1>
								<TR>
									<td>#GetReportName.reportname#</td>
									<TD><a href="#rooturl#/#fileday#-#form.reportfile#-#form.regioncode#.rtf">#form.reportfile#, #left(fileday, 2)#/#right(fileday, 2)#/#searchyear#</a></TD>
									<td align="right">#size#</td>
									<td>#dateformat(datelastmodified, "mm/dd/yy")#</td>		
								</TR>
							</cfif>
						</cfoutput>
					<cfElSEif systemdir is 'CSC'>
						<cfdirectory name="thisyear" directory="#rootdir#" action="LIST" filter="????-#form.storeID#-#form.reportfile#.rtf">
						<cfoutput query="thisyear">
							<cfset FileDay = #left(thisyear.name, 4)#>
							<cfif fileday gte startsearchday and fileday lte endsearchday>
								<cfset totalfound = #totalfound# + 1>
								<TR>
									<td>#GetReportName.reportname#</td>
									<TD><a href="#rooturl#/#fileday#-#form.storeID#-#form.reportfile#.rtf">#form.reportfile#, #left(fileday, 2)#/#right(fileday, 2)#/#searchyear#</a></TD>
									<td align="right">#size#</td>
									<td>#dateformat(datelastmodified, "mm/dd/yy")#</td>		
								</TR>
							</cfif>
						</cfoutput>
					<cfElSEif systemdir is 'Tass'>
						<cfdirectory name="thisyear" directory="#rootdir#" action="LIST" filter="????-#form.reportfile#*.rtf">
						<cfoutput query="thisyear">
							<cfset FileDay = #left(thisyear.name, 4)#>
							<cfif fileday gte startsearchday and fileday lte endsearchday>
								<cfset totalfound = #totalfound# + 1>
								<TR>
									<td>#GetReportName.reportname#</td>
									<TD><a href="#rooturl#/#thisyear.name#">#form.reportfile#, #left(fileday, 2)#/#right(fileday, 2)#/#searchyear#</a></TD>
									<td align="right">#trim(size)#</td>
									<td>#dateformat(datelastmodified, "mm/dd/yy")#</td>		
								</TR>
							</cfif>
						</cfoutput>
					<cfElSEif systemdir is 'FL_Financial'>
					<!--- <cfoutput>#form.reportfile#</cfoutput> --->
						<cfdirectory name="thisyear" directory="#rootdir#" action="LIST" filter="??#form.reportfile#.xls">
						<cfoutput query="thisyear">
							<cfset FileDay = #left(thisyear.name, 2)#>
							<cfif fileday gte #left(startsearchday, 2)# and fileday lte #left(endsearchday, 2)#>
								<cfset totalfound = #totalfound# + 1>
								<TR>
									<td>#GetReportName.reportname#</td>
									<TD><a href="#rooturl#/#thisyear.name#">#form.reportfile#, #left(fileday, 2)#/#searchyear#</a></TD>
									<td align="right">#trim(size)#</td>
									<td>#dateformat(datelastmodified, "mm/dd/yy")#</td>		
								</TR>
							</cfif>
						</cfoutput>
					<cfElseif url.system is 'FSS19'>
						<cfif (searchyear is fromyear) and (#left(fdate, 4)# is not 01/01)> <!--- we need to adjust the julian date --->
							<cfdirectory name="startpoint" directory="#rootdir#" action="LIST" filter="#fdate#*.*">			
						</cfif>
							
						<cfquery name="getdate" datasource="omc" dbtype="ODBC">
							select * from calendar
							where Year = #searchYear# and month >= #left(StartsearchDay, 2)# and Month_Day > 0
							Order by Month, Month_Day
						</cfquery>
						
						<cfloop query="getdate">
							<cfif searchyear is fromyear and month is #mid(fdate, 5,2)# and Month_Day LT #right(fdate, 2)#>
							<cfelse>
								<cfset thisdate = #searchYear# & #NumberFormat(Month, "00")# & #NumberFormat(Month_Day, "00")#>
								<cfset thisdate2 = #createdate(searchyear, month, month_day)#>
								<CFSET directory1 = #rootdir# & '\' & #thisdate# & "." & #Numberformat(#Julian#, "000")# & "\" & #dircat#>	
								<CFSET linkurl = #rooturl# & '/' & #thisdate# & "." & #Numberformat(#Julian#, "000")# & "/" & #linkcat# & "/">	
								<!--- <cfoutput>#Directory1#, #linkurl#</cfoutput><br>  --->
								<cfdirectory name="test" directory="#directory1#" Action="list" filter="#form.reportfile#.*">
						
								<cfloop query="test">	
									<cfset totalfound = #totalfound# + 1>
									<cfoutput>
									<TR>
										<td>#GetReportName.reportname#</td>
										<TD><a href="#linkurl##test.name#" target="_blank">#test.name#&nbsp;-&nbsp;#DateFormat(thisdate2, "mm/dd/YYYY")#</a></TD>
										<td>#test.size#</td>
										<td>#dateformat(test.datelastmodified, "mm/dd/yy")#</td>
									</TR>	
									<cfif reqcopy is 'Y'>
										<cffile action="copy" source="#Directory1#\#test.name#" destination="d:\reports\docs\copies\#DateFormat(thisdate2, "mmddyy")##test.name#">									
									</cfif>
									</cfoutput>
								</cfloop>
								<CFSET Julian = #Julian# + 1>
								<cfif #tdate# is #thisdate#>
									<cfbreak>
								</cfif>		
							</cfif>		
						</cfloop>		
					<cfElseif url.system is 'FEDS'>						
						<!--- <tr><td><cfoutput>#rootdir#, #fmonth#, #form.regioncode#</cfoutput></td></tr> 	 --->
						<cfif form.regioncode is 'NW' OR form.regioncode is 'ASREQ'>	
							<cfset rootdir = #rootdir# & '\' & #form.regioncode# & '\' & 'fss23' & '\' & '#fmonth#'>	
							<cfset rooturl = #rooturl# & '/' & #form.regioncode# & '/' & 'fss23' & '/' & '#fmonth#' & '/' >
							<!--- <tr><td><cfoutput>#rootdir#</cfoutput></td></tr> --->
							<!--- Do monthly search --->									
							<cfloop index="index" from="#fmonth#" to="#emonth#" step="1">
								<cfdirectory name="getfiles" directory="#rootdir#" action="LIST">	<!--- grab all the files in this monthly dir --->				
									<cfoutput query="getfiles">
										<cfif #mid(name, 3, 1)# is '-'>
											<cfset newname = '#removechars(name, 1,3)#'>
										<cfelse>
											<cfset newname = '#name#'> 						
										</cfif>						
										<cfset newname = '#reverse(newname)#'>
										<cfset newname = '#removechars(newname, 1, 8)#'>
										<cfset newname = '#reverse(newname)#'>
										<!--- <tr><td>#form.reportfile#,   #newname#</td></tr>  --->
										<cfif form.reportfile is '#newname#'>
											<cfset totalfound = #totalfound# + 1>
											<TR>
												<td>#GetReportName.reportname#</td>
												<TD><a href="#rooturl##name#" target="_blank">#name#</a></TD>
												<td align="right">#size#</td>
												<td>#dateformat(datelastmodified, "mm/dd/yy")#</td>							
											</TR>
										</cfif>
									</cfoutput>		
							</cfloop>							
						<cfelse>	
							<cfset rootdir = #rootdir# & '\' & #form.regioncode# & '\' & 'fss23'>		
							<cfquery name="getdate" datasource="omc" dbtype="ODBC">
								select * from calendar
								where Year = #searchYear# and month >= #left(StartsearchDay, 2)# and Month_Day > 0
								Order by Month, Month_Day
							</cfquery>
						
							<cfloop query="getdate">
								<cfif searchyear is fromyear and month is #left(fdate, 2)# and Month_Day LT #mid(fdate, 3, 2)#>
								
								<cfelse>
									<cfset thisdate = #NumberFormat(Month, "00")# & #NumberFormat(Month_Day, "00")# & #right(searchYear, 2)#>
									<cfset thisdate2 = #createdate(searchyear, month, month_day)#>
									<CFSET directory1 = #rootdir# & '\' & #thisdate# & "." & #Numberformat(#Julian#, "000")#>	
									<CFSET linkurl = #rooturl# & '/' & '#Form.regioncode#' & '/'   & 'FSS23' & '/' & #thisdate# & "." & #Numberformat(#Julian#, "000")# & "/">	
									
									<cfdirectory name="test" directory="#directory1#" Action="list" filter="#form.reportfile#.*">
										<!--- <tr><td><cfoutput>#directory1#</cfoutput></td></tr> --->
										<cfloop query="test">	
											<cfset totalfound = #totalfound# + 1>
											<cfoutput>
											<TR>
												<td>#GetReportName.reportname#</td>
												<TD><a href="#linkurl##test.name#" target="_blank">#test.name##DateFormat(thisdate2, "mm/dd/YYYY")#</a></TD>
												<td align="right">#test.size#</td>
												<td>#dateformat(test.datelastmodified, "mm/dd/yy")#</td>
											</TR>	
											</cfoutput>
										</cfloop>
									
									<CFSET Julian = #Julian# + 1>
									<cfif #tdate# is #thisdate#>					
										<cfbreak>
									</cfif>		
								</cfif>		
							</cfloop>								
						</cfif>
					<cfElseif url.system is 'FMS'>						
						<!--- <tr><td><cfoutput>#rootdir#\#form.regioncode#\#fmonth#, </cfoutput></td></tr> --->
						<cfif form.freqcode is 'MO' OR form.freqcode is 'IE'>	
							<cfset rootdir = #rootdir# & '\' & #form.regioncode# & '\' & '#freqCode#' & '\'>	
							<cfset rooturl = #rooturl# & '/' & #form.regioncode# & '/' & '#freqCode#' & '/'>
							<!--- <tr><td><cfoutput>ROOT Directory - #rootdir#</cfoutput></td></tr> --->
							<!--- Do monthly search --->
									
							<cfloop index="index" from="#fmonth#" to="#emonth#" step="1">
								<cfif index Less than 10>
									<cfset newmonth = '0' & #index#>
								<cfelse>
									<cfset newmonth = #index#>
								</cfif>
								<cfset nrootdir = #rootdir# & '#newmonth#'>
								<cfset nrooturl = #rooturl# & '#newmonth#' & '/' >						
								<cfdirectory name="getfiles" directory="#nrootdir#" action="LIST">	<!--- grab all the files in this monthly dir --->				
									<!--- <tr><td><cfoutput>ROOT Directory - #nrootdir#</cfoutput></td></tr> --->
									<cfoutput query="getfiles">
										<cfif #left(name, 1)# is not '.'>								
											<cfset newname = '#removechars(name, 1,4)#'>
											<cfif #left(newname, 2)# is '00'>
												<cfset newname = '#removechars(newname, 1,4)#'>
											</cfif>
											
											<cfset newname = '#reverse(newname)#'>
											<cfset newname = '#removechars(newname, 1, 4)#'>
											<cfset newname = '#reverse(newname)#'>
											<!--- <tr><td>#form.reportfile#,   #newname#</td></tr> --->
											<cfif form.reportfile is '#newname#'>
												<cfset totalfound = #totalfound# + 1>
												<TR>
													<td>#GetReportName.reportname#</td>
													<TD><a href="#nrooturl##name#" target="_blank">#name#
													<td>#dateformat(datelastmodified, "mm/dd/yy")#</td>							
												</TR>
											</cfif>
										</cfif>	
									</cfoutput>		
							</cfloop>							
						<cfelse>	
							<cfset rootdir = #rootdir# & '\' & #form.regioncode# & '\' & 'DA'>	
							<tr><td><cfoutput>ROOT Directory - #rootdir#</cfoutput></td></tr>
							<cfquery name="getdate" datasource="omc" dbtype="ODBC">
								select * from calendar
								where Year = #searchYear# and month >= #left(StartsearchDay, 2)# and Month_Day > 0
								Order by Month, Month_Day
							</cfquery>
						
							<cfloop query="getdate">
								<cfif searchyear is fromyear and month is #left(fdate, 2)# and Month_Day LT #mid(fdate, 3, 2)#>
							
								<cfelse>
									<cfset thisdate = #NumberFormat(Month, "00")# & #NumberFormat(Month_Day, "00")# & #right(searchYear, 2)#>
									<cfset thisdate2 = #createdate(searchyear, month, month_day)#>
									<CFSET directory1 = #rootdir# & '\' & #thisdate# & "." & #Numberformat(#Julian#, "000")#>	
									<CFSET linkurl = #rooturl# & '/' & '#Form.regioncode#' & '/'   & 'DA' & '/' & #thisdate# & "." & #Numberformat(#Julian#, "000")# & "/">	
									
									<cfdirectory name="test" directory="#directory1#" Action="list">
									<cfoutput query="test">	
										<!--- <tr><td><#directory1#</td></tr>  --->
										<cfif #left(name, 1)# is not '.'>								
											<cfset newname = '#removechars(name, 1,4)#'>																			
											<cfset newname = '#reverse(newname)#'>
											<cfset newname = '#removechars(newname, 1, 4)#'>
											<cfset newname = '#reverse(newname)#'>
											<!--- <tr><td>#form.reportfile#,   #newname#</td></tr> --->
											<cfif form.reportfile is '#newname#'>
												<cfset totalfound = #totalfound# + 1>
												<TR>
													<td>#GetReportName.reportname#</td>
													<TD><a href="#linkurl##name#" target="_blank">#name#</a></TD>
													<td align="right">#size#</td>
													<td>#dateformat(datelastmodified, "mm/dd/yy")#</td>							
												</TR>
											</cfif>
										</cfif>	
									</cfoutput>
									<CFSET Julian = #Julian# + 1>
									<cfif #tdate# is #thisdate#>					
										<cfbreak>
									</cfif>		
								</cfif>		
							</cfloop>								
						</cfif>								
					</cfif>
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