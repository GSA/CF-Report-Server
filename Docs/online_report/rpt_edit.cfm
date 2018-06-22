<CFIF Isdefined("form.tblname")>	
	<cfset tblname = form.tblname &"Reportname"> 	
<CFELSE>
	<cfparam name="tblname" default="">
	<cfif Isdefined("url.tblname")>
		<cfset tblname = url.tblname> 	
	</cfif>
</CFIF>
<CFIF Isdefined("url.id")>	
	<cfset id = url.id> 	
</CFIF>
<cfif (IsDefined("form.upd") IS "yes") AND (form.upd IS "Update")>
	<cfoutput>	
	<cfif (tblname IS "FMSReportName") OR (tblname IS "FEDS23ReportName")>			
		<cfquery name="updrpt" datasource="onlinereports">
		UPDATE #tblname# 
		SET ReportName = '#form.rptname#',
			ReptFreqCode = '#form.rptfrq#',
			ReptFileName = '#form.filename#'
			<cfif (tblname IS "FMSReportName")>, ReportID = '#form.rptid#'</cfif>
		WHERE ID = #form.id#;
		</cfquery>
		<cflocation url="rpt_request.cfm?tblname=#tblname#">
		<cfabort>
	<cfelseif (tblname IS "FSS19ReportName")>		
		<cfquery name="updrpt" datasource="onlinereports">
		UPDATE #tblname# 
		SET ReportName = '#form.rptname#',
			ReportFreq = '#form.rptfrq#',
			ReptFileName = '#form.filename#',
			Password = '#form.password#',
			Retention = <cfif Trim(form.retention) IS "">0<cfelse>#form.retention#</cfif>,
			CatagoryCode = '#form.cataglist#',
			Alias = '#form.alias#'
		WHERE ID = #form.id#;
		</cfquery>
		<cflocation url="rpt_request.cfm?tblname=#tblname#">
		<cfabort>
	<cfelse>
		<cfquery name="updrpt" datasource="onlinereports">
		UPDATE #tblname# 
		SET ReportName = '#form.rptname#',
			ReportFreq = '#form.rptfrq#',
			ReptFileName = '#form.filename#',
			Password = '#form.password#',
			Retention = <cfif Trim(form.retention) IS "">0<cfelse>#form.retention#</cfif>,
			<cfif tblname contains "Tarps">CatagoryCode<cfelse>Catagory</cfif> = '#form.catagory#'
		WHERE ID = #form.id#;
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
		<cfset title = "Edit FSS-19 (FSS order entry distibution system) Report">
	</cfcase>
	<cfcase value="FMSReportName">
		<cfset title = "Edit FMS (Fleet Management Systems) Report">
	</cfcase>
	<cfcase value="FEDS23ReportName">
		<cfset title = "Edit FEDS (Personal Property) Report">
	</cfcase>
	<cfcase value="SASYReportName">
		<cfset title = "Edit SASY (Surplus Property) Report">
	</cfcase>
	<cfcase value="CSCReportName">
		<cfset title = "Edit CSC (Supply Centers) Report">
	</cfcase>
	<cfcase value="TarpsReportName">
		<cfset title = "Edit TARPS and ASPA (Financial) Report">
	</cfcase>
</cfswitch>
<cfif (tblname IS "FMSReportName") OR (tblname IS "FEDS23ReportName")>
	<CFQUERY NAME="getReportName" DBTYPE="ODBC" DATASOURCE="onlinereports">
		SELECT ReportFreq.ReportFreq, #tblname#.ReportName, #tblname#.ReptFileName, #tblname#.ReptFreqCode,#tblname#.ID as ID<cfif (tblname IS "FMSReportName")>, ReportID</cfif>
		FROM #tblname# LEFT JOIN ReportFreq ON #tblname#.ReptFreqCode = ReportFreq.ReptFreqCode 
		WHERE #tblname#.ID = #id#
		ORDER BY #tblname#.ReportName, ReportFreq.ReportFreq; 
	</CFQUERY>
<cfelse><!--- if (tblname IS "FSS19ReportName") OR (tblname IS "SASYReportName") OR (tblname IS "CSCReportName") OR (tblname IS "TarpsReportName") --->
	<CFQUERY NAME="getReportName" DBTYPE="ODBC" DATASOURCE="onlinereports">
		SELECT ReportFreq,ReportName,ReptFileName,ID,Password,Retention<cfif (tblname IS "FSS19ReportName")>,CatagoryCode,Alias<cfelseif tblname contains "Tarps">,CatagoryCode AS catag<cfelse>,Catagory AS catag</cfif>	
		FROM #tblname# 
		WHERE #tblname#.ID = #id#
		ORDER BY ReportName, ReportFreq; 
	</CFQUERY>	
