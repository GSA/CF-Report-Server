
<CFSET RootURL = "http://159.142.133.74/reports/history/">
<CFSET RootDir = "e:\fss-19\">
<CFSET Year = "1997">
<CFSET Julian = 212>	
<cfquery name="getdate" datasource="omc" dbtype="ODBC">
select * from calendar
where Year = #Year# and Month_Day > 0 
	AND Month > 7
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

<cfloop query="getdate">
	<CFSET Julian = #Julian# + 1>
	<CFSET directory2 = #Directory1# & "\" & #Year# & #NumberFormat(Month, "00")# & #NumberFormat(Month_Day, "00")# & "." & #Numberformat(#Julian#, "000")#>	
	<cfoutput>#Directory2#</cfoutput><br>
	<DIR>
	
	<CFLOOP index="Alpha" list="A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z">
		
		<CFSET Directory3 = #Directory2# & "\" & 0 & #alpha#>
		<cfoutput>#Directory3#</cfoutput><br>
		<DIR>
		<cfloop index="type" list="FN,AC,IM,LD,OP,PC,PR,QC,SD">
			<CFSET Directory4 = #Directory3# & '\' & #Type#>
			<cfoutput>#Directory4#<br></cfoutput>
			<DIR>
			<CFDIRECTORY action="list" directory="#directory4#" name="contents" sort="name" filter="*.rtf">
			<CFIF contents.recordcount is 0>
				<!--- <CFTRY>
					<cfdirectory action="DELETE" directory="#directory4#">
	
					<cfcatch type="Any"><li>the directory is not found<br></li></cfcatch>
	
				</CFTRY>  --->
				<CFELSE>
					<cfloop query="contents">
						<CFSET namevar = '#directory4#' & '\' & '#contents.name#'>
						<UL><cfoutput>#contents.name#</cfoutput><br></ul>
						<CFTRY>
							<cffile action="DELETE" file="#namevar#">
							<cfcatch type="Any"><li>the File is not found<br></li></cfcatch>
						</CFTRY>
					</cfloop> 
			</cfif>
			</dir>
		</cfloop>
		</dir>		
	</cfloop>
	</dir>
</CFLOOP>	
</dir>	
</body>
</html>
