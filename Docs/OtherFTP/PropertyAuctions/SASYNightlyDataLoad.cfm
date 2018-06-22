<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate CarInfo from SASYIFBDATA.CSV Nightly Job</title>
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
	
	
	<CFSET fieldNameArray[1] = "Salenum">		
	<CFSET fieldNameArray[2] = "Method">		
	<CFSET fieldNameArray[3] = "Commtype">		
	<CFSET fieldNameArray[4] = "Conductby">
	<CFSET fieldNameArray[5] = "Saledate">		<!--- datetime --->
	<CFSET fieldNameArray[6] = "Saletime">
	<CFSET fieldNameArray[7] = "Locsalename">
	<CFSET fieldNameArray[8] = "Addy2">
	<CFSET fieldNameArray[9] = "Addy3">
	<CFSET fieldNameArray[10] = "City">		
	<CFSET fieldNameArray[11] = "State">
	<CFSET fieldNameArray[12] = "Zip">
	<CFSET fieldNameArray[13] = "Contact">
	<CFSET fieldNameArray[14] = "Phone">
	<CFSET fieldNameArray[15] = "Ext">
	<CFSET fieldNameArray[16] = "Locseqnum">
	<CFSET fieldNameArray[17] = "Locname">
	<CFSET fieldNameArray[18] = "Locaddy">
	<CFSET fieldNameArray[19] = "Locstreet">
	<CFSET fieldNameArray[20] = "Loccity">
	<CFSET fieldNameArray[21] = "Locstate">
	<CFSET fieldNameArray[22] = "Loczip">
	<CFSET fieldNameArray[23] = "Custname">
	<CFSET fieldNameArray[24] = "Custphone">
	<CFSET fieldNameArray[25] = "Custext">
	<CFSET fieldNameArray[26] = "inspdatea">
	<CFSET fieldNameArray[27] = "inspfroma">
	<CFSET fieldNameArray[28] = "insptoa">
	<CFSET fieldNameArray[29] = "inspdateb">
	<CFSET fieldNameArray[30] = "inspfromb">
	<CFSET fieldNameArray[31] = "insptob">
	<CFSET fieldNameArray[32] = "fromampm">
	<CFSET fieldNameArray[33] = "toampm">
	<CFSET fieldNameArray[34] = "freeform1">
	<CFSET fieldNameArray[35] = "freeform2">
	<CFSET fieldNameArray[36] = "freeform3">
	<CFSET fieldNameArray[37] = "lotnum">
	<CFSET fieldNameArray[38] = "nounname">
	<CFSET fieldNameArray[39] = "fsccode">
	<CFSET fieldNameArray[40] = "upsetprice">
	<CFSET fieldNameArray[41] = "condition">
	<CFSET fieldNameArray[42] = "termcondq">
	<CFSET fieldNameArray[43] = "blankx">
	<CFSET fieldNameArray[44] = "adddesc">
	<CFSET fieldNameArray[45] = "officername">
	<CFSET fieldNameArray[46] = "officerphone">
	<CFSET fieldNameArray[47] = "officeremail">
	
	

	
<!--- #### process the FMSVEHICLES.CSV ############################################################################ --->

<!--- obtain a record set of all the files in directory: D:\reports\docs\otherftp\PropertyAuctions\ --->
<cfdirectory directory = "D:\reports\docs\otherftp\PropertyAuctions\"
  name = "myDirectory"
  sort = "name ASC">
  
<h3>Go through the files in directory D:\reports\docs\otherftp\PropertyAuctions\ and find if the file SASYIFBDATA.CSV is there</h3>
<cfoutput query="myDirectory">
	<CFIF (mydirectory.name EQ "SASYIFBDATA.CSV") AND (mydirectory.type EQ "File")>
		name = #mydirectory.name#<br>
				
		<cfquery name="InsertOldpropertydata2" datasource="NewProperty">
			Insert Oldpropertydata2
			Select *
			From Propertydata
			Where Saledate <= getdate()
		</cfquery>
			
		<cfquery name="PurgeOldpropertydata2a" datasource="NewProperty">
			DELETE FROM oldpropertydata2
			WHERE GETDATE() - saledate > 366
		</cfquery>
			
		<cfquery name="PurgeOldpropertydata2b" datasource="NewProperty">
			delete oldpropertydata2
			where saleid > (
			    select max(saleid)
			    from oldpropertydata2 m
			    where m.salenum = oldpropertydata2.salenum
			and m.lotnum = oldpropertydata2.lotnum
			)
		</cfquery>
			
		
		<cfquery name="deletePropertyData" datasource="NewProperty">
			delete from PropertyData
		</cfquery>
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
				<CFLOOP INDEX="IDX" FROM="1" TO="47">
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
				<cfquery name="populatePropertyData" datasource="NewProperty">
					INSERT INTO
					PropertyData
					(
						<cfloop index="i" from="1" to="47">
							#fieldNameArray[i]#<CFIF i NEQ 47>,</cfif>
						</cfloop>				
					)
					VALUES
					( 
						<!--- fieldNameArray[1] = "Make" --->
						
						<CFLOOP from="1" to="47" index="idx"> 
							'#fieldDataArray[idx]#'<CFIF idx NEQ 47>,</cfif>
						</CFLOOP>
					)			
				</cfquery>
						
						<!--- #idx#: #fieldNameArray[idx]# = '#fieldDataArray[idx]#'<BR> --->
			</CFIF>
		</CFLOOP>
		
		<cfquery name="" datasource="NewProperty">
			Update Propertydata
			Set Regions = Left(Salenum,1)
		</cfquery>
		
		<cfquery name="" datasource="NewProperty">
			select DISTINCT *
		    into ##temp
		    from propertydata
		</cfquery>
		
		<cfquery name="" datasource="NewProperty">
		    truncate table propertydata
		</cfquery>
		
		
		<cfquery name="" datasource="NewProperty">
		    insert propertydata
		    select *
		    from ##temp
		    select * from propertydata
		</cfquery>
		<!---  --->
		
		
	<h3>Done! Input file SASYIFBDATA.CSV processed!</h3>
 
	</CFIF>
</cfoutput>
					

</body>
</html>
