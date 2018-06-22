<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>
<body>


	<cfabort>


	<cfset julian = 0>
	<CFSET Directory1 = "T:\Reports\Docs\fss19\2010">
		<cfloop Index="Month" from="1" to="12" step="1">
			<cfset firstofmonth = #CreateDate(2010, month, 01)#>
			<cfset timestoloop = #daysinmonth(firstofmonth)#>
			<cfloop index="currentday" from="1" to="#timestoloop#" step="1">
				<CFSET Julian = #Julian# + 1>
				<CFSET directory2 = #Directory1# & "\2010" & #NumberFormat(Month, "00")# & #NumberFormat(CurrentDay, "00")# & "." & #Numberformat(#Julian#, "000")# & "\0G">	
				<!--- <cfoutput>#Directory2#</cfoutput><br> --->
					<CFSET Directory3 = #Directory2# & "\CF">
					<cfoutput>#Directory3#</cfoutput><br>
					<cfdirectory action="CREATE" directory="#directory3#">
				<!--- <DIR>
				<cfdirectory action="CREATE" directory="#directory2#">
				<CFLOOP index="Alpha" list="A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z">
					<CFSET Directory3 = #Directory2# & "\" & 0 & #alpha#>
					<cfoutput>#Directory3#</cfoutput><br>
					<DIR>
					<cfdirectory action="CREATE" directory="#directory3#">
					<CFIF alpha is 'F' or alpha is 'G' or alpha is 'K'>
						<cfloop index="type" list="AC,IM,LM,MC,OP,PC,PR,QC,SD">
							<CFSET Directory4 = #Directory3# & '\' & #Type#>
							<cfoutput>#Directory4#</cfoutput><br>
							<cfdirectory action="CREATE" directory="#directory4#">
						</cfloop>
					<CFELSEif alpha is 'S'>
						<cfloop index="type" list="IM,LM,MC,OP,PC,PR,QC,S3,SD">
							<CFSET Directory4 = #Directory3# & '\' & #Type#>
							<cfoutput>#Directory4#</cfoutput><br>
							<cfdirectory action="CREATE" directory="#directory4#">
						</cfloop>
					<CFELSE>
						<cfloop index="type" list="IM,LM,MC,OP,PC,PR,QC,SD">
							<CFSET Directory4 = #Directory3# & '\' & #Type#>
							<cfoutput>#Directory4#</cfoutput><br>
							<cfdirectory action="CREATE" directory="#directory4#">
						</cfloop>	
					</cfif> 	
					</dir> --->		
				</cfloop>
				</dir>
			</cfloop>	

</body>
</html>
