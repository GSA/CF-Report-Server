<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate CarInfo from FMSVEHICLES.CSV Nightly Job</title>
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
	
	
	<CFSET fieldNameArray[1] = "Make">		<!--- no null --->
	<CFSET fieldNameArray[2] = "Model">		<!--- no null --->
	<CFSET fieldNameArray[3] = "Year">		<!--- reserved word --->
	<CFSET fieldNameArray[4] = "Miles">
	<CFSET fieldNameArray[5] = "Color">
	<CFSET fieldNameArray[6] = "Cylinder">
	<CFSET fieldNameArray[7] = "X">
	<CFSET fieldNameArray[8] = "SaleDate">
	<CFSET fieldNameArray[9] = "LocationID">
	<CFSET fieldNameArray[10] = "VIN">		<!--- no null --->
	<CFSET fieldNameArray[11] = "FuelCode">
	<CFSET fieldNameArray[12] = "SIN">
	<CFSET fieldNameArray[13] = "manfcode">
	<CFSET fieldNameArray[14] = "Salvage">
	<CFSET fieldNameArray[15] = "SetSaleID">
	
	

	
<!--- #### process the FMSVEHICLES.CSV ############################################################################ --->

<!--- obtain a record set of all the files in directory: D:\reports\docs\otherftp\FleetAuctions\ --->
<cfdirectory directory = "D:\reports\docs\otherftp\FleetAuctions\"
  name = "myDirectory"
  sort = "name ASC">
  
