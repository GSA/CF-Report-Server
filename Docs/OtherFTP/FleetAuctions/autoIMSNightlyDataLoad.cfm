<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate AutoIMS Nightly Job</title>
	<!---  to be run as a daily scheduled task at 1:39 AM --->
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
	
	<CFSET fieldNameArray[1] = "id">
	<CFSET fieldNameArray[2] = "vin">
	<CFSET fieldNameArray[3] = "tag">
	<CFSET fieldNameArray[4] = "link">

	
<!--- #### process the dataFromIMS.csv ############################################################################ --->

<!--- obtain a record set of all the files in directory: D:\reports\docs\otherftp\FleetAuctions\ --->
<cfdirectory directory = "D:\reports\docs\otherftp\FleetAuctions\"
  name = "myDirectory"
  sort = "name ASC">
  
<h3>Go through the files in directory D:\reports\docs\otherftp\FleetAuctions\ and find if the file dataFromIMS.csv is there</h3>
<cfoutput query="myDirectory">
	<CFIF (mydirectory.name EQ "dataFromIMS.csv") AND (mydirectory.type EQ "File")>
		name = #mydirectory.name#<br>
		
		
				
		<cfquery name="deleteAutoIMS" datasource="Remarketing">
			delete from	AutoIMS
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
			<CFIF linecount GE 3 AND listlen(currentLine) EQ 3>
				<!---  	clear out the current fielddataArray --->
			 	<cfset k = 1>
				<CFLOOP INDEX="IDX" FROM="1" TO="4">
					<CFSET fielddataArray[IDX] = "">
				</CFLOOP>
			
				<!---  	populate the current fielddataArray --->
			 	<p><cfset k = 2>
				<CFLOOP LIST="#currentLine#" delimiters="," index="currentField">
					<p>Strip out: "<BR>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;before: #currentField#<BR>				
					<CFSET currentField = replace('#currentField#','"','','ALL')>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;after: #currentField#<BR></p>	
					
					
					<CFSET fielddataArray[k] = #currentField#>
					<cfset k = k+1>	
				</CFLOOP></p>
				
				
				<cfquery name="populateAutoIMS" datasource="Remarketing">
					INSERT INTO
					AutoIMS
					(
						<cfloop index="i" from="2" to="4">
							#fieldNameArray[i]#<CFIF i NEQ 4>,</cfif>
						</cfloop>				
					)
					VALUES
					( 
						<!--- fieldNameArray[2] = "vin" --->
						'#fieldDataArray[2]#',
									
						<!--- fieldNameArray[3] = "tag" --->
						'#fieldDataArray[3]#',
									
						<!--- fieldNameArray[4] = "link" --->
						'#fieldDataArray[4]#'								
						)
				</cfquery>
			</CFIF>
		</CFLOOP>
		
		<cfquery name="deleteNullsFromAutoIMS" datasource="Remarketing">
			Delete from Autoims
			where link is null or link = ' '
		</cfquery>
		
		<cfquery name="insertCleanDataIntoAutoIMS" datasource="Remarketing">
			INSERT INTO AutoIMSclean
				(Vin, Tag, Link, id)
			SELECT DISTINCT vin, tag, link, id
			FROM AutoIMS
		</cfquery>
		
		<!--- <cfquery name="insertCleanDataIntoAutoIMS" datasource="Remarketing">
			INSERT INTO AutoIMSclean
				(Vin, Tag, Link, id)
			SELECT DISTINCT vin, tag, link, id
			FROM AutoIMS
			WHERE (NOT EXISTS
			              (SELECT     *
			               FROM          autoimsclean
			               WHERE      autoims.vin = autoimsclean.vin))		
		</cfquery> --->
		
		<cfquery name="deleteNOLinksFromAutoIMS" datasource="Remarketing">
			Delete from AutoImsclean
			where link is null		
		</cfquery>
		
		
		<!--- Start: Purge Duplicates From AutoIMSclean --->
		<cftransaction>
		
			<cfquery name="qSelectIntoDupes" datasource="Remarketing">
				select vin, tag, link, RecCount=count(*), PktoKeep = min(id)
				into ##dupes
				from AutoIMSclean
				group by vin, tag, link
				having count(*) > 1
				order by count(*) desc, vin, tag
			</cfquery>
			
			<cfquery name="qDeleteDupes" datasource="Remarketing">
				delete	AutoIMSclean
				from	AutoIMSclean a join ##dupes d
				on	d.vin = a.vin
				and	d.tag = a.tag
				and	d.link = a.link
				where	a.id not in (select PKtoKeep from ##dupes)
			</cfquery>
			
			<cfquery name="qDropDupesTable" datasource="Remarketing">
				drop table ##dupes
			</cfquery>
		
		</cftransaction>
		<!--- End: of Purge Duplicates From AutoIMSclean --->
		
	<h3>Done! Input file dataFromIMS.csv processed!</h3>
 
	</CFIF>
</cfoutput>
					

</body>
</html>
