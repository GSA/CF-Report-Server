<!--- NGL:: Load javascript new window --->
<cfinclude template="../../../js/newwindow.cfm">
<!--- NGL: Load Logic of Report Retrieval --->
<cfinclude template="../logic/logic_prime_currentyear.cfm">

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
					<td class="mytableheaderMedium" width="10%">Date</td>
					<td class="mytableheaderMedium" width="22%" align="center">Report Number</td>
					<td class="mytableheaderMedium" width="43%">Report Title</td>
					<td class="mytableheaderMedium" width="15%" align="right">Size (bytes)</td>
				</tr>
				<cfloop index="doy_id" from="1" to="#dim#">
				<cfinclude template="retreive_result.cfm">
				<!--- NGL:: BEGIN:: Display Searc result for RTF document --->
				<cfif Contents.RecordCount gt 0>
					<cfloop query="contents">
						<cfif #compdate# is #left(name, 4)#>
						<cfset FileName1 = RemoveChars("#Contents.name#", 1, 5)>
						<cfset FileName2 = Replace("#filename1#", ".RTF", "")>
						<cfset FileName = SpanExcluding("#filename2#", "-")>
						<cfquery name="getreport" datasource="OnLineReports">
							select	* from tassreportname
							Where reptfilename = '#FileName#'
							AND CatagoryCode = '#session.CatagoryCode#'
						</cfquery>
						<cfif #left(FileName, 1)# is '#session.CatagoryCode#'>
							<!--- NGL:: BEGIN:: determine = last date modified --->
							<cfset filedate = contents.dateLastModified>
							<cfset ReportNm = UCase(#getreport.reportname#)>
						<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
							<td class="content" width="10%" align="center">#getreport.ReportFreq#</td>
							<td class="content" width="10%" align="center">#filedate#</td>
							<td class="content" width="22%" align="center">							
							<cfif #Getreport.password# IS "">
							<cfif trim(session.browserName) IS 'MSIE'>
								<a href="#session.linkurl##contents.name#" target="_new">#FileName2#</a>
							<cfelse>
								<a href="#session.linkurl##contents.name#">#FileName2#</a>					
							</cfif>
							<cfelse>
							#FileName2#
							</cfif>
							</td>
							<td class="content" width="43%">#ReportNm#</td>
							<td class="content" width="15%" align="right">#LSNumberFormat(size, ",")#</td>
						</tr>
						</cfif>	
						</cfif>	
					</cfloop>
				</cfif>
			 <!--- NGL:: END:: Display Searc result for RTF document --->
			 </cfloop> <!---NGL:: Ending closing loop --->
			</table>
		</td>
	</tr>
</table></cfoutput>