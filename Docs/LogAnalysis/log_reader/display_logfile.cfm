
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="style/styleDPF.css" rel="stylesheet" type="text/css">

<!--- /* Web development and mastering tips at http://webtips.blogsome.com (Please keep this) */
<script type="text/javascript" language="javascript">
function is_loaded() { //DOM
	if (document.getElementById){
		document.getElementById('preloader').style.visibility='hidden';
	}else{
		if (document.layers){ //NS4
			document.preloader.visibility = 'hidden';
		}
	//}
	else { //IE4
		document.all.preloader.style.visibility = 'hidden';
	}
	}
}
//-->
</script>  --->

</head>

<body><!---  onload="is_loaded();" --->
<!---
<div id="preloader" style="position:absolute; left:30%; top:290px; width:380px; height:120px;">
<center>
<table border="0" align="center" cellpadding="6" cellspacing="0" style="font-family:Arial, Verdana; border: 2px solid #006633;">
	<tr>
		<td style="text-align:center; background-color:#ffffff">
			<font style="font-size:120px; font-weight:bold; color:#cc6600">!</font>
		</td>
		<td style="text-align:center; background-color:#006633">
			<font style="font-size:28px; color:#ffffff; text-align:center;">Loading ... please wait</font>
		</td>
	</tr>
</table>
</center>
</div>  
 onload="is_loaded();"
--->

<!--- <cfparam name="startRow" default="1">
<cfparam name="EndRow" default="50">	 --->
<cfparam name="url.submit" default="">
<cfparam name="form.submit" default="#url.submit#">
<cfparam name="form.RTFItems" default="">
<cfparam name="form.DateInfo" default="">
<cfparam name="form.Datewaspicked" default="no">

<cfif form.submit is "Submit Date">

<!--- 	<cfoutput>
		RTFItems:#RTFItems#---DateInfo:#form.DateInfo#<cfabort>
	</cfoutput> --->
<cfif RTFItems is "FSS19"><!--- form.RTFItems --->
		<cfinclude template="includes/fss19LogDisplay.cfm">
	<cfelseif RTFItems is "fms">
		<cfinclude template="includes/fmsLogDisplay.cfm">
	<cfelseif RTFItems is "feds">	
		<cfinclude template="includes/fedsLogDisplay.cfm">
	<cfelseif RTFItems is "sasy">	
		<cfinclude template="includes/sasyLogDisplay.cfm">
	<cfelseif RTFItems is "csc">	
		<cfinclude template="includes/cscLogDisplay.cfm">
	<cfelseif RTFItems is "tass">	
		<cfinclude template="includes/tassLogDisplay.cfm">			
	</cfif>
 
</cfif>


<cfif form.RTFItems is not "sasy">
<cfif form.RTFItems is not "csc">
<cfif form.RTFItems is not "tass">
<cfif form.submit is "Submit  File Type">
	<!--- <cfquery datasource="OnlineReports" name="findCatInfo"><!--- ReptFileName, CategoryCode, ReportName --->
	select distinct CatagoryCode as catCode
	from FSS19Reportname
	</cfquery> --->
	<cfif form.RTFItems is "fss19">
		<cfquery datasource="OnlineReports" name="findCatInfo"><!--- ReptFileName, CategoryCode, ReportName --->
			select distinct CatagoryCode as catCode, CatagoryName
			from FSS19ReportCatagory
		</cfquery>
		
		<form action="display_logfile.cfm?requesttimeout=20000" method="post"><!--- #script_name# --->
		<br><br>
		<table align="center"><th align="center" class="header">Select one of these Category types to display RTF files used.</th>
			<tr><td align="center">
				<select name="RTFCatItems">
				<cfoutput query="findCatInfo">
					<option value="#catCode#">#CatagoryName#</option>
					</cfoutput>
				</select>
			</td></tr>
			<tr><td align="center">
				<cfoutput><input type="hidden" name="RTFItems" value="#form.RTFItems#"></cfoutput>
				<input name="Submit" type="submit" value="Submit" />
			</td></tr>
		</table>
		</form>
	<cfelseif form.RTFItems is "feds">
		<cfquery datasource="OnlineReports" name="findCatInfo"><!--- ReptFileName, CategoryCode, ReportName --->
			select distinct ReptFreqCode as catCode
			from FEDS23Reportname
		</cfquery>
	
		<form action="display_logfile.cfm?requesttimeout=20000" method="post"><!--- #script_name# --->
		<br><br>
		<table align="center"><th align="center" class="header">Select one of these Category types to display RTF files used.</th>
			<tr><td align="center">
				<select name="RTFCatItems">
				<cfoutput query="findCatInfo">
					<option value="#catCode#">#catCode#</option>
					</cfoutput>
				</select>
			</td></tr>
			<tr><td align="center">
				<cfoutput><input type="hidden" name="RTFItems" value="#form.RTFItems#"></cfoutput>
				<input name="Submit" type="submit" value="Submit" />
			</td></tr>
		</table>
		</form>
	<cfelseif form.RTFItems is "fms">
		<cfquery datasource="OnlineReports" name="findCatInfo"><!--- ReptFileName, CategoryCode, ReportName --->
			select distinct ReptFreqCode as catCode
			from FMSReportname
		</cfquery>
	
		<form action="display_logfile.cfm?requesttimeout=20000" method="post"><!--- #script_name# --->
		<br><br>
		<table align="center"><th align="center" class="header">Select one of these Category types to display RTF files used.</th>
			<tr><td align="center">
				<select name="RTFCatItems">
				<cfoutput query="findCatInfo">
					<option value="#catCode#">#catCode#</option>
					</cfoutput>
				</select>
			</td></tr>
			<tr><td align="center">
				<cfoutput><input type="hidden" name="RTFItems" value="#form.RTFItems#"></cfoutput>
				<input name="Submit" type="submit" value="Submit" />
			</td></tr>
		</table>
		</form>
	</cfif>
	
	<cfabort>
