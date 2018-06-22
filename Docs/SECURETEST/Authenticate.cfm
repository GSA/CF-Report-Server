<!----------------------------------------------------------------
	This template recognizes the type of identification data that 
	it receives and runs a query to validate the login.
	
						HOW TO USE
	1. add this script to the top of your index page
		<cf_loginscript> 
		<cfIF ISDefined("cookie.loggedin")>
			<CFLOCATION  url="" addtoken="Yes"> put your destination page here
		</CFIF>
	2. Modify this code to reference your database and tables	
	3. CFINCLUDE this template	at the top of each page to authenticate to
	
--------------------------------------------------------------------->

<!----------------------------------------------------------------
	Check whether the LoginID and Password are from client cookies 
	or whether they are coming from the login form.
------------------------------------------------------------------>
<!--- <cfif ISDefined("cookie.login")> 
usually we would use the cookie "login" but for this signin application
we use the cookie.GSAOMC_un since all other applications tied into the signin authentication
will use that cookie variable --->
<cfif NOT ISDefined("cookie.GSAOMC_un")>

	<!--- cookie.GSAOMC_un is NOT defined; so we need to call the loginscript --->
	<cf_loginscript> 

 
<cfset session.validationType = "ADvalidationOnly"><!--- set default validation type --->
<cfset session.loginerror = 1><!--- initial error state --->
 
<CFIF session.validationType EQ "ADvalidationOnly">
	<CFIF IsDefined("cookie.loggedin")>
		<cfif cookie.loggedin is 1> <!--- AD login Successful --->
			<cfset session.loginerror = 0>
		<CFELSE>
			<cfset session.loginerror = 3><!--- cookie.loggedin not equal to 1; AD login failed --->
		</CFIF>
	<CFELSE>
		<cfset session.loginerror = 2><!--- cookie.loggedin not defined --->
	</CFIF>
</CFIF>
 
<CFIF session.validationType EQ "APPvalidationOnly">
	<CFIF IsDefined("cookie.GSAOMC_un") AND IsDefined("cookie.Outside")>
		<CFQUERY name="GetUserRecord" datasource="HRscheduler">
				SELECT * FROM associates
				WHERE userid = '#cookie.GSAOMC_un#' 
				and password = '#cookie.Outside#'
		</CFQUERY>
		<CFIF #GetUserRecord.RecordCount# IS NOT 0> <!--- user found in application's table --->
			<cfset session.loginerror = 0>
		<CFELSE>
			<cfset session.loginerror = 4><!--- user NOT found in application's table --->
		</CFIF>
	<CFELSE>
		<cfset session.loginerror = 5><!--- cookie.GSAOMC_un and cookie.Outside NOT defined --->
	</CFIF>
</CFIF>
 
<CFIF session.validationType EQ "bothAPPandADvalidation">
	<CFIF IsDefined("cookie.loggedin")>
		<cfif cookie.loggedin is 1> <!--- AD login Successful --->
			<CFIF IsDefined("cookie.GSAOMC_un") AND IsDefined("cookie.Outside")>
					<CFQUERY name="GetUserRecord" datasource="HRscheduler">
							SELECT * FROM associates
							WHERE userid = '#cookie.GSAOMC_un#' 
							and password = '#cookie.Outside#'
					</CFQUERY>
					<CFIF #GetUserRecord.RecordCount# IS NOT 0> <!--- user found in application's table --->
						<cfset session.loginerror = 0>
					<CFELSE>
						<cfset session.loginerror = 4><!--- user NOT found in application's table --->
					</CFIF>
			<CFELSE>
				<cfset session.loginerror = 5><!--- cookie.GSAOMC_un and cookie.Outside NOT defined --->
			</CFIF>
			
		<CFELSE>
			<cfset session.loginerror = 3><!--- cookie.loggedin not equal to 1; AD login failed --->
		</CFIF>
	<CFELSE>
		<cfset session.loginerror = 2><!--- cookie.loggedin not defined --->
	</CFIF>
