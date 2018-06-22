<!--- NGL:: make sure that we do have a date range --->
<cfif (IsDefined("form.endMonth") and len(trim(form.endMonth)) gt 0) and (IsDefined("form.startMonth") and len(trim(form.startMonth)) gt 0) and (IsDefined("form.reportfile") and len(trim(form.reportfile)) gt 0) and DateCompare(form.endMonth, form.startMonth,"d") eq 1>


<!--- NGL:: Load javascript new window --->
<cfinclude template="../../../js/newwindow.cfm">
<!--- NGL: Load Logic of Report Retrieval --->
<cfinclude template="../logic/logic_prime_daterange.cfm">
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
			Report on <cfif IsDefined("reportfile")>#reportfile#</cfif> <cfif IsDefined("ReportCatagory")>#qy_GetCategorySelected.CatagoryName#</cfif> 
		</td>
	</tr>
	<tr bgcolor="FFFFFF">
		<td colspan="3" width="#report_width_space#" class="pageheaderOrange">
			Region: <cfif IsDefined("RegionCode")>#qy_GetRegionSelected.RegionName#</cfif>
		</td>
	</tr>
	<tr bgcolor="FFFFFF">
		<td colspan="3" width="#report_width_space#" class="pageheaderOrange">
			From <cfif IsDefined("startMonth") and IsDefined("endMonth")>#startMonth# To #endMonth#</cfif>
		</td>
	</tr>
	
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
	<tr bgcolor="FFFFFF">
		<td width="#report_width_space#">
			<table width="100%" cellpadding="3" cellspacing="0" border="0">
				<tr>
					<td class="mytableheaderMedium" width="10%">Report Name</td>
					<td class="mytableheaderMedium" width="22%" align="center">date</td>
					<td class="mytableheaderMedium" width="53%">Last date modified</td>
					<td class="mytableheaderMedium" width="15%" align="right">Size (bytes)</td>
				</tr>
				
				<tr>
					<td class="content" width="100%" align="center" colspan="4"><a href="#rooturl##year#/CloseingSchedules/Closeing#month2#.rtf" target="_new">Closing Schedule</a> For #Monthname#</td>
				</tr>
				
				
				<!--- NGL:: BEGIN:: Display Search result for RTF document --->
				
				<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
					<td class="content" width="10%" align="center">#GetReportName.reportname#</td>
					<td class="content" width="22%" align="center">
					<a href="#linkurl##test.name#" target="_blank">#test.name#&nbsp;-&nbsp;#DateFormat(thisdate2, "mm/dd/YYYY")#</a>
					</td>
					<td class="content" width="53%">#dateformat(test.datelastmodified, "mm/dd/yy")#</td>
					<td class="content" width="15%" align="right">#LSNumberFormat(test.size, ",")#</td>
				</tr>
				
			  <!--- NGL:: END:: Display Search result for RTF document --->
			</table>
		</td>
	</tr>
	<cfif reqcopy is 'Y'>
				<cffile action="copy" source="#Directory1#\#test.name#" destination="d:\reports\docs\copies\#DateFormat(thisdate2, "mmddyy")##test.name#">									
				</cfif>
		</cfloop>
		<CFSET Julian = #Julian# + 1>
		<cfif #tdate# is #thisdate#>
			<!--- <cfbreak> --->break
		</cfif>		
	</cfif>		
</cfloop>		
</table></cfoutput>
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