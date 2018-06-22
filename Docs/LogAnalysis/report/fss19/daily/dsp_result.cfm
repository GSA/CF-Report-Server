<!--- NGL:: Load javascript new window --->
<cfinclude template="../../../js/newwindow.cfm">
<!--- NGL: Load Logic of Report Retrieval --->
<cfinclude template="../logic/logic_prime_daily.cfm">
<!--- NGL: Display Name of Category selected --->
<cfinclude template="../sql/qy_GetCategorySelected.cfm">
<!--- NGL: Display Name of Region selected --->
<cfinclude template="../sql/qy_GetRegionSelected.cfm">
<cfoutput>
<cfset report_width_space= #report_width_right# - 50>
<br>&nbsp;
<table cellpadding="2" cellspacing="1" border="0" bgcolor="666666" width="#report_width_space#" align="center" class="Raised">
	<tr bgcolor="FFFFFF">
		<td colspan="3" width="#report_width_space#" class="pageheader">
			Search Results &raquo;&nbsp;#UCase(report)#
		</td>
	</tr>
	<tr bgcolor="FFFFFF">
		<td colspan="3" width="#report_width_space#" class="pageheaderOrange">
			#nbr_report_result# results returned
		</td>
	</tr>
	<tr bgcolor="FFFFFF">
		<td colspan="3" width="#report_width_space#" class="pageheaderOrange">
			Report on <cfif IsDefined("qy_GetCategorySelected.CatagoryName")>#qy_GetCategorySelected.CatagoryName#</cfif> in <cfif IsDefined("qy_GetRegionSelected.RegionName")>#qy_GetRegionSelected.RegionName#</cfif> for <cfif IsDefined("month") and IsDefined("day") and IsDefined("year")>#month#/#day#/#year#</cfif>
		</td>
	</tr>
	
	<tr bgcolor="FFFFFF">
		<td width="#report_width_space#">
			<table width="100%" cellpadding="3" cellspacing="0" border="0">
				<tr>
					<td class="mytableheaderMedium" width="10%">Frequency</td>
					<td class="mytableheaderMedium" width="22%" align="center">Report Number</td>
					<td class="mytableheaderMedium" width="53%">Report Title</td>
					<td class="mytableheaderMedium" width="15%" align="right">Size (bytes)</td>
				</tr>
				<!--- NGL:: Display Message for no result --->
				<cfif month_day2 is '01'>
				<!--- check for first of the month --->
				<cfset monthname = '#MonthasString(month2)#'>
				<tr>
					<td class="content" width="100%" align="center" colspan="4"><a href="#rooturl##year#/CloseingSchedules/Closeing#month2#.rtf" target="_new">Closing Schedule</a> For #Monthname#</td>
				</tr>
				</cfif>
				
				<!--- NGL:: BEGIN:: Display Searc result for RTF document --->
				<cfif Contents.RecordCount gt 0>
					<cfloop query="contents">
						<cfset FileName = ReplaceNoCase("#Contents.name#", ".RTF", "")>			
						<cfquery name="getreport" datasource="OnLineReports">
							select	* from fss19reportname
							<cfif #session.reportcatagory# is 'S3'> <!--- S3 and SD have the same report names --->
								where catagorycode = 'SD'	AND reptfilename = '#FileName#'
							<cfelse>
								where catagorycode = '#session.reportcatagory#'	AND reptfilename = '#FileName#'
							</cfif>
						</cfquery>
						<cfset ReportNm = UCase(#getreport.reportname#)>
				<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
					<td class="content" width="10%" align="center">#getreport.ReportFreq#</td>
					<td class="content" width="22%" align="center">
					<cfif len(trim(Getreport.password)) eq 0>										
						<cfif trim(session.browserName) IS 'MSIE'>
							<a href="#session.linkurl##contents.name#" target="_new">#FileName#</a>
						<cfelse>
							<a href="#session.linkurl##contents.name#">#FileName#</a>					
						</cfif>
					<cfelse>									
						<a href="passset.cfm?file=#getreport.alias#&ext=RTF" target="_new">#getreport.alias#</a>
					</cfif>
					</td>
					<td class="content" width="53%">#ReportNm#</td>
					<td class="content" width="15%" align="right">#LSNumberFormat(size, ",")#</td>
				</tr>
				</cfloop>
			 </cfif>
			 <!--- NGL:: END:: Display Searc result for RTF document --->
			 <!--- NGL:: BEGIN:: Display Searc result for CSV document --->	
			 <cfif CSV.RecordCount gt 0>
			 	<cfloop query="CSV">
					<cfset FileName = ReplaceNoCase("#csv.name#", ".CSV", "")>			
					<cfquery name="getreport" datasource="OnLineReports">
						select	* from fss19reportname
								where catagorycode = '#session.reportcatagory#'
									AND reptfilename = '#FileName#'
					</cfquery>
					<cfset ReportNm = UCase(#getreport.reportname#)>
				<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
					<td class="content" width="10%" align="center">#getreport.ReportFreq#</td>
					<td class="content" width="22%" align="center">
					<cfif len(trim(Getreport.password)) eq 0>										
						<cfif trim(session.browserName) IS 'MSIE'>
							<a href="#session.linkurl##csv.name#" target="_new">#FileName#</a>
						<cfelse>
							<a href="#session.linkurl##csv.name#">#FileName#</a>			
						</cfif>
					<cfelse>									
						<a href="passset.cfm?file=#getreport.alias#&ext=csv" target="_new">#getreport.alias#</a>
					</cfif>
					</td>
					<td class="content" width="53%">#ReportNm#</td>
					<td class="content" width="15%" align="right">#LSNumberFormat(size, ",")#</td>
				</tr>
				</cfloop>
			 </cfif>
			 <!--- NGL:: END:: Display Searc result for CSV document --->
			 <!--- NGL:: BEGIN:: Display Searc result for TXT document --->
			 <cfif TXT.RecordCount gt 0>
					<cfloop query="TXT">
					<cfset FileName = ReplaceNoCase("#TXT.name#", ".TXT", "")>
					<cfset FileName = ReplaceNoCase("#filename#", ".TXT", "")>
					<cfquery name="getreport" datasource="OnLineReports">
						select	* from fss19reportname
						<cfif #session.reportcatagory# is 'S3'> <!--- S3 and SD have the same report names --->
							where catagorycode = 'SD'	AND reptfilename = '#FileName#'
						<cfelse>
							where catagorycode = '#session.reportcatagory#'	AND reptfilename = '#FileName#'
						</cfif>
					</cfquery>
					<cfset ReportNm = UCase(#getreport.reportname#)>
				<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
					<td class="content" width="10%" align="center">Text file</td>
					<td class="content" width="22%" align="center">
					<cfif len(trim(Getreport.password)) eq 0>										
						<cfif trim(session.browserName) IS 'MSIE'>
							<a href="#session.linkurl##TXT.name#" target="_new">#FileName#</a>
						<cfelse>
							<a href="#session.linkurl##TXT.name#">#FileName#</a>					
						</cfif>
					<cfelse>									
						<a href="passset.cfm?file=#getreport.alias#&ext=RTF" target="_new">#getreport.alias#</a>
					</cfif>
					</td>
					<td class="content" width="53%">#ReportNm#</td>
					<td class="content" width="15%" align="right">#LSNumberFormat(size, ",")#</td>
				</tr>
				</cfloop>
			 </cfif>
			 <!--- NGL:: END:: Display Searc result for TXT document --->
			</table>
		</td>
	</tr>
</table></cfoutput>