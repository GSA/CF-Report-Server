<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate Auto Schedule Input (testing)</title>
</head>

<body>

<cf_bodycontent>


<h3>Environment Info</h3>
<cfoutput>
Cold Fusion Version in use: #server.ColdFusion.ProductVersion#<br>
currenttemplatepath = #getcurrenttemplatepath()#<br>
basetemplatepath = #getbasetemplatepath()#<br>
current directory = #getdirectoryfrompath(getcurrenttemplatepath())#<br>


<h3>This is being run on #dateformat(now(), "mmmm, dd yyyy")# at #timeformat(now(),"hh:mm:ss")# </h3>

</cfoutput>


	<!--- set up the fieldNameArray and fielddataArray --->
	
	<CFSET fieldNameArray = ArrayNew(1)>
	<CFSET fielddataArray = ArrayNew(1)>
	
	<CFSET fieldNameArray[1] = "scheduleID">
	<CFSET fieldNameArray[2] = "AddressCode">
	<CFSET fieldNameArray[3] = "AuctionStart">
	<CFSET fieldNameArray[4] = "ViewStart">
	<CFSET fieldNameArray[5] = "ViewEnd">
	<CFSET fieldNameArray[6] = "ViewStartb">
	<CFSET fieldNameArray[7] = "ViewEndb">
	<CFSET fieldNameArray[8] = "Promo">
	<CFSET fieldNameArray[9] = "online">
	<CFSET fieldNameArray[10] = "loco">

	
<!--- #### process the ADD files ############################################################################ --->

<!--- obtain a record set of all the ADDxxx.CSV files in directory: D:\reports\docs\otherftp\FleetAuctions\testing\ --->
<cfdirectory directory = "D:\reports\docs\otherftp\FleetAuctions\"
  name = "myDirectory"
  sort = "name ASC">
  
