<cfsilent>
<!--- Import L10N Taglib (System Generated) --->
<cfimport prefix="admin" taglib="../administrator/cftags/">

<!--- Establish page locale, default is english (en). --->
<cfparam name="request.locale" default="en">
<cfscript>
	if(IsDefined("FORM.locale")) { request.locale = LCase(Trim(FORM.locale)); }
	request.localeFile = "resources/general_#request.locale#.xml";
</cfscript>
<!--- ebk (trilemetry) 08/28/04 - create URL variable for images/css --->
<cfset request.thisURL = "../administrator/">
<!--- ebk (trilemetry) 092404 - added variables for colors --->
<cfscript>
	request.grayLight = "E2E6E7"; // use for table bkgds
	request.grayMedium = "C6CFD0"; // used for table borders
	request.grayDark = "6C7A83"; // used for background
	request.blueLight = "F3F7F7"; // used for table bkgds
	request.blueMedium = "E9F0F2"; // used for table borders
	request.blueBright = "0898DB"; // used for header text
	request.blueDark = "003399"; // used for links
	request.greenMedium = "008A00";//"2D8A00"; // used for link hover
	request.yellow = "FFFF99"; // used for table highlights
</cfscript>
<cflogout>

<!--- we need to find our web root to admin --->
<cfset thisURL = cgi.script_name>
<!--- ensure we have componentutils --->
<cfif listFindNoCase(thisURL,"componentutils","/")>
	<!--- strip off endings until we have /administrator --->
	<cfscript>
		while(	listLast(thisURL,'/') neq "componentutils" )
		{	
			if( listLen(thisURL,"/") eq 0 )
			{
				cfbreak;
			}
			thisURL = listDeleteAt(thisURL, listLen(thisURL,"/"), "/");
		}
	</cfscript>
	
	<cfset thisURL = thisURL & "/">
	<cfset adminURL = ListDeleteAt( thisURL, ListLen( thisURL, "/" ), "/" ) & "/administrator/" >

</cfif>
</cfsilent>


<cfoutput>
<admin:l10n id="cfcbrowser_login" var="pagename">Component Browser Login</admin:l10n>
<html>
<head>
	<title>#pagename#</title>
	
	<cfinclude template="../administrator/styles.cfm">
	<meta name="Author" content="Copyright 1996-#year(now())# Macromedia Corp. All rights reserved.">
</head>

<!-- frame buster - code by Gordon McComb -->
<script language="JavaScript" type="text/javascript">
	<!-- Hide script from older browsers

	function changePage() 
	{
		if(top != self) top.location = document.location;
	}

	function openWin( windowURL, windowName, windowFeatures ) { 
		return window.open( windowURL, windowName, windowFeatures ) ; 
	} 
	function open_on_entrance(url,name)
	{ 
	new_window = window.open(url, name, ' menubar,scrollBars,resizable,dependent,status,width=525,height=300')
	}
// -->
</script>
<body bgcolor="##6C7A83" 
	onload="changePage();document.forms.loginform.j_password.focus();">

<admin:l10n id="coldfusionmx" var="coldfusionmx">ColdFusion MX</admin:l10n>
<cfform name="loginform" action="#cgi.script_name#?#cgi.query_string#" method="POST">
<br />




<!-----------------------------------------------------------------
START WHITE TABLE
------------------------------------------------------------------>
<table width="600" border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
	<td>
	<!-----------------------------------------------------------------
	START WHITE CAP TOP
	------------------------------------------------------------------>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
		<td width="12"><img src="#request.thisURL#images/cap_content_white_main_top_left.gif" width="12" height="11"></td>
		<td bgcolor="##FFFFFF"><img src="#request.thisURL#images/spacer_10_x_10.gif" width="10" height="10"></td>
		<td width="12"><img src="#request.thisURL#images/cap_content_white_main_top_right.gif" width="12" height="11"></td>
	  </tr>
	 </table>
	<!-----------------------------------------------------------------
	END WHITE CAP TOP
	------------------------------------------------------------------>
	</td>
</tr>
<tr>
	<td colspan="3" bgcolor="##FFFFFF" align="center">
		<!-----------------------------------------------------------------
		START TABLE CONTENT
		------------------------------------------------------------------>
		<img src="#request.thisURL#images/cflogo.gif" width="116" height="127">
		<br /><br /><br />
		<table width="100%" cellpadding="5">
		<tr>
			<td bgcolor="##F0F6F6" class="cellBlueTop" align="center">
				<!-----------------------------------------------------------------
				START NESTED COPYRIGHT TABLE
				------------------------------------------------------------------>
				<br>
				<table width="400">
				<tr>
					<td>
				<span class="loginCopyrightText">
				<admin:l10n id="version6">Version:</admin:l10n> #server.coldfusion.productversion#</strong><br />
				<admin:l10n id="copyright">Copyright (c) 1995-2005 Macromedia, Inc. All rights reserved
				Macromedia, the Macromedia logo, Macromedia ColdFusion and ColdFusion are
				trademarks or registered trademarks of Macromedia, Inc.</admin:l10n>
				</span>
					</td>
				</tr>
				</table>
				<br>
				<!-----------------------------------------------------------------
				END NESTED COPYRIGHT TABLE
				------------------------------------------------------------------>
			</td>
		</tr>
		<tr>
			<td align="center" bgcolor="##008CBE" class="loginWhiteText">
					<center><admin:l10n id="enterrdsoradminpasswordlogin">Enter your RDS or Admin password below</admin:l10n></center>
			</th>
		</tr>
		<tr>
			<td align="center" bgcolor="##F0F6F6" class="cellBlueBottom">
				<admin:l10n id="required_password" var="required_password">Password Required</admin:l10n>
				<input name="j_password_required" type="hidden" value="#required_password#">
				<cfinput name="j_password" type="Password" size="15"  class="label" maxlength="100" required="Yes" message="#required_password#" id="admin_login">
				&nbsp;
				<admin:l10n id="password_button" var="password_button">Login</admin:l10n>
				<input name="submit" type="submit" value="#password_button#" class="buttn-fix">
			</td>
		</tr>
		<cfif IsDefined('InvalidPasswordEntered')>
		<tr bgcolor="993300">
			<td align="center" height="17">		
					<b class="label" style="color:white;"><admin:l10n id="invalid_password">Invalid password. Please try again.</admin:l10n></b>
			</td>
		</tr>
		</cfif>		
		
		</table>
		<!-----------------------------------------------------------------
		END TABLE CONTENT
		------------------------------------------------------------------>
	</td>	
</tr>

<tr>
	<td>
	<!-----------------------------------------------------------------
	START WHITE CAP BOTTOM
	------------------------------------------------------------------>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
		<td width="12"><img src="#request.thisURL#images/cap_content_white_main_bottom_left.gif" width="12" height="11"></td>
		<td bgcolor="##FFFFFF"><img src="#request.thisURL#images/spacer_10_x_10.gif" width="10" height="10"></td>
		<td width="12"><img src="#request.thisURL#images/cap_content_white_main_bottom_right.gif" width="12" height="11"></td>
	  </tr>
	 </table>
	<!-----------------------------------------------------------------
	END WHITE CAP BOTTOM
	------------------------------------------------------------------>
	</td>	
  </tr>
</table>


</cfform>
</cfoutput>
</body>
</html>
