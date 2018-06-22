<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate FNDealer from FD40035W2.csv Nightly Job</title>
	<!---  to be run as a daily scheduled task at 3:48 AM --->
</head>

<body>


<cfoutput>
<!--- display info for debugging purposes  --->
<h3>Environment Info</h3>
Cold Fusion Version in use: #server.ColdFusion.ProductVersion#<br>
currenttemplatepath = #getcurrenttemplatepath()#<br>
basetemplatepath = #getbasetemplatepath()#<br>
current directory = #getdirectoryfrompath(getcurrenttemplatepath())#<br>
<h3>This is being run on #dateformat(now(), "mmmm, dd yyyy")# at #timeformat(now(),"hh:mm:ss")# </h3>
</cfoutput>


	<!--- set up the fieldNameArray and fielddataArray --->
	
	<CFSET fieldNameArray = ArrayNew(1)>
	<CFSET fielddataArray = ArrayNew(1)>
	
	
	<CFSET fieldNameArray[1] = "ContNo">		<!--- no null --->
	<CFSET fieldNameArray[2] = "FormalCont">		
	<CFSET fieldNameArray[3] = "CECS">		
	<CFSET fieldNameArray[4] = "DUNAName">
	<CFSET fieldNameArray[5] = "LegalBusName">
	<CFSET fieldNameArray[6] = "MailAddrsPC">
	<CFSET fieldNameArray[7] = "MailAddrs1">
	<CFSET fieldNameArray[8] = "MailAddrs2">
	<CFSET fieldNameArray[9] = "MailCity">
	<CFSET fieldNameArray[10] = "MailState">		
	<CFSET fieldNameArray[11] = "MailZip">
	<CFSET fieldNameArray[12] = "MailCountry">
	<CFSET fieldNameArray[13] = "NameAs">
	<CFSET fieldNameArray[14] = "ScheduleNo">
	<CFSET fieldNameArray[15] = "EmailAddrs">
	<CFSET fieldNameArray[16] = "ContInd">
	<CFSET fieldNameArray[17] = "Filler">
	
	

	
<!--- #### process the FMSVEHICLES.CSV ############################################################################ --->

<!--- obtain a record set of all the files in directory: D:\reports\docs\otherftp\FleetAuctions\ --->
<cfdirectory directory = "D:\reports\docs\otherftp\FNDealer\"
  name = "myDirectory"
  sort = "name ASC">
  
<h3>Go through the files in directory D:\reports\docs\otherftp\FNDealer\ and find if the file D40035W2.csv is there</h3>
<cfoutput query="myDirectory">
	<CFIF (mydirectory.name EQ "D40035W2.csv") AND (mydirectory.type EQ "File")>
		name = #mydirectory.name#<br>
				
		<cfquery name="deleteFNDealer" datasource="FNDealerLocator">
			Delete from FNDealer
		</cfquery>

		<CFFILE action="READ" file="D:\reports\docs\otherftp\FNDealer\#mydirectory.name#" variable="csv">
		
		<CFSET linecount = 0>
		<CFLOOP LIST="#csv#" delimiters="#Chr(10)##Chr(13)#" index="currentLine">
			<p>%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%</p>
			<CFSET linecount = linecount + 1>
			<CFSET currentLine = trim(CurrentLine)>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#linecount# Current line (before) = #currentLine#<br>
			<!--- <p>Add missing fields:<br>
			<CFSET currentLine = replace('#currentLine#',',,',',"",','ALL')>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#linecount# Current line (after) = #currentLine#<br></p> --->
			              
			listlen of Current line = #listlen(currentLine)#<br><br></p>
			
			
			<!--- <CFIF linecount gt 5000><></CFIF> --->
			<CFIF linecount GT 1>
				<!---  	clear out the current fielddataArray --->
			 	<cfset k = 1>
				<CFLOOP INDEX="IDX" FROM="1" TO="17">
					<CFSET fielddataArray[IDX] = "">
				</CFLOOP>
			
				<!---  	populate the current fielddataArray --->
			 	<p><cfset k = 1>
				<CFLOOP LIST="#currentLine#" delimiters="^" index="currentField">
					<!--- <p>Strip out: "<BR> --->
					<!--- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;before: #currentField#<BR> --->				
					<CFSET currentField = replace('#currentField#','"','','ALL')>
					<!--- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;after: #currentField#<BR></p> --->	
					
					
					<CFSET fielddataArray[k] = #currentField#>
					<cfset k = k+1>	
				</CFLOOP></p>
				
				
				<cfquery name="populateFNDealer" datasource="FNDealerLocator">
					INSERT INTO
					FNDealer
					(
						<cfloop index="i" from="1" to="17">
							#fieldNameArray[i]#<CFIF i NEQ 17>,</cfif>
						</cfloop>				
					)
					VALUES
					( 
						<!--- fieldNameArray[1] = "ContNo" --->
						'#fieldDataArray[1]#',
									
						<!--- fieldNameArray[2] = "FormalCont" --->
						'#fieldDataArray[2]#',
									
						<!--- fieldNameArray[3] = "CECS" --->
						'#fieldDataArray[3]#',	
													
						<!--- fieldNameArray[4] = "DUNAName" --->
						'#fieldDataArray[4]#',
									
						<!--- fieldNameArray[5] = "LegalBusName" --->
						'#fieldDataArray[5]#',
									
						<!--- fieldNameArray[6] = "MailAddrsPC" --->
						'#fieldDataArray[6]#',	
													
						<!--- fieldNameArray[7] = "MailAddrs1" --->
						'#fieldDataArray[7]#',
									
						<!--- fieldNameArray[8] = "MailAddrs2" --->
						'#fieldDataArray[8]#',
									
						<!--- fieldNameArray[9] = "MailCity" --->
						'#fieldDataArray[9]#',
														
						<!--- fieldNameArray[10] = "MailState" --->
						'#fieldDataArray[10]#',
									
						<!--- fieldNameArray[11] = "MailZip" --->
						'#fieldDataArray[11]#',
									
						<!--- fieldNameArray[12] = "MailCountry" --->
						'#fieldDataArray[12]#',	
													
						<!--- fieldNameArray[13] = "NameAs" --->
						'#fieldDataArray[13]#',
									
						<!--- fieldNameArray[14] = "ScheduleNo" --->
						'#fieldDataArray[14]#',
									
						<!--- fieldNameArray[15] = "EmailAddrs" --->
						'#fieldDataArray[15]#',
									
						<!--- fieldNameArray[16] = "ContInd" --->
						'#fieldDataArray[16]#',
									
						<!--- fieldNameArray[17] = "Filler" --->
						'#fieldDataArray[17]#'								
						)
				</cfquery>
			</CFIF>
		</CFLOOP>
		
		
	<h3>Done! Input file D40035W2.csv processed!</h3>
 
	</CFIF>
</cfoutput>
					

</body>
</html>
