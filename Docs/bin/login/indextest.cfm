<cfsilent>
	<cfimport prefix="layout" taglib="/CF-INF/cftags/layout/insite">
</cfsilent>

<cfparam name="form.login" default="" />
<cfparam name="form.password" default="" />

<cfinvoke webservice="http://#CGI.HTTP_HOST#/cf-inf/cfcomponents/com/services/ws_ent-fss_login.cfc?wsdl"	method="remoteLogin" returnvariable="aObject">
	<cfinvokeargument name="username" value=""/>
	<cfinvokeargument name="password" value=""/>
</cfinvoke>


<!--- NGL:: BEGIN:: Determine the application name --->
<cfparam name="page_from" default="0" />
<cfparam name="application_nm" default="Insite Main Page" />

<cfquery name="qy_GetApplication" datasource="WebManager" dbtype="">
SELECT longName, shortName FROM applications WHERE aid = #page_from#
</cfquery>
<cfset application_nm = "#qy_GetApplication.longName#" />
<!--- NGL:: END:: Determine the application name --->

<layout:page> 

<cfoutput>
<div id="body" style="text-align: center;margin-top: -125px;margin-left: -175px;position: absolute;top: 50%;
	left: 50%;width: 350px;height: 350px;	visibility: visible" align="center">
  
<div id="login">
<form action="http://#CGI.HTTP_HOST#/bin/login/index.cfm" name="IOS" method="post">
<cfif aObject.authenticated EQ "true">
111<CFABORT>
<CFELSE>
222<CFABORT>
</CFIF>
</cfoutput>
