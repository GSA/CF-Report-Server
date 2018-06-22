<!--- Clear all info on session variables --->
<cfset StructDelete(Session, "directory")>
<cfset StructDelete(Session, "linkurl")>

<!--- Load client variables --->
<cfparam name="client.ReptYear" default="#Year(Now())#">

<cfset session.ReptYear = "#client.ReptYear#">

<cfset ReportDir = "tass">


<!--- NGL: Determine the day of the year --->
<!--- NGL:: Make sure that we have the date selected by the user --->
<cfif Not IsDefined("year")><cfset session.year = #Year(now())#><cfset year = #Year(now())#><cfelse><cfset year = session.year></cfif>
<cfif IsDefined("form.month_selected")><cfset session.month = form.month_selected><cfset month = form.month_selected><cfelse><cfset month = session.month></cfif>
<cfif Not IsDefined("day")><cfset session.day = 1><cfset day = 1><cfelse><cfset day = session.day></cfif>
<!--- NGL:: Make sure that we combine properly the date selected to determine the day of the year --->
<cfif IsDefined("year") and IsDefined("month") and IsDefined("day")>
<cfset ourDate = CreateDate(year, month, day)>
</cfif>
<cfif IsDefined("session.year") and IsDefined("session.month") and IsDefined("session.day")>
<cfset ourDate = CreateDate(session.year, session.month, session.day)>
</cfif>

<!--- NGL:: We have the Number of Days of the year --->
<cfset dim = #DaysInMonth(ourDate)# >
<!--- NGL:: Total Monthly reports --->
<cfparam name="total_monthly_report" default="0">
<cfset total_monthly_report = 0>
<cfloop index="doy_id" from="1" to="#dim#">
		<!--- NGL:: Make sure that we combine properly the date selected to determine the day of the year --->
		<cfif IsDefined("year") and IsDefined("month") and IsDefined("day")>
		<cfset ourDate = CreateDate(year, month, doy_id)>
		</cfif>
		<cfif IsDefined("session.year") and IsDefined("session.month") and IsDefined("session.day")>
		<cfset ourDate = CreateDate(session.year, session.month, doy_id)>
		</cfif>
		<!--- NGL:: We have the Day of the year --->
		<cfset doy = #DayofYear(ourDate)# >
		<!--- NGL:: We have the Day of the month --->
		<cfset month_day = #doy_id# >
		
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
		<cfset compdate = month2 & month_day2>
		
		<cfdirectory action="list" directory="#session.directory#" name="contents" filter="#compdate#*.rtf" sort="name">
		
		<!--- FOR TESTING ONLY !!!! <cfoutput>
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
		<cfset total_monthly_report = total_monthly_report + nbr_report_result>
</cfloop>
