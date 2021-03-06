<cfsilent>
	<cfimport prefix="layout" taglib="/CF-INF/cftags/layout/insite">
</cfsilent>

<cfparam name="form.login" default="" />
<cfparam name="form.password" default="" />

<cfinvoke webservice="http://insite.fas.gsa.gov/cf-inf/cfcomponents/com/services/ws_ent-fss_login.cfc?wsdl"	method="remoteLogin" returnvariable="aObject">
	<cfinvokeargument name="username" value="#IIf(IsDefined("form.login"), DE("#form.login#"), DE(""))#"/>
	<cfinvokeargument name="password" value="#IIf(IsDefined("form.password"), DE("#ReplaceNoCase(form.password, "##", "####", "All")#"), DE(""))#"/>
</cfinvoke>

<!--- NGL:: BEGIN:: Determine the application name --->
<cfparam name="page_from" default="0" />
<cfparam name="application_nm" default="Insite Main Page" />

<!--- <cfquery name="qy_GetApplication" datasource="WebManager">
SELECT longName, shortName FROM applications WHERE aid = #page_from#
</cfquery>
<cfset application_nm = "#qy_GetApplication.longName#" /> ---><cfset application_nm = "aaaaaaaaaaaaaaaaa" />
<!--- NGL:: END:: Determine the application name --->

<layout:page> 

<cfoutput>
<div id="body" style="text-align: center;margin-top: -125px;margin-left: -175px;position: absolute;top: 50%;
	left: 50%;width: 350px;height: 350px;	visibility: visible" align="center">
  
<div id="login">
<form action="http://#CGI.HTTP_HOST#/bin/login/index.cfm" name="IOS" method="post">
<cfif aObject.authenticated EQ "true">
	 <cfcookie name="loggedin" value=1>
	 <cfcookie name="ADfailed" value=0>
	 <cfcookie name="login" value="#aObject.username#">
	 <cfcookie name="Outside" value="#form.password#">
	 <cfcookie name="firstname" value="#aObject.firstname#">
	 <cfcookie name="lastname" value="#aObject.lastname#">
	 <cfcookie name="email" value="#aObject.email#">
	 <cfcookie name="GSAOMC_un" value="#aObject.username#" expires="1">
	 
	
	<!--- Tuesday, February 28, 2006 
	added update of remote_addr field in users table upon successful authentication.  --->
	<CFQUERY NAME="selectUsers" DATASOURCE="Users">
		SELECT * 
		FROM	Users
		WHERE login = '#aObject.username#'
	</CFQUERY>
	<CFIF selectUsers.recordCount EQ 1>
		<CFQUERY NAME="udpateUsersRemoteAddr" DATASOURCE="Users">
			UPDATE	Users
			SET Remote_Addr = '#CGI.REMOTE_ADDR#'
			WHERE login = '#aObject.username#'
		</CFQUERY>
	<!--- 
	Added by Wil Hale to allow for the user not being in the database
	This is also where the code for the User Form will be
	--->
	<cfelse>
	<div>Your authentication to Active Directory was successful but you are not in our users database. <br />please call Wil Hale at (703) 605-5406 to correct this.</div>
	<!--- <cfabort> --->
	
	
	
	
	<!--- End Wil Hale Mod --->

	</CFIF>
	<!--- end mod --->
	 
	 
	 
	 <cflocation url="#IIf(IsDefined("FORM.DONE"), DE("#FORM.DONE#"), DE("http://#CGI.HTTP_HOST#/"))#" addtoken="yes" />
<cfelseif aObject.authenticated EQ "false" AND form.login IS NOT "">
<!--- user entered data but failed AD authentication --->
	<cfcookie name="loggedin" value=0>
	<cfcookie name="ADfailed" value=1>
	<cfcookie name="login" value="#form.login#">
	<cfcookie name="Outside" value="#form.password#">
	<cflocation url="#IIf(IsDefined("FORM.DONE"), DE("#FORM.DONE#"), DE("http://#CGI.HTTP_HOST#/"))#" addtoken="yes" />

<cfelseif aObject.authenticated EQ "false" AND form.login IS "">
	<!--- first time through --->
</cfif>
	
	<div style="text-align:left; vertical-align:middle; padding:8px 0px 8px 0px; background-color:##000099; font-weight:bold; color:##FFFFFF; font-size:11px; width:350px">&nbsp;&nbsp;&nbsp;Sign in with your GSA Network Username and Password</div>
	<div style="font-size:2px ">&nbsp;</div>
	<div style=""><img src="/library/banner/login_screen_fas.gif" width="350" height="45" border="0" align="absmiddle" style="border-color:##FFFFFF "></div>
	<div style="height: 30px; text-align:left; padding: 5px">Connecting to GSA #application_nm#...  <cfif isdefined('cookie.loggedin') and cookie.loggedin eq 0><br /><br /><div align="center" style="width:70%"><strong style="color:##CC0000">The username and password you have entered are incorrect. Please try again.</strong></div></cfif>
</div>
  <cfif aObject.authenticated NEQ "true">
     <cfif aObject.authenticated EQ "false" AND form.login IS NOT "">
		<div>
			<cfcookie name="loggedin" value=0>
            <strong>The username and password you have entered are incorrect. Please try again.</strong>
		</div>
		<cfabort>
	 </cfif>
  </cfif>
	<div>
		<div style="text-align:left; float:left; width:auto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Username:</div><div align="right"><input name="login" type="text" size="20" maxlength="50" class="content" style="width:230px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
	</div>
		<br />
	<div>
		<div style="float:left; width:auto; text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password:</div><div align="right"><input name="password" type="password" size="20" maxlength="50" class="content" style="width:230px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
	</div>
		<br />
	<div style="text-align:right">
		<input name="Submit" type="submit" value="Sign in" class="labelfieldButton" />&nbsp;<input name="Submit" type="button" value="Cancel" class="labelfieldButton" onclick="javascript:history.back()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
		<br />
	<!--- <div style="text-align:right">
	  <a href="mailto:fss.helpdesk@gsa.gov" target="_blank" class="navlink">Need help?</a>&nbsp;&nbsp;<br />
	</div> --->
		<input name="done" type="hidden" value="#IIf(isDefined("URL.DONE"),"URL.DONE", DE(IIf(isDefined("FORM.DONE"),"FORM.DONE", DE("http://#CGI.HTTP_HOST#/"))))#" />
	</form>
	</div>
</div>
</cfoutput>

</layout:page> 