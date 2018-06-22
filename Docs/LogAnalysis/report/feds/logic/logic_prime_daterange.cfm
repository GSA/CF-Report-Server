<!--- Initialize number of result returned --->
<cfparam name="nbr_report_result" default="0" type="numeric">
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

<!--- NGL:: Determine root file --->
<cfset rfile = 'feds23'>
<cfset ReportDir = 'feds\#year(now())#'>

<cfset RootDir = "d:\Reports\Docs\#ReportDir#">
<cfset Rooturl = "#home#\#ReportDir#">

<cfif month(todate) lt 10>
<cfset emonth = "0" & "#month(todate)#">
<cfelse>
<cfset emonth = "#month(todate)#">
</cfif>
<cfif month(fromdate) lt 10>
<cfset fmonth = "0" & "#month(fromdate)#">
<cfelse>
<cfset fmonth = "#month(fromdate)#">
</cfif>

<!--- NGL:: Retreive FEDS report from database --->
<cfquery name="GetReportName" datasource="OnlineReports">
	SELECT ReportName
	FROM #rfile#ReportName
	where reptfilename LIKE '#form.reportfile#'
</cfquery>

<!--- NGL::  --->
<cfset fdate = #left(form.fromdate, 2)# & #mid(form.fromdate, 4, 2)# & #mid(form.fromdate, 9, 2)#>
<cfset tdate = #left(form.todate, 2)# & #mid(form.todate, 4, 2)# & #mid(form.todate, 9, 2)#>	

<!--- Process Special Regions NW and ASREQ --->
<cfif form.ReptRegion is 'NW' OR form.ReptRegion is 'ASREQ'>	
	<cfset rootdir = #rootdir# & '\' & #form.ReptRegion# & '\' & 'fss23'>	
	<cfset rooturl = #rooturl# & '/' & #form.ReptRegion# & '/' & 'fss23'>
	
	<cfset totalfound = 0>
	<!--- Do monthly search --->									
	<cfloop index="index" from="#fmonth#" to="#emonth#" step="1">
		<cfif index lt 10>
			<cfset index = "0#index#">
		<cfelse>
			<cfset index = "#index#">
		</cfif>
		<cfdirectory name="getdate" directory="#rootdir#\#index#" action="LIST">	<!--- grab all the files in this monthly dir --->				
			<cfloop query="getdate">
				<cfif #mid(name, 3, 1)# is '-'>
					<cfset newname = '#removechars(name, 1,3)#'>
				<cfelse>
					<cfset newname = '#name#'> 						
				</cfif>						
				<cfset newname = '#reverse(newname)#'>
				<cfset newname = '#removechars(newname, 1, 8)#'>
				<cfset newname = '#reverse(newname)#'>
				
				<cfif form.reportfile is '#newname#'>
					<cfset totalfound = #totalfound# + 1>
				</cfif>
			</cfloop>		
	</cfloop>				 
	<cfset nbr_report_result = totalfound>	

<!--- Process All other Regions --->			
<cfelse>
<cfset reqcopy = 'N'> <!--- use this set to 'Y' to copy a group of reports to the copies directory --->
<cfset nbr_report_result = 0>
<cfset CurrentYear = #Year(now())#>
<cfset FromYear = #right(form.fromdate, 4)#>
<cfset ToYear = #right(form.ToDate, 4)#>

