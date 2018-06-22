<CFIF Isdefined("form.tblname")>	
	<cfset tblname = form.tblname &"ReportName"> 	
<CFELSE>
	<cfparam name="tblname" default="">
	<cfif Isdefined("url.tblname")>
		<cfset tblname = url.tblname> 	
	</cfif>
</CFIF>

<cfset title = "">
<cfswitch expression="#tblname#">
	<cfcase value="FSS19ReportName">
		<cfset title = "FSS-19 (FSS order entry distibution system) Reports">
	</cfcase>
	<cfcase value="FMSReportName">
		<cfset title = "FMS (Fleet Management Systems) Reports">
	</cfcase>
	<cfcase value="FEDS23ReportName">
		<cfset title = "FEDS (Personal Property) Reports">
	</cfcase>
	<cfcase value="SASYReportName">
		<cfset title = "SASY (Surplus Property) Reports">
	</cfcase>
	<cfcase value="CSCReportName">
		<cfset title = "CSC (Supply Centers) Reports">
	</cfcase>
	<cfcase value="TarpsReportName">
		<cfset title = "TARPS and ASPA (Financial) Reports">
	</cfcase>
</cfswitch>

<cfif ParameterExists(url.rptName)>
	<cfset rptName = url.rptName>
</cfif>
<script language="JavaScript">
	function get_freq(frm)
	{
		var name_index = document.searchfrm.report_name.selectedIndex;
		if (name_index != -1) {
			var rptName = document.searchfrm.report_name.value;			
			var tblname = document.searchfrm.tblname.value;
			document.searchfrm.report_name.options[name_index].select == true;
			document.location = 'rpt_request.cfm?rptName='+rptName+'&tblname='+tblname;
			return true;
		}
	}
</script>

<!--- <CFMODULE NAME="stdportalpageInsite" BANNER="/_images/insitebanner.jpg" TITLE="Online Reports"
          TOPLINE="No" GSALOGO="No" SIDENAVNAME="" LEFTNAV="FALSE" BOTTOMNAV="No" TABBAR="True" 
		  InsiteBar="True"  HOMEBAR="FALSE" STATUSBAR="FALSE">  --->
<br>
<H4>Region 6 Online Reports</H4>
<CFOUTPUT>
<cfif (tblname IS "FMSReportName") OR (tblname IS "FEDS23ReportName")>
	<CFQUERY NAME="getReportName" DBTYPE="ODBC" DATASOURCE="onlinereports">
		SELECT ReportFreq.ReportFreq, #tblname#.ReportName, #tblname#.ReptFileName, #tblname#.ReptFreqCode,#tblname#.ID as ID<cfif (tblname IS "FMSReportName")>, ReportID</cfif>
		FROM #tblname# LEFT JOIN ReportFreq ON #tblname#.ReptFreqCode = ReportFreq.ReptFreqCode 
		<CFIF (IsDefined("rptName")) AND (rptName IS NOT "all")>WHERE #tblname#.ReportName <cfif rptName IS "">IS NULL<cfelse>= '#rptName#'</cfif></CFIF>
		ORDER BY #tblname#.ReportName, ReportFreq.ReportFreq; 
	</CFQUERY>
	<cfset cols = 3>	
<cfelse><!--- if (tblname IS "FSS19ReportName") OR (tblname IS "SASYReportName") OR (tblname IS "CSCReportName") OR (tblname IS "TarpsReportName") --->
	<CFQUERY NAME="getReportName" DBTYPE="ODBC" DATASOURCE="onlinereports">
		SELECT ReportFreq,ReportName,ReptFileName,ID,Password,Retention<cfif (tblname IS "FSS19ReportName")>,CatagoryCode,Alias<cfelseif tblname contains "Tarps">,CatagoryCode AS catag<cfelse>,Catagory AS catag</cfif>	
		FROM #tblname# 
		<CFIF (IsDefined("rptName")) AND (rptName IS NOT "all")>WHERE ReportName <cfif rptName IS ""> IS NULL<cfelse> = '#rptName#'</cfif></CFIF>
		ORDER BY ReportName, ReportFreq;  
	</CFQUERY>
	<cfset cols = 5>	
</cfif>
<P><FONT SIZE="2" color="2e3192"><strong>Search By:</strong></FONT>
<TABLE BORDER="0" WIDTH="70%" bgcolor="e8e8f0" cellpadding="2" cellspacing="1">
	<form action="rpt_request.cfm" name="searchfrm" method="post" onsubmit="return getreport(this);">
	<TR><TD colspan="2">&nbsp;&nbsp;</TD></TR>
	<TR>
		<TD><FONT SIZE="2">Report Name:</FONT></TD>
		<TD><select name="report_name" onchange="return get_freq();">
		<option value="all">--ALL--</option>
		<cfset tempA = "yes">
		<cfset tempB = "yes">
		<cfloop query="getReportName">
			<cfset tempA = #ReportName#>
			<cfif tempA EQ tempB><cfset tempA = "no"></cfif>
			<cfif tempA IS NOT "no">
			<option value="#ReportName#" <cfif ParameterExists(rptName) AND (rptName IS #ReportName#)>selected</cfif>>#Trim(ReportName)#</option> 
			<cfset tempB = #ReportName#>
			</cfif>
		</cfloop></select> 
		</TD>
	</TR>
	<TR><TD colspan="2">&nbsp;&nbsp;</TD></TR>
	<input type="Hidden" name="tblname" value="#tblname#">
	</form>
</TABLE>
</P>
<p><FONT SIZE="2" color="2e3192"><strong>#title#</strong></font>
<form name="addfrm" action="rpt_add.cfm?tblname=#tblname#" method="post">
<input type="submit" value="Add New Entry" name="add">
</form>
</p>
<table width="70%" cellpadding="5" bgcolor="3c4a5e" cellspacing="1">
	<TR class="fssheader2">
		<TH><FONT SIZE="2">Report Name</FONT></TH>
		<TH><FONT SIZE="2">Frequency</FONT></TH>
		<TH><FONT SIZE="2">FileName</FONT></TH>
		<cfif (tblname IS NOT "FMSReportName") AND (tblname IS NOT "FEDS23ReportName")>
		<TH><FONT SIZE="2">Password</FONT></TH>
		<TH><FONT SIZE="2">Retention</FONT></TH>		
			<cfif (tblname IS "FSS19ReportName")>
			<cfset cols = 7>
			<TH><FONT SIZE="2">CatagoryCode</FONT></TH>
			<TH><FONT SIZE="2">Alias</FONT></TH>
			<cfelseif tblname contains "Tarps">
			<cfset cols = 6>
			<TH><FONT SIZE="2">CatagoryCode</FONT></TH>
			<cfelse>
			<cfset cols = 6>
			<TH><FONT SIZE="2">Catagory</FONT></TH>
			</cfif>	
		</cfif>
		<cfif (tblname IS "FMSReportName")>
		<cfset cols = 4>
		<TH><FONT SIZE="2">ReportID</FONT></TH>
		</cfif>
	</TR>
	<cfset row_num = 0>
	<OL>
	<CFLOOP QUERY="getReportName">		
		<cfif row_num mod 2 EQ 0>
			<cfset mycolor = "FFFFFF">
		<cfelse>
			<cfset mycolor = "EAEAEA">
		</cfif>
		<TR bgcolor="#mycolor#">				
			<TD><FONT SIZE="-2"><A HREF="rpt_edit.cfm?ID=#ID#&tblname=#tblname#">Edit</A>&nbsp;&nbsp;#ReportName#</FONT></TD>
			<TD><FONT SIZE="-2">#ReportFreq#</FONT></TD>
			<TD><FONT SIZE="-2">#ReptFileName#</FONT></TD>
			<cfif (tblname IS NOT "FMSReportName") AND (tblname IS NOT "FEDS23ReportName")>
			<cfset displaypw = "">
			<cfif LEN(Trim(Password)) GT 0>
			<cfset displaypw = "">
				<cfloop index="i" from="1" to="#LEN(Trim(Password))#">
					<cfset displaypw = displaypw &"*">					
				</cfloop>		
			</cfif> 
			<TD><FONT SIZE="-2">#displaypw#</FONT></TD>
			<TD><FONT SIZE="-2">#Retention#</FONT></TD>	
				<cfif (tblname IS "FSS19ReportName")>
				<cfquery name="getcatag" datasource="onlinereports">
					SELECT catagoryname AS name
					FROM FSS19ReportCatagory 
					WHERE catagoryCode = '#getReportName.catagoryCode#' 				
				</cfquery>
				<TD><FONT SIZE="-2">#getcatag.name#</FONT></TD>
				<TD><FONT SIZE="-2">#Alias#</FONT></TD>
				<cfelse>
				<TD><FONT SIZE="-2">#catag#</FONT></TD>
				</cfif>	
			</cfif>
			<cfif (tblname IS "FMSReportName")>
			<TD><FONT SIZE="-2">#ReportID#</FONT></TD>
			</cfif>
		</TR>
		<cfset row_num = row_num+1>
	</CFLOOP>
	</OL>
	<TR bgcolor="e8e8f0">
		<TD colspan="#cols#" align="middle">
     <A href="index.cfm">&nbsp;Back<br><IMG height=30 alt=Back src="back.gif" width=30 border=0></A></TD>
	</TR>
</table>
</CFOUTPUT>
<!--- </CFMODULE> --->