</cfif>

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
		if (document.editfrm.rptname.value == "")
			{
				alert("Please enter the Report Name");
				document.editfrm.rptname.focus();
				return false;
			} 		
		if (document.editfrm.rptfrq.value == "")
			{
				alert("Please enter the Report Frequency");
				document.editfrm.rptfrq.focus();
				return false;
			} 	
		if (document.editfrm.filename.value == "")
			{
				alert("Please enter the File Name");
				document.editfrm.filename.focus();
				return false;
			} 			
		if(document.editfrm.retention){
			if (isNaN(document.addfrm.retention.value))
			{
				alert("Please enter number for the Retention");
				document.editfrm.retention.focus();
				return false;
			} 				
			document.editfrm.submit();
			return true;
		}//end check retention
	}//end function
</script>

<!--- <CFMODULE NAME="stdportalpageInsite" BANNER="/_images/insitebanner.jpg" TITLE="Online Reports"
          TOPLINE="No" GSALOGO="No" SIDENAVNAME="" LEFTNAV="FALSE" BOTTOMNAV="No" TABBAR="True" 
		  InsiteBar="True"  HOMEBAR="FALSE" STATUSBAR="FALSE">  --->
<br>
<H4>Region 6 Online Reports</H4>
<CFOUTPUT query="getReportName">
<p><FONT SIZE="2" color="2e3192"><strong>#title#</strong></font></p>
<table width="70%" cellpadding="0" bgcolor="3c4a5e" cellspacing="1">
<tr bgcolor="3c4a5e">
<td colspan="2">
	<table width="100%" cellpadding="2" bgcolor="3c4a5e" cellspacing="0">
	<form name="editfrm" action="rpt_edit.cfm?tblname=#tblname#" method="post" onsubmit="return validate();">
	<TR class="fssheader2">
	<br>&nbsp;&nbsp;
		<TH><FONT SIZE="2">Report Name:</FONT></TH>
		<TD><input type="Text" name="rptname" value="#ReportName#" size="40"></TD>
	</TR>
	<TR class="fssheader2">
		<TH><FONT SIZE="2">Frequency:</FONT></TH>
		<TD><select name="rptfrq">
		<cfloop query="getFrequency">
			<option value="#getFrequency.RptFreq#" <CFIF getFrequency.RptFreq EQ getReportName.ReportFreq>selected</CFIF>>#getFrequency.ReportFreq#</option>
		</cfloop>
		</select>
		</TD>
	</TR>
	<TR class="fssheader2">
		<TH><FONT SIZE="2">FileName:</FONT></TH>
		<TD><input type="Text" name="filename" value="#ReptFileName#" size="20"></TD>				
	</TR>
	<cfif (tblname IS NOT "FMSReportName") AND (tblname IS NOT "FEDS23ReportName")>
	<TR class="fssheader2">
		<TH><FONT SIZE="2">PassWord:</FONT></TH>
		<TD><input type="password" name="password" value="#Password#" size="20"></TD>				
	</TR>
	<TR class="fssheader2">
		<TH><FONT SIZE="2">Retention:</FONT></TH>
		<TD><input type="Text" name="retention" value="#retention#" size="20"></TD>				
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
			<cfloop query="getcatag"><option value="#code#" <CFIF code EQ getReportName.CatagoryCode>SELECTED</CFIF>>#name#</option></cfloop>
			</select></TD>				
		</TR>
		<TR class="fssheader2">
			<TH><FONT SIZE="2">Alias:</FONT></TH>
			<TD><input type="Text" name="alias" value="#alias#" size="20"></TD>				
		</TR>
		<cfelse>
		<TR class="fssheader2">
			<TH><FONT SIZE="2"><cfif tblname contains "Tarps">Catagory Code<cfelse>Catagory</cfif>:</FONT></TH>
			<TD><input type="Text" name="catagory" value="#catag#" size="20"></TD>				
		</TR>
		</cfif>	
	</cfif>
	<cfif (tblname IS "FMSReportName")>
	<TR class="fssheader2">
		<TH><FONT SIZE="2">Report ID:</FONT></TH>
		<TD><input type="Text" name="rptid" value="#ReportID#" size="20"></TD>				
	</TR>
	</cfif>
	<TR class="fssheader2">
		<TH>&nbsp;&nbsp;</TH>
		<TD><input type="submit" value="Update" name="upd">&nbsp;<input type="Button" value="Cancel" name="cancel" onclick="history.back();"></TD>	
	</TR>
	<input type="Hidden" name="id" value="#ID#">
	</form>
	</table> 
</td>
</tr>
</table>
</CFOUTPUT>
<!--- </CFMODULE> --->