<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>
		<CFCOOKIE NAME="GSAOMC_un" EXPIRES="NOW">
		<CFCOOKIE NAME="login" EXPIRES="NOW">
		<cfcookie name="loggedin" value="" expires="NOW">
		<cfcookie name="outside" value="" expires="NOW">	
		<cfcookie name="firstname" value="" expires="NOW">	
		<cfcookie name="lastname" value="" expires="NOW">	
		<cfcookie name="email" value="" expires="NOW">	
		<CFSET session.userEmail = "">
		<CFSET session.firstName = "">
		<CFSET session.lastName = "">
		<CFSET session.phone = "">
		<CFSET session.eid = "">
		<!--- <CFINCLUDE TEMPLATE="Authorization.cfm"> --->
		<A HREF=".">Please log in!</A>
		<CFABORT>



</body>
</html>
