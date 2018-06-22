<cfoutput>
<!--- NGL::06/29/05::Catch .RFT in the current line --->
<!--- <cfset Report_read = FindNoCase(".RTF -", curLine, 1)> --->
<cfset Report_read = FindNoCase(".RTF", curLine, 1)><!--- The above - may have caused this not to work. --->
   <!--- NGL::06/29/05::Catch .Closing Schedule in the current line --->
   <cfset Schedules_read = FindNoCase("Schedules", curLine, 1)>
   <!--- NGL::06/29/05::If we read .RFT in the line --->
   <cfif Report_read gt 0 and Schedules_read eq 0>
	   <!--- NGL::06/29/05::Catch !!!!!!!FSS19!!!!!!! in the current line --->
	   <cfset read = FindNoCase("#system_read#", curLine, 1)>
	   <!--- NGL::06/29/05::If we read FSS19 in the line --->
	   <cfif read gt 0>
	   	<cfset catch_line = Mid(curLine, 1, Report_read)>
	   	#log_directory.name#~~ #catch_line# ----- 
		<cfset date_viewed = Left(catch_line, 10)>#date_viewed#	-
		
		<cfset findGet = Find("GET", catch_line) + 5>
		<cfset findLEn = Len(catch_line)>
		<cfset LenofEnd = findLen - FindGet>
		<cfset EndGroup = mid(catch_line, findGet, LenofEnd)> 
		<cfset myArrayList = ListToArray(EndGroup, "/")><!--- <cfdump var="#myArrayList#"> --->
		<cfset yearof = myArrayList[2]> **yearof:#yearof#-
		<cfset yearof = left(yearof, 4)>
		<cfset dateEntered = myArrayList[3]>
		<cfset dateEntered = spanExcluding(#dateEntered#, ".")>
		<cfif len(#dateEntered#) LT 8>
			<!--- <cfset dateEntered = dateEntered & "-01-" & #yearof#> --->
			<cfset dateEntered = "01-01-" & #yearof#><!---  --->
			 <cfset dateEntered = #DateFormat(dateEntered, "mm/dd/yyyy")#>
			#dateEntered#-
			<!---<cfset dateEntered = "">  --->
		<cfelse>
			<cfset dateEntered = Left(dateEntered, 4) & "-" & mid(dateEntered, 5, 2) & "-" & right(dateEntered, 2)>
			<cfset dateEntered = #DateFormat(dateEntered, "mm/dd/yyyy")#>
			#dateEntered#-
		</cfif><!---  --->
		
		<!--- <cfset office = myArrayList[4]>#office#- --->
		
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
		
		<!--- ex041213.log  --->
		<cfset logName = #mid(log_directory.name, "3", "6")#>
		<cfset logName = mid(logName, 3, 2) & "/" & right(logName, 2) & "/20" & Left(logName, 2)>
		
		<!--- <cfif logName is not  #DateFormat(date_viewed, "mm/dd/yyyy")#> --->
		<cfquery datasource="OnlineReportsSQL" name="insertLogData">
			insert into fms_logreader
			(date_viewed, 
			yearof, 
			dateEntered, 
			office, 
			category, 
			filename)
			values(
			'#DateFormat(date_viewed, "mm/dd/yyyy")#', 
			'#yearof#', 
			'#dateEntered#', 
			'#office#', 
			'#category#',
			'#filename#'
			)
		</cfquery><!---  --->
		<!--- </cfif>
		 --->
		 <cfset j = j + 1>
	   </cfif> 
	   <cfset i = i + 1>
   </cfif>
</cfoutput>   