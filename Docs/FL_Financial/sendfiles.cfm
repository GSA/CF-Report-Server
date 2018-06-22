<CFMODULE Name="StdPortalPageInsite" HomeBar="False" StatusBar="False" sidenavname=""  
Tabbar="TRUE" Width=765 Banner="/_images/InsiteBannerFL.jpg" 
TITLE="Upload FL Operating Reports" LeftNav="FALSE" TopLine= "No" BottomNav="No" GSALogo= "No">
<cfif isdefined("form.reptyear")>
	<cfset session.ReptYear = '#form.reptyear#'>
		
</cfif>
<cfif Not IsDefined("url.action")>
	<FORM ACTION="sendfiles.cfm?action=get" Name="SetMonth" METHOD="POST" ENABLECAB="Yes">
	<table width="100%" border="1" align="left" cellspacing="0" cellpadding="4" bordercolor="#f0f0f0" summary="Use this form to add a new PDF file">
		<tr><td>
			<font size="+2">Set the Year</font>
		</td></tr>
		<tr>
			<td>		
			<SELECT NAME="ReptYear" SIZE="1" >					
				<option Value="2003">2003</option>
				<option Value="2004">2004</option>
				<option Value="2005">2005</option>
			</select>	
			</td>
		</tr>	
		<tr><td>
			<font size="+2">Set the new month</font>
		</td></tr>
		<tr>
			<td>				
				<SELECT NAME="Month" SIZE="1" >					
					<OPTION Value="">Choose One:
					<option value = "01">January
					<option value = "02">February
					<option value = "03">March
					<option value = "04">April
					<option value = "05">May
					<option value = "06">June
					<option value = "07">July
					<option value = "08">August
					<option value = "09">September
					<option value = "10">October
					<option value = "11">November
					<option value = "12">December
				</select>	
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="Set Month" name="set month">
				</form> 
			</td>
		</tr>
	</table>
<cfelseif url.action is 'get'>
	<cfif IsDefined("form.month")>
		<cfset session.month = '#form.month#'>
		<cfquery name="setmonth" datasource="onlinereports">
			update months
				set monthname = '#form.month#/#session.reptyear#'
			where month = '13'
		</cfquery>
	</cfif>
	<table width="100%" border="1" align="left" cellspacing="0" cellpadding="4" bordercolor="#f0f0f0" summary="Use this form to upload excel files">

		<tr><td>
			<font size="+2">Select and send files for month <cfoutput>#session.month#, #session.reptyear#</cfoutput></font>
		</td></tr>
		<form action="sendfiles.cfm?action=send" method="post" name="addexcel" ENCTYPE="multipart/form-data">
		<tr>
			<td>
				<b>Send Next Excel file </b><br>
				<input type="file" name="sendexcel" size="50" accept="application/xls,application/msexcel" id="file-1043809870">
			</td>
		</tr>
		<tr>
			<td bgcolor="#f0f0f0"><input type="Submit" value="Upload the selected file" alt="Click to upload a new excel file."></td>
		</tr>
		</form>
	</table>	
<cfelseif url.action is 'send'>
	<CFIF IsDefined('Form.sendexcel')>
		<CFIF Form.sendexcel NEQ "">	
			<!--- ...save the file to the server... --->
			
			<cffile action="UPLOAD" filefield="sendexcel" destination="D:\reports\docs\FL_Financial\#session.reptyear#" nameconflict="Overwrite">
			<cfset file_name = #cffile.serverFile#>
			<cfoutput>file_name = #file_name#	</cfoutput>
		<CFELSE>
			There is no attach file.
			<cfabort>
		</CFIF>
		<cfset newname = '#session.month#' & '#File_Name#'>
		<cffile action="Rename" source="D:\reports\docs\FL_Financial\#session.reptyear#\#file_name#" destination="#newname#" nameconflict="Overwrite">
		
		<cflocation url="sendfiles.cfm?action=get" addtoken="Yes">
	</CFIF>
</cfif>	
</cfmodule>
