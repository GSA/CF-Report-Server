<!--- Clear all info on session variables --->
<cfset StructDelete(Session, "directory")>
<cfset StructDelete(Session, "linkurl")>

<cfset ReportDir = "csc">

<!--- NGL: Determine the day of the year --->
<!--- NGL:: Make sure that we have the date selected by the user --->
<cfif IsDefined("year")><cfset session.year = year><cfelse><cfset year = session.year></cfif>
<cfif IsDefined("month")><cfset session.month = month + 1><cfset month = month + 1><cfelse><cfset month = session.month + 1></cfif>
<cfif IsDefined("day")><cfset session.day = day><cfelse><cfset day = session.day></cfif>

<!--- NGL:: Make sure that we combine properly the date selected to determine the day of the year --->
<cfif IsDefined("year") and IsDefined("month") and IsDefined("day")>
<cfset ourDate = CreateDate(year, month, day)>
</cfif>
<cfif IsDefined("session.year") and IsDefined("session.month") and IsDefined("session.day")>
<cfset ourDate = CreateDate(session.year, session.month, session.day)>
</cfif>

<!--- NGL:: We have the Day of the year --->
<cfset doy = #DayofYear(ourDate)# >

<!--- NGL:: We have the Day of the month --->
<cfset month_day = day >

<cfset RootURL = #ServerUrl# & #ReportDir# & "/">
<cfset session.CatagoryCode = "T">

<cfif IsDefined("Month_Day")>
	<cfset Doy2 = Doy>
		<!--- NGL:: BEGIN:: Format Day of the Year properly for report retreival --->
		<cfif Doy lt 10>
			<cfset Doy2 = "00" & Doy>
		<cfelseif Doy LT 100>
			<cfset Doy2 = "0" & Doy>
		</cfif>
		<!--- NGL:: END:: Format Day of the Year properly for report retreival --->
		
		<!--- NGL:: BEGIN:: Format Year properly for report retreival --->
		<cfset Year2 = RemoveChars("#YEAR#", 1, 2)>
		<!--- NGL:: END:: Format Year properly for report retreival --->
		
		<!--- NGL:: BEGIN:: Format month properly for report retreival --->
		<cfif month lt 10>
			<cfset Month2 = "0" & Month>
		<cfelse>
			<cfset Month2 = Month>
		</cfif>
		<!--- NGL:: END:: Format month properly for report retreival --->
		
		<!--- NGL:: BEGIN:: Format Day of the Month properly for report retreival --->
		<cfif Month_Day lt 10>
			<cfset Month_Day2 = "0" & Month_Day>
		<cfelse>
			<cfset Month_Day2 = Month_Day>	
		</cfif>
		<!--- NGL:: END:: Format Day of the Month properly for report retreival --->
		
	<cfset ReptDate = #Year# & #Month2# & #Month_Day2# & "." & #Doy2#>
	<cfset DateSelected = '#Year#' & '/' & '#doy2#'>
</cfif>	

<cfif #DateSelected# GT '#Session.HistoryDate#'>
	<!--- REAL ONE:::  ---><cfset RootDir = "d:\reports\docs\#ReportDir#\">
	<!--- LOCAL ONE::: <cfset RootDir = "c:\cfusionmx7\wwwroot\my_test_environment\onlinereport\report\#ReportDir#\">--->
	<cfelse>
	<!--- REAL ONE:::  ---><cfset RootDir = "e:\#ReportDir#\">
	<!--- LOCAL ONE::: <cfset RootDir = "c:\cfusionmx7\wwwroot\my_test_environment\onlinereport\report\#ReportDir#\">--->
</cfif>



<cfset session.directory = #RootDir# & "#ReptYear#" & "\">
<cfset session.linkurl = #RootURL# & "#ReptYear#" & "/">
<cfset FileDatePrefix = "-#Right(form.regionstore, 2)#-">
<cfset compdate = month2 & month_day2 & FileDatePrefix>


<cfdirectory action="list" directory="#session.directory#" name="contents" filter="#compdate#*.rtf" sort="name">
<!--- FOR TESTING ONLY !!!! <cfoutput>
compdate: #compdate#<br>
FileDatePrefix: #FileDatePrefix#<br>
Month2: #Month2#<br>
month_day2: #month_day2#<br>
year: #Year# & <br>
Month: #Month2# & <br>
Day in Month: #Month_Day2# & "." & <br>
day of the year: #Doy2#<br>
ReptDate: #ReptDate#<br>
ReptRegion: #ReptRegion#<br>
ReptYear: #ReptYear#<br>
RootDir: #RootDir#<br>
session.directory: #session.directory#<br>
session.linkurl: #session.linkurl#<br>
</cfoutput> --->


<!--- Initialize number of result returned --->
<cfparam name="nbr_report_result" default="0" type="numeric">
<cfset nbr_report_result = 0>
<cfset nbr_report_result = contents.recordcount>
