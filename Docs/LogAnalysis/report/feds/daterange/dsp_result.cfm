<!--- NGL:: Load javascript new window --->
<cfinclude template="../../../js/newwindow.cfm">
<!--- NGL: Load Logic of Report Retrieval --->
<cfinclude template="../logic/logic_prime_daterange.cfm">

<cfoutput>
<!--- NGL::BEGIN:: make sure we did select a report --->
<cfif IsDefined("form.fromdate") and len(trim(form.fromdate)) gt 0 and IsDefined("form.todate") and len(trim(form.todate)) gt 0 and IsDefined("form.reportfile")>

<!--- NGL:: Perform search only if date range is no more than a year --->
<cfset daterange =  Val(ToYear) - Val(FromYear)>

<!--- NGL::BEGIN:: make sure we did select a report --->
<cfif (daterange lte 1)>
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
			#nbr_report_result# results returned for <cfif IsDefined("form.ReptRegion")>for Region #form.ReptRegion#</cfif> from <cfif IsDefined("fromdate") and IsDefined("todate")>#fromdate# to #todate#</cfif>
		</td>
	</tr>
	<tr bgcolor="FFFFFF">
		<td width="#report_width_space#">
			<table width="100%" cellpadding="3" cellspacing="0" border="0">
				<tr>
					<td class="mytableheaderMedium" width="65%">Report Name</td>
					<td class="mytableheaderMedium" width="15%" align="center">Report Link</td>
					<td class="mytableheaderMedium" width="10%">Last modified</td>
					<td class="mytableheaderMedium" width="10%" align="right">Size (bytes)</td>
				</tr>
				<!--- Display Special Regions NW and ASREQ --->
				<cfif form.ReptRegion is 'NW' OR form.ReptRegion is 'ASREQ'>
	
					<cfset totalfound = 0>
					
					<!--- Do monthly search --->									
					<cfloop index="index" from="#fmonth#" to="#emonth#" step="1">
					<cfif index lt 10>
						<cfset index = "0#index#">
					<cfelse>
						<cfset index = "#index#">
					</cfif>
					<cfdirectory name="getdate" directory="#rootdir#\#index#" action="LIST">	<!--- grab all the files in this monthly dir --->				
						<cfloop query="getdate">
							<cfif #mid(getdate.name, 3, 1)# is '-'>
								<cfset newname = '#removechars(getdate.name, 1,3)#'>
							<cfelse>
								<cfset newname = '#getdate.name#'> 						
							</cfif>						
							<cfset newname = '#reverse(newname)#'>
							<cfset newname = '#removechars(newname, 1, 8)#'>
							<cfset newname = '#reverse(newname)#'>
							<cfif form.reportfile is '#newname#'>
								<cfset totalfound = #totalfound# + 1>
					
								<!--- NGL:: BEGIN:: Display Search result for RTF document --->
								
								<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
									<td class="content" width="65%" align="left">#GetReportName.reportname#</td>
									<td class="content" width="15%" align="center">
									<a href="#rooturl##getdate.name#" target="_blank">#getdate.name#</a>
									</td>
									<td class="content" width="10%">#dateformat(getdate.datelastmodified, "mm/dd/yy")#</td>
									<td class="content" width="10%" align="right">#LSNumberFormat(getdate.size, ",")#</td>
								</tr>
								
							  <!--- NGL:: END:: Display Search result for RTF document --->
							
							</cfif>
						</cfloop>		
					</cfloop>
					
				<!--- Display All other Regions --->	
				<cfelse>
					<!--- NGL:: BEGIN:: Display Search result for RTF document --->
						
						<cfinclude template="retreive_result.cfm">
									
					<!--- NGL:: END:: Display Search result for RTF document --->
		
				</cfif>	
			</table>
		</td>
	</tr>			
</table>

<cfelse>
<div style="position:relative; left:56px; top:20px; width:350px; height:158px;">
We didn't find any report matching your criteria:
<br><br>
Suggestions:
<ul><li>You can only perform a search for a <strong>date range</strong> is no more than a year .</li>

<a href="javascript:history.go(-1)">Please go back and try again</a>.
</div>
</cfif>

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
</cfoutput>