</cfif></cfif></cfif>
</cfif>

<cfif form.submit is "Submit" or form.RTFItems is "sasy" or form.RTFItems is "csc" or form.RTFItems is "tass">
<cfif form.Datewaspicked is not "Yes">
	<form action="display_logfile.cfm?requesttimeout=20000" method="post"><!--- #script_name# --->
		<br><br>
		<table align="center"><th align="center" class="header">Select a date to view data for <cfoutput>#form.RTFItems#</cfoutput>.</th>
			<tr><td align="center">
				<select name="DateInfo">
					<option value="2004">2004</option>
					<option value="2005">2005</option>
					<option value="2006">2006</option>
					<option value="2007">2007</option>
					<option value="2008">2008</option>
				</select>
			</td></tr>
			<tr><td align="center">
				<cfoutput>
					<input type="hidden" name="RTFItems" value="#form.RTFItems#">
					<input type="hidden" name="Datewaspicked" value="Yes">
					
					<cfif form.RTFItems is "fss19" or form.RTFItems is "feds" or form.RTFItems is "fms">
					<input type="hidden" name="RTFCatItems" value="#form.RTFCatItems#">
					</cfif>
					
				</cfoutput>
				<input name="Submit" type="submit" value="Submit Date" /><!---  onClick="return is_loaded();" --->
			</td></tr>
		</table>
		</form>
	<cfabort>
</cfif>		
</cfif>

<!--- <cfif form.submit is "Submit Date">
	<cfoutput>
		RTFItems:#RTFItems#---DateInfo:#form.DateInfo#<cfabort>
	</cfoutput>
<cfif RTFItems is "FSS19"><!--- form.RTFItems --->
		<cfinclude template="includes/fss19LogDisplay.cfm">
	<cfelseif RTFItems is "fms">
		<cfinclude template="includes/fmsLogDisplay.cfm">
	<cfelseif RTFItems is "feds">	
		<cfinclude template="includes/fedsLogDisplay.cfm">
	<cfelseif RTFItems is "sasy">	
		<cfinclude template="includes/sasyLogDisplay.cfm">
	<cfelseif RTFItems is "csc">	
		<cfinclude template="includes/cscLogDisplay.cfm">
	<cfelseif RTFItems is "tass">	
		<cfinclude template="includes/tassLogDisplay.cfm">			
	</cfif> 
 
</cfif> --->
<cfif form.DateInfo is "">
<form action="display_logfile.cfm?requesttimeout=20000" method="post"><!--- #script_name# --->
<br><br>
<table align="center"><th align="center">Select one of these log types to display RTF files used.</th>
	<tr><td align="center">
		<select name="RTFItems">
			<option value="FSS19">FSS19</option>
			<option value="Sasy">Sasy</option>
			<option value="csc">csc</option>
			<option value="fms">fms</option>
			<option value="feds">feds</option><!--- --->
			<option value="Tass">tass</option> 
		</select>
	</td></tr>
	<tr><td align="center"><input name="Submit" type="submit" value="Submit  File Type" /></td></tr>
</table>
</form><!---  --->
</cfif>
</body>
</html>
<!--- <cfset holdcategory = ''>
<cfset itemtest = #ReptFileName1# & "~" & #ReportName#>
<cfif #itemtest# is not '#holdCategory#'>
<cfset holdCategory = #ReptFileName1# & "~" & #ReportName#> 
</cfif>  --->

<!--- 
<cfquery datasource="OnlineReports" name="findInfo"><!--- ReptFileName, CategoryCode, ReportName --->
	select *
	from FSS19Reportname
</cfquery>

<table align="center" width="100%">
<th>Category</th><th>File Name</th><th>Report Name</th><th>count 2004</th><th>count 2005</th>
<cfoutput><!---  query="findInfo" --->
<cfloop query="findInfo">
	<cfquery datasource="OnlineReports" name="findInfo2004" timeout="300000"><!--- datepart("yyyy", date_viewed) --->
		select count(*) as total_view2004
		from FSS19_LogReader	
		where yearof = '2004'
		and filename = '#findInfo.ReptFileName#'
	</cfquery>
	
	<cfquery datasource="OnlineReports" name="findInfo2005" timeout="300000">
		select count(*) as total_view2005
		from FSS19_LogReader	
		where yearof = '2005'
		and filename = '#findInfo.ReptFileName#'
	</cfquery>
				<tr>
					<td> #CatagoryCode#&nbsp;&nbsp; </td><td>#ReptFileName#&nbsp;&nbsp;</td>
					<td>#ReportName#&nbsp;&nbsp;</td><td>#findInfo2004.total_view2004#</td> <td>#findInfo2005.total_view2005# </td>
				</tr>
</cfloop>				
</cfoutput>
</table> --->
