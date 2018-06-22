<!--- <cfquery name="setmonth" datasource="onlinereports">
	Select * from months	
	where month = '13'
</cfquery> --->
<cfset todaysDate = Now()>
<cfset Reportdate = #Dateadd('m', -1, todaysDate)#>
<cfoutput>#ReportDate#</cfoutput>
<cfset session.reptyear = #dateformat(ReportDate, 'yyyy')#>
<cfset curmo = #dateformat(ReportDate, 'mm')#>
<cfif Isdefined("url.change")>
	<cfif isdefined("form.Month") and form.Month is not ''>		
		<cfset curmo = '#form.Month#'>
	</cfif>
	<cfif isdefined("form.reptyear")>
		<cfset session.reptyear = '#form.reptyear#'>
	</cfif>	
</cfif>


<CFSET RootURL = #ServerUrl# & #ReportDir# & "/">
<CFSET DateSelected = '#session.reptYear#' & '#curmo#'>
<CFIF #DateSelected# GT '#left(Session.HistoryDate, 4)#'>
	<CFSET RootDir = "T:\reports\docs\#ReportDir#\">
	<cfelse>
	<CFSET RootDir = "e:\#ReportDir#\">
</cfif>

<CFSET Directory = #RootDir# & "#ReptYear#" & "\">
<CFSET LinkUrl = #RootURL# & "#ReptYear#" & "/">
<CFSET compdate = '#curmo#' & '#right(session.reptYear,2)#'>


<cfdirectory action="LIST" directory="#directory#" name="contents" filter="*.xls" sort="name">

<CFMODULE Name="StdPortalPageInsite" HomeBar="False" StatusBar="False" sidenavname="" Tabbar="TRUE" Width=765 Banner="/_images/InsiteBannerCFL.jpg" TITLE="Computers for Learning Reports" LeftNav="FALSE" TopLine= "No" BottomNav="No" GSALogo= "No"> 


<br>
<!--- <cfoutput>#compdate#, #directory#</cfoutput>
<cfdump var="#contents#"> --->
<div align="center"><H2><em>Computers for Learning Reports</em></H2></div>
<!--- <br>
<LI><A HREF="/searchsetup.cfm?action=begin&choice=FL_Financial"><B>Search for a report based on a date range</A><BR> --->

	<table width="100%" border="0" align="left" cellspacing="0" cellpadding="4">
		<!--- <form action="Index.cfm?change=yes"  method="post">
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
				<option Value="2006">2006</option>
				<option Value="2007">2007</option>
				<option Value="2008">2008</option>
			</select>	
			&nbsp;
		
				<input type="submit" value="Change Month" name="Change Month">
				</form> 
			</td>
		</tr> --->
		<tr><td colspan="2" align="center">
		
			<h3></center>Current month settings: <cfoutput>#dateformat(ReportDate, 'mmmm')#, #session.reptyear#</cfoutput></h3>
		</td></tr>
		<tr align="center">
		<cfloop query="contents">
		<td><cfoutput><a href="#LinkURL##contents.name#" target="_new">#name#</cfoutput></td>
		</cfloop>
		
		</tr>
		
		</center>
	</table>
</form> 

</body>

</CFMODULE>
