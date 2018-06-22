<cfquery name="setmonth" datasource="onlinereports">
	Select * from months	
	where month = '13'
</cfquery>	
<cfset curmo = '#left(setmonth.monthname, 2)#'>
<cfquery name="getmonth" datasource="onlinereports">
	Select * from months	
	where month = '#curmo#'
</cfquery>
<cfset session.reptyear = '#right(setmonth.monthname, 4)#'>
<cfif Isdefined("url.change")>
	<cfif isdefined("form.Month") and form.Month is not ''>
		<cfquery name="getmonth" datasource="onlinereports">
			Select * from months	
			where month ='#form.month#' 
		</cfquery>
		<cfset curmo = '#form.Month#'>
	</cfif>
	<cfif isdefined("form.reptyear")>
		<cfset session.reptyear = '#form.reptyear#'>
	</cfif>	
</cfif>


<CFMODULE Name="StdPortalPageInsite" HomeBar="False" StatusBar="False" sidenavname="" Tabbar="TRUE" Width=765 Banner="/_images/InsiteBannerFL.jpg" TITLE="FL Operating Reports" LeftNav="FALSE" TopLine= "No" BottomNav="No" GSALogo= "No"> 


<br>
<div align="center"><H2><em>FL Operating Reports</em></H2></div>
<!--- <br>
<LI><A HREF="/searchsetup.cfm?action=begin&choice=FL_Financial"><B>Search for a report based on a date range</A><BR> --->

	<table width="100%" border="0" align="left" cellspacing="0" cellpadding="4">
		<form action="Index.cfm?change=yes"  method="post">
		<tr><td colspan="2">
			<h3>Current month settings: <cfoutput>#getmonth.monthname#, #session.reptyear#</cfoutput></h3>
		</td></tr>
		
		
		<tr><td colspan="2">
			Change the month and year:
		&nbsp;
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
			&nbsp;

			<SELECT NAME="ReptYear" SIZE="1" >						
				<option Value="2004">2004</option>
				<option Value="2003">2003</option>
				<option Value="2005">2005</option>
			</select>	
			&nbsp;
		
				<input type="submit" value="Change Month" name="Change Month">
				</form> 
			</td>
		</tr>
	</table>
<!--- <LI>Select Reporting Month
<select name="selmonth" onChange="LinkToSelMonth(this.form)" size="1">
	<option value=
<cfoutput query="getmonth">
	<Option VALUE="#getmonth.month#">#getmonth.monthname#</option>
</cfoutput>
</select> --->

</form> 
<cfoutput>
<!--- <font class="fsstext12"><font color="#FF0000"><div align="center">Note: The numbers expressed in these reports are for design purposes only.</div></font></font><br> --->
<ul>
<H3><em>Current Month Reports (#MonthasString('#curmo#')#)</em></H3>
<h3>Tier 1 (Summary)</h3>
<ul>

<!--- <li><a href="#session.reptyear#/NationalNetOperatingResults20021231.xls" title="National Net Operating Results (as of 12/31/2002)">National Net Operating Results</a> (as of 12/31/2002)</li>
<li><a href="#session.reptyear#/RegionalRevenueGoals20021231.xls" title="Regional Revenue (as of 12/31/2002)">Regional Revenue</a> (as of 12/31/2002)</li> --->
<li><a href="#session.reptyear#/#curmo#PR.xls" title="Perry Report" target="_new">Perry Report</a></li>
<li><a href="#session.reptyear#/#curmo#NOR.xls" title="National Net Operating Results" target="_new">National Net Operating Results</a></li>
<li><a href="#session.reptyear#/#curmo#RRG.xls" title="Regional Revenue Based on Point of Delivery" target="_new">Regional Revenue Based on Point of Delivery</a></li>
</ul>

<h3>Tier 2 (National)</h3>
<ul>
<li><a href="#session.reptyear#/#curmo#ACO.xls" title="Acquisition Cost of Operations" target="_new">Acquisition Cost of Operations</a></li>
<li><a href="#session.reptyear#/#curmo#NAPR.xls" title="Acquisition Operations Performance" target="_new">Acquisition Operations Performance</a></li>
<li><a href="#session.reptyear#/#curmo#DCO.xls" title="Distribution Cost of Operations" target="_new">Distribution Cost of Operations</a></li>
<li><a href="#session.reptyear#/#curmo#NDPR.xls" title="Distribution Operations Performance">Distribution Performance</a></li>
<li><a href="#session.reptyear#/#curmo#PCO.xls" title="Point of Sale Cost of Operations">Point of Sale Cost of Operations</a></li>
</ul>
<h3>Tier 3 (Regional)</h3>
<ul>
<li><a href="#session.reptyear#/#curmo#BDPR.xls" title="Burlington Distribution Performance" target="_new">Burlington Distribution Performance</a></li>
<li><a href="#session.reptyear#/#curmo#SDPR.xls" title="Sharpe Distribution Performance" target="_new">Sharpe Distribution Performance</a></li>
<li><a href="#session.reptyear#/#curmo#FWPR.xls" title="Fort Worth Acquisition Performance" target="_new">Fort Worth Acquisition Performance</a></li>
<li><a href="#session.reptyear#/#curmo#KCPR.xls" title="Kansas City Acquisition Performance" target="_new">Kansas City Acquisition Performance</a></li>
<li><a href="#session.reptyear#/#curmo#NYPR.xls" title="New York Acquisition Performance" target="_new">New York Acquisition Performance</a></li>
</ul>
</cfoutput>



</body>

</CFMODULE>
