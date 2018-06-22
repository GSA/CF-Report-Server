<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate CarInfo from PhotoDataFromIMS.CSV Nightly Job</title>
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
	
	
	<CFSET fieldNameArray[1] = "Photo_AuctionHouseName">
	<CFSET fieldNameArray[2] = "Photo_AuctionWoSn">
	<CFSET fieldNameArray[3] = "Photo_VIN">
	<CFSET fieldNameArray[4] = "Photo_PhotoURL">
	<CFSET fieldNameArray[5] = "Photo_Year">
	<CFSET fieldNameArray[6] = "Photo_Make">
	<CFSET fieldNameArray[7] = "Photo_Model">
	<CFSET fieldNameArray[8] = "Photo_Series">
	<CFSET fieldNameArray[9] = "Photo_BodyStyle">
	<CFSET fieldNameArray[10] = "Photo_Mileage">
	<CFSET fieldNameArray[11] = "Photo_Color">
	<CFSET fieldNameArray[12] = "Photo_Engine">
	<CFSET fieldNameArray[13] = "Photo_EngineSize">
	<CFSET fieldNameArray[14] = "Photo_Transmission">
	<CFSET fieldNameArray[15] = "Photo_FourXFour_YesNo">
	<CFSET fieldNameArray[16] = "Photo_Air_YesNo">
	<CFSET fieldNameArray[17] = "Photo_AirBag">
	<CFSET fieldNameArray[18] = "Photo_Brakes">
	<CFSET fieldNameArray[19] = "Photo_Cruise_YesNo">
	<CFSET fieldNameArray[20] = "Photo_DriveType">
	<CFSET fieldNameArray[21] = "Photo_Windows_YesNo">
	<CFSET fieldNameArray[22] = "Photo_Tilt_YesNo">
	<CFSET fieldNameArray[23] = "Photo_Interior">
	<CFSET fieldNameArray[24] = "Photo_InteriorColor">
	<CFSET fieldNameArray[25] = "Photo_NumOfSeats">
	<CFSET fieldNameArray[26] = "Photo_Locks_YesNo">
	<CFSET fieldNameArray[27] = "Photo_Steering_YesNo">
	<CFSET fieldNameArray[28] = "Photo_Radio">
	<CFSET fieldNameArray[29] = "Photo_RearDefroster_YesNo">
	<CFSET fieldNameArray[30] = "Photo_Roof">
	<CFSET fieldNameArray[31] = "Photo_Seats">
	<CFSET fieldNameArray[32] = "Photo_AdditionalEquipment">
	<CFSET fieldNameArray[33] = "Photo_LargePhotoURL">

<!--- 	hi
<cfx_excel2query r_qResults="mytest"  file="D:\Reports\Docs\OtherFTP\FleetAuctions\PhotoDataFromIMS.xls">

<CFOUTPUT query="mytest">a</CFOUTPUT>
<CFABORT> --->

	
<!--- #### process the FMSVEHICLES.CSV ############################################################################ --->

<!--- obtain a record set of all the files in directory: D:\reports\docs\otherftp\FleetAuctions\ --->
<cfdirectory directory = "D:\reports\docs\otherftp\FleetAuctions\"
  name = "myDirectory"
  sort = "name ASC">
  
