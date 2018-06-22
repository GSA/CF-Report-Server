<!--- NGL:: Load javascript new window --->
<cfinclude template="../../../js/newwindow.cfm">
<!--- NGL: Load Logic of Report Retrieval --->
<cfinclude template="../../fms19/logic/logic_prime_currentyear.cfm">

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
			#total_monthly_report# results returned for the report on <cfif IsDefined("ReportCatagory")>#ReportCatagory#</cfif> in <cfif IsDefined("RegionCode")>#RegionCode#</cfif> for <cfif IsDefined("form.month_selected")>#MonthAsString(month_selected)# #session.year#</cfif>
		</td>
	</tr>
	
	<tr bgcolor="FFFFFF">
		<td width="#report_width_space#">
			<table width="100%" cellpadding="3" cellspacing="0" border="0">
				<tr>
					<td class="mytableheaderMedium" width="10%">Frequency</td>
					<td class="mytableheaderMedium" width="43%">Report Name</td>
					<td class="mytableheaderMedium" width="22%" align="center">Report Number</td>
					<td class="mytableheaderMedium" width="10%">Date</td>
					<td class="mytableheaderMedium" width="15%" align="right">Size (bytes)</td>
				</tr>
				<cfloop index="doy_id" from="1" to="#dim#">
				<cfinclude template="../../fms19/currentyear/retreive_result.cfm">
				<!--- NGL:: Display Message for no result --->
				<cfif month_day2 is '01'>
				<!--- check for first of the month --->
				<cfset monthname = '#MonthasString(month2)#'>
				<tr>
					<td class="content" width="100%" align="center" colspan="4"><a href="#rooturl##session.year#/CloseingSchedules/Closeing#month2#.rtf" target="_new">Closing Schedule</a> For #Monthname#</td>
				</tr>
				</cfif>
				
				<!--- NGL:: BEGIN:: Display Searc result for RTF document --->
				<cfif Contents.RecordCount gt 0>
					<cfloop query="contents">
						<cfset FileNamex = #Contents.name#>				
						
						<cfif #Mid(FileNamex,3 ,1)# is '-' and #left(FileNamex,2)# is #MainRegion#>
							<cfset Filenamex = #RemoveChars(FileNamex,1 ,3)#>
						<cfelseif #Mid(FileNamex,3 ,1)# is '-' and #left(FileNamex,2)# is not #MainRegion#>
							<cfset Filenamex = 'SKIP'>	
						</cfif>
						
						<cfset FileName = ReplaceNoCase("#FileNamex#", ".RTF", "")>
						
						<cfif #Len(FileName)# GT 5>
							<cfset FileName = RemoveChars(FileName, 1, 4)>
						<cfelse>
							<cfset filedate = '-'>
						</cfif>
						
						<cfquery name="getreport" datasource="onlinereports">
							select	* from fmsreportName
							where ReptFileName LIKE '#FileName#'
						</cfquery>
		
						<cfif getreport.RecordCount is 0>
							<cfset reportnm = '#FileName#'>
						<cfelse>
							<cfset reportnm = '#Getreport.reportName#'>
						</cfif>
						<cfif ReportNm is 'SKIP'>
						<cfelse>
						<cfset ReportNm = UCase(#reportnm#)>
						<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
							<td class="content" width="10%" align="center">#getreport.ReptFreqCode#</td>
							<td class="content" width="22%" align="center">							
							<cfif trim(session.browserName) IS 'MSIE'>
								<a href="#session.linkurl##contents.name#" target="_new">#getreport.ReptFileName#</a>
							<cfelse>
								<a href="#session.linkurl##contents.name#">#getreport.ReptFileName#</a>					
							</cfif>
							</td>
							<td class="content" width="43%">#ReportNm#</td>
							<td class="content" width="10%" align="center">#contents.dateLastModified#</td>
							<td class="content" width="15%" align="right">#LSNumberFormat(size, ",")#</td>
						</tr>
						</cfif>
					</cfloop>
				</cfif>
			 <!--- NGL:: END:: Display Searc result for RTF document --->
			 </cfloop> <!---NGL:: Ending closing loop --->
			</table>
		</td>
	</tr>
</table></cfoutput>