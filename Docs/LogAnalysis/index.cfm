<!--- 
Create date: 02/09/05
Author name: Ntale G. Lukama - NGL
Goal: Manage access to all the reports
Edit: none
 --->
<!--- Initialize Local Variables --->
<cfparam name="report_width" default="750">
<cfparam name="report_width_separator" default="2">
<cfparam name="report_width_left" default="0"><!--- 159 --->
<cfparam name="report_width_right" default="750">
<cfparam name="display_result" default="none">
<cfparam name="load" default="on">
<cfparam name="day" default="#day(now())#">
<cfparam name="month" default="#month(now())#">
<cfparam name="year" default="#year(now())#">
<cfparam name="exit"  default="off">
<cfparam name="exist"  default="off">
<cfset #report_width_right# = report_width - 1 - #report_width_left#>

<cfparam name="report_height" default="25">
<cfset height_remainder = (report_height * 8)- report_height>

<cfparam name="report" default="">
<cfparam name="nbr_report" default="10">
<cfparam name="select_report_color" default="FFFFFF"> <!---F7F7EE F8F8F8 --->
<cfparam name="status" default="">
<cfparam name="client.report" default="#report#">
<cfparam name="client.display_result" default="">
<cfparam name="report" default="#client.report#">
<cfoutput>#exit# \#report#\ [#status#]</cfoutput>
<!--- NGL:: BEGIN:: Redirect user to FSS Insite if user choose to exist the system --->
<cfif exit is 'on'>
<cfset client.report = "#report#">
<cfset report = "#client.report#">
<cfset client.exit = "logout">
<cfset exit = "#client.exit#">
<cfset client.load = "off">
<cfset load = "#client.load#">
<cfset client.status = "on">
<cfset status = "#client.status#">
<!---<cfset StructDelete(client, "exit")> <cfoutput>|#report#| [#exit#]</cfoutput><cfabort> --->
<cflocation url="http://insite.fss.gsa.gov/">
</cfif>

<!--- NGL:: END:: Redirect user to FSS Insite if user choose to exist the system --->
<!--- NGL::BEGIN:: Handles display of the last system viewed --->
<cfif IsDefined("status") and status is 'home' and exit is 'off'>
<cfset report = "">
<cfset display_result = "">
<cfset StructDelete(client, "report")>
<cfset StructDelete(client, "display_result")>


<cfelseif len(trim(report)) gt 0 and display_result is not 'report' and len(trim(status)) gt 0>
<cfset client.report = #report#>
<cfset client.display_result = #display_result#>
<cfset report = client.report>
<cfset display_result = client.display_result>

</cfif>
<!--- NGL::END:: Handles display of the last system viewed --->

<!--- NGL:: Get All FSS 19 Categories --->
<cfinclude template="report/fss19/sql/qy_GetCategory.cfm">

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript" src="js/coolButtons.js" type="text/javascript"></script>
<!--- NGL:: Javascript to Collapse and expand section --->
<cfinclude template="js/toggle.cfm">
<!--- NGL:: Javascript to display date picker --->
<script language="JavaScript" src="js/datetimepicker.js" type="text/javascript"></script>
<!--- NGL:: Javascript to display calendar --->
<cfif (display_result is 'none' or display_result is 'fms' or display_result is 'feds' or display_result is 'tarps' or display_result is 'aspa' or display_result is 'sasy' or display_result is 'csc' or display_result is 'fl-financial') and load is 'off'>
<cfinclude template="js/calendar.cfm">
</cfif>
<cfif display_result is not 'csc'>
<!--- NGL:: Javascript with the codes that handle the drop down boxes --->
<cfinclude template="js/dropdown.cfm">
</cfif>
<title>Online Reports in Testing</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="style/style.css" rel="stylesheet" type="text/css">
</head>

<body<cfif (display_result is 'none' or display_result is 'fms' or display_result is 'feds' or display_result is 'tarps' or display_result is 'aspa' or display_result is 'sasy' or display_result is 'csc' or display_result is 'fl-financial') and load is 'off'> onLoad="Defaults()"</cfif>>


