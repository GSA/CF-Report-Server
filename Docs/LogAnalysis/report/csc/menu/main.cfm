<!--- Initialize local variables --->
<cfparam name="client.reportfile" default="">
<cfparam name="client.month_selected" default="">

<!--- NGL:: Set Report file selected in session as a client variable --->
<cfif IsDefined("form.reportfile") and len(trim(form.reportfile)) gt 0>
<cfset client.reportfile = "#form.reportfile#">
</cfif>
<!--- NGL:: Set Month selected in session as a client variable --->
<cfif IsDefined("form.month_selected") and len(trim(form.month_selected)) gt 0>
<cfset client.month_selected = "#form.month_selected#">
</cfif>
<!--- NGL:: Retreive all reports related to CSC --->
<cfinclude template="../sql/qy_GetCategory.cfm">
<!--- NGL:: Retreive all regions' stores related to CSC --->
<cfinclude template="../sql/qy_GetRegion.cfm">
<!--- NGL:: Javascript with the codes that handle the drop down boxes --->
<cfinclude template="../../../js/dropdown_csc.cfm">
<cfoutput>
In this section, you may find all report materials pertaining to <strong>#UCase(report)#</strong>
					<br>
					<ul>
					
					<div onClick="toggle('one_a', event)" onMouseOver="this.style.cursor='hand';" align="left">
					<img src="images/icons/red_right.jpg" alt="click here to start your search for a report on the CM4 Server in Crystal City, VA - Current Year + History" border="0" align="absmiddle">&nbsp;CM4 Server in Crystal City, VA - Current Year + History
					</div>
					<cfset report_width_space= #report_width_right# - 250>
					<div id="one_a" style="display:block;">
					<br>&nbsp;
					<table cellpadding="2" cellspacing="1" border="0" bgcolor="666666" width="#report_width_space#">
						<tr bgcolor="FFFFFF">
							<td colspan="3" width="#report_width_space#">
								Select a region and a related strore, and a date of your choice:
							</td>
						</tr>
						<form action="#CGI.SCRIPT_NAME#?report=#report#&display_result=daily_csc" method="post" name="when">
						<tr bgcolor="FFFFFF">
							<td width="50%">
								<table>
									<tr>
										<td>
										Continents:<br>
										<select name="region" class="content" size="4" style="width:175px; " onChange="populateRegionStore(document.when,document.when.region.options[document.when.region.selectedIndex].value)">
										<cfloop query="qy_GetRegion">
										<option value="#region#">#region#</option>
										</cfloop>
										</select>
										</td>
									</tr>
									
									<tr>
										<td>
										Select a Store:<br>
			
										<select name="RegionStore" onChange="populateStore(document.when,document.when.RegionStore.options[document.when.RegionStore.selectedIndex].text)" class="content">
										<option value=''>&nbsp;&nbsp;&nbsp;&nbsp;await Region selection&nbsp;&nbsp;&nbsp;&nbsp;</option>
										</select>
										</td>
									</tr>
								</table>
							</td>
							<td class="content" align="center" width="10%">
							&raquo;&raquo;
							</td>
							<td width="40%">
							<cfinclude template="../../../cmm/calendar.cfm">
							</td>
						</tr>
						</form>
					</table>
					</div>
					 
					<br>&nbsp;
					
					 
					<div onClick="toggle('one_b', event)" onMouseOver="this.style.cursor='hand';" align="left">
					<img src="images/icons/red_right.jpg" alt="click here to start your search for a report based on a date range" border="0" align="absmiddle">&nbsp;Search for a report based on a date range
					</div>
					
					
					<br>&nbsp;
					<div id="one_b" style="display:none;">
					<table cellpadding="2" cellspacing="1" border="0" bgcolor="666666" width="#report_width_space#">
						<tr bgcolor="FFFFFF">
							<td colspan="3" width="#report_width_space#">
								Select a region and a related strore, a date range and, a report of your choice:
							</td>
						</tr>
						<cfform action="#CGI.SCRIPT_NAME#?report=#report#&display_result=daterange_csc" method="post" name="store_daterange">
						<tr bgcolor="FFFFFF">
							<td width="50%">
								<table>
									<tr>
										<td>
										Regions:<br>
										<select name="region" class="content" size="3" style="width:175px; " onChange="populateRegionStore(document.store_daterange,document.store_daterange.region.options[document.store_daterange.region.selectedIndex].value)">
										<cfloop query="qy_GetRegion">
										<option value="#region#">#region#</option>
										</cfloop>
										</select>
										</td>
									</tr>
									
									<tr>
										<td>
										Select a Store:<br>
			
										<select name="RegionStore" onChange="populateStore(document.store_daterange,document.store_daterange.RegionStore.options[document.store_daterange.RegionStore.selectedIndex].text)" class="content">
										<option value=''>&nbsp;&nbsp;&nbsp;&nbsp;await Region selection&nbsp;&nbsp;&nbsp;&nbsp;</option>
										</select>
										</td>
									</tr>
								</table>
							</td>
							<td class="content" align="center" width="10%">
							&raquo;&raquo;
							</td>
							<td width="40%" valign="top">
								<table>
									 <tr>
										  <td>
										  From:<br><cfinput type="text" name="StartMonth" value="" size="10" maxlength="10" class="content" message="Please select a starting date" required="yes">&nbsp;<a href="javascript:NewCal('StartMonth','MMddyyyy')"><img src="images/icons/calendarmenu.gif" border="0" alt="Choose your starting date" align="absmiddle"></a>
										  </td>
									 </tr>
									 <tr>
										  <td>
										  To:<br><cfinput type="text" name="EndMonth" value="" size="10" maxlength="10" class="content" message="Please select a ending date" required="yes">&nbsp;<a href="javascript:NewCal('EndMonth','MMddyyyy')"><img src="images/icons/calendarmenu.gif" border="0" alt="Choose your ending date" align="absmiddle"></a>							
										  </td>
									 </tr>
								</table>			
							</td>
						</tr>
						<tr bgcolor="FFFFFF">
						 <td colspan="3" width="100%" class="pageheaderOrange">
							 Select a Report: <br>
							<select name="reportfile" class="content" size="5" style="width:380px; ">
								<cfloop query="qy_GetCategory">
								<option value="#qy_GetCategory.ReptFileName#" <cfif client.reportfile is '#qy_GetCategory.ReptFileName#'>selected</cfif>>#ReptFileName# - #ReportFreq# - #ReportName#</option>
								</cfloop>
							</select> 
							</td>
						</tr>
						<tr bgcolor="FFFFFF">
						 <td colspan="3" width="100%" align="center">
							 <input type="submit" value="   Search   " class="content">
							</td>
						</tr>
						</cfform>
					</table>
					<br>&nbsp;
					</div>
					
					
					<div onClick="toggle('one_c', event)" onMouseOver="this.style.cursor='hand';" align="left">
					<img src="images/icons/red_right.jpg" alt="click here to start your search for a report from the Backup Server - Current Year only" border="0" align="absmiddle">&nbsp;Backup Server - Current Year only
					</div>
					<br>&nbsp;
					<div id="one_c" style="display:none;">
					<table cellpadding="2" cellspacing="1" border="0" bgcolor="666666" width="#report_width_space#">
						<cfform action="#CGI.SCRIPT_NAME#?report=#report#&display_result=currentyear_csc" method="post">
						<tr bgcolor="FFFFFF">
							<td>
							<br>
							<ul>
								<li type="1">
								Select month: <select name="month_selected" class="content">
								   <option value="2">here&nbsp;&radic;</option>
									<option value="1" <cfif client.month_selected eq 1>selected</cfif>>January</option>
								  	<option value="2" <cfif client.month_selected eq 2>selected</cfif>>February</option>
								  	<option value="3" <cfif client.month_selected eq 3>selected</cfif>>March</option>
								  	<option value="4" <cfif client.month_selected eq 4>selected</cfif>>April</option>
								  	<option value="5" <cfif client.month_selected eq 5>selected</cfif>>May</option>
								  	<option value="6" <cfif client.month_selected eq 6>selected</cfif>>June</option>
								  	<option value="7" <cfif client.month_selected eq 7>selected</cfif>>July</option>
								  	<option value="8" <cfif client.month_selected eq 8>selected</cfif>>August</option>
								  	<option value="9" <cfif client.month_selected eq 9>selected</cfif>>September</option>
								  	<option value="10" <cfif client.month_selected eq 10>selected</cfif>>October</option>
								  	<option value="11" <cfif client.month_selected eq 11>selected</cfif>>November</option>
								  	<option value="12" <cfif client.month_selected eq 12>selected</cfif>>December</option>
								</select>
								</li>
							</ul>
							</td>
						</tr>
						<tr bgcolor="FFFFFF">
							<td align="center">
								<input type="submit" value=" Search " class="content">
							</td>
						</tr>
						</cfform>
					</table>
					</div>
					
					</ul> 
</cfoutput>