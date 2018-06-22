<cfparam name="form.username" default="" />
<cfparam name="form.password" default="" />
<cfinvoke 
 webservice="http://insite.fss.gsa.gov/services/ws_ent-fss_login.cfc?wsdl"
 method="remoteLogin" returnvariable="aObject">
	<cfinvokeargument name="login" value="#IIf(IsDefined("form.username"), DE("#form.username#"), DE(""))#"/>
	<cfinvokeargument name="password" value="#IIf(IsDefined("form.password"), DE("#form.password#"), DE(""))#"/>
</cfinvoke>

<cfdump var="#aObject#" />
<cfif aObject.authenticated EQ "false">
	<cfform action="login.cfm" method="put">
	<div>Login: <input name="username" type="text" size="20" maxlength="20" />
	</div>
	<div>Password: <input name="password" type="password" size="20" maxlength="20"  />
	</div>
	<div><input name="Submit" type="submit" value="Submit">
	</div>
</cfform>
	<cfelse>
		<cfoutput>Welcome #aObject.firstname# #aObject.lastname#. Click <a href="login.cfm">here</a> to go back.</cfoutput>
</cfif>
