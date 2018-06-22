<cfoutput>
<!--- NGL::06/29/05::Catch .RFT in the current line --->
<!--- <cfset Report_read = FindNoCase(".RTF -", curLine, 1)> --->
<cfset Report_read = FindNoCase(".RTF", curLine, 1)><!--- The above - may have caused this not to work. --->
   <!--- NGL::06/29/05::Catch .Closing Schedule in the current line --->
   <cfset Schedules_read = FindNoCase("Schedules", curLine, 1)>
   <!--- NGL::06/29/05::If we read .RFT in the line --->
   <cfif Report_read gt 0 and Schedules_read eq 0>
	   <!--- NGL::06/29/05::Catch !!!!!!!csc!!!!!!! in the current line --->
	   
<!--- GET /Sasy/ 2005-06-27 10:05:14 159.142.4.53 GET /SASY/2005/0624-ARBDAY-04. ----- 2005-06-27 - 2005- 0624--A-04-  --->	   
	   
	   <cfset read = FindNoCase("#system_read#", curLine, 1)>
	   <!--- NGL::06/29/05::If we read csc in the line --->
	   <cfif read gt 0>
	   	<cfset catch_line = Mid(curLine, 1, Report_read)>
	   	 #catch_line# ----- 
		<cfset date_viewed = Left(catch_line, 10)>#date_viewed#	-
		
		<cfset findGet = Find("GET", catch_line) + 5>
		<cfset findLEn = Len(catch_line)>
		<cfset LenofEnd = findLen - FindGet>
		<cfset EndGroup = mid(catch_line, findGet, LenofEnd)> 
		<cfset myArrayList = ListToArray(EndGroup, "/")>
		<cfset yearof = myArrayList[2]> #yearof# -
		<cfset fileName = myArrayList[3]> #fileName#<br>
		<!--- <cfset dateEntered = myArrayList[3]>
		<cfset dateEntered = spanExcluding(#dateEntered#, ".")>
		<cfset dateEntered = Left(dateEntered, 4) & "-" & mid(dateEntered, 5, 2) & "-" & right(dateEntered, 2)>#dateEntered#-
		<cfset office = myArrayList[4]>#office#-
		
		<cfif ArrayLen(myArrayList) eq 5>
			<cfset category = "No Category">No Category-
			<cfset fileName = myArrayList[5]> #fileName#<br>
		<cfelse>
			<cfset category = myArrayList[5]>#category#-
			<cfset fileName = myArrayList[6]> #fileName#<br>
		</cfif> --->
		
		<!--- ex041213.log  --->
		<cfset logName = #mid(log_directory.name, "3", "6")#>
		<cfset logName = mid(logName, 3, 2) & "/" & right(logName, 2) & "/20" & Left(logName, 2)>
		
		<!--- <cfif logName is not  #DateFormat(date_viewed, "mm/dd/yyyy")#> --->
 		<cfquery datasource="OnlineReportsSQL" name="insertLogData">
			insert into csc_LogReader
			(date_viewed, yearof, filename)
			values('#date_viewed#', '#yearof#', '#filename#')
		</cfquery>
		<!---</cfif>
		 --->
		<cfset j = j + 1>
	   </cfif> 
	   <cfset i = i + 1>
   </cfif>	
</cfoutput>    