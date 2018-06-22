
<CFSET ServerURL = "http://159.142.4.59/reports/">
<!--- this was to add S3 as a dir at lowest lever (4)  started on May first 2003 --->
<CFSET RootDir = "T:\reports\docs\FSS19\">
<CFSET Year = "2003">
<CFSET Julian = 304>	
<cfquery name="getdate" datasource="omc" dbtype="ODBC">
	select * from calendar
	where Year = #Year# and Month_Day > 0 And month > 10
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
	<!--- <CFLOOP index="Alpha" list="A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,9"> --->
		<CFSET Directory3 = #Directory2# & "\09">
		<cfoutput>#Directory3#</cfoutput><br>
		<DIR>
		
		
			<cfloop index="type" list="IM,LM,OP,PC,PR,QC,SD">
				<CFSET Directory4 = #Directory3# & '\' & #Type#>
				<cfoutput>#Directory4#</cfoutput><br>
				<cfdirectory action="DELETE" directory="#directory4#">
			</cfloop>			
		</dir>	
		<cfdirectory action="DELETE" directory="#directory3#">
			
	<!--- </cfloop> --->
	</dir>
</CFLOOP>	
</dir>	
</body>
</html>
