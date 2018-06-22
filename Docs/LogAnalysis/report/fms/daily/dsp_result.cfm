<!--- NGL:: Load javascript new window --->
<cfinclude template="../../../js/newwindow.cfm">
<!--- NGL: Load Logic of Report Retrieval --->
<cfinclude template="../logic/logic_prime_daily.cfm">
<!--- NGL:: make sure that we do have a date range --->
<cfif IsDefined("form.ReptRegion") and IsDefined("form.year") and IsDefined("form.month") and IsDefined("form.day")>

<cfoutput>
<!--- NGL::BEGIN:: make sure we did select a report --->
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
			#nbr_report_result# results returned for the report on <cfif IsDefined("ReportCatagory")>#ReportCatagory#</cfif> in <cfif IsDefined("RegionCode")>#RegionCode#</cfif> from <cfif IsDefined("startMonth") and IsDefined("endMonth")>#startMonth# to #endMonth#</cfif>
		</td>
	</tr>
	
	<tr bgcolor="FFFFFF">
		<td width="#report_width_space#">
			<table width="100%" cellpadding="3" cellspacing="0" border="0">
				<tr>
					<td class="mytableheaderMedium" width="15%">Report Number</td>
					<td class="mytableheaderMedium" width="40%">Report Title</td>
					<td class="mytableheaderMedium" width="15%">File Name</td>
					<td class="mytableheaderMedium" width="15%" align="right">Size (bytes)</td>
				</tr>
				<!--- Establish proper directory to use for search --->
				<!--- NGL:: BEGIN:: Display Search result for RTF document --->
				<cfif content.recordcount gt 0>
				<cfloop query="content">
				<!--- NGL:: Retreive FMS report Name from database --->
				<cfset filename = "#removechars(content.name, 1, 6)#">
				<cfset filename = Replace("#filename#", ".RTF", "", "ALL")>
				<cfquery name="GetReportFileName" datasource="OnlineReports">
					SELECT ReportName, ReptFileName, Reportid
					FROM #rfile#ReportName
					where ReptFileName LIKE '%#filename#%'<!--- #form.ReptFreqCode# --->
				</cfquery>
				<tr bgcolor="###iif(content.recordcount MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
					<td class="content" width="15%"><a href="#linkurl##content.name#" target="_blank">#GetReportFileName.Reportid#</a></td>
					<td class="content" width="40%"><a href="#linkurl##content.name#" target="_blank">#GetReportFileName.ReportName#</a></td>	
					<td class="content" width="15%"><a href="#linkurl##content.name#" target="_blank">#GetReportFileName.ReptFileName#</a></td>
					<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
				</tr>
				</cfloop>
				</cfif>
			  	<!--- NGL:: END:: Display Search result for RTF document --->
			</table>
		</td>
	</tr>
</table>
</cfoutput>
<cfelse>
<div style="position:relative; left:56px; top:20px; width:350px; height:158px;">
We didn't find any report matching your criteria:
<br><br>
Suggestions:
<ul><li>You must select a <strong>starting AND ending date</strong> to perform your search.</li>
<li>You must select a <strong>report type</strong> in order to perform a search</li></ul>

<a href="javascript:history.go(-1)">Please go back and try again</a>.
</div>

</cfif>
