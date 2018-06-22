
<CFSET ServerURL = "http://159.142.4.53/">

<CFSET RootDir = "d:\reports\docs\feds\">
<CFSET Year = "2002">
<CFSET Year2 = '02'>

<cfquery name="getdate" datasource="omc" dbtype="ODBC">
	select * from calendar
	where Year = #Year# and Month_Day > 0 
	Order by Month, Month_Day
</cfquery>
<html>
<head>
	<title>Untitled</title>
</head>

<body>
<CFSET Directory1 = #RootDir# & #Year#>
<cfoutput>#Directory1#</cfoutput><br>
<Dir>
<cfdirectory action="CREATE" directory="#directory1#">
<CFLOOP index="Region" list="01,02,03,04,05,06,07,08,09,10,11,Asreq,NW">
	<CFSET Directory2 = '#Directory1#\#Region#'>
		<cfdirectory action="CREATE" directory="#directory2#">
	<CFSET Directory2 = '#Directory2#\fss23'>
		<cfdirectory action="CREATE" directory="#directory2#">
		<cfoutput>#Directory2#</cfoutput><br>
		<CFSET Julian = 0>	
		<DIR>	
	<CFIF #Region# is 'Asreq' or #Region# is 'NW'>
		<CFLOOP index="iMonth" list="01,02,03,04,05,06,07,08,09,10,11,12">
			<CFSET directory3 = '#Directory2#\' & '#imonth#'>	
			<cfoutput>#Directory3#</cfoutput><br>
			<cfdirectory action="CREATE" directory="#directory3#">
		</cfloop>
	<CFELSE>		
		<cfloop query="getdate">
			<CFSET Julian = #Julian# + 1>
			<CFSET directory3 = '#Directory2#\' & #NumberFormat(Month, "00")# & #NumberFormat(Month_Day, "00")# & '#Year2#.' & #Numberformat(#Julian#, "000")#>	
			<cfoutput>#Directory3#</cfoutput><br>
			<cfdirectory action="CREATE" directory="#directory3#">
		</cfloop>
	</cfif>
	</dir>
</CFLOOP>	
</dir>	
</body>
</html>
