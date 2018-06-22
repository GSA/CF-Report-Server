<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate bidresults from SASYSUBDATA.CSV Nightly Job</title>
	<!---  to be run as a daily scheduled task at 3:00 AM --->
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
	
	
	<CFSET fieldNameArray[1] = "Lastname">		
	<CFSET fieldNameArray[2] = "Firstname">		
	<CFSET fieldNameArray[3] = "Middleinit">		
	<CFSET fieldNameArray[4] = "Company">
	<CFSET fieldNameArray[5] = "Salenum">		
	<CFSET fieldNameArray[6] = "lotnum">
	<CFSET fieldNameArray[7] = "BidAmount">
	<!--- <CFSET fieldNameArray[8] = "Regions"> --->
	
	

	
<!--- #### process the FMSVEHICLES.CSV ############################################################################ --->

<!--- obtain a record set of all the files in directory: D:\reports\docs\otherftp\PropertyAuctions\ --->
<cfdirectory directory = "D:\reports\docs\otherftp\PropertyAuctions\"
  name = "myDirectory"
  sort = "name ASC">
  
<h3>Go through the files in directory D:\reports\docs\otherftp\PropertyAuctions\ and find if the file SASYSUBDATA.CSV is there</h3>
<cfoutput query="myDirectory">
	<CFIF (mydirectory.name EQ "SASYSUBDATA.CSV") AND (mydirectory.type EQ "File")>
		name = #mydirectory.name#<br>
				
<!---  --->
		

		<CFFILE action="READ" file="D:\reports\docs\otherftp\PropertyAuctions\#mydirectory.name#" variable="csv">
		
		<CFSET linecount = 0>
		<CFLOOP LIST="#csv#" delimiters="#Chr(10)##Chr(13)#" index="currentLine">
			<p>%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%</p>
			<CFSET linecount = linecount + 1>
			<p>Add missing fields:<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#linecount# Current line (before) = #currentLine#<br>
			<!--- <CFSET currentLine = replace('#currentLine#','^^','^""^','ALL')> --->
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#linecount# Current line (after) = #currentLine#<br></p>
			              
			listlen of Current line = #listlen(currentLine,"^")#<br><br></p>
			
			
			<!--- <CFIF linecount gt 5000><CFABORT></CFIF> --->
			<CFIF linecount GE 1>
				<!---  	clear out the current fielddataArray --->
			 	<cfset k = 1>
				<CFLOOP INDEX="IDX" FROM="1" TO="7">
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
				
				
				<!---  --->
				<cfquery name="populateBidResults" datasource="NewProperty">
					INSERT INTO
					Bidresults
					(
						<cfloop index="i" from="1" to="7">
							#fieldNameArray[i]#<CFIF i NEQ 7>,</cfif>
						</cfloop>				
					)
					VALUES
					( 
						<!--- fieldNameArray[1] = "Make" --->
						
						<CFLOOP from="1" to="7" index="idx"> 
							'#fieldDataArray[idx]#'<CFIF idx NEQ 7>,</cfif>
						</CFLOOP>
					)			
				</cfquery>
						
						<!--- #idx#: #fieldNameArray[idx]# = '#fieldDataArray[idx]#'<BR> --->
			</CFIF>
		</CFLOOP>
		
		
<cfquery name="GetRegions" datasource="NewProperty">
	Update Bidresults
	Set Regions = Left(Salenum,1)
</cfquery>



<cfquery name="DeleteDuplicates" datasource="NewProperty">
	select DISTINCT *
	    into ##tempBidResults
	    from bidresults
</cfquery>
	
<cfquery name="TruncateBidresults" datasource="NewProperty">
	    truncate table bidresults
</cfquery>
	
<cfquery name="insertBidresults" datasource="NewProperty">
	    insert bidresults
	    select *
	    from ##tempBidResults
	    select * from bidresults
</cfquery>
		
		
	<h3>Done! Input file SASYSUBDATA.CSV processed!</h3>
 
	</CFIF>
</cfoutput>
					

</body>
</html>
