<!--- NGL:: Retreive all reports related to SASY --->
<cfinclude template="../sql/qy_GetCategory.cfm">
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
								Select a level of report and a month of your choice:
							</td>
						</tr>
						<cfform action="#CGI.SCRIPT_NAME#?report=#report#&display_result=daily_flfinancial" method="post" name="when">
						<tr bgcolor="FFFFFF">
							<td width="50%">
								<table>
									<tr>
										<td>
										Report levels:<br>
										<select name="reportLevel" class="content" size="3" style="width:175px; ">
										<option value="1" <cfif client.reportLevel eq 1>selected</cfif>>Tier 1 (Sumary)</option>
										<option value="2" <cfif client.reportLevel eq 2>selected</cfif>>Tier 2 (National)</option>
										<option value="3" <cfif client.reportLevel eq 3>selected</cfif>>Tier 3 (Regional)</option>
										</select>
										</td>
									</tr>
								</table>
							</td>
							<td class="content" align="center" width="10%">
							&raquo;&raquo;
							</td>
							<td width="40%">
								<table>
									<tr>
										<td>
										Month:<br>
										<select name="month_selected" class="content" size="3" style="width:100px; ">
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
										<td>
										Year:<br>
										<select name="year_selected" class="content" size="3" style="width:45px; ">
										<option value="2003" <cfif client.year_selected eq 2003>selected</cfif>>2003</option>
										<option value="2004" <cfif client.year_selected eq 2004>selected</cfif>>2004</option>
										<option value="2005" <cfif client.year_selected eq 2005>selected</cfif>>2005</option>
										</select>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td bgcolor="FFFFFF" align="center" colspan="3">
							<input type="submit" value="   Search   " class="content">
							</td>
						</tr>
						</cfform>
					</table>
					</div>
					 
					<br>&nbsp;
					
					<div onClick="toggle('one_c', event)" onMouseOver="this.style.cursor='hand';" align="left">
					<img src="images/icons/red_right.jpg" alt="click here to start your search for a report from the Backup Server - Current Year only" border="0" align="absmiddle">&nbsp;Backup Server - Current Year only
					</div>
					<br>&nbsp;
					<div id="one_c" style="display:none;">
					<table cellpadding="2" cellspacing="1" border="0" bgcolor="666666" width="#report_width_space#">
						<cfform action="#CGI.SCRIPT_NAME#?report=#report#&display_result=currentyear_fnfinancial" method="post">
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