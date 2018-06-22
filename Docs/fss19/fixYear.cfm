
<CFSET ServerURL = "http://159.142.4.53/reports/">
<!--- this was to add S3 as a dir at lowest lever (4)  started on May first 2003 --->
<CFSET RootDir = "T:\reports\docs\FSS19\">
<CFSET Year = "2003">
<CFSET Julian = 120>	
<cfquery name="getdate" datasource="omc" dbtype="ODBC">
	select * from calendar
	where Year = #Year# and Month_Day > 0 And month > 04
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
<!--- <cfdirectory action="CREATE" directory="#directory1#"> --->
<cfloop query="getdate">
	<CFSET Julian = #Julian# + 1>
	<CFSET directory2 = #Directory1# & "\" & #Year# & #NumberFormat(Month, "00")# & #NumberFormat(Month_Day, "00")# & "." & #Numberformat(#Julian#, "000")#>	
	<cfoutput>#Directory2#</cfoutput><br>
	<DIR>
	<!--- <cfdirectory action="CREATE" directory="#directory2#"> --->
	<CFLOOP index="Alpha" list="A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z">
		
		<CFSET Directory3 = #Directory2# & "\" & 0 & #alpha#>
		<cfoutput>#Directory3#</cfoutput><br>
		<DIR>
		<!--- <cfdirectory action="CREATE" directory="#directory3#"> --->
		<CFIF alpha is 'S'>
			<cfloop index="type" list="S3">
			<CFSET Directory4 = #Directory3# & '\' & #Type#>
			<cfoutput>#Directory4#</cfoutput><br>
			<cfdirectory action="CREATE" directory="#directory4#">
			</cfloop>
		</cfif> 	
		</dir>		
	</cfloop>
	</dir>
</CFLOOP>	
</dir>	
</body>
</html>
