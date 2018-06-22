<!--- NGL:: Determine root file --->
<cfset rfile = 'tass'>
<!--- NGL:: Determine system directory file --->
<cfset systemdir = "tass">
<cfset ReportDir = "tass">


<!--- NGL:: Retreive TARPS report from database --->
<cfquery name="GetReportName" datasource="OnlineReports">
	SELECT ReportName
	FROM #rfile#ReportName
	where reptfilename LIKE '#form.reportfile#'
</cfquery>

<cfset reqcopy = 'N'> <!--- use this set to 'Y' to copy a group of reports to the copies directory --->
<cfset nbr_report_result = 0>
<cfset CurrentYear = #Year(now())#>
<cfset FromYear = #right(form.startMonth, 4)#>
<cfset ToYear = #right(form.endMonth, 4)#>

<!--- NGL::BEGIN::new variables --->
<cfset FromDate = #form.startMonth#>
<cfset ToDate = #form.endMonth#>
<cfset FromDoy = DayOfYear(#form.startMonth#)>
<cfset ToDoy = DayOfYear(#form.endMonth#)>
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
	<!--- NGL:: !!!!!!!!!DISPLAY ONLY WHEN TESTING!!!!!!!!!!!!! <cfoutput>
	<li>IntermediaryToDate: #IntermediaryToDate#</li>
	<li>IntermediaryToDoy: #IntermediaryToDoy#</li>
	<li>IntermediaryFromDate: #IntermediaryFromDate#</li>
	<li>IntermediaryFromDoy: #IntermediaryFromDoy#</li>
	</cfoutput> --->
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
	<!--- NGL:: LOCAL ONE <cfset rootdir = "c:\cfusionmx7\wwwroot\my_test_environment\onlinereport\report\#ReportDir#\">--->
	
	<!--- NGL:: !!!!!!!!!DISPLAY ONLY WHEN TESTING!!!!!!!!!!!!! <cfoutput>
	<ul>
	<li>rootdir: #rootdir#</li>
	<li>CurrentYear: #CurrentYear#</li>
	<li>FromYear: #FromYear#</li>
	<li>ToYear: #ToYear#</li>
	<li>julian: #julian#</li>
	<li>searchYear: #searchYear#</li>
	<li>StartDay: #StartDay#</li>
	<li>startsearchday: #startsearchday#</li>
	<li>endDay: #endDay#</li>
	<li>FromDate: #FromDate#</li>
	<li>ToDate: #ToDate#</li>
	<li>FromDoy: #FromDoy#</li>
	<li>ToDoy: #ToDoy#</li>
	</ul>
	</cfoutput> --->
	
	<!--- Logic: --->
	<cfset counter = 0>
	<cfif Val(FromYear) lt Val(ToYear)>
	<!--- <li>NGL:: BEGIN:: Loop from #FromDoy# to #IntermediaryToDoy# in #FromYear#</li> --->
	<cfloop index="dayscount" from="#FromDoy#" to="#IntermediaryToDoy#" step="1">
	<cfset datelookup = dateformat(dayscount,"mmdd")>
	<cfset FileDatePrefix = "#datelookup#-#form.reportfile#">
	<cfdirectory action="list" name="content" directory="#rootdir#\#FromYear#\" filter="#FileDatePrefix#*">
	<cfset counter = counter + content.recordcount>
	</cfloop>
	<!--- <li>NGL:: END:: Loop from #FromDoy# to #IntermediaryToDoy# in #FromYear#</li> --->
	
	<!--- <li>NGL:: BEGIN:: Loop from #IntermediaryFromDoy# to #ToDoy# in #ToYear#</li> --->
	<cfloop index="dayscount" from="#IntermediaryFromDoy#" to="#ToDoy#" step="1">
	<cfset datelookup = dateformat(dayscount,"mmdd")>
	<cfset FileDatePrefix = "#datelookup#-#form.reportfile#">
	<cfdirectory action="list" name="content" directory="#rootdir#\#ToYear#\" filter="#FileDatePrefix#*">
	<cfset counter = counter + content.recordcount>
	</cfloop>
	<!--- <li>NGL:: END:: Loop from #IntermediaryFromDoy# to #ToDoy# in #ToYear#</li> --->
	<cfelseif  Val(FromYear) eq Val(ToYear)>
	<!--- <li>NGL:: BEGIN:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
	<cfloop index="dayscount" from="#FromDoy#" to="#ToDoy#" step="1">
	<cfset datelookup = dateformat(dayscount,"mmdd")>
	<cfset FileDatePrefix = "#datelookup#-#form.reportfile#">
	<cfdirectory action="list" name="content" directory="#rootdir#\#ToYear#\" filter="#FileDatePrefix#*">
	<cfset counter = counter + content.recordcount>
	</cfloop>
	<!--- <li>NGL:: END:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
	</cfif>
	<cfset nbr_report_result = counter>
	</cfif>