<!--- NGL::BEGIN::new variables --->
<cfset FromDate = #form.fromdate#>
<cfset ToDate = #form.todate#>
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
	<cfset julian = #datepart('Y', form.fromdate)#>
	<cfset searchYear = '#fromYear#'>
	
	<cfif datepart('d', form.fromdate) lt 10>
	<cfset StartDay = #left(form.fromdate, 2)# & #mid(form.fromdate, 5, 1)#>
	<cfelse>
	<cfset StartDay = #left(form.fromdate, 2)# & #mid(form.fromdate, 4, 2)#>
	</cfif>
	
	<cfset startsearchday = Startday>
	
	<cfif datepart('d', form.todate) lt 10>
	<cfset endDay = #left(form.todate, 2)# & #mid(form.todate, 5, 1)#>
	<cfelse>
	<cfset endDay = #left(form.todate, 2)# & #mid(form.todate, 5, 2)#>
	</cfif>
	<!--- NGL::BEGIN:: new variable for months --->
	<cfif datepart('m', form.fromdate) lt 10>
	<cfset FromMonth = "0" & datepart('m', form.fromdate)>
	<cfelse>
	<cfset FromMonth = datepart('m', form.fromdate)>
	</cfif>
	<cfif datepart('m', form.todate) lt 10>
	<cfset ToMonth = "0" & datepart('m', form.todate)>
	<cfelse>
	<cfset ToMonth = datepart('m', form.todate)>
	</cfif>
	<!--- NGL::END:: new variable for months --->
	<cfset session.system = '#url.report#'>
	
	
	<!--- NGL:: Determine root file --->
	<cfset ReportDir = 'feds'>
	<cfset ReportDate = '\'>
	<!--- NGL:: Determine root directory --->
	<!--- NGL:: REAL ONE ---><cfset RootDir = "d:\Reports\Docs\#ReportDir#">
	<!--- NGL:: LOCAL ONE <cfset rootdir = "c:\cfusionmx7\wwwroot\my_test_environment\onlinereport\report\#ReportDir#\">--->
		<cfset linkurl = "#home#/#ReportDir#">
	<!--- Logic: --->
	<cfset counter = 0>
	<cfif Val(FromYear) lt Val(ToYear)>
	<!--- <li>NGL:: BEGIN:: Loop from #FromDoy# to #IntermediaryToDoy# in #FromYear#</li> --->
	<cfloop index="dayscount" from="#FromDoy#" to="#IntermediaryToDoy#" step="1">
	<cfset doy = dayscount + 1>
	<cfset datelookup = "#dateformat(doy,"mmdd")#"&"#removeChars(FromYear, 1, 2)#">
	<cfif dayscount lt 10>
	<cfset dayscount = ".00"&"#dayscount#">
	<cfelse>
	<cfset dayscount = ".0"&"#dayscount#">
	</cfif>
	
	<cfset FileDatePrefix = "#form.reportfile#">
	<cfdirectory action="list" name="content" directory="#rootdir#\#FromYear#\#form.ReptRegion#\fss23\#datelookup##dayscount#\" filter="#FileDatePrefix#*">
	<cfset counter = counter + content.recordcount>
	</cfloop>
	<!--- <li>NGL:: END:: Loop from #FromDoy# to #IntermediaryToDoy# in #FromYear#</li> --->
	
	<!--- <li>NGL:: BEGIN:: Loop from #IntermediaryFromDoy# to #ToDoy# in #ToYear#</li> --->
	<cfloop index="dayscount" from="#IntermediaryFromDoy#" to="#ToDoy#">
	<cfset doy = dayscount + 1>
	<cfset datelookup = "#dateformat(doy,"mmdd")#"&"#removeChars(ToYear, 1, 2)#">
	<cfif dayscount lt 10>
	<cfset dayscount = ".00"&"#dayscount#">
	<cfelse>
	<cfset dayscount = ".0"&"#dayscount#">
	</cfif>
	<cfset FileDatePrefix = "#form.reportfile#">
	<cfdirectory action="list" name="content" directory="#rootdir#\#ToYear#\#form.ReptRegion#\fss23\#datelookup##dayscount#\" filter="#FileDatePrefix#*">
	<cfset counter = counter + content.recordcount>
	</cfloop>
	<!--- <li>NGL:: END:: Loop from #IntermediaryFromDoy# to #ToDoy# in #ToYear#</li> --->
	<cfelseif  Val(FromYear) eq Val(ToYear)>
	<!--- <li>NGL:: BEGIN:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
	<cfloop index="dayscount" from="#FromDoy#" to="#ToDoy#">
	<cfset doy = dayscount + 1>
	<cfset datelookup = "#dateformat(doy,"mmdd")#"&"#removeChars(FromYear, 1, 2)#">
	<cfif dayscount lt 10>
	<cfset dayscount = ".00"&"#dayscount#">
	<cfelse>
	<cfset dayscount = ".0"&"#dayscount#">
	</cfif>
	<cfset FileDatePrefix = "#form.reportfile#">
	<cfdirectory action="list" name="content" directory="#rootdir#\#FromYear#\#form.ReptRegion#\fss23\#datelookup##dayscount#\" filter="#FileDatePrefix#*">
	<cfset counter = counter + content.recordcount>
	</cfloop>
	<!--- <li>NGL:: END:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
	</cfif>
	<cfset nbr_report_result = counter>
	</cfif>
</cfif>	


