
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Read log file</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>

<body>
<!--- <cfset startRow = 1><cfset endRow = 50> --->
<cfparam name="startRow" default="1">
<cfparam name="EndRow" default="50">	
<cfparam name="url.submit" default="">
<cfparam name="form.submit" default="#url.submit#">
<!--- <cfif form.submit is "Submit"> comment out since this running automatically, don't need to pick system type--->
<cfset dbsource = "test_db_environment">
<!---<cfset system_read = "GET /FSS19/"> GET /SASY/ || GET /FEDS/ || GET /FMS/ --->
<cfparam name="logItems" default="form.logItems">

<!--- <cfoutput><cfset system_read = "GET /#form.logItems#/"> #system_read#</cfoutput><br> --->
<!--- <cfoutput><cfset system_read = "GET /#logItems#/"> #system_read#</cfoutput><br> dpf 08/31/05: not needed --->
<cfoutput>
<!--- NGL::06/29/05:: counter of RTF files read --->
<cfset i = 0>
<!--- NGL::06/29/05:: counter of system_read files read --->
<cfset j = 0>

 <cfset directory_read = "d:\Log Files\IIS\W3SVC1\"><!--- --->
<!---<cfset directory_read = "d:\Log Files\restore\Log Files\w3svc1-2004\">  --->
<!---<cfset directory_read = "d:\Log Files\restore\Log Files\W3SVC3">  --->


<!--- dpf: 08/31/05: need to create a text file saving the last day log was run. if it is not yesterdays date, then have to grab all the days from last run till today, and loop over those days and run those logs as well to catch up. --->
<cfset directory_readText = "d:\Rtest\onlinereport">

<!--- from this output to the cfabort runs program automatically --->
<cfoutput><!--- dpf:08/30/05 -- used to create date in format of log file name for comparison --->
<cfset ThisDate = dateFormat(NOW(), "mm-dd-yy")>ThisDate:#ThisDate#---
<cfset ThisMonth = month(#ThisDate#)>
<cfset ThisMonthDate = dateFormat(dateAdd("d",-1,#ThisDate#), "mmddyyyy")>
<cfset ThisMonth = left(#ThisMonthDate#, "2")>thisMonth:#ThisMonth#<br />
<!--- <cfif ThisMonth lt 10>
	<cfset ThisMonth = 0 & #ThisMonth#>
</cfif> --->
<cfset ThisDay = day(#ThisDate#)>
<cfset yearyear1 = year(ThisDate)>
<cfset ThisYear = right(yearyear1, 2)>
<!--- <cfset yearyear = dateFormat(#yearyear1#, "yy")> --->
<!---  yearyear:#yearyear1#---#yearyear#---
<cfset ThisYear = dateFormat(year(#ThisDate#), "yy")> --->
<cfset ThisDay = #ThisDay# - 1 ><!---  --->

<cfset ThisDayDate = dateFormat(dateAdd("d",-1,#ThisDate#), "ddmmyyyy")>
<cfset ThisDay = left(#ThisDayDate#, "2")>
<!--- <cfif ThisDay lt 10>
	<cfset ThisDay = 0 & #ThisDay#>
</cfif> --->
<cfset yesterdayDate = #ThisYear# & #ThisMonth# & #ThisDay#>
 YESTERDAY DATE: #yesterdayDate# ---Year:#ThisYear# & month:#ThisMonth# & day:#ThisDay#<br /><!--- --->
</cfoutput><!--- ex050708.log --->

<!--- dpf 08/31/05: between the outputs: taking the date that is stored in the text file and comparing it to today's date 
 doing this to see if it ran the day before or not. Then it is creating a list of all dates between text date and today. 
 that list is then used in the main code to run the database insert for any number of dates that have not alreay been run. --->
<cfoutput>
	<cfif fileExists("#directory_readText#\logRun.txt")>
		<cffile action="read" file="#directory_readText#\logRun.txt" variable="readText">
		<cfset ThisTxtDate = #readText#>
		<cfset txtDay = right(trim(#ThisTxtDate#), "2")>
		<cfset textMonth = mid(#ThisTxtDate#, "3", "2")>
		<cfset textYear = "20" & left(#ThisTxtDate#, "2")>
		<cfset DayAfterDate = #textMonth# & "/" & #txtDay# & "/" & #textYear#><!--- dpf 08/31/05: text date formatted --->DayAfterDate:#DayAfterDate#<br />
		<cfset ThisDateComp = dateFormat(NOW(), "mm/dd/yyyy")><!--- dpf 08/31/05: todays Date --->		Today Date: #ThisDateComp#<br />
		<cfset DateDifference = abs(dateDiff("d", "#DayAfterDate#", "#ThisDateComp#"))><!--- dpf 08/31/05: compare dates for diff. --->
		<cfset DateDifference = #DateDifference# - 1><!--- dpf 09/09/05: done to remove todays date from list --->
		dateDif:#DateDifference#<br />
		<cfset dateList = "">
		<cfloop from="1" to="#DateDifference#" index="g"><!--- dpf 08/31/05: creates date list --->
			<cfset "item#g#" = DateFormat(dateAdd("d",#g#,CreateDate(#textYear#,#textMonth#,#txtDay#)), "yymmdd")>
			<cfset dateList = #dateList# & ", " & #structFind(variables, "item#g#")#>		
			<!--- <cfset dateList = removeChars(#dateList#, "1", "2")> --->
		</cfloop>DateList:#dateList#<br />
	<cfelse>
		<cffile action="write" file="#directory_readText#\logRun.txt" output="#yesterdayDate#" addnewline="yes">
		<!--- <div>The Text file was not created storing the log dates. The db logging can not take place.</div><cfabort> --->
	</cfif>	
</cfoutput>
<br /><br>
<cfdirectory action="list" directory="#directory_read#" name="log_directory">
<cfloop query="log_directory"><!--- dpf: 08/30/05 -- loop over the folder looking for a certain log name --->
	<cfoutput >
		<cfparam name="logTypes" default="fss19">
		<!--- dpf 08/31/05: loop over list of dates missed. replace yesterdayDate with index of loop --->
		<cfloop index="d" list="#dateList#" delimiters=","> 
		
		<!--- dpf: 08/30/05 -- if the log name contains the date do this --->
		
		<cfset dirName = spanExcluding(log_directory.name, ".")>#dirName#---#d#<br />
		<cfif dirName contains trim(d) >
		<!--- <cfif log_directory.name contains '#d#' > ---><!--- yesterdayDate --->
			<cfset theFile = "#directory_read##log_directory.name#">
			logging date:#log_directory.name#--#d# -- theFile:#theFile#<br><br />
			
			<cfloop from="1" to="6" index="h"><!--- dpf: 08/30/05 -- 6 is number of systems --->
			d:#d#--logtypes:#logTypes#<br />
				<cffile action = "read" file = "#theFile#" variable = "logfile">
				<cfset system_read = "GET /#logTypes#/"> #system_read#<br />
				logTypes:#logTypes#<br />
				<!--- dpf:08/30/05: include pages used for each different log file to create database correctly --->
					<cfif logTypes is "fss19"><!--- form.logItems --->fss19
						<!--- dpf:08/30/05: Loop trhough each line of the File read --->
						<cfloop list="#logfile#" index="curLine" delimiters="#chr(10)##chr(13)#">
							<!---<cfinclude template="includes/fss19LogReader.cfm">  --->
						</cfloop>
							Total number of lines containing "#system_read#" = #j#<br>
							Total number of lines containing ".RTF" = #i#<br><br>
						<cfset logTypes = "fms">	
					<cfelseif logTypes is "fms">fms
						<cfloop list="#logfile#" index="curLine" delimiters="#chr(10)##chr(13)#">			
							<!---<cfinclude template="includes/fmsLogReader.cfm">  --->
						</cfloop>
							Total number of lines containing "#system_read#" = #j#<br>
							Total number of lines containing ".RTF" = #i#<br><br>			
						<cfset logTypes = "feds">	
					<cfelseif logTypes is "feds">feds
						<cfloop list="#logfile#" index="curLine" delimiters="#chr(10)##chr(13)#">			
							<!---<cfinclude template="includes/fedsLogReader.cfm">  --->
						</cfloop>
							Total number of lines containing "#system_read#" = #j#<br>
							Total number of lines containing ".RTF" = #i#<br><br>			
						<cfset logTypes = "Sasy">	
					<cfelseif logTypes is "Sasy">	Sasy
						<cfloop list="#logfile#" index="curLine" delimiters="#chr(10)##chr(13)#">
							<!---<cfinclude template="includes/sasyLogReader.cfm">  --->
						</cfloop>
							Total number of lines containing "#system_read#" = #j#<br>
							Total number of lines containing ".RTF" = #i#<br><br>			
						<cfset logTypes = "csc">	
					<cfelseif logTypes is "csc">csc	
						<cfloop list="#logfile#" index="curLine" delimiters="#chr(10)##chr(13)#">
							<!---<cfinclude template="includes/cscLogReader.cfm">  --->
						</cfloop>
							Total number of lines containing "#system_read#" = #j#<br>
							Total number of lines containing ".RTF" = #i#<br><br>			
						<cfset logTypes = "tass">	
					<cfelseif logTypes is "tass">tass
						<cfloop list="#logfile#" index="curLine" delimiters="#chr(10)##chr(13)#">	
							<!---<cfinclude template="includes/tassLogReader.cfm">  --->			
						</cfloop>
							Total number of lines containing "#system_read#" = #j#<br>
							Total number of lines containing ".RTF" = #i#<br><br>			
						<cfset logTypes = "fss19">	
					</cfif>
			</cfloop>
		</cfif> 
		</cfloop> <!---dpf 4/25/07: right above this loop stmt, need to use cffile to move the particular log file tha was just run against from this folder to a backup folder. ---> 
	</cfoutput>
</cfloop>

<!--- dpf 08/31/05: this code logs the last date this page is run to make sure if the task does not run, all files still logged --->

<cfoutput>
	<cfdirectory action="list" directory="#directory_readText#" name="text_directory">
	<cfloop query="text_directory">
		<cfif text_directory.name is "logRun.txt"><!--- newFolderDPF\--->
			<cffile action="delete" file="#directory_readText#\logRun.txt">
		</cfif>
	</cfloop>	
	<cffile action="write" file="#directory_readText#\logRun.txt" output="#yesterdayDate#" addnewline="yes">
</cfoutput>

<cfabort>
<!--- -----------end of auto run------------ --->


<!--- dpf 09/01/05: this was the old code which is not needed since the code above does the work.


<!--- NGL::06/29/05:: Loop over directory #log_directory.recordcount# --->
<!--- <cfloop query="log_directory" startrow="1" endrow="#log_directory.recordcount#"> --->
<cfloop query="log_directory" startrow="#startRow#" endrow="#endRow#">
<!--- NGL::06/29/05:: Load File to read --->
<cfset theFile = "#directory_read#\#log_directory.name#">
<!--- NGL::06/29/05:: Read File Loaded --->
<cffile action = "read" file = "#theFile#" variable = "logfile">
	<!--- NGL::06/29/05:: Loop trhough each line of the File read --->
	<cfloop list="#logfile#" index="curLine" delimiters="#chr(10)##chr(13)#">
	<!--- dpf:07/01/05: include pages used for each different log file to create database correctly --->
		<cfif logItems is "fss19"><!--- form.logItems --->
			<cfinclude template="includes/fss19LogReader.cfm">
		<cfelseif logItems is "fms">
			<cfinclude template="includes/fmsLogReader.cfm">
		<cfelseif logItems is "feds">	
			<cfinclude template="includes/fedsLogReader.cfm">
		<cfelseif logItems is "Sasy">	
			<cfinclude template="includes/sasyLogReader.cfm">
		<cfelseif logItems is "csc">	
			<cfinclude template="includes/cscLogReader.cfm">
		<cfelseif logItems is "tass">	
			<cfinclude template="includes/tassLogReader.cfm">			
		</cfif>
			 <!---<cfset j = j + 1>
		  </cfif> --->
		  <!---  <cfset i = i + 1>
	   </cfif>  ---> 
	</cfloop>

	<!--- <cfset startRow = startRow + 49> --->
	<cfif #startRow# is #endRow#>
		<cfset startRow = endRow + 1>
		<cfset endRow = endRow + 49>
		<!--- <cfset endRow = log_directory.recordcount - startRow> --->
		<a href="read_logfileDPF.cfm?startRow=#startRow#&endRow=#endRow#&submit=submit&logItems=#logItems#">more log reading&nbsp;&raquo;</a>
		<cfabort>
	<cfelse>
		<cfset startRow = startRow + 1>
		<!--- <cfset endRow = log_directory.recordcount - startRow> --->
	</cfif>
</cfloop>

Total number of lines containing "#system_read#" = #j#<br>
Total number of lines containing ".RTF" = #i#<br>
number of files: #log_directory.recordcount#<br><br>
 --->
</cfoutput>
<a href="read_logfileDPF.cfm">Back to select List</a>
<cfabort>
<!--- </cfif> --->
<!--- 
<form action="read_logfileDPF.cfm" method="post"><!--- #script_name# --->
<br><br>
<table align="center" border="0"><th align="center" colspan="2">Select one of these log types to create a log entry in a database table</th>
	<tr><td align="center" colspan="2">
		<select name="logItems">
			<option value="FSS19">FSS19</option>
			<option value="Sasy">Sasy</option>
			<option value="csc">csc</option>
			<option value="fms">fms</option>
			<option value="feds">feds</option>
			<option value="Tass">tass</option>
		</select>
	</td></tr>
	<tr>
	<td align="right"><input name="Submit" type="submit" value="Submit" /></td>
	<td align="right"><input name="back" type="button" value="Back to previous page" onclick="location.href='index.cfm'" /></td>
	</tr>
</table>
</form> --->
</body>
</html>
<!---
   <!--- NGL::06/29/05::Catch .RFT in the current line --->
   <cfset Report_read = FindNoCase(".RTF", curLine, 1)>
   <!--- NGL::06/29/05::Catch .Closing Schedule in the current line --->
   <cfset Schedules_read = FindNoCase("Schedules", curLine, 1)>
   <!--- NGL::06/29/05::If we read .RFT in the line --->
   <cfif Report_read gt 0 and Schedules_read eq 0>
	   <!--- NGL::06/29/05::Catch !!!!!!!FSS19!!!!!!! in the current line --->
	   <cfset read = FindNoCase("#system_read#", curLine, 1)>
	   <!--- NGL::06/29/05::If we read FSS19 in the line --->
	   <cfif read gt 0>
	   	<cfset catch_line = Mid(curLine, 1, Report_read)>
	   	 #catch_line# ----- 
		 
		 <cfset date_viewed = Left(catch_line, 10)>#date_viewed#	-		
		<cfset findGet = Find("GET", catch_line) + 5>
		<cfset findLEn = Len(catch_line)>
		<cfset LenofEnd = findLen - FindGet>
		<cfset EndGroup = mid(catch_line, findGet, LenofEnd)> 
		<cfset myArrayList = ListToArray(EndGroup, "/")>
		<cfset yearof = myArrayList[2]> #yearof#-
		<cfset dateEntered = myArrayList[3]>
		<cfset dateEntered = spanExcluding(#dateEntered#, ".")>
		<cfset dateEntered = Left(dateEntered, 4) & "-" & mid(dateEntered, 5, 2) & "-" & right(dateEntered, 2)>#dateEntered#-		
		
		<cfif ArrayLen(myArrayList) eq 4>
			<cfset office = "No Category">No Office-
			<cfset category = "No Category">No Category-
			<cfset fileName = myArrayList[4]> #fileName#<br>
		<cfelseif ArrayLen(myArrayList) eq 5>
			<cfset office = myArrayList[4]>#office#-
			<cfset category = "No Category">No Category-
			<cfset fileName = myArrayList[5]> #fileName#<br>
		<cfelse>
			<cfset office = myArrayList[4]>#office#-
			<cfset category = myArrayList[5]>#category#-
			<cfset fileName = myArrayList[6]> #fileName#<br>
		</cfif>
		<strong><strong>#filename#</strong></strong>
		<cfif isDate(dateEntered)>
 		<cfquery datasource="OnlineReports" name="insertLogData">
			insert into FSS19_LogReader
			(date_viewed, 
			yearof, 
			dateEntered, 
			office, 
			category, 
			filename)
			values(
			'#DateFormat(date_viewed, "mm/dd/yyyy")#', 
			'#yearof#', 
			'#DateFormat(dateEntered, "mm/dd/yyyy")#', 
			'#office#', 
			'#category#',
			'#filename#'
			)
		</cfquery>  
		 </cfif>--->