</CFIF>
 
 
<CFIF session.validationType EQ "eitherAPPorADvalidation">
	<cfset session.ADsuccess = 0>
	<cfset session.APPsuccess = 0>
	<!--- check AD validation --->
	<CFIF IsDefined("cookie.loggedin")>
		<cfif cookie.loggedin is 1> <!--- AD login Successful --->
			<cfset session.ADsuccess = 1>
		<CFELSE>
			<cfset session.loginerror = 3><!--- cookie.loggedin not equal to 1; AD login failed --->
		</CFIF>
	<CFELSE>
		<cfset session.loginerror = 2><!--- cookie.loggedin not defined --->
	</CFIF>
	
	<!--- check APP validation --->
	<CFIF IsDefined("cookie.GSAOMC_un") AND IsDefined("cookie.Outside")>
		<CFQUERY name="GetUserRecord" datasource="HRscheduler">
				SELECT * FROM associates
				WHERE userid = '#cookie.GSAOMC_un#' 
				and password = '#cookie.Outside#'
		</CFQUERY>
		<CFIF #GetUserRecord.RecordCount# IS NOT 0> <!--- user found in application's table --->
			<cfset session.APPsuccess = 1>
		<CFELSE>
			<cfset session.loginerror = 4><!--- user NOT found in application's table --->
		</CFIF>
	<CFELSE>
		<cfset session.loginerror = 5><!--- cookie.GSAOMC_un and cookie.Outside NOT defined --->
	</CFIF>
	
	<CFIF (session.ADsuccess EQ 1) OR (session.APPsuccess EQ 1)>
		<cfset session.loginerror = 0>
	</CFIF>	
	
</CFIF>
 
 
<!----------------------------------------------------------------
	Check whether user record was found. If not force a new login.
------------------------------------------------------------------>
	<CFIF session.loginerror is 0>
	
		<CFIF session.validationType EQ "ADvalidationOnly">
			<!--- get data returned from AD service lookup --->
			<CFSET session.firstName = "#cookie.firstname#">
			<CFSET session.lastName = "#cookie.lastname#">	
			<CFSET session.userEmail = "#cookie.email#">	
		<CFELSEIF session.validationType EQ "eitherAPPorADvalidation">
			<CFIF session.APPsuccess EQ 0>
				<!--- get data returned from AD service lookup --->
				<CFSET session.firstName = "#cookie.firstname#">
				<CFSET session.lastName = "#cookie.lastname#">
				<CFSET session.userEmail = "#cookie.email#">	
			<CFELSE>	
				<!--- get data from application's users table --->
				<CFSET session.userEmail = "#trim(getuserrecord.email)#">
				<CFSET session.firstName = "#trim(getuserrecord.associateFirstname)#">
				<CFSET session.lastName = "#trim(getuserrecord.associateLastname)#">
				<CFSET session.phone = "#trim(getuserrecord.phone)#">
				<CFSET session.eid = "#trim(getuserrecord.associateEID)#">
			</CFIF>
		<CFELSE>
			<!--- get data from application's users table --->
			<CFSET session.userEmail = "#trim(getuserrecord.email)#">
			<CFSET session.firstName = "#trim(getuserrecord.associateFirstname)#">
			<CFSET session.lastName = "#trim(getuserrecord.associateLastname)#">
			<CFSET session.phone = "#trim(getuserrecord.phone)#">
			<CFSET session.eid = "#trim(getuserrecord.associateEID)#">
		</CFIF>
			
		<!--- added the redirect to calling url	
		<CFLOCATION url="#cgi.HTTP_REFERER#" >	 --->
				
	<CFELSE>
		<cfcookie name="loggedin" value="" expires="NOW">
		<cfcookie name="login" value="" expires="NOW">
		<cfcookie name="outside" value="" expires="NOW">	
		<cfcookie name="firstname" value="" expires="NOW">	
		<cfcookie name="lastname" value="" expires="NOW">	
		<cfcookie name="email" value="" expires="NOW">	
		<CFSET session.userEmail = "">
		<CFSET session.firstName = "">
		<CFSET session.lastName = "">
		<CFSET session.phone = "">
		<CFSET session.eid = "">

		 <CENTER>
			<DIV>
			<DIV>
			<DIV>		
			<B>Sorry, but could not validate your Login ID and Password. <a href="index.cfm">Please click here to try again</a>.<cfoutput><CFIF IsDefined("session.loginerror")> (error code: #session.loginerror#)</CFIF></cfoutput></B>
		</CENTER>
		<cfabort>
	</CFIF>
	
	
</cfif> 