<h3>Go through the files in directory D:\reports\docs\otherftp\FleetAuctions\ and find if the file PhotoDataFromIMS.CSV is there</h3>
<cfoutput query="myDirectory">
	<CFIF (mydirectory.name EQ "PhotoDataFromIMS.csv") AND (mydirectory.type EQ "File")>
		name = #mydirectory.name#<br>
				
		<cfquery name="deletePhotoInfo" datasource="Remarketing">
			delete from	PhotoInfo
		</cfquery>

		<CFFILE action="READ" file="D:\reports\docs\otherftp\FleetAuctions\#mydirectory.name#" variable="csv">
		
		<CFSET linecount = 0>
		<CFLOOP LIST="#csv#" delimiters="#Chr(10)##Chr(13)#" index="currentLine">
			<!--- <p>%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%</p> --->
			<CFSET linecount = linecount + 1>
			<!--- <p>Add missing fields:<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#linecount# Current line (before) = #currentLine#<br> --->

			<CFSET currentLine = replace('#currentLine#',',,',',"",','ALL')>
			<!--- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#linecount# Current line (after) = #currentLine#<br></p>			              
			listlen of Current line = #listlen(currentLine)#<br><br></p> --->
			
			<CFSET currentLine = replace('#currentLine#',',,',',"",','ALL')>
			<!--- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#linecount# Current line (after) = #currentLine#<br></p>
			listlen of Current line = #listlen(currentLine)#<br><br></p> --->
			
			
			<CFSET currentLine = replaceNoCase('#currentLine#','Chattanooga A.A., LLC','Chattanooga A.A. LLC','ALL')>
			<CFSET currentLine = replaceNoCase('#currentLine#','Bel Air A.A., Inc','Bel Air A.A. Inc','ALL')>
			<CFSET currentLine = replaceNoCase('#currentLine#','Dealers Auto Auction of Alaska, Inc.','Dealers Auto Auction of Alaska Inc.','ALL')>
			<!--- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#linecount# Current line (after) = #currentLine#<br>
			listlen of Current line = #listlen(currentLine)#<br><br> --->
			
			
			<!--- <CFIF linecount gt 5000><></CFIF> --->
			<CFIF linecount GE 1>
				<!---  	clear out the current fielddataArray --->
			 	<cfset k = 1>
				<CFLOOP INDEX="IDX" FROM="1" TO="33">
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
				
				<CFIF fieldDataArray[25] EQ 0>
					<CFSET fieldDataArray[25] = "">
				</CFIF>
				<CFIF find("?",fieldDataArray[15])>
					<CFSET fieldDataArray[15] = "">
				</CFIF>
				<CFIF find("?",fieldDataArray[28])>
					<CFSET fieldDataArray[28] = "">
				</CFIF>
				<CFIF find("?",fieldDataArray[31])>
					<CFSET fieldDataArray[31] = "">
				</CFIF>
				<CFIF find("?",fieldDataArray[12])>
					<CFSET fieldDataArray[12] = "">
				</CFIF>
				<CFIF findNoCase("leather",fieldDataArray[23])>
					<CFSET fieldDataArray[23] = "">
				</CFIF>
				<CFSET fieldDataArray[33] = replaceNoCase('#fieldDataArray[4]#','small','large','ALL')>


				<!--- <em>#fieldDataArray[32]#</em><br> --->
				<CFSET newAditionalEQ = "">
				<CFSET fieldDataArray[32] = replaceNoCase("#fieldDataArray[32]#","'","",'ALL')>
				<CFLOOP LIST="#fieldDataArray[32]#" delimiters=";" index="additionalEQField">
					<CFIF findNoCase("tire",additionalEQField) OR  findNoCase("wheel",additionalEQField) OR findNoCase("recon",additionalEQField) OR findNoCase("leather",additionalEQField) OR findNoCase("maint",additionalEQField) OR findNoCase("record",additionalEQField)>
						<!--- ignore this string --->
					<CFELSE>
						<CFSET newAditionalEQ = newAditionalEQ & additionalEQField & ",">
					</CFIF>
				</CFLOOP></p>
				<CFIF len(newAditionalEQ) GT 1>
					<CFSET fieldDataArray[32] = left(newAditionalEQ,len(newAditionalEQ)-1)>
				<CFELSE>
					<CFSET fieldDataArray[32] = newAditionalEQ>
				</CFIF>
				<!--- <strong>#fieldDataArray[32]#</strong><br><br><br><br><br> --->
				
				
				<cfquery name="populateCarInfo" datasource="Remarketing">
					INSERT INTO
					PhotoInfo
					(
						<cfloop index="i" from="1" to="33">
							#fieldNameArray[i]#<CFIF i NEQ 33>,</cfif>
						</cfloop>				
					)
					VALUES
					( 
						<!--- fieldNameArray[1] = "Photo_AuctionHouseName" --->
						'#trim(fieldDataArray[1])#',
									
						<!--- fieldNameArray[2] = "Photo_AuctionWoSn" --->
						'#trim(fieldDataArray[2])#',
									
						<!--- fieldNameArray[3] = "Photo_VIN" --->
						'#trim(fieldDataArray[3])#',	
													
						<!--- fieldNameArray[4] = "Photo_PhotoURL" --->
						'#trim(fieldDataArray[4])#',
									
						<!--- fieldNameArray[5] = "Photo_Year" --->
						'#trim(fieldDataArray[5])#',	
									
						<!--- fieldNameArray[6] = "Photo_Make" --->
						'#trim(fieldDataArray[6])#',	
													
						<!--- fieldNameArray[7] = "Photo_Model" --->
						'#trim(fieldDataArray[7])#',
									
						<!--- fieldNameArray[8] = "Photo_Series" --->
						'#trim(fieldDataArray[8])#',
									
						<!--- fieldNameArray[9] = "Photo_BodyStyle" --->
						'#trim(fieldDataArray[9])#',
														
						<!--- fieldNameArray[10] = "Photo_Mileage" --->
						'#trim(fieldDataArray[10])#',
									
						<!--- fieldNameArray[11] = "Photo_Color" --->
						'#trim(fieldDataArray[11])#',
									
						<!--- fieldNameArray[12] = "Photo_Engine" --->
						'#trim(fieldDataArray[12])#',	
													
						<!--- fieldNameArray[13] = "Photo_EngineSize" --->
						'#trim(fieldDataArray[13])#',
									
						<!--- fieldNameArray[14] = "Photo_Transmission" --->
						'#trim(fieldDataArray[14])#',		
												
						<!--- fieldNameArray[15] = "Photo_FourXFour_YesNo" --->
						'#trim(fieldDataArray[15])#',		

						<!--- fieldNameArray[16] = "Photo_Air_YesNo" --->
						'#trim(fieldDataArray[16])#',	
													
						<!--- fieldNameArray[17] = "Photo_AirBag" --->
						'#trim(fieldDataArray[17])#',
									
						<!--- fieldNameArray[18] = "Photo_Brakes" --->
						'#trim(fieldDataArray[18])#',
									
						<!--- fieldNameArray[19] = "Photo_Cruise_YesNo" --->
						'#trim(fieldDataArray[19])#',
														
						<!--- fieldNameArray[20] = "Photo_DriveType" --->
						'#trim(fieldDataArray[20])#',
									
						<!--- fieldNameArray[21] = "Photo_Windows_YesNo" --->
						'#trim(fieldDataArray[21])#',
									
						<!--- fieldNameArray[22] = "Photo_Tilt_YesNo" --->
						'#trim(fieldDataArray[22])#',
									
						<!--- fieldNameArray[23] = "Photo_Interior" --->
						'#trim(fieldDataArray[23])#',	
													
						<!--- fieldNameArray[24] = "Photo_InteriorColor" --->
						'#trim(fieldDataArray[24])#',
									
						<!--- fieldNameArray[25] = "Photo_NumOfSeats" --->
						'#trim(fieldDataArray[25])#',
									
						<!--- fieldNameArray[26] = "Photo_Locks_YesNo" --->
						'#trim(fieldDataArray[26])#',	
													
						<!--- fieldNameArray[27] = "Photo_Steering_YesNo" --->
						'#trim(fieldDataArray[27])#',
									
						<!--- fieldNameArray[28] = "Photo_Radio" --->
						'#trim(fieldDataArray[28])#',
									
						<!--- fieldNameArray[29] = "Photo_RearDefroster_YesNo" --->
						'#trim(fieldDataArray[29])#',
														
						<!--- fieldNameArray[30] = "Photo_Roof" --->
						'#trim(fieldDataArray[30])#',
									
						<!--- fieldNameArray[31] = "Photo_Seats" --->
						'#trim(fieldDataArray[31])#',
									
						<!--- fieldNameArray[32] = "Photo_AdditionalEquipment" --->
						'#trim(fieldDataArray[32])#',
									
						<!--- fieldNameArray[33] = "Photo_LargePhotoURL" --->
						'#trim(fieldDataArray[33])#'
									
						)
				</cfquery>
			</CFIF>
		</CFLOOP>
		
															  
		
		
	<h3>Done! Input file Photos.CSV processed!</h3>
 
	</CFIF>
</cfoutput>
					

</body>
</html>


