<!--- Clear all info on session variables --->

<cfset StructDelete(Session, "regionCode")>
<cfset StructDelete(Session, "ReportCatagory")>

<cfset StructDelete(Session, "directory")>
<cfset StructDelete(Session, "linkurl")>

<!--- NGL: Determine the day of the year --->
<!--- NGL:: Make sure that we have the date selected by the user --->
<cfif Not IsDefined("year")><cfset session.year = #Year(now())#><cfelse><cfset year = session.year></cfif>
<cfif IsDefined("form.month_selected")><cfset session.month = form.month_selected><cfelse><cfset month = session.month></cfif>
<cfif Not IsDefined("day")><cfset session.day = 1><cfelse><cfset day = session.day></cfif>
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
		<!--- NGL: Determine the Region Type and Category selected --->
		<cfif IsDefined("regionCode")><cfset session.regionCode = regionCode><cfelse><cfset regionCode = session.regionCode></cfif>
		<cfif IsDefined("ReportCatagory")><cfset session.ReportCatagory = ReportCatagory><cfelse><cfset ReportCatagory = session.ReportCatagory></cfif>
		
		
		
		
		<cfset RootURL = #ServerUrl# & #ReportDir# & "/">
		<cfset PreviousURL = #HTTP_REFERER#>
		<cfif IsDefined("Year")>
			<cfset client.ReptYear = "#Year#">
			<cfset session.ReptYear = "#Year#">
		</cfif>	
		
		<cfset Doy2 = Doy>
		
		<!--- NGL:: BEGIN:: Format Day of the Year properly for report retreival --->
		<cfif Doy lt 10>
			<cfset Doy2 = "00" & Doy>
		<cfelseif Doy LT 100>
			<cfset Doy2 = "0" & Doy>
		</cfif>
		<!--- NGL:: END:: Format Day of the Year properly for report retreival --->
		
		<!--- NGL:: BEGIN:: Format Year properly for report retreival --->
		<cfset Year2 = session.year>
		<!--- NGL:: END:: Format Year properly for report retreival --->
		
		<!--- NGL:: BEGIN:: Format month properly for report retreival --->
		<cfif session.month lt 10>
			<cfset Month2 = "0" & session.month>
		<cfelse>
			<cfset Month2 = session.month>
		</cfif>
		<!--- NGL:: END:: Format month properly for report retreival --->
		
		<!--- NGL:: BEGIN:: Format Day of the Month properly for report retreival --->
		<cfif Month_Day lt 10>
			<cfset Month_Day2 = "0" & Month_Day>
		<cfelse>
			<cfset Month_Day2 = Month_Day>	
		</cfif>
		<!--- NGL:: END:: Format Day of the Month properly for report retreival --->
		
		<!--- NGL:: BEGIN:: Format Report Date for retreival --->
		<cfset ReptDate = #session.Year# & #Month2# & #Month_Day2# & "." & #Doy2#>
		<!--- NGL:: END:: Format Report Date for retreival --->
		
		<cfset DateSelected = '#session.Year#' & '/' & '#doy2#'>
		
		<cfif DateSelected GT '#Session.HistoryDate#'>
			<!--- REAL ONE::: <cfset RootDir = "d:\reports\docs\#ReportDir#\"> ---><cfset RootDir = "d:\Reports\Docs\#ReportDir#\">
			<!--- LOCAL ONE::: <cfset RootDir = "c:\cfusionmx7\wwwroot\my_test_environment\onlinereport\report\#ReportDir#\">--->
		<cfelse>
			<!---  REAL ONE:::  ---><cfset RootDir = "e:\#ReportDir#\">
			<!--- LOCAL ONE::: <cfset RootDir = "c:\cfusionmx7\wwwroot\my_test_environment\onlinereport\report\#ReportDir#\">--->
		</cfif> 
		
		
		
		
		<cfset session.directory = #RootDir# & "#session.ReptYear#" & "\"  & "#ReptDate#" & "\" & "0" & "#session.regionCode#"  & "\" & "#session.reportcatagory#">
		<cfset session.linkurl = #RootURL# & "#session.ReptYear#" & "/"  & "#ReptDate#" & "/" & "0" & "#session.regionCode#" & "/" & "#session.reportcatagory#" & "/">
		
		
		<!--- FOR TESTING ONLY !!!! <cfoutput>
		year: #session.Year# & <br>
		Month: #Month2# & <br>
		Day in Month: #Month_Day2# & "." & <br>
		day of the year: #Doy2#<br>
		ReptDate: #ReptDate#<br>
		session.regionCode: #session.regionCode#<br>
		session.reportcatagory: #session.reportcatagory#<br>
		RootDir: #RootDir#<br>
		session.directory: #session.directory#<br>
		session.linkurl: #session.linkurl#<br>
		</cfoutput> 
		--->
		
		<CFDIRECTORY action="list" directory="#session.directory#" name="contents" sort="name" filter="*.rtf">
		<CFDIRECTORY action="list" directory="#session.directory#" name="CSV" sort="name" filter="*.csv">
		<CFDIRECTORY action="list" directory="#session.directory#" name="txt" sort="name" filter="*.txt">
		
		<!--- Initialize number of result returned --->
		<cfparam name="nbr_report_result" default="0" type="numeric">
		<cfset nbr_report_result = contents.recordcount + csv.recordcount + txt.recordcount>
<!--- <cfoutput><br>Days looped: #doy_id#<br>search result returned: #nbr_report_result#<p></cfoutput> --->
<cfset total_monthly_report = total_monthly_report + nbr_report_result>
</cfloop>
<!--- <cfoutput>total_monthly_report: #total_monthly_report#</cfoutput> --->