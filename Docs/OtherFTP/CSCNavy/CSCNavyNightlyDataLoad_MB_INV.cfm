<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate MB_INV from MB_INV.TXT Nightly Job</title>
	<!---  to be run as a daily scheduled task at 4:05 AM --->
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
	
	
	<CFSET fieldNameArray[1] = "fsc">		
	<CFSET fieldNameArray[2] = "nato">		
	<CFSET fieldNameArray[3] = "niin">		
	<CFSET fieldNameArray[4] = "suffix">
	<CFSET fieldNameArray[5] = "nsn">		
	<CFSET fieldNameArray[6] = "description">
	<CFSET fieldNameArray[7] = "ui">
	<CFSET fieldNameArray[8] = "uprice">
	<CFSET fieldNameArray[9] = "qoh">
	

	
<!--- #### process the FMSVEHICLES.CSV ############################################################################ --->

<!--- obtain a record set of all the files in directory: D:\reports\docs\otherftp\PropertyAuctions\ --->
<cfdirectory directory = "D:\reports\docs\otherftp\CSCNavy\"
  name = "myDirectory"
  sort = "name ASC">
  
<h3>Go through the files in directory D:\reports\docs\otherftp\PropertyAuctions\ and find if the file MB_INV.TXT is there</h3>
<cfoutput query="myDirectory">
	<CFIF (mydirectory.name EQ "MB_INV.TXT") AND (mydirectory.type EQ "File")>
		name = #mydirectory.name#<br>
				
			
<!---  --->		
		<cfquery name="deleteMB_INV" datasource="CSC_NavyShop">
			delete from MB_INV
		</cfquery>

		

		<CFFILE action="READ" file="D:\reports\docs\otherftp\CSCNavy\#mydirectory.name#" variable="csv">
		
		<CFSET linecount = 0>
		<CFLOOP LIST="#csv#" delimiters="#Chr(10)##Chr(13)#" index="currentLine">
			<p>%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%</p>
			<CFSET linecount = linecount + 1>
			<p>Add missing fields:<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#linecount# Current line (before) = #currentLine#<br>
			<CFSET currentLine = replace('#currentLine#','#Chr(9)##Chr(9)#','#Chr(9)# #Chr(9)#','ALL')>
			<CFSET currentLine = replace('#currentLine#','#Chr(9)##Chr(9)#','#Chr(9)# #Chr(9)#','ALL')>
			<CFSET currentLine = replace('#currentLine#','#Chr(9)##Chr(9)#','#Chr(9)# #Chr(9)#','ALL')>
			<CFSET currentLine = replace('#currentLine#','#Chr(9)##Chr(9)#','#Chr(9)# #Chr(9)#','ALL')>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#linecount# Current line (after) = #currentLine#<br></p>
			              
			listlen of Current line = #listlen(currentLine,"#Chr(9)#")#<br><br></p>
			
			
			<!--- <CFIF linecount gt 5000><CFABORT></CFIF> --->
			<CFIF (linecount GT 1) AND (#listlen(currentLine,"#Chr(9)#")# EQ 9)>
				<!---  	clear out the current fielddataArray --->
			 	<cfset k = 1>
				<CFLOOP INDEX="IDX" FROM="1" TO="9">
					<CFSET fielddataArray[IDX] = "">
				</CFLOOP>
			
				<!---  	populate the current fielddataArray --->
			 	<p><cfset k = 1>
				<CFLOOP LIST="#currentLine#" delimiters="#Chr(9)#" index="currentField">
					<!--- <p>Strip out: "<BR> --->
					<!--- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;before: #currentField#<BR> --->				
					<CFSET currentField = replace('#currentField#','"','','ALL')>
					<!--- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;after: #currentField#<BR></p> --->	
					
					<CFIF k EQ 5>
						<CFSET fielddataArray[k] = #left(currentField, 13)#>
					<CFELSE>
						<CFSET fielddataArray[k] = #currentField#>
					</CFIF>
					
					
					#fieldNameArray[k]#  =  #currentField#<br>
					<cfset k = k+1>	
				</CFLOOP></p>
				
				
				<!---  --->
				<cfquery name="populatePropertyData" datasource="CSC_NavyShop">
					INSERT INTO
					MB_INV
					(
						<cfloop index="i" from="1" to="9">
							#fieldNameArray[i]#<CFIF i NEQ 9>,</cfif>
						</cfloop>				
					)
					VALUES
					( 
						<CFLOOP from="1" to="9" index="idx"> 
							'#fieldDataArray[idx]#'<CFIF idx NEQ 9>,</cfif>
						</CFLOOP>
					)			
				</cfquery>
						
						<!--- #idx#: #fieldNameArray[idx]# = '#fieldDataArray[idx]#'<BR> --->
			</CFIF>
		</CFLOOP>
		
		
		
	<h3>Done! Input file MB_INV.TXT processed!</h3>
 
	</CFIF>
</cfoutput>
					

</body>
</html>
