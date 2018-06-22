<!--- <CFMODULE NAME="stdportalpageInsite" BANNER="/_images/insitebanner.jpg" TITLE="Online Reports"
          TOPLINE="No" GSALOGO="No" SIDENAVNAME="" LEFTNAV="FALSE" BOTTOMNAV="No" TABBAR="True" 
		  InsiteBar="True"  HOMEBAR="FALSE" STATUSBAR="FALSE">   
 --->
<!---<Begin page content here>--->
<!--- <CFINCLUDE TEMPLATE="/_includes/header.cfm">
<CFSET section = "Online Reports">
<CFINCLUDE TEMPLATE="/_includes/section.cfm"> --->

<table><tr><td class="fsscompbody">
<H4>Region 6 Online Reports</H4>
<p>Please select a report system that you want to view:</p>
	<form action="rpt_request.cfm" method="post" name="select_tblname">
		<select name="tblname">
			<option value="FSS19" class="fsscompbody">FSS-19 (FSS order entry distibution system)
			<option value="FMS">FMS (Fleet Management Systems)
			<option value="FEDS23">FEDS (Personal Property)
			<option value="SASY">SASY (Surplus Property)
			<option value="CSC">CSC (Supply Centers)			
			<option value="Tarps">TARPS and ASPA (Financial)
		</select>
		<input type="Submit" value="Submit">
	</form>
</td></tr></table>
		
<!--- <CFINCLUDE TEMPLATE="/_includes/footer.cfm"> --->
</TD></TR></TABLE>
</TD></TR></TABLE>
<!---<End page content here>--->
<!--- </CFMODULE> --->