<cfoutput>
<table width="#report_width#" align="center" cellpadding="1" cellspacing="0" bgcolor="EFEFEF">
	<tr>
		<td width="#report_width#" height="40">
		 <table border="0" width="100%" cellpadding="0" cellspacing="0">
		 	<tr>
				<td width="65%" style="font-weight:bold; font-size:14px "> 
				&nbsp;&nbsp;&nbsp;&nbsp;Reports &nbsp; &raquo;
				&nbsp;#UCase(report)#
				
				</td>
				<td width="10%" align="center" style="font-weight:bold; font-size:14px " valign="middle" onmouseover="this.style.cursor='hand';" onclick="location.href='#Home#/index.cfm?status=home'">
				<img src="images/icons/menu_home.gif" border="0" alt="Click here to return to the home page" align="absmiddle">&nbsp;Home
				</td>
				<td width="10%" align="center" style="font-weight:bold; font-size:14px " valign="middle" onmouseover="this.style.cursor='hand';" onclick="location.href='#Home#/index.cfm?report=#report#&display_result=#report#'">
				<img src="images/icons/helpicon.gif" border="0" alt="Click here if you seek help" align="absmiddle">&nbsp;Help
				</td>
				<td width="15%" align="center" style="font-weight:bold; font-size:14px " valign="middle" onmouseover="this.style.cursor='hand';" onclick="location.href='#Home#/index.cfm?report=#report#&display_result=#report#&exit=on'">
				<img src="images/icons/door_out.gif" border="0" alt="Click here to logout" align="absmiddle">&nbsp;Logout
				</td>
			</tr>
		 </table>
			
		</td>
	</tr>
	
	<tr>
		<td width="#report_width#" bgcolor="B4B4B4">
			<table width="#report_width#" border="0" cellpadding="3" cellspacing="0" bgcolor="EFEFEF">
				
				<tr height="#report_height#">
					<cfif status is 'home' and exit is 'off'>
					<td width="#report_width_left#"<cfif report is 'fss19'> bgcolor="#select_report_color#"<cfelse> class="Raised"</cfif>><a href="#CGI.SCRIPT_NAME#?report=fss19&display_result=none&status=on" title="Click here to access the FSS 19 Reports" <cfif report is 'fss19'>class="NavLinkSelected"<cfelse>class="NavLink"</cfif>><img src="images/icons/reporting.gif" alt="Click here to access the FSS 19 Reports" border="0" align="absmiddle">&nbsp;FSS 19</a></td>
					</cfif>
					<!--- NGL:: Display FSS 19 Report --->
					<cfif report is 'fss19'>
					<td width="#report_width_right#" rowspan="#nbr_report#" bgcolor="#select_report_color#" valign="top" align="center">
					
					<cfif display_result is 'none'>
					<cfinclude template="cmm/ini.cfm">
					<!--- NGL:: Display Main Screen --->
					<cfinclude template="report/fss19/menu/main.cfm">
					<cfelseif display_result is 'daily_fss19'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=none&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Daily Screen --->
					<cfinclude template="report/fss19/daily/dsp_result.cfm">
					<cfelseif display_result is 'daterange_fss19'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=none&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Date Range Screen --->
					<cfinclude template="report/fss19/daterange/dsp_result.cfm">
					<cfelseif display_result is 'currentyear_fss19'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=none&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Current Year Screen --->
					<cfinclude template="report/fss19/currentyear/dsp_result.cfm">
					</cfif>
					</td>
					
					<!--- NGL:: Display FMS 19 Report --->
					<cfelseif report is 'fms'>
					<td width="#report_width_right#" rowspan="#nbr_report#" bgcolor="#select_report_color#" valign="top" align="center">
					
					
					<cfif display_result is 'fms'>
					<!--- NGL:: Display Main Screen --->
					<cfinclude template="report/fms/menu/main.cfm">
					<cfelseif display_result is 'daily_fms'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=fms&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Daily Screen --->
					<cfinclude template="report/fms/daily/dsp_result.cfm">
					<cfelseif display_result is 'daterange_fms'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=fms&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Date Range Screen --->
					<cfinclude template="report/fms/daterange/dsp_result.cfm">
					<!--- <cfelseif display_result is 'currentyear_fms'>
					<dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=fms">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd>
					<!--- NGL:: Display Current Year Screen --->
					<cfinclude template="report/fms/currentyear/dsp_result.cfm"> --->
					<cfelseif display_result is 'monthly_fms'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=fms&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Monthly Screen --->
					<cfinclude template="report/fms/monthly/dsp_result.cfm">
					<cfelseif display_result is 'ie_fms'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=fms&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display IE report Screen --->
					<cfinclude template="report/fms/ie/dsp_result.cfm">
					</cfif> 
					</td>
					
					
					<!--- NGL:: Display FEDSReport --->
					<cfelseif report is 'feds'>
					<td width="#report_width_right#" rowspan="#nbr_report#" bgcolor="#select_report_color#" valign="top" align="center">
					
					<cfif display_result is 'feds'>
					<cfinclude template="cmm/ini.cfm">
					<!--- NGL:: Display Main Screen --->
					<cfinclude template="report/feds/menu/main.cfm">
					<cfelseif display_result is 'daily_feds'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=feds&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Daily Screen --->
					<cfinclude template="report/feds/daily/dsp_result.cfm">
					<cfelseif display_result is 'daterange_feds'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=feds&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Date Range Screen --->
					<cfinclude template="report/feds/daterange/dsp_result.cfm">
					<cfelseif display_result is 'currentyear_feds'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=feds&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Current Year Screen --->
					<cfinclude template="report/feds/currentyear/dsp_result.cfm">
					</cfif> 
					</td>
					
					<!--- NGL:: Display TARPS Report --->
					<cfelseif report is 'tarps'>
					<td width="#report_width_right#" rowspan="#nbr_report#" bgcolor="#select_report_color#" valign="top" align="center">
					
					<cfif display_result is 'tarps'>
					<cfinclude template="cmm/ini.cfm">
					<!--- NGL:: Display Main Screen --->
					<cfinclude template="report/tass/menu/main.cfm">
					<cfelseif display_result is 'daily_tarps'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=tarps&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Daily Screen --->
					<cfinclude template="report/tass/daily/dsp_result.cfm">
					<cfelseif display_result is 'daterange_tarps'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=tarps&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Date Range Screen --->
					<cfinclude template="report/tass/daterange/dsp_result.cfm">
					<cfelseif display_result is 'currentyear_tarps'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=tarps&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Current Year Screen --->
					<cfinclude template="report/tass/currentyear/dsp_result.cfm">
					</td></cfif> 
					
					
					<!--- NGL:: Display ASPA Report --->
					<cfelseif report is 'aspa'>
					<td width="#report_width_right#" rowspan="#nbr_report#" bgcolor="#select_report_color#" valign="top" align="center">
					
					<cfif display_result is 'aspa'>
					<cfinclude template="cmm/ini.cfm">
					<!--- NGL:: Display Main Screen --->
					<cfinclude template="report/aspa/menu/main.cfm">
					<cfelseif display_result is 'daily_aspa'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=aspa&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Daily Screen --->
					<cfinclude template="report/aspa/daily/dsp_result.cfm">
					<cfelseif display_result is 'daterange_aspa'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=aspa&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Date Range Screen --->
					<cfinclude template="report/aspa/daterange/dsp_result.cfm">
					<cfelseif display_result is 'currentyear_aspa'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=aspa&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Current Year Screen --->
					<cfinclude template="report/aspa/currentyear/dsp_result.cfm">
					</td></cfif> 
					
					
					<!--- NGL:: Display SASY Report --->
					<cfelseif report is 'sasy'>
					<td width="#report_width_right#" rowspan="#nbr_report#" bgcolor="#select_report_color#" valign="top" align="center">
					
					<cfif display_result is 'sasy'>
					<cfinclude template="cmm/ini.cfm">
					<!--- NGL:: Display Main Screen --->
					<cfinclude template="report/sasy/menu/main.cfm">
					<cfelseif display_result is 'daily_sasy'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=sasy&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Daily Screen --->
					<cfinclude template="report/sasy/daily/dsp_result.cfm">
					<cfelseif display_result is 'daterange_sasy'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=sasy&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Date Range Screen --->
					<cfinclude template="report/sasy/daterange/dsp_result.cfm">
					<cfelseif display_result is 'currentyear_sasy'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=sasy&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Current Year Screen --->
					<cfinclude template="report/sasy/currentyear/dsp_result.cfm">
					</td></cfif> 

					
					<!--- NGL:: Display CSC Report --->
					<cfelseif report is 'csc'>
					<td width="#report_width_right#" rowspan="#nbr_report#" bgcolor="#select_report_color#" valign="top" align="center">
					
					<cfif display_result is 'csc'>
					<cfinclude template="cmm/ini.cfm">
					<!--- NGL:: Display Main Screen --->
					<cfinclude template="report/csc/menu/main.cfm">
					<cfelseif display_result is 'daily_csc'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=csc&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Daily Screen --->
					<cfinclude template="report/csc/daily/dsp_result.cfm">
					<cfelseif display_result is 'daterange_csc'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=csc&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Date Range Screen --->
					<cfinclude template="report/csc/daterange/dsp_result.cfm">
					<cfelseif display_result is 'currentyear_csc'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=csc&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Current Year Screen --->
					<cfinclude template="report/csc/currentyear/dsp_result.cfm">
					</td></cfif> 
					
					
					<!--- NGL:: Display FL-Financial Report --->
					<cfelseif report is 'fl-financial'>
					<td width="#report_width_right#" rowspan="#nbr_report#" bgcolor="#select_report_color#" valign="top" align="center">
					
					<cfif display_result is 'fl-financial'>
					<cfinclude template="cmm/ini.cfm">
					<!--- NGL:: Display Main Screen --->
					<cfinclude template="report/flfinancial/menu/main.cfm">
					<cfelseif display_result is 'daily_flfinancial'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=fl-financial&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Daily Screen --->
					<cfinclude template="report/flfinancial/daily/dsp_result.cfm">
					<cfelseif display_result is 'daterange_flfinancial'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=fl-financial&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Date Range Screen --->
					<cfinclude template="report/flfinancial/daterange/dsp_result.cfm">
					<cfelseif display_result is 'currentyear_fnfinancial'>
					<cfinclude template="cmm/ini.cfm">
					<div align="left"><dd class="content"><a href="#Home#/index.cfm?report=#report#&display_result=fl-financial&status=on&load=off">&laquo;&nbsp;Back to <strong>#Ucase(report)#</strong> main page</a></dd></div>
					<!--- NGL:: Display Current Year Screen --->
					<cfinclude template="report/flfinancial/currentyear/dsp_result.cfm">
					</td></cfif>
					
					</cfif>
				</tr>
				
				
				<cfif status is 'home' and exit is 'off'>
				<!--- NGL:: Display FMS 19 Navigation Bar --->
				<tr height="#report_height#">
					<td width="#report_width_left#"<cfif report is 'fms'> bgcolor="#select_report_color#"<cfelse> class="Raised"</cfif>><a href="#CGI.SCRIPT_NAME#?report=fms&display_result=fms&status=on&load=off" title="Click here to access the FMS Reports" <cfif report is 'fms'>class="NavLinkSelected"<cfelse>class="NavLink"</cfif>><img src="images/icons/reporting.gif" alt="Click here to access the FMS Reports" border="0" align="absmiddle">&nbsp;FMS</a></td>
				</tr>
				</cfif>
				
				<cfif status is 'home' and exit is 'off'>
				<!--- NGL:: Display FEDS Navigation Bar --->
				<tr height="#report_height#">
					<td width="#report_width_left#"<cfif report is 'feds'> bgcolor="#select_report_color#"<cfelse> class="Raised"</cfif>><a href="#CGI.SCRIPT_NAME#?report=feds&display_result=feds&status=on&load=off" title="Click here to access the FEDS Personal Property Reports" <cfif report is 'feds'>class="NavLinkSelected"<cfelse>class="NavLink"</cfif>><img src="images/icons/reporting.gif" alt="Click here to access the FEDS Personal Proprety Reports" border="0" align="absmiddle">&nbsp;FEDS PPR</a></td>
				</tr>
				</cfif>
				
				<cfif status is 'home' and exit is 'off'>
				<!--- NGL:: Display TARPS Navigation Bar --->
				<tr height="#report_height#">
					<td width="#report_width_left#"<cfif report is 'tarps'> bgcolor="#select_report_color#"<cfelse> class="Raised"</cfif>><a href="#CGI.SCRIPT_NAME#?report=tarps&display_result=tarps&status=on&load=off" title="Click here to access the TARPS Reports" <cfif report is 'tarps'>class="NavLinkSelected"<cfelse>class="NavLink"</cfif>><img src="images/icons/reporting.gif" alt="Click here to access the TARPS Reports" border="0" align="absmiddle">&nbsp;TARPS</a></td>
				</tr>
				</cfif>
				
				<cfif status is 'home' and exit is 'off'>
				<!--- NGL:: Display ASPA Navigation Bar --->
				<tr height="#report_height#">
					<td width="#report_width_left#"<cfif report is 'aspa'> bgcolor="#select_report_color#"<cfelse> class="Raised"</cfif>><a href="#CGI.SCRIPT_NAME#?report=aspa&display_result=aspa&status=on&load=off" title="Click here to access the ASPA Reports" <cfif report is 'aspa'>class="NavLinkSelected"<cfelse>class="NavLink"</cfif>><img src="images/icons/reporting.gif" alt="Click here to access the ASPA Reports" border="0" align="absmiddle">&nbsp;ASPA</a></td>
				</tr>
				</cfif>
				
				<cfif status is 'home' and exit is 'off'>
				<!--- NGL:: Display SASY Navigation Bar --->
				<tr height="#report_height#">
					<td width="#report_width_left#"<cfif report is 'sasy'> bgcolor="#select_report_color#"<cfelse> class="Raised"</cfif>><a href="#CGI.SCRIPT_NAME#?report=sasy&display_result=sasy&status=on&load=off" title="Click here to access the SASY Reports" <cfif report is 'sasy'>class="NavLinkSelected"<cfelse>class="NavLink"</cfif>><img src="images/icons/reporting.gif" alt="Click here to access the SASY Reports" border="0" align="absmiddle">&nbsp;SASY</a></td>
				</tr>
				</cfif>
				
				<cfif status is 'home' and exit is 'off'>
				<!--- NGL:: Display CSC Navigation Bar --->
				<tr height="#report_height#">
					<td width="#report_width_left#"<cfif report is 'csc'> bgcolor="#select_report_color#"<cfelse> class="Raised"</cfif>><a href="#CGI.SCRIPT_NAME#?report=csc&display_result=csc&status=on&load=off" title="Click here to access the CSC Reports" <cfif report is 'csc'>class="NavLinkSelected"<cfelse>class="NavLink"</cfif>><img src="images/icons/reporting.gif" alt="Click here to access the CSC Reports" border="0" align="absmiddle">&nbsp;CSC</a></td>
				</tr>
				</cfif>
				
				<cfif status is 'home' and exit is 'off'>
				<!--- NGL:: Display FL-FINANCIAL Navigation Bar --->
				<tr height="#report_height#">
					<td width="#report_width_left#"<cfif report is 'fl-financial'> bgcolor="#select_report_color#"<cfelse> class="Raised"</cfif>><a href="#CGI.SCRIPT_NAME#?report=fl-financial&display_result=fl-financial&status=on&load=off" title="Click here to access the FL-Financial Reports" <cfif report is 'fl-financial'>class="NavLinkSelected"<cfelse>class="NavLink"</cfif>><img src="images/icons/reporting.gif" alt="Click here to access the FL-Financial Reports" border="0" align="absmiddle">&nbsp;FL-Financial</a></td>
				</tr>
				</cfif>
				
				<cfif status is "" and report is "" and exist is 'on'>
				<!--- NGL:: Display default screen --->
				<tr height="#report_height#">
					<td width="#report_width_left#" class="Raised"><a href="#CGI.SCRIPT_NAME#?report=&display_result=&status=home" title="Click here to select your Reports Systems "class="NavLink">Click here to start</a></td>
				</tr>
				</cfif>
			</table>
		</td>
	</tr>
</table>
</cfoutput>
</body>
</html>
