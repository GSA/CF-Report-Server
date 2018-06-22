<cfparam name="counter" default="0">
<cfset counter = 0>
<!--- NGL:: Determine root file --->
<cfset rfile = 'fms'>

<!--- NGL:: Determine system directory file --->
<cfset systemdir = 'fms'>
<cfset ReportDir = 'fms'>

<!--- NGL:: Retreive FMS report from database --->
<cfquery name="GetReportName" datasource="OnlineReports">
	SELECT ReportName, ReptFreqCode, ReptFileName, reportid
	FROM #rfile#ReportName
	where ReptFreqCode LIKE 'DA'<!--- #form.ReptFreqCode# --->
</cfquery>

<!--- NGL: Determine the day of the year --->
<!--- NGL:: Make sure that we have the date selected by the user --->
<cfif IsDefined("form.year")><cfset session.year = form.year><cfelse><cfset year = session.year></cfif>
<cfif IsDefined("form.month")><cfset session.month = form.month + 1><cfset month = form.month + 1><cfelse><cfset month = session.month + 1></cfif>
<cfif IsDefined("form.day")><cfset session.day = form.day><cfelse><cfset day = session.day></cfif>
<!--- NGL:: Make sure that we combine properly the date selected to determine the day of the year --->
<cfif IsDefined("form.year") and IsDefined("form.month") and IsDefined("form.day")>
<cfset ourDate = CreateDate(session.year, session.month, session.day)>
</cfif>
<cfif IsDefined("session.year") and IsDefined("session.month") and IsDefined("session.day")>
<cfset ourDate = CreateDate(session.year, session.month, session.day)>
</cfif>

<!--- NGL:: We have the Day of the year --->
<cfset doy = #DayofYear(ourDate)# >
<!--- NGL:: BEGIN:: Format month properly for report retreival --->
<cfset month = month(#ourDate#)>
<cfif month lt 10>
	<cfset Month2 = "0" & Month>
<cfelse>
	<cfset Month2 = Month>
</cfif>
<!--- NGL:: BEGIN:: Format Day of the Month properly for report retreival --->
<cfset Month_Day = day(#ourDate#)>
<cfif Month_Day lt 10>
	<cfset Month_Day2 = "0" & Month_Day>
<cfelse>
	<cfset Month_Day2 = Month_Day>	
</cfif>
<!--- NGL:: BEGIN:: Format Day of the Year properly for report retreival --->
<cfif doy lt 10>
	<cfset Doy2 = "00" & doy>
<cfelseif doy LT 100>
	<cfset Doy2 = "0" & doy>
</cfif>
<!--- NGL:: BEGIN:: Format year properly for report retreival --->
<cfset Year2 = RemoveChars("#year#", 1, 2)>
<!--- NGL:: BEGIN:: Format directory structure of date for report retreival --->
<cfset ReptDate = #Month2# & #Month_Day2# & #Year2# & "." & #Doy2#>

<!--- NGL:: Determine root directory --->
<!--- NGL:: REAL ONE ---><cfset RootDir = "d:\Reports\Docs\#ReportDir#">
<!--- NGL:: LOCAL ONE <cfset rootdir = "c:\cfusionmx7\wwwroot\my_test_environment\onlinereport\report\#ReportDir#">--->
<cfdirectory action="list" name="content" directory="#rootdir#\#session.year#\#ReptRegion#\DA\#ReptDate#\" filter="*.RTF"><!--- #GetReportName.ReptFreqCode# --->
<cfset linkurl = "#ServerUrl##report#/#session.year#/#ReptRegion#/DA/#ReptDate#/"><!--- #GetReportName.ReptFreqCode# --->
<cfset counter = counter + content.recordcount>
<!--- <li>NGL:: END:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
<cfset nbr_report_result = counter>

