<CFSET RootURL = "http://159.142.133.74/reports/history/">
<CFSET RootDir = "e:\fss-19\">
<CFSET Year = "1997">
<CFSET Julian = 0>	
<CFSET SpecificDir = '\19970801.213\0A\FN\'>
<!--- <cfquery name="getdate" datasource="omc" dbtype="ODBC">
select * from calendar
where Year = #Year# and Month_Day > 0
Order by Month, Month_Day
</cfquery> --->
<html>
<head>
	<title>Untitled</title>
</head>

<body>

<CFSET Directory1 = #RootDir# & #Year# & #specificdir#>

<cfoutput>#Directory1#</cfoutput>
<CFTRY>
<cfdirectory action="DELETE" directory="#directory1#">

<cfcatch type="Any">the directory is not found</cfcatch>

</CFTRY> 
