
<!--- NGL:: Get All FSS 19 Categories --->
<cfinclude template="../sql/qy_GetCategory.cfm">
<!--- NGL:: Get All FSS 19 regions --->
<cfinclude template="../sql/qy_GetRegion.cfm">
<cfoutput>In this section, you may find all report materials pertaining to <strong>#UCase(report)#</strong>
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
			Select a report category, a Region and date of your choice:
		</td>
	</tr>
	<cfform action="#CGI.SCRIPT_NAME#?report=#report#&display_result=daily_fss19" method="post" name="when">
	<tr bgcolor="FFFFFF">
		<td width="50%" height="100%">
			<table height="100%">
				
				<tr>
					<td height="50%" valign="middle">
					Region:<br>
					<cfselect name="RegionCode" query="qy_GetRegion"  value="RegionCode" display="RegionName" message="Select a Region before proceeding" required="yes" class="content" size="1" style="width:175px; " selected="#client.RegionCode#"></cfselect>
					</td>
				</tr>
				<tr>
					<td height="50%" valign="middle">
					Category:<br>
					<cfselect name="ReportCatagory" query="qy_GetCategory"  value="CatagoryCode" display="CatagoryName" message="Select a Category before proceeding" required="yes" class="content" size="1" style="width:175px; " selected="#client.category#"></cfselect>
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


<div onClick="toggle('one_b', event)" onMouseOver="this.style.cursor='hand';" align="left">
<img src="images/icons/red_right.jpg" alt="click here to start your search for a report based on a date range" border="0" align="absmiddle">&nbsp;Search for a report based on a date range
</div>


<br>&nbsp;
<div id="one_b" style="display:none;">
<table cellpadding="2" cellspacing="1" border="0" bgcolor="666666" width="#report_width_space#">
	<tr bgcolor="FFFFFF">
		<td colspan="3" width="#report_width_space#">
			Select a report category, a Region, a date range and a report of your choice:
		</td>
	</tr>
	<cfform action="#CGI.SCRIPT_NAME#?report=#report#&display_result=daterange_fss19" method="post" name="globe">
	<tr bgcolor="FFFFFF">
		<td width="#report_width_space#">
			<table>
				<tr>
					<td>
					Region:<br>
					<cfselect name="RegionCode" query="qy_GetRegion"  value="RegionCode" display="RegionName" message="Select a Region before proceeding" required="yes" class="content" size="1" style="width:175px; " selected="#client.RegionCode#"></cfselect>
					</td>
				</tr>
				<tr>
					<td>
					Category:<br>
					<!--- <cfselect name="ReportCatagory" query="qy_GetCategory"  value="CatagoryCode" display="CatagoryName" message="Select a Category before proceeding" required="yes" class="content" size="5" style="width:175px; "></cfselect> --->
					<select name="ReportCatagory" class="content" size="1" style="width:175px; " onChange="populateReportFile(document.globe,document.globe.ReportCatagory.options[document.globe.ReportCatagory.selectedIndex].value)">
					<cfloop query="qy_GetCategory">
					<option value="#CatagoryCode#" <cfif qy_GetCategory.CatagoryCode is "#client.category#">selected</cfif>>#CatagoryName#</option>
					</cfloop>
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
		 Select a Report:<br>

		<select name="ReportFile" onChange="populateUSstate(document.globe,document.globe.ReportFile.options[document.globe.ReportFile.selectedIndex].text)" class="content">
		<option value=''>&nbsp;&nbsp;&nbsp;&nbsp;await Report category selection&nbsp;&nbsp;&nbsp;&nbsp;</option>
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
	<cfform action="#CGI.SCRIPT_NAME#?report=#report#&display_result=currentyear_fss19" method="post">
	<tr bgcolor="FFFFFF">
		<td>
		<br>
		<ul>
			<li type="1">
			Select month: <select name="month_selected" class="content">
			   <option value="0" disabled>here&nbsp;&radic;</option>
				<option value="1">January</option>
				<option value="2">February</option>
				<option value="3">March</option>
				<option value="4">April</option>
				<option value="5">May</option>
				<option value="6">June</option>
				<option value="7">July</option>
				<option value="8">August</option>
				<option value="9">September</option>
				<option value="10">October</option>
				<option value="11">November</option>
				<option value="12">December</option>
			</select>&nbsp;&nbsp;
			<input type="hidden" name="regionCode" value="G">
			<input type="hidden" name="ReportCatagory" value="QC">
			<input type="submit" value=" Search " class="content">
			</li>
		</ul>
		</td>
	</tr>
	</cfform>
</table>
</div>

</ul>
</cfoutput>