<CFIF Isdefined("form.tblname")>	
	<cfset tblname = form.tblname &"Reportname"> 	
<CFELSE>
	<cfparam name="tblname" default="">
	<cfif Isdefined("url.tblname")>
		<cfset tblname = url.tblname> 	
	</cfif>
</CFIF>
<cfif (IsDefined("form.addnow") IS "yes") AND (form.addnow IS "Add New Entry")>
	<cfoutput>	
	<cfif (tblname IS "FMSReportName") OR (tblname IS "FEDS23ReportName")>
		<cfquery name="insertrpt" datasource="onlinereports">
		INSERT INTO #tblname# (ReportName,ReptFreqCode, ReptFileName<cfif (tblname IS "FMSReportName")>, ReportID</cfif>)
		VALUES ('#form.rptname#','#form.rptfrq#','#form.filename#'<cfif (tblname IS "FMSReportName")>, '#form.rptid#'</cfif> );
		</cfquery>
		<cflocation url="rpt_request.cfm?tblname=#tblname#">
		<cfabort>
	<cfelseif (tblname IS "FSS19ReportName")>		
		<cfquery name="insertrpt" datasource="onlinereports">
		INSERT INTO #tblname# (ReportName,ReportFreq, ReptFileName,Password,Retention,CatagoryCode,Alias)
		VALUES ('#form.rptname#','#form.rptfrq#','#form.filename#','#form.password#','#form.retention#','#form.cataglist#','#form.alias#');
		</cfquery>		
		<cflocation url="rpt_request.cfm?tblname=#tblname#">
		<cfabort>
	<cfelse>
		<cfquery name="insertrpt" datasource="onlinereports">
		INSERT INTO #tblname# (ReportName,ReportFreq,ReptFileName,Password,Retention,<cfif tblname contains "Tarps">CatagoryCode<cfelse>Catagory</cfif>)
		VALUES ('#form.rptname#','#form.rptfrq#','#form.filename#','#form.password#','#form.retention#','#form.catagory#');
		</cfquery>		
		<cflocation url="rpt_request.cfm?tblname=#tblname#">
		<cfabort>
	</cfif>
	</cfoutput>
</cfif> 

<cfoutput>
<cfset title = "">
<cfswitch expression="#tblname#">
	<cfcase value="FSS19ReportName">
		<cfset title = "Add New FSS-19 (FSS order entry distibution system) Report">
	</cfcase>
	<cfcase value="FMSReportName">
		<cfset title = "Add New FMS (Fleet Management Systems) Report">
	</cfcase>
	<cfcase value="FEDS23ReportName">
		<cfset title = "Add New FEDS (Personal Property) Report">
	</cfcase>
	<cfcase value="SASYReportName">
		<cfset title = "Add New SASY (Surplus Property) Report">
	</cfcase>
	<cfcase value="CSCReportName">
		<cfset title = "Add New CSC (Supply Centers) Report">
	</cfcase>
	<cfcase value="TarpsReportName">
		<cfset title = "Add New TARPS and ASPA (Financial) Report">
	</cfcase>
</cfswitch>
tblname = #tblname#<br>

<cfquery name="getFrequency" datasource="onlinereports">
	<cfif (tblname IS "FMSReportName") OR (tblname IS "FEDS23ReportName")>
	SELECT ReportFreq, ReptFreqCode AS RptFreq 
	<cfelse><!--- if (tblname IS "FSS19ReportName") OR (tblname IS "SASYReportName") OR (tblname IS "CSCReportName") OR (tblname IS "TarpsReportName") --->	
	SELECT DISTINCT ReportFreq, ReportFreq AS RptFreq
	</cfif>
	FROM ReportFreq 
	WHERE ReptFreqCode <> 'MO'
	ORDER BY ReportFreq; 
</cfquery>
</cfoutput>

<script language="JavaScript">
	function validate(frm){		
	if (document.addfrm.rptname.value == "")
			{
				alert("Please enter the Report Name");
				document.addfrm.rptname.focus();
				return false;
			} 		
	if (document.addfrm.rptfrq.value == "")
		{
			alert("Please enter the Report Frequency");
			document.addfrm.rptfrq.focus();
			return false;
		} 	
	if (document.addfrm.filename.value == "")
		{
			alert("Please enter the File Name");
			document.addfrm.filename.focus();
			return false;
		} 		
		if(document.addfrm.retention){
			if (isNaN(document.addfrm.retention.value))
			{
				alert("Please enter number for the Retention");
				document.addfrm.retention.focus();
				return false;
			} 				
			document.addfrm.submit();
			return true;
		}//end check retention
	}//end function
