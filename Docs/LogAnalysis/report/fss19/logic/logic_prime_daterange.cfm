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
<!--- NGL: Determine the Region Type and Category and report selected --->
<cfif IsDefined("regionCode")><cfset session.regionCode = regionCode><cfelse><cfset regionCode = session.regionCode></cfif>
<cfif IsDefined("ReportCatagory")><cfset session.ReportCatagory = ReportCatagory><cfelse><cfset ReportCatagory = session.ReportCatagory></cfif>
<cfif IsDefined("ReportFile")><cfset session.ReportFile = ReportFile><cfelse><cfset ReportFile = session.ReportFile></cfif>
<!--- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --->
<cfset Doy2 = Doy>

<!--- NGL:: BEGIN:: Format Day of the Year properly for report retreival --->
<cfif Doy lt 10>
	<cfset Doy2 = "00" & Doy>
<cfelseif Doy LT 100>
	<cfset Doy2 = "0" & Doy>
</cfif>
<!--- NGL:: END:: Format Day of the Year properly for report retreival --->

<!--- NGL:: BEGIN:: Format Year properly for report retreival --->
<cfset Year2 = year>
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

<!--- NGL:: BEGIN:: Format Report Date for retreival --->
<cfset ReptDate = #Year# & #Month2# & #Month_Day2# & "." & #Doy2#>
<!--- NGL:: END:: Format Report Date for retreival --->

<cfset DateSelected = '#Year#' & '/' & '#doy2#'>

<cfif DateSelected GT '#Session.HistoryDate#'>
	<!--- REAL ONE::: <cfset RootDir = "d:\reports\docs\#ReportDir#\"> ---><cfset RootDir = "d:\Reports\Docs\#ReportDir#\">
	<!--- LOCAL ONE::: <cfset RootDir = "c:\cfusionmx7\wwwroot\my_test_environment\onlinereport\report\#ReportDir#\">--->
<cfelse>
	<!---  REAL ONE::: ---><cfset RootDir = "e:\#ReportDir#\"> 
	<!--- LOCAL ONE::: <cfset RootDir = "c:\cfusionmx7\wwwroot\my_test_environment\onlinereport\report\#ReportDir#\">--->
</cfif> 



<cfset session.directory = #RootDir# & "#session.ReptYear#" & "\"  & "#ReptDate#" & "\" & "0" & "#session.regionCode#"  & "\" & "#session.reportcatagory#">
<!--- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --->
<cfset fdate = #form.startMonth#>
<cfset tdate = #form.endMonth#>
<cfset currentmonth = #DatePart("m", now())#>

<!--- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --->
<cfif not isdefined("form.reportfile") or '#Form.reportfile#' is ''>
	<cfabort showerror="You need to select the report">
</cfif>
<cfset reqcopy = 'N'> <!--- use this set to 'Y' to copy a group of reports to the copies directory --->
<cfset totalfound = 0>
<cfset CurrentYear = #Year(now())#>
<cfset FromYear = #right(form.startMonth, 4)#>
<cfset ToYear = #right(form.endMonth, 4)#>
<cfset julian = #datepart('Y', form.startMonth)#>
<cfset searchYear = '#fromYear#'>
<cfset StartDay = #left(form.startMonth, 2)# & #mid(form.startMonth, 4, 2)#>
<cfset startsearchday = Startday>
<cfset endDay = #left(form.endMonth, 2)# & #mid(form.endMonth, 4, 2)#>
<cfset session.system = '#url.report#'>
<!--- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --->
<cfif (searchyear is fromyear) and (#left(fdate, 4)# is not 01/01)> <!--- we need to adjust the julian date --->
	<cfdirectory name="startpoint" directory="#rootdir#" action="LIST" filter="#fdate#*.*">			
</cfif>
	
<cfquery name="getdate" datasource="omc">
	select * from calendar
	where Year = #searchYear# and month >= #month# and Month_Day > 0
	Order by Month, Month_Day
</cfquery>

<!--- Initialize number of result returned --->
<cfparam name="nbr_report_result" default="0" type="numeric">
<cfset nbr_report_result = getdate.recordcount>
