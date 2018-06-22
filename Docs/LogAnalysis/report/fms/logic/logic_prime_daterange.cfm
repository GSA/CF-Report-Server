<!--- NGL:: Determine root file --->
<cfset rfile = 'fms'>

<!--- NGL:: Determine system directory file --->
<cfset systemdir = 'fms'>
<cfset ReportDir = 'fms'>

<!--- NGL:: Retreive FMS report from database --->
<cfquery name="GetReportName" datasource="OnlineReports">
	SELECT ReportName, ReptFreqCode, ReptFileName, reportid
	FROM #rfile#ReportName
	where reptfilename LIKE 'DA'
</cfquery>

<cfset reqcopy = 'N'> <!--- use this set to 'Y' to copy a group of reports to the copies directory --->
<cfset nbr_report_result = 0>
<cfset CurrentYear = #Year(now())#>
<cfset FromYear = #right(form.startMonth, 4)#>
<cfset ToYear = #right(form.endMonth, 4)#>

<!--- NGL::BEGIN::new variables --->
<cfset FromDate = #form.startMonth#>
<cfset ToDate = #form.endMonth#>
<cfset FromDoy = DayOfYear(#FromDate#)>
<cfset ToDoy = DayOfYear(#ToDate#)>
<!--- NGL::END::new variables --->

<!--- NGL:: Perform search only if date range is no more than a year --->
<cfset daterange =  Val(ToYear) - Val(FromYear)>
<cfif daterange lte 1>	
	<!--- NGL::BEGIN:: Detection of the period range starting in the previous year and create intermediary starting and ending dates --->
	<cfif Val(FromYear) lt Val(ToYear)>
		<cfset IntermediaryToDate = "12/31/" & "#FromYear#">
		<cfset IntermediaryToDoy = DayOfYear(#IntermediaryToDate#)>
		<cfset IntermediaryFromDate = "01/01/" & "#ToYear#">
		<cfset IntermediaryFromDoy = DayOfYear(#IntermediaryFromDate#)>
		</cfif>
		<!--- NGL::END:: : Detection of the period range starting in the previous year and create intermediary starting and ending dates --->
		
		<cfset julian = #datepart('Y', form.startMonth)#>
		<cfset searchYear = '#fromYear#'>
		
		<cfif datepart('d', form.startMonth) lt 10>
		<cfset StartDay = #left(form.startMonth, 2)# & #mid(form.startMonth, 5, 1)#>
		<cfelse>
		<cfset StartDay = #left(form.startMonth, 2)# & #mid(form.startMonth, 4, 2)#>
		</cfif>
	
		<cfset startsearchday = Startday>
		
		<cfif datepart('d', form.endMonth) lt 10>
		<cfset endDay = #left(form.endMonth, 2)# & #mid(form.endMonth, 5, 1)#>
		<cfelse>
		<cfset endDay = #left(form.endMonth, 2)# & #mid(form.endMonth, 5, 2)#>
		</cfif>
		<!--- NGL::BEGIN:: new variable for months --->
		<cfif datepart('m', form.startMonth) lt 10>
		<cfset FromMonth = "0" & datepart('m', form.startMonth)>
		<cfelse>
		<cfset FromMonth = datepart('m', form.startMonth)>
		</cfif>
		<cfif datepart('m', form.endMonth) lt 10>
		<cfset ToMonth = "0" & datepart('m', form.endMonth)>
		<cfelse>
		<cfset ToMonth = datepart('m', form.endMonth)>
		</cfif>
		<!--- NGL::END:: new variable for months --->
		<cfset session.system = '#url.report#'>
		
		<!--- NGL:: Determine root directory --->
		<!--- NGL:: REAL ONE ---><cfset RootDir = "d:\Reports\Docs\#ReportDir#\">
		<!--- NGL:: LOCAL ONE <cfset rootdir = "c:\cfusionmx7\wwwroot\my_test_environment\onlinereport\report\#ReportDir#">--->
			
		<!--- Logic: --->
		<cfset counter = 0>
		<cfif Val(FromYear) lt Val(ToYear)>
		<!--- <li>NGL:: BEGIN:: Loop from #FromDoy# to #IntermediaryToDoy# in #FromYear#</li> --->
		<cfloop index="dayscount" from="#FromDoy#" to="#IntermediaryToDoy#" step="1">
		<!--- NGL:: BEGIN:: Format month properly for report retreival --->
		<cfset month = month(#dayscount#)>
		<cfif month lt 10>
			<cfset Month2 = "0" & Month>
		<cfelse>
			<cfset Month2 = Month>
		</cfif>
		<!--- NGL:: BEGIN:: Format Day of the Month properly for report retreival --->
		<cfset month = day(#dayscount#)>
		<cfif Month_Day lt 10>
			<cfset Month_Day2 = "0" & Month_Day>
		<cfelse>
			<cfset Month_Day2 = Month_Day>	
		</cfif>
		<!--- NGL:: BEGIN:: Format Day of the Year properly for report retreival --->
		<cfif dayscount lt 10>
			<cfset Doy2 = "00" & dayscount>
		<cfelseif dayscount LT 100>
			<cfset Doy2 = "0" & dayscount>
		</cfif>
		<!--- NGL:: BEGIN:: Format year properly for report retreival --->
		<cfset Year2 = RemoveChars("#FromYear#", 1, 2)>
		<!--- NGL:: BEGIN:: Format directory structure of date for report retreival --->
		<cfset ReptDate = #Month2# & #Month_Day2# & #Year2# & "." & #Doy2#>
		<cfdirectory action="list" name="content" directory="#rootdir##FromYear#\#ReptRegion#\DA\#ReptDate#\" filter="*.RTF">
		<cfset counter = counter + content.recordcount>
		</cfloop>
		<!--- <li>NGL:: END:: Loop from #FromDoy# to #IntermediaryToDoy# in #FromYear#</li> --->
		
		<!--- <li>NGL:: BEGIN:: Loop from #IntermediaryFromDoy# to #ToDoy# in #ToYear#</li> --->
		<cfloop index="dayscount" from="#IntermediaryFromDoy#" to="#ToDoy#" step="1">
		<!--- NGL:: BEGIN:: Format month properly for report retreival --->
		<cfset month = month(#dayscount#)>
		<cfif month lt 10>
			<cfset Month2 = "0" & Month>
		<cfelse>
			<cfset Month2 = Month>
		</cfif>
		<!--- NGL:: BEGIN:: Format Day of the Month properly for report retreival --->
		<cfset month = day(#dayscount#)>
		<cfif Month_Day lt 10>
			<cfset Month_Day2 = "0" & Month_Day>
		<cfelse>
			<cfset Month_Day2 = Month_Day>	
		</cfif>
		<!--- NGL:: BEGIN:: Format Day of the Year properly for report retreival --->
		<cfif dayscount lt 10>
			<cfset Doy2 = "00" & dayscount>
		<cfelseif dayscount LT 100>
			<cfset Doy2 = "0" & dayscount>
		</cfif>
		<!--- NGL:: BEGIN:: Format year properly for report retreival --->
		<cfset Year2 = RemoveChars("#ToYear#", 1, 2)>
		<!--- NGL:: BEGIN:: Format directory structure of date for report retreival --->
		<cfset ReptDate = #Month2# & #Month_Day2# & #Year2# & "." & #Doy2#>
		<cfdirectory action="list" name="content" directory="#rootdir##ToYear#\#ReptRegion#\DA\#ReptDate#\" filter="*.RTF">
		<cfset counter = counter + content.recordcount>
		</cfloop>
		<!--- <li>NGL:: END:: Loop from #IntermediaryFromDoy# to #ToDoy# in #ToYear#</li> --->
		
	<!--- We are in the same year --->
	
	<cfelseif  Val(FromYear) eq Val(ToYear)>
		<!--- <li>NGL:: BEGIN:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
		<cfloop index="dayscount" from="#FromDoy#" to="#ToDoy#">
		<!--- NGL:: BEGIN:: Format month properly for report retreival --->
		<cfset month = month(#dayscount#)>
		<cfif month lt 10>
			<cfset Month2 = "0" & Month>
		<cfelse>
			<cfset Month2 = Month>
		</cfif>
		<!--- NGL:: BEGIN:: Format Day of the Month properly for report retreival --->
		<cfset Month_Day = day(#dayscount#)>
		<cfif Month_Day lt 10>
			<cfset Month_Day2 = "0" & Month_Day>
		<cfelse>
			<cfset Month_Day2 = Month_Day>	
		</cfif>
		<!--- NGL:: BEGIN:: Format Day of the Year properly for report retreival --->
		<cfset doy2 = dayscount>
		<cfif doy2 lt 10>
			<cfset Doy2 = "00" & doy2>
		<cfelseif doy2 LT 100>
			<cfset Doy2 = "0" & doy2>
		</cfif>
		
		<!--- NGL:: BEGIN:: Format year properly for report retreival --->
		<cfset Year2 = RemoveChars("#ToYear#", 1, 2)>
		<!--- NGL:: BEGIN:: Format directory structure of date for report retreival --->
		<cfset ReptDate = #Month2# & #Month_Day2# & #Year2# & "." & #Doy2#>
		<cfdirectory action="list" name="content" directory="#rootdir##ToYear#\#ReptRegion#\DA\#ReptDate#\" filter="*.RTF">
		<cfset counter = counter + content.recordcount><cfoutput>#rootdir##ToYear#\#ReptRegion#\DA\#ReptDate#\<br></cfoutput>
		<cfset doy2 = doy2 + 1>
		</cfloop>
		<!--- <li>NGL:: END:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
	</cfif>
	<cfset nbr_report_result = counter>
</cfif>