</script>

<!--- <CFMODULE NAME="stdportalpageInsite" BANNER="/_images/insitebanner.jpg" TITLE="Online Reports"
          TOPLINE="No" GSALOGO="No" SIDENAVNAME="" LEFTNAV="FALSE" BOTTOMNAV="No" TABBAR="True" 
		  InsiteBar="True"  HOMEBAR="FALSE" STATUSBAR="FALSE">  --->
<br>
<H4>Region 6 Online Reports</H4>
<CFOUTPUT>
<p><FONT SIZE="2" color="2e3192"><strong>#title#</strong></font></p>
<table width="70%" cellpadding="0" bgcolor="3c4a5e" cellspacing="1">
<tr bgcolor="3c4a5e">
<td colspan="2">
	<table width="100%" cellpadding="2" bgcolor="3c4a5e" cellspacing="0">
	<form name="addfrm" action="rpt_add.cfm?tblname=#tblname#" method="post" onsubmit="return validate();">
	<TR class="fssheader2">
	<br>&nbsp;&nbsp;
		<TH><FONT SIZE="2">Report Name:</FONT></TH>
		<TD><input type="Text" name="rptname" value="" size="40"></TD>
	</TR>
	<TR class="fssheader2">
		<TH><FONT SIZE="2">Frequency:</FONT></TH>
		<TD><select name="rptfrq">
		<cfloop query="getFrequency">
			<option value="#getFrequency.RptFreq#" selected>#getFrequency.ReportFreq#</option>
		</cfloop>
		</select>
		</TD>
	</TR>
	<TR class="fssheader2">
		<TH><FONT SIZE="2">FileName:</FONT></TH>
		<TD><input type="Text" name="filename" value="" size="20"></TD>				
	</TR>
	<cfif (tblname IS NOT "FMSReportName") AND (tblname IS NOT "FEDS23ReportName")>
	<TR class="fssheader2">
		<TH><FONT SIZE="2">PassWord:</FONT></TH>
		<TD><input type="password" name="password" value="" size="20"></TD>				
	</TR>
	<TR class="fssheader2">
		<TH><FONT SIZE="2">Retention:</FONT></TH>
		<TD><input type="Text" name="retention" value="" size="20"></TD>				
	</TR>
		<cfif tblname IS "FSS19ReportName">
		<cfquery name="getcatag" datasource="onlinereports">
			SELECT catagoryCode AS code, catagoryname AS name
			FROM FSS19ReportCatagory 
			ORDER BY catagoryname;
		</cfquery>
		<TR class="fssheader2">
			<TH><FONT SIZE="2">Catagory:</FONT></TH>
			<TD><select name="cataglist">
			<cfloop query="getcatag"><option value="#code#">#name#</option></cfloop>
			</select></TD>				
		</TR>
		<TR class="fssheader2">
			<TH><FONT SIZE="2">Alias:</FONT></TH>
			<TD><input type="Text" name="alias" value="" size="20"></TD>				
		</TR>
		<cfelse>
		<TR class="fssheader2">
			<TH><FONT SIZE="2"><cfif tblname contains "Tarps">Catagory Code<cfelse>Catagory</cfif>:</FONT></TH>
			<TD><input type="Text" name="catagory" value="" size="20"></TD>				
		</TR>
		</cfif>	
	</cfif>
	<cfif (tblname IS "FMSReportName")>
	<TR class="fssheader2">
		<TH><FONT SIZE="2">Report ID:</FONT></TH>
		<TD><input type="Text" name="rptid" value="" size="20"></TD>				
	</TR>
	</cfif>
	<TR class="fssheader2">
		<TH>&nbsp;&nbsp;</TH>
		<TD><input type="submit" value="Add New Entry" name="addnow">&nbsp;<input type="Button" value="Cancel" name="cancel" onclick="history.back();"></TD>	
	</TR>
	</form>
	</table> 
</td>
</tr>
</table>
</CFOUTPUT>
<!--- </CFMODULE> --->