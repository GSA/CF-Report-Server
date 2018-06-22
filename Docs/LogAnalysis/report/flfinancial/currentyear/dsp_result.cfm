<!--- NGL:: Load javascript new window --->
<cfinclude template="../../../js/newwindow.cfm">
<cfif (IsDefined("form.month_selected") and form.month_selected gt 0)>

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
			#nbr_report_result# results returned for the report on <cfif IsDefined("ReportCatagory")>#ReportCatagory#</cfif> in <cfif IsDefined("RegionCode")>#RegionCode#</cfif> for <cfif IsDefined("form.month_selected")>#MonthAsString(month_selected)# #session.year#</cfif>
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
				<!--- NGL:: BEGIN:: Display Searc result for XLS document --->
				<cfinclude template="retreive_result.cfm">
			 	<!--- NGL:: END:: Display Searc result for XLS document --->
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
<ul><li>Make sure to select each criteria when performing your search, <strong>Report level</strong>,  <strong>Month</strong> and <strong>Year</strong>.</li>

<a href="javascript:history.go(-1)">Please go back and try again</a>.
</div>
</cfif>