<h3>Go through the files in directory D:\reports\docs\otherftp\FleetAuctions\ and find if the file FMSVEHICLES.CSV is there</h3>
<cfoutput query="myDirectory">
	<CFIF (mydirectory.name EQ "FMSVEHICLES.CSV") AND (mydirectory.type EQ "File")>
		name = #mydirectory.name#<br>
				
		<cfquery name="deleteCarinfo_onl" datasource="Remarketing">
			Delete from Carinfo_onl
		</cfquery>

		<cfquery name="InsertIntoCarinfo_onl" datasource="Remarketing">
			Insert into Carinfo_onl (vin, online, loco)
				Select vin, online, loco
				from carInfo
				where online is not null
		</cfquery>
		
		<cfquery name="deleteCarInfo" datasource="Remarketing">
			Delete from CarInfo
		</cfquery>

		<CFFILE action="READ" file="D:\reports\docs\otherftp\FleetAuctions\#mydirectory.name#" variable="csv">
		
		<CFSET linecount = 0>
		<CFLOOP LIST="#csv#" delimiters="#Chr(10)##Chr(13)#" index="currentLine">
			<p>%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%</p>
			<CFSET linecount = linecount + 1>
			<p>Add missing fields:<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#linecount# Current line (before) = #currentLine#<br>
			<CFSET currentLine = replace('#currentLine#',',,',',"",','ALL')>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#linecount# Current line (after) = #currentLine#<br></p>
			              
			listlen of Current line = #listlen(currentLine)#<br><br></p>
			
			
			<!--- <CFIF linecount gt 5000><></CFIF> --->
			<CFIF linecount GE 1>
				<!---  	clear out the current fielddataArray --->
			 	<cfset k = 1>
				<CFLOOP INDEX="IDX" FROM="1" TO="15">
					<CFSET fielddataArray[IDX] = "">
				</CFLOOP>
			
				<!---  	populate the current fielddataArray --->
			 	<p><cfset k = 1>
				<CFLOOP LIST="#currentLine#" delimiters="," index="currentField">
					<!--- <p>Strip out: "<BR> --->
					<!--- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;before: #currentField#<BR> --->				
					<CFSET currentField = replace('#currentField#','"','','ALL')>
					<!--- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;after: #currentField#<BR></p> --->	
					
					
					<CFSET fielddataArray[k] = #currentField#>
					<cfset k = k+1>	
				</CFLOOP></p>
				
				
				<cfquery name="populateCarInfo" datasource="Remarketing">
					INSERT INTO
					CarInfo
					(
						<cfloop index="i" from="1" to="15">
							#fieldNameArray[i]#<CFIF i NEQ 15>,</cfif>
						</cfloop>				
					)
					VALUES
					( 
						<!--- fieldNameArray[1] = "Make" --->
						'#trim(fieldDataArray[1])#',
									
						<!--- fieldNameArray[2] = "Model" --->
						'#trim(fieldDataArray[2])#',
									
						<!--- fieldNameArray[3] = "Year" --->
						'#fieldDataArray[3]#',	
													
						<!--- fieldNameArray[4] = "Miles" --->
						'#fieldDataArray[4]#',
									
						<!--- fieldNameArray[5] = "Color" --->
						'#ltrim(fieldDataArray[5])#',
									
						<!--- fieldNameArray[6] = "Cylinder" --->
						'#fieldDataArray[6]#',	
													
						<!--- fieldNameArray[7] = "X" --->
						'#fieldDataArray[7]#',
									
						<!--- fieldNameArray[8] = "SaleDate" --->
						'#fieldDataArray[8]#',
									
						<!--- fieldNameArray[9] = "LocationID" --->
						'#fieldDataArray[9]#',
														
						<!--- fieldNameArray[10] = "VIN" --->
						'#trim(fieldDataArray[10])#',
									
						<!--- fieldNameArray[11] = "FuelCode" --->
						'#fieldDataArray[11]#',
									
						<!--- fieldNameArray[12] = "SIN" --->
						'#fieldDataArray[12]#',	
													
						<!--- fieldNameArray[13] = "manfcode" --->
						'#fieldDataArray[13]#',
									
						<!--- fieldNameArray[14] = "Salvage" --->
						'#fieldDataArray[14]#',		
												
						<!--- fieldNameArray[15] = "SetSaleID" --->
						'#left(fieldDataArray[15],11)#'								
						)
				</cfquery>
			</CFIF>
		</CFLOOP>
		
		<cfquery name="CalculateSin" datasource="Remarketing">
			Update Carinfo
			Set Unique_Sin = year+RTRIM(sin)+manfcode
		</cfquery>
		
		<cfquery name="ConvertDateFeild" datasource="Remarketing">
			Update Carinfo
			Set USaleDate = SaleDate
		</cfquery>
		
		<cfquery name="UpdateColorsGreen" datasource="Remarketing">
			UPDATE    CARINFO
			SET       COLOR = 'GREEN'
			WHERE     COLOR = 'MEDIUM BLUE-GREEN/TURQ' OR
			          COLOR = 'LIGHT  BLUE-GREEN/TURQ'
		</cfquery>
								  
		<cfquery name="UpdateColorsBurgundy" datasource="Remarketing">
	        UPDATE    CARINFO
	        SET       COLOR = 'BURGUNDY'
	        WHERE     COLOR = 'DARK   MAROON/BURGUNDY' OR
	                  COLOR = 'MEDIUM MAROON/BURGUNDY' OR
	                  COLOR = 'LIGHT MAROON/BURGUNDY'  OR
	                  COLOR = 'LIGHT  MAROON/BURGUNDY'
		</cfquery>
															  
															  
		<cfquery name="UpdateColorsGold" datasource="Remarketing">
	        UPDATE    CARINFO
	        SET       COLOR = 'GOLD'
	        WHERE     COLOR = 'MEDIUM GOLD/BRONZE ' OR
	                  COLOR = 'LIGHT GOLD/BRONZE ' OR
	                  COLOR = 'LIGHT  GOLD/BRONZE '
		</cfquery>
		
		<cfquery name="UpdateOnlineSales" datasource="Remarketing">
			UPDATE    CarInfo
			SET       Online = o.Online
			FROM      carinfo c, carinfo_onl o
			WHERE     c.vin = o.vin AND o.online <> 0
		</cfquery>
		
		
		
	<h3>Done! Input file FMSVEHICLES.CSV processed!</h3>
 
	</CFIF>
</cfoutput>
					

</body>
</html>
