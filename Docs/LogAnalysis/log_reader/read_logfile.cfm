Stop with CFABORT<cfabort>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Read log file</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<cfset dbsource = "test_db_environment">
<cfset system_read = "GET /FSS19/"><!--- GET /SASY/ || GET /FEDS/ || GET /FMS/ --->
<body>
<cfoutput>
<!--- NGL::06/29/05:: counter of RTF files read --->
<cfset i = 0>
<!--- NGL::06/29/05:: counter of system_read files read --->
<cfset j = 0>

<cfset directory_read = "d:\Log Files\IIS\W3SVC1\">

<cfdirectory action="list" directory="#directory_read#" name="log_directory">

<cftransaction>

<!--- NGL::06/29/05:: Loop over directory #log_directory.recordcount# --->
<cfloop query="log_directory" startrow="201" endrow="#log_directory.recordcount#">
<!--- NGL::06/29/05:: Load File to read --->
<cfset theFile = "#directory_read#\#log_directory.name#">
<!--- NGL::06/29/05:: Read File Loaded --->
<cffile action = "read" file = "#theFile#" variable = "logfile">


<!--- NGL::06/29/05:: Loop trhough each line of the File read --->
<cfloop list="#logfile#" index="curLine" delimiters="#chr(10)##chr(13)#">
   <!--- NGL::06/29/05::Catch .RFT in the current line --->
   <cfset Report_read = FindNoCase(".RTF -", curLine, 1)>
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
		<cfset office = myArrayList[4]>#office#-
		
		<cfif ArrayLen(myArrayList) eq 5>
			<cfset category = "No Category">No Category-
			<cfset fileName = myArrayList[5]> #fileName#<br>
		<cfelse>
			<cfset category = myArrayList[5]>#category#-
			<cfset fileName = myArrayList[6]> #fileName#<br>
		</cfif>
		
		<cfquery datasource="OnlineReports" name="insertLogData">
			insert into FSS19_LogReader
			(date_viewed, yearof, dateEntered, office, category, filename)
			values('#date_viewed#', '#yearof#', '#dateEntered#', '#office#', '#category#', '#filename#')
		</cfquery>
		
		<cfset j = j + 1>
	   </cfif> 
	   <cfset i = i + 1>
   </cfif>
</cfloop>
</cfloop>
Total number of lines containing "#system_read#" = #j#<br>
Total number of lines containing ".RTF" = #i#

</cftransaction>
</cfoutput>
</body>
</html>

