<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<cfquery name="getreport" datasource="OnLineReports">
	select	* from fss19reportname
		where catagorycode = '#form.catagorycode#'				
</cfquery>			
<CFMODULE NAME="StdPortalPageInsite" Homebar="False" StatusBar="False"  banner="/_images/BannerReports.jpg" 
 TITLE="Report Search"  Topline="No" GSALogo="No" sidenavname="" Leftnav="FALSE" bottomnav="No"
 TabBar="TRUE">  
<cfset session.fromdate = #right(form.fromdate, 4)# & #left(form.fromdate, 2)# & #mid(form.fromdate, 4, 2)# >
<cfset session.todate = #right(form.todate, 4)# & #left(form.todate, 2)# & #mid(form.todate, 4, 2)# >

<cfset session.regcat = '0' & #form.RegionCode# & '\' & #form.catagoryCode#>

<body>
<form action="dosearch.cfm" method="POST" target="new" enablecab="Yes" name="reportSearch">
<table width="400" align="left">
	<tr>
		<td>
			<table align="center">   
			    <tr> 
			      <td><b><font color="#990000">From:</font></b></td>
			      <td><font color="#990000"><b>To</b></font> </td>
			    </tr>
			    <tr> 
			     	<cfoutput>
					<td>#form.fromDate#, #session.fromdate#</td>
					<td>#form.todate#, #session.todate#</td>
			    </tr>
			</table>	
		</td>
	</tr>
	<tr>
		<td>			
			Catagory code = #form.catagorycode# Region code = 0#form.Regioncode#				
		</td>
		</cfoutput>
	</tr>
    <tr> 
	<tr>
		<td>
			<SELECT	NAME="ReportFile" Size="1">
					<option Value="">Select Report
				<cfoutput query="Getreport">
					<Option VALUE="#ReptFileName#">#ReptFileName#, #Reportfreq#, #reportName#
				</cfoutput>
			</select>
		</td>
	<tr>
	<tr> 
	      <td colspan="2"> 
		        <input type="submit" name="Submit" value="Search">
		        &nbsp;&nbsp; 
		        <input type="reset" name="reset" value="Reset">
	      </td>
    </tr>
</table>
</form>
</cfmodule>
