<!--- NGL:: Get All FMS Reports --->
<cfinclude template="../../fms/sql/qy_GetCategory.cfm">
<!--- NGL:: Get All FMS regions --->
<cfinclude template="../../fms/sql/qy_GetRegion.cfm">
<cfoutput>
In this section, you may find all report materials pertaining to <strong>#UCase(report)#</strong>
					<br>
					<ul>
					
					<div onClick="toggle('one_a', event)" onMouseOver="this.style.cursor='hand';" align="left">
					<img src="images/icons/red_right.jpg" alt="Click here to start your search on our Daily reports" border="0" align="absmiddle">&nbsp;Daily Reports
					</div>
					<cfset report_width_space= #report_width_right# - 250>
					<div id="one_a" style="display:block;">
					<br>&nbsp;
					<table cellpadding="2" cellspacing="1" border="0" bgcolor="666666" width="#report_width_space#">
						<tr bgcolor="FFFFFF">
							<td colspan="3" width="#report_width_space#">
								Select a Region and a date of your choice:
							</td>
						</tr>
						<cfform action="#CGI.SCRIPT_NAME#?report=#report#&display_result=daily_fms" method="post" name="when">
						<tr bgcolor="FFFFFF">
							<td width="50%" valign="middle">
								<table>
									<tr>
										<td>
										Regions:<br>
										<cfselect name="ReptRegion" query="qy_GetRegion"  value="RegionNo" display="RegionName" message="Select a Region before proceeding" required="yes" class="content" size="1" style="width:175px; " selected="#client.ReptRegion#"></cfselect>
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
						</cfform>
					</table>
					</div>
					 
					<br>&nbsp;
					
					<!--- NGL:: BEGIN:: Monthly reports added 03/29/05 --->
					<div onClick="toggle('one_a1', event)" onMouseOver="this.style.cursor='hand';" align="left">
					<img src="images/icons/red_right.jpg" alt="click here to start your search for a report on monthly basis" border="0" align="absmiddle">&nbsp;Monthly Reports
					</div>
					<br>&nbsp;
					
					<div id="one_a1" style="display:none;">
					<table cellpadding="2" cellspacing="1" border="0" bgcolor="666666" width="#report_width_space#">
						<tr bgcolor="FFFFFF">
							<td colspan="5" width="#report_width_space#">
								Select a Region and a month of your choice:
							</td>
						</tr>
						<cfform action="#CGI.SCRIPT_NAME#?report=#report#&display_result=monthly_fms" method="post">
						<tr bgcolor="FFFFFF">
							<td width="50%" valign="top">
								<table>
									<tr>
										<td>
										Regions:<br>
										<cfselect name="ReptRegion" query="qy_GetRegion"  value="RegionNo" display="RegionName" message="Select a Region before proceeding" required="yes" class="content" size="1" style="width:175px; " selected="#client.ReptRegion#"></cfselect>
										</td>
									</tr>
								</table>
							</td>
							<td class="content" align="center" width="10%">
							&raquo;&raquo;
							</td>
							<td width="40%">
							Month: <br> <select name="month_selected" class="content">
								   <option value="#month(now())#">here&nbsp;&radic;</option>
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
							</td>
							<td class="content" align="center" width="10%">
							&raquo;&raquo;
							</td>
							<td width="40%">
							Year: #year(now())# - #len(client.year_selected)#<br> <select name="year_selected" class="content">
								   <option value="#Year(now())#">here&nbsp;&radic;</option>
									<option value="1998" <cfif client.year_selected eq 1998>selected</cfif>>1998</option>
								  	<option value="1999" <cfif client.year_selected eq 1999>selected</cfif>>1999</option>
								  	<option value="2000" <cfif client.year_selected eq 2000>selected</cfif>>2000</option>
								  	<option value="2001" <cfif client.year_selected eq 2001>selected</cfif>>2001</option>
								  	<option value="2002" <cfif client.year_selected eq 2002>selected</cfif>>2002</option>
								  	<option value="2003" <cfif client.year_selected eq 2003>selected</cfif>>2003</option>
								  	<option value="2004" <cfif client.year_selected eq 2004>selected</cfif>>2004</option>
								  	<option value="2005" <cfif client.year_selected eq 2005>selected</cfif>>2005</option>
								</select>
							</td>
						</tr>
						<tr bgcolor="FFFFFF">
							<td align="center" colspan="5">
								<input type="submit" value=" Search " class="content">
							</td>
						</tr>
						</cfform>
					</table>
					<br>&nbsp;
					</div>
					<!--- NGL:: END:: Monthly reports added 03/29/05 --->
					
					<!--- NGL:: BEGIN:: IEreports added 03/29/05 --->
					<div onClick="toggle('one_a2', event)" onMouseOver="this.style.cursor='hand';" align="left">
					<img src="images/icons/red_right.jpg" alt="click here to start your search for a IE report" border="0" align="absmiddle">&nbsp;IE Reports
					</div>
					<br>&nbsp;
					
					<div id="one_a2" style="display:none;">
					<table cellpadding="2" cellspacing="1" border="0" bgcolor="666666" width="#report_width_space#">
						<tr bgcolor="FFFFFF">
							<td colspan="5" width="#report_width_space#">
								Select a Region and a month of your choice:
							</td>
						</tr>
						<cfform action="#CGI.SCRIPT_NAME#?report=#report#&display_result=ie_fms" method="post">
						<tr bgcolor="FFFFFF">
							<td width="50%" valign="top">
								<table>
									<tr>
										<td>
										Regions:<br>
										<cfselect name="ReptRegion" query="qy_GetRegion"  value="RegionNo" display="RegionName" message="Select a Region before proceeding" required="yes" class="content" size="1" style="width:175px; " selected="#client.ReptRegion#"></cfselect>
										</td>
									</tr>
								</table>
							</td>
							<td class="content" align="center" width="10%">
							&raquo;&raquo;
							</td>
							<td width="40%">
							Month:<br> <select name="month_selected" class="content">
								   <option value="#month(now())#">here&nbsp;&radic;</option>
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
							</td>
							<td class="content" align="center" width="10%">
							&raquo;&raquo;
							</td>
							<td width="40%">
							Year: <select name="year_selected" class="content">
								   <option value="#Year(now())#">here&nbsp;&radic;</option>
									<option value="1998" <cfif client.year_selected eq 1998>selected</cfif>>1998</option>
								  	<option value="1999" <cfif client.year_selected eq 1999>selected</cfif>>1999</option>
								  	<option value="2000" <cfif client.year_selected eq 2000>selected</cfif>>2000</option>
								  	<option value="2001" <cfif client.year_selected eq 2001>selected</cfif>>2001</option>
								  	<option value="2002" <cfif client.year_selected eq 2002>selected</cfif>>2002</option>
								  	<option value="2003" <cfif client.year_selected eq 2003>selected</cfif>>2003</option>
								  	<option value="2004" <cfif client.year_selected eq 2004>selected</cfif>>2004</option>
								  	<option value="2005" <cfif client.year_selected eq 2005>selected</cfif>>2005</option>
								</select>
							</td>
						</tr>
						<tr bgcolor="FFFFFF">
							<td align="center" colspan="5">
								<input type="submit" value=" Search " class="content">
							</td>
						</tr>
						</cfform>
					</table>
					<br>&nbsp;
					</div>
					<!--- NGL:: END:: IEreports added 03/29/05 --->
					
					
					<!--- <div onClick="toggle('one_b', event)" onMouseOver="this.style.cursor='hand';">
					<img src="images/icons/red_right.jpg" alt="click here to start your search for a report based on a date range" border="0" align="absmiddle">&nbsp;Search Daily report based on a date range
					</div> --->
					
					<br>&nbsp;
					<div id="one_b" style="display:none;">
					<table cellpadding="2" cellspacing="1" border="0" bgcolor="666666" width="#report_width_space#">
						<!--- <tr bgcolor="FFFFFF">
							<td colspan="3" width="#report_width_space#">
								Select a Region, a date range and a report of your choice:
							</td>
						</tr>
						<cfform action="#CGI.SCRIPT_NAME#?report=#report#&display_result=daterange_fms" method="post">
						<tr bgcolor="FFFFFF">
							<td width="#report_width_space#">
								<table>
									<tr>
										<td>
										Regions:<br>
										<cfselect name="ReptRegion" query="qy_GetRegion"  value="RegionNo" display="RegionName" message="Select a Region before proceeding" required="yes" class="content" size="1" style="width:175px; " selected="#client.ReptRegion#"></cfselect>
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
						 <td colspan="3" width="100%" align="center">
							 <input type="submit" value="   Search   " class="content">
							</td>
						</tr>
						</cfform> --->
					</table>
					<br>&nbsp;
					</div>
					
					
					
					<!--- <div onClick="toggle('one_c', event)" onMouseOver="this.style.cursor='hand';">
					<img src="images/icons/red_right.jpg" alt="click here to start your search for a report from the Backup Server - Current Year only" border="0" align="absmiddle">&nbsp;Backup Server - Current Year only
					</div> --->
					<br>&nbsp;
					<div id="one_c" style="display:none;">
					<table cellpadding="2" cellspacing="1" border="0" bgcolor="666666" width="#report_width_space#">
						<!---<cfform action="#CGI.SCRIPT_NAME#?report=#report#&display_result=currentyear_fms" method="post">
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
							<td>
							<br>
							<ul>
								<li type="1">
								Regions:<br>
								<cfselect name="ReptRegion" query="qy_GetRegion"  value="RegionNo" display="RegionName" message="Select a Region before proceeding" required="yes" class="content" size="1" style="width:175px; " selected="#client.ReptRegion#"></cfselect>
								</li>
							</ul>
							</td>
						</tr>
						<tr bgcolor="FFFFFF">
						 <td colspan="3" width="100%" class="pageheaderOrange">
							 Select a Report: <br>
							<select name="ReptFreqCode" class="content" size="5" style="width:400px; ">
								<cfloop query="qy_GetCategory">
								<option value="#ReptFreqCode#" <cfif client.ReptFreqCode is '#qy_GetCategory.ReptFreqCode#'>selected</cfif>>#ReptFileName# - #ReportName#</option>
								</cfloop>
							</select> 
							</td>
						</tr>
						<tr bgcolor="FFFFFF">
							<td align="center">
								<input type="submit" value=" Search " class="content">
							</td>
						</tr>
						</cfform>
					--->
					</table>
					</div>
					
					</ul> 
</cfoutput>