<h3>The ADD* files in directory D:\reports\docs\otherftp\FleetAuctions\</h3>
<cfoutput query="myDirectory">
	<CFIF (ucase(left(mydirectory.name,3)) EQ "ADD") AND (mydirectory.type EQ "File")>
		name = #mydirectory.name#<br>
		
		<CFSET SetSaleIDtmp = ucase(right(mydirectory.name,15))>
		<CFSET SetSaleID = ucase(left(SetSaleIDtmp,11))>
		SetSaleID = #SetSaleID#<br>
		
		
		<CFFILE action="READ" file="D:\reports\docs\otherftp\FleetAuctions\#mydirectory.name#" variable="csv">
		<CFLOOP LIST="#csv#" delimiters="#Chr(10)##Chr(13)#" index="currentLine">
		Current line = #currentLine#<br> 
		listlen of Current line = #listlen(currentLine)#<br><br>
		
			<!---  	clear out the current fielddataArray --->
		 	<cfset k = 1>
			<CFLOOP INDEX="IDX" FROM="1" TO="8">
				<CFSET fielddataArray[IDX] = "">
			</CFLOOP>
		
			<!---  	populate the current fielddataArray --->
		 	<cfset k = 1>
			<CFLOOP LIST="#currentLine#" delimiters="," index="currentField">
			
				<CFIF k LE 8>
					<CFSET fielddataArray[k] = #currentField#>
				<CFELSE>
					<CFSET fielddataArray[8] = fielddataArray[8] & "," & #currentField#>
				</CFIF>
				<cfset k = k+1>	
			</CFLOOP>
			
			<!--- strip out leading * from AddressCode field --->
			<CFIF Left(#fieldDataArray[2]#,1) EQ "*">
				<cfset fieldDataArray[2] = RemoveChars(#fieldDataArray[2]#,1,1)>			
			</CFIF>
			
			
			
<!--- **** Wednesday, July 21, 2004 added code to check if any auctions already exist
in the table that match addresscode and auctionstart date *****	 --->		

			
			<!--- search for the record --->
			<cfquery name="searchforExistingAuctions" datasource="remarketing">
				SELECT ScheduleID FROM AuctionSchedule
				WHERE
					(#fieldNameArray[2]# = '#fielddataArray[2]#')
					AND (#fieldNameArray[3]# = #createODBCdatetime(fielddataArray[3])#)
						AND (SetSaleID = '#SetSaleID#')
			</cfquery>
			
			***** ADD: #searchforExistingAuctions.recordcount# record was found.<BR><BR>
			
			
			<CFIF searchforExistingAuctions.recordcount GE 1>
				<cfquery name="DeleteExistingAuctions" datasource="remarketing">
					DELETE FROM AuctionSchedule
					WHERE
						(#fieldNameArray[2]# = '#fielddataArray[2]#')
						AND (#fieldNameArray[3]# = #createODBCdatetime(fielddataArray[3])#)
						AND (SetSaleID = '#SetSaleID#')
				</cfquery>
				
			</CFIF>			
	
<!--- **** Wednesday, July 21, 2004 end of code change ****	 --->		
			
			
			<cfquery name="populateDB" datasource="remarketing">
				INSERT INTO
				AuctionSchedule
				(
					<cfloop index="i" from="2" to="8">
						#fieldNameArray[i]#<CFIF i NEQ 8>,</cfif>
					</cfloop>
					, SetSaleID				
				)
				VALUES
				( 
				
<!--- fieldNameArray[2] = "AddressCode" --->
							'#fieldDataArray[2]#',
<!--- fieldNameArray[3] = "AuctionStart" --->
							<CFIF isdate(fieldDataArray[3])>
								#createODBCdatetime(fieldDataArray[3])#,
							<CFELSE>
								NULL,
							</CFIF>
<!--- fieldNameArray[4] = "ViewStart" --->
							<CFIF isdate(fieldDataArray[4])>
								#createODBCdatetime(fieldDataArray[4])#,
							<CFELSE>
								NULL,
							</CFIF>
<!--- fieldNameArray[5] = "ViewEnd" --->
							<CFIF isdate(fieldDataArray[5])>
								#createODBCdatetime(fieldDataArray[5])#,
							<CFELSE>
								NULL,
							</CFIF>
<!--- fieldNameArray[6] = "ViewStartb" --->
							<CFIF isdate(fieldDataArray[6])>
								#createODBCdatetime(fieldDataArray[6])#,
							<CFELSE>
								<CFIF isdate(fieldDataArray[4])>
									#createODBCdatetime(fieldDataArray[4])#,
								<CFELSE>
									NULL,
								</CFIF>
							</CFIF>
<!--- fieldNameArray[7] = "ViewEndb" --->
							<CFIF isdate(fieldDataArray[7])>
								#createODBCdatetime(fieldDataArray[7])#,
							<CFELSE>
								<CFIF isdate(fieldDataArray[5])>
									#createODBCdatetime(fieldDataArray[5])#,
								<CFELSE>
									NULL,
								</CFIF>
							</CFIF>
<!--- fieldNameArray[8] = "Promo" --->
							'#replace("#fieldDataArray[8]#","'","''","ALL")#',
							'#SetSaleID#'
								
				)
			</cfquery>
		</CFLOOP>
	
	rename the csv file:
<CFFILE action="rename" source="D:\reports\docs\otherftp\FleetAuctions\#mydirectory.name#"
 destination="D:\reports\docs\otherftp\FleetAuctions\processed\Processed_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"hhmmss")#_#mydirectory.name#"
 attributes="Normal">
 
	</CFIF>
	
</cfoutput>




<!--- #### now process the CHANGE files ######################################################################## --->

	<!--- set up the fieldNameArray and fielddataArray --->
	
	<CFSET fieldNameArray2 = ArrayNew(1)>
	<CFSET fielddataArray2 = ArrayNew(1)>
	
	<CFSET fieldNameArray2[1] = "ScheduleID">
	<CFSET fieldNameArray2[2] = "AddressCode">
	<CFSET fieldNameArray2[3] = "AuctionStart">
	<CFSET fieldNameArray2[4] = "ViewStart">
	<CFSET fieldNameArray2[5] = "ViewEnd">
	<CFSET fieldNameArray2[6] = "ViewStartb">
	<CFSET fieldNameArray2[7] = "ViewEndb">
	<CFSET fieldNameArray2[8] = "ScheduleID">
	<CFSET fieldNameArray2[9] = "AddressCode">
	<CFSET fieldNameArray2[10] = "AuctionStart">
	<CFSET fieldNameArray2[11] = "ViewStart">
	<CFSET fieldNameArray2[12] = "ViewEnd">
	<CFSET fieldNameArray2[13] = "ViewStartb">
	<CFSET fieldNameArray2[14] = "ViewEndb">
	<CFSET fieldNameArray2[15] = "Promo">


<!--- obtain a record set of all the CHGxxx.CSV files in directory: D:\reports\docs\otherftp\FleetAuctions\testing\ --->
<cfdirectory directory = "D:\reports\docs\otherftp\FleetAuctions\"
  name = "myDirectory"
  sort = "name ASC">
  
<h3>The CHG* files in directory D:\reports\docs\otherftp\FleetAuctions\</h3>
<cfoutput query="myDirectory">
	<CFIF (ucase(left(mydirectory.name,3)) EQ "CHG") AND (mydirectory.type EQ "File")>
		name = #mydirectory.name#<br>
		
		<CFSET SetSaleIDtmp = ucase(right(mydirectory.name,15))>
		<CFSET SetSaleID = ucase(left(SetSaleIDtmp,11))>
		SetSaleID = #SetSaleID#<br>
		
		
		<CFFILE action="READ" file="D:\reports\docs\otherftp\FleetAuctions\#mydirectory.name#" variable="csv">
		<CFLOOP LIST="#csv#" delimiters="#Chr(10)##Chr(13)#" index="currentLine">
		Current line = #currentLine#<br>
		listlen of Curent line = #listlen(currentLine)#<br><br>
		
			<!---  	clear out the current fielddataArray --->
		 	<cfset k = 1>
			<CFLOOP INDEX="IDX" FROM="1" TO="15">
				<CFSET fielddataArray2[IDX] = "">
			</CFLOOP>
		
			<!---  	populate the current fielddataArray --->
		 	<cfset k = 1>
			<CFLOOP LIST="#currentLine#" delimiters="," index="currentField">
			
				<CFIF k LE 15>
					<CFSET fielddataArray2[k] = #currentField#>
				<CFELSE>
					<CFSET fielddataArray2[15] = fielddataArray2[15] & "," & #currentField#>
				</CFIF>
				<cfset k = k + 1>	
			</CFLOOP>
		
			<!--- strip out leading * from AddressCode field --->
			<CFIF Left(#fielddataArray2[2]#,1) EQ "*">
				<cfset fielddataArray2[2] = RemoveChars(#fielddataArray2[2]#,1,1)>			
			</CFIF>
			<CFIF Left(#fielddataArray2[9]#,1) EQ "*">
				<cfset fielddataArray2[9] = RemoveChars(#fielddataArray2[9]#,1,1)>			
			</CFIF>
			
			<!--- search for the record --->
			<cfquery name="searchforRecord" datasource="remarketing">
				SELECT ScheduleID FROM AuctionSchedule
				WHERE
					#fieldNameArray2[2]# = '#fieldDataArray2[2]#'
					AND (#fieldNameArray2[3]# = #createODBCdatetime(fieldDataArray2[3])#)
					AND (#fieldNameArray2[4]# = #createODBCdatetime(fieldDataArray2[4])#)
					AND (#fieldNameArray2[5]# = #createODBCdatetime(fieldDataArray2[5])#)
						AND (SetSaleID = '#SetSaleID#')
			</cfquery>
			
			***** #searchforRecord.recordcount# record was found.<BR><BR>
			
			
			<CFIF searchforRecord.recordcount GE 1>
			<cfquery name="populateDB" datasource="remarketing">
				UPDATE 
				AuctionSchedule
				SET
<!--- fieldNameArray2[2] = "AddressCode" --->
					#fieldNameArray2[2]# = 
							'#fieldDataArray2[9]#',
<!--- fieldNameArray2[3] = "AuctionStart" --->
					#fieldNameArray2[3]# = 
							<CFIF isdate(fieldDataArray2[10])>
								#createODBCdatetime(fieldDataArray2[10])#,
							<CFELSE>
								NULL,
							</CFIF>
<!--- fieldNameArray2[4] = "ViewStart" --->
					#fieldNameArray2[4]# = 
							<CFIF isdate(fieldDataArray2[11])>
								#createODBCdatetime(fieldDataArray2[11])#,
							<CFELSE>
								NULL,
							</CFIF>
<!--- fieldNameArray2[5] = "ViewEnd" --->
					#fieldNameArray2[5]# = 
							<CFIF isdate(fieldDataArray2[12])>
								#createODBCdatetime(fieldDataArray2[12])#,
							<CFELSE>
								NULL,
							</CFIF>
<!--- fieldNameArray2[6] = "ViewStartb" --->
					#fieldNameArray2[6]# = 
							<CFIF isdate(fieldDataArray2[13])>
								#createODBCdatetime(fieldDataArray2[13])#,
							<CFELSE>
								<CFIF isdate(fieldDataArray2[11])>
									#createODBCdatetime(fieldDataArray2[11])#,
								<CFELSE>
									NULL,
								</CFIF>
							</CFIF>
<!--- fieldNameArray2[7] = "ViewEndb" --->
					#fieldNameArray2[7]# = 
							<CFIF isdate(fieldDataArray2[14])>
								#createODBCdatetime(fieldDataArray2[14])#,
							<CFELSE>
								<CFIF isdate(fieldDataArray2[12])>
									#createODBCdatetime(fieldDataArray2[12])#,
								<CFELSE>
									NULL,
								</CFIF>
							</CFIF>
<!--- fieldNameArray2[15] = "Promo" --->
					#fieldNameArray2[15]# = 
							<!--- '#fieldDataArray2[15]#' --->
							'#replace("#fieldDataArray2[15]#","'","''","ALL")#',
					SetSaleID = '#SetSaleID#'
				
				WHERE 
					ScheduleID = #searchforRecord.ScheduleID#
			</cfquery>
			</CFIF>
		</CFLOOP>
	
	rename the csv file:
<CFFILE action="rename" source="D:\reports\docs\otherftp\FleetAuctions\#mydirectory.name#"
 destination="D:\reports\docs\otherftp\FleetAuctions\processed\Processed_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"hhmmss")#_#mydirectory.name#"
 attributes="Normal">
 
	</CFIF>
</cfoutput>

<!--- Backup the log file  --->
<CFFILE action="copy" source="D:\reports\docs\otherftp\FleetAuctions\update.log"
 destination="D:\reports\docs\otherftp\FleetAuctions\logs\updateLog_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"hhmmss")#.cfm"
 attributes="Normal">



</cf_bodycontent>

<!--- ///////////end of change files --->

<!--- ---> 
<cfmail from="stanley.shabaz@gsa.gov" to="stanley.shabaz@gsa.gov" subject="data load complete">
	#request.bodycontent# 
done.
</cfmail> 

<>


				
<!--- 						///// old way ///////////			
					<cfloop index="i" from="2" to="8">
						<CFIF ListFind("3,4,5,6,7",i) is not 0>
							<CFIF isdate(fieldDataArray[i])>
								#createODBCdatetime(fieldDataArray[i])#<CFIF i NEQ 8>,</cfif>
							<CFELSE>
								NULL<CFIF i NEQ 8>,</cfif>
							</CFIF>
							
						<CFELSEIF ListFind("2,8",i) is not 0>
							'#fieldDataArray[i]#'<CFIF i NEQ 8>,</cfif>
							
						<cfelse>
							#fieldDataArray[i]#<CFIF i NEQ 8>,</cfif>
						</cfif>
					</cfloop>	
 --->					
					

</body>
</html>
