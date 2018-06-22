<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>Purge Fss19 Reports History</TITLE>
<!--- <CFSET ServerURL = "http://159.142.4.53/reports/">
<CFSET RootDir = "d:\fss19reports\docs\"> --->
<CFSET ServerURL = "http://159.142.4.53/reports/history/">
<CFSET RootDir = "e:\fss-19\">

<CFSET Year = "1997">
<CFSET Julian = 153>	
<cfquery name="getdate" datasource="omc" dbtype="ODBC">
select * from calendar
where Year = #Year# and Month = 6 and Month_Day > 0
Order by Month, Month_Day
</cfquery>

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
		<cfdirectory action="LIST" directory="#directory2#" name="Region" sort="name">
		
		<cfoutput query="region">
			#region.Name#
		</cfoutput>
	<!--- <CFLOOP query="region">
	
		<CFSET Directory3 = #Directory2# & "\" & "#region.Name#">
		<cfoutput>#Directory3#</cfoutput><br>
		<DIR>
		
			<CFDIRECTORY action="list" directory="#directory3#" name="repttype" sort="name">
			<cfloop query="repttype">
				<!--- <CFIF #left(repttype.name, 1)# IS NOT '.'> --->
					<CFSET Directory4 = #Directory3# & "\" & "#ReptType.name#">
					<cfoutput>#Directory4#</cfoutput><br>
				<!--- </cfif> --->
				
			
		
			
			<DIR>
			<CFDIRECTORY action="list" directory="#directory4#" name="rtfs" sort="name" filter="*.rtf">
			<cfloop query="rtfs">
				<CFSET reportpath = #Directory4# & '\' & #rtfs.name#>
				
				<CFSET reportname = #SpanExcluding("#rtfs.name#", ".")#>
					<cfquery name="getretention" datasource="OnLineReports" dbtype="ODBC">
						select * from FSS19Reportname
						where reptfilename = '#reportname#'
					</cfquery> 
				<cfoutput>#reportname#,  #getretention.catagorycode#, #getretention.reportfreq#</cfoutput><br>
			</cfloop>
			</dir>	
		</cfloop>	
		</dir>		
	</cfloop> --->
	</dir>
</CFLOOP>	
</dir>	
</body>
</html>

