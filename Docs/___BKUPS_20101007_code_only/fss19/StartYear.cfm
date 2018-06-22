<cfmodule name="stdportalpageInsite" BANNER="/_images/BannerReports.jpg" TITLE="Creating directories for #ReptDir#" TOPLINE="No" GSALOGO="No" SIDENAVNAME="" LEFTNAV="FALSE" BOTTOMNAV="No" TABBAR="True" InsiteBar="False" HOMEBAR="FALSE" STATUSBAR="FALSE">

<CFSET RootDir = "d:\reports\docs\#ReptDir#\">
<cfquery name="getdate" datasource="omc" dbtype="ODBC">
	select * from calendar
	where Year = #NewYear# and Month_Day > 0
	Order by Month, Month_Day
</cfquery>
<CFSET Year2 = '#right(sessionYear, 2)#'>
<CFSET Directory1 = #RootDir# & #NewYear#>
<cfoutput>#Directory1#</cfoutput><br>
<Dir>
<cfdirectory action="CREATE" directory="#directory1#">
<!--- <cfif #reptDir# is 'FSS19'>
	<cfloop query="getdate">
		<CFSET Julian = #Julian# + 1>
		<CFSET directory2 = #Directory1# & "\" & #Year# & #NumberFormat(Month, "00")# & #NumberFormat(Month_Day, "00")# & "." & #Numberformat(#Julian#, "000")#>	
		<cfoutput>#Directory2#</cfoutput><br>
		<DIR>
		<cfdirectory action="CREATE" directory="#directory2#">
		<CFLOOP index="Alpha" list="A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z">
			<CFSET Directory3 = #Directory2# & "\" & 0 & #alpha#>
			<cfoutput>#Directory3#</cfoutput><br>
			<DIR>
			<cfdirectory action="CREATE" directory="#directory3#">
			<CFIF alpha is 'F' or alpha is 'G' or alpha is 'K'>
				<cfloop index="type" list="AC,IM,LM,OP,PC,PR,QC,SD">
					<CFSET Directory4 = #Directory3# & '\' & #Type#>
					<cfoutput>#Directory4#</cfoutput><br>
					<cfdirectory action="CREATE" directory="#directory4#">
				</cfloop>
			<CFELSE>
				<cfloop index="type" list="IM,LM,OP,PC,PR,QC,SD">
					<CFSET Directory4 = #Directory3# & '\' & #Type#>
					<cfoutput>#Directory4#</cfoutput><br>
					<cfdirectory action="CREATE" directory="#directory4#">
				</cfloop>
			</cfif> 	
			</dir>		
		</cfloop>
		</dir>
	</CFLOOP>
	<cfset session.completeFSS19 = 1>
<cfelseif #reptDir# is 'FMS'>
	<CFLOOP index="Region" list="01,02,03,04,05,06,07,08,09,10,11">
		<CFSET Directory2 = '#Directory1#\#Region#'>
			<cfdirectory action="CREATE" directory="#directory2#">
		<cfoutput>#Directory2#</cfoutput><br>	
		<DIR>
		<CFSET Directory3 = '#Directory2#\DA'>
		<cfdirectory action="CREATE" directory="#directory3#">
			<cfoutput>#Directory3#</cfoutput><br>
			<CFSET Julian = 0>	
			<DIR>		
			<cfloop query="getdate">
				<CFSET Julian = #Julian# + 1>
				<CFSET directory4 = '#Directory3#\' & #NumberFormat(Month, "00")# & #NumberFormat(Month_Day, "00")# & '#Year2#.' & #Numberformat(#Julian#, "000")#>	
				<cfoutput>#Directory4#</cfoutput><br>
				<cfdirectory action="CREATE" directory="#directory4#">
			</cfloop>
			</dir>	
		</dir>
		<CFSET Directory3 = '#Directory2#\IE'>
			<cfdirectory action="CREATE" directory="#directory3#">
			<cfoutput>#Directory3#</cfoutput><br>
			<DIR>		
			<CFLOOP index="Month" list="01,02,03,04,05,06,07,08,09,10,11,12">
				<CFSET directory4 = '#Directory3#\#Month#'>
				<cfoutput>#Directory4#</cfoutput><br>
				<cfdirectory action="CREATE" directory="#directory4#">
			</cfloop>
			</dir>	
		</dir>
		<CFSET Directory3 = '#Directory2#\MO'>
			<cfdirectory action="CREATE" directory="#directory3#">
			<cfoutput>#Directory3#</cfoutput><br>
			<DIR>		
			<CFLOOP index="Month" list="01,02,03,04,05,06,07,08,09,10,11,12">
				<CFSET directory4 = '#Directory3#\#Month#'>
				<cfoutput>#Directory4#</cfoutput><br>
				<cfdirectory action="CREATE" directory="#directory4#">
			</cfloop>
			</dir>	
		</dir>
	</CFLOOP>	
	<cfset session.completeFMS = 1>
<cfelseif #reptDir# is 'FEDS'>
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
	<cfset session.completeFEDS = 1>			
</cfif> --->
<CFLOCATION url="EndofYear.cfm" addtoken="Yes">
</dir>	
</body>
</html>
</cfmodule>