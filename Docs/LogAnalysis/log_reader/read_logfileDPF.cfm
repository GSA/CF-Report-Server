
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Read log file</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>

<body>
	<!--- <cfset startRow = 1><cfset endRow = 50> --->
<cfparam name="startRow" default="1">
<cfparam name="EndRow" default="15">	<!--- 50 --->
<cfparam name="url.submit" default="">
<cfparam name="form.submit" default="#url.submit#">
<cfif form.submit is "Submit">
<cfset dbsource = "test_db_environment">
<!---<cfset system_read = "GET /FSS19/"> GET /SASY/ || GET /FEDS/ || GET /FMS/ --->
<cfif (not isDefined('url.logItems') or url.logItems is "") and form.logItems is not "">
<cfparam name="form.logItems" default="">
<cfparam name="url.logItems" default="#form.LogItems#">
</cfif>
<cfparam name="logItems" default="#url.logItems#">

<!--- <cfoutput><cfset system_read = "GET /#form.logItems#/"> #system_read#</cfoutput><br> --->
<cfoutput><cfset system_read = "GET /#logItems#/"> #system_read#</cfoutput><br>
<cfoutput>
<!--- NGL::06/29/05:: counter of RTF files read --->
<cfset i = 0>
<!--- NGL::06/29/05:: counter of system_read files read --->
<cfset j = 0>

 <cfset directory_read = "d:\Log Files\IIS\W3SVC1\"><!--- --->
<!---<cfset directory_read = "d:\Log Files\restore\Log Files\w3svc1-2004\">  --->
<!---<cfset directory_read = "d:\Log Files\restore\Log Files\W3SVC3">  --->

<cfdirectory action="list" directory="#directory_read#" name="log_directory">

<cfset todayDate = dateformat(NOW(), "yymmdd")>
<!--- log_directory.name:<cfoutput>#log_directory.name#---#todayDate#</cfoutput><cfabort> --->

<!--- NGL::06/29/05:: Loop over directory #log_directory.recordcount# --->
<!--- <cfloop query="log_directory" startrow="1" endrow="#log_directory.recordcount#"> --->
<cfloop query="log_directory" startrow="#startRow#" endrow="#endRow#">

<cfif name contains todayDate>
	<a href="index.cfm">back to index page&nbsp;&raquo;</a>
	<cfabort>
<cfelse>
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
		<cfset endRow = endRow + 15><!---<cfset endRow = endRow + 99> <cfset endRow = endRow + 49> --->
		<!--- <cfset endRow = log_directory.recordcount - startRow> --->
		<a href="read_logfileDPF.cfm?startRow=#startRow#&endRow=#endRow#&submit=submit&logItems=#logItems#&requesttimeout=20000">more log reading&nbsp;&raquo;</a>
		<cfabort>
	<cfelse>
		<cfset startRow = startRow + 1>
		<!--- <cfset endRow = log_directory.recordcount - startRow> --->
	</cfif>
</cfif><!--- end contains if --->	
</cfloop>

Total number of lines containing "#system_read#" = #j#<br>
Total number of lines containing ".RTF" = #i#<br>
number of files: #log_directory.recordcount#<br><br>

<cfset error1 = "nbr lines containing:#system_read# = #j# -- nbr lines containing: .RTF = #i# -- nbr files: #log_directory.recordcount#">
<cfset errorLogName1 = dateformat(now(),"mm/dd/yyyy")>
	<cffile action="write" addnewline="yes" file="d:\Rtest\onlinereports\log_reader\TaskLogFiles\errorlogs_#errorLogName1#.txt" output="#error1#">


</cfoutput>
<!--- <a href="read_logfileDPF.cfm">Back to select List</a>
<cfabort> --->
</cfif>

<form action="read_logfileDPF.cfm?requesttimeout=20000" method="post"><!--- #script_name# --->
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
</form>
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
