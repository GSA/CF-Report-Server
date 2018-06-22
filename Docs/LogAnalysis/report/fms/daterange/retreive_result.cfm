
<cfoutput>
<!--- Logic: --->
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
	<cfset Month_Day = day(#dayscount#)>
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
	<cfdirectory action="list" name="content" directory="#rootdir##FromYear#\#ReptRegion#\DA\#ReptDate#\">
	<cfset linkurl = "#ServerUrl##report#/#FromYear#/#ReptRegion#/DA/#ReptDate#/#content.name#">
	<cfif content.recordcount gt 0>
	<cfloop query="content">
	<!--- NGL:: Retreive FMS report Name from database --->
		
		<cfset filename = Replace("#content.name#", ".RTF", "", "ALL")>
		<cfset filename = RemoveChars("#filename#", 1, 6)>
		<cfset filename = "#Right(filename, 3)#">
		<cfquery name="GetReportFileName" datasource="OnlineReports">
			SELECT ReportName, ReptFileName, Reportid
			FROM #rfile#ReportName
			where ReptFileName LIKE '%#filename#%'<!--- #form.ReptFreqCode# --->
		</cfquery>
		<cfif GetReportFileName.recordcount gt 0>
		<tr bgcolor="###iif(content.recordcount MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
			<td class="content" width="15%"><a href="#linkurl##content.name#" target="_blank">#GetReportFileName.Reportid#</a></td>	
			<td class="content" width="40%"><a href="#linkurl##content.name#" target="_blank">#GetReportFileName.ReportName#</a></td>	
			<td class="content" width="15%"><a href="#linkurl##content.name#" target="_blank">#GetReportFileName.ReptFileName#</a></td>
			<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
		</tr>
		</cfif>
	<!--- <tr bgcolor="###iif(content.recordcount MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
		<td class="content" width="15%" align="center">#dateformat(content.datelastmodified, "mm/dd/yy")#</td>
		<td class="content" width="35%"><a href="#linkurl#" target="_blank">#content.name#</a></td>	
		<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
	</tr> --->
	</cfloop>
	</cfif>
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
	<cfset Month_Day = day(#dayscount#)>
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
	<cfdirectory action="list" name="content" directory="#rootdir##ToYear#\#ReptRegion#\DA\#ReptDate#\">
	<cfset linkurl = "#ServerUrl##report#/#FromYear#/#ReptRegion#/DA/#ReptDate#/#content.name#">
	<!--- NGL:: BEGIN:: Display result only when file exist that day --->
	<cfif content.recordcount gt 0>
	<cfloop query="content">
	<!--- NGL:: Retreive FMS report Name from database --->
	
	<cfset filename = Replace("#content.name#", ".RTF", "", "ALL")>
	<cfset filename = RemoveChars("#filename#", 1, 6)>
	<cfset filename = "#Right(filename, 3)#">
	<cfquery name="GetReportFileName" datasource="OnlineReports">
		SELECT ReportName, ReptFileName, Reportid
		FROM #rfile#ReportName
		where ReptFileName LIKE '%#filename#%'<!--- #form.ReptFreqCode# --->
	</cfquery>
	<cfif GetReportFileName.recordcount gt 0>
	<tr bgcolor="###iif(content.recordcount MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
		<td class="content" width="15%"><a href="#linkurl##content.name#" target="_blank">#GetReportFileName.Reportid#</a></td>	
		<td class="content" width="40%"><a href="#linkurl##content.name#" target="_blank">#GetReportFileName.ReportName#</a></td>	
		<td class="content" width="15%"><a href="#linkurl##content.name#" target="_blank">#GetReportFileName.ReptFileName#</a></td>
		<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
	</tr>
	</cfif>
	<!--- <tr bgcolor="###iif(content.recordcount MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
		<td class="content" width="15%" align="center">#dateformat(content.datelastmodified, "mm/dd/yy")#</td>
		<td class="content" width="35%"><a href="#linkurl#" target="_blank">#content.name#</a></td>	
		<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
	</tr> --->
	</cfloop>
	</cfif>
</cfloop>
<!--- <li>NGL:: END:: Loop from #IntermediaryFromDoy# to #ToDoy# in #ToYear#</li> --->


<!--- We are in the same year --->
<cfelseif Val(FromYear) eq Val(ToYear)>
<!--- <li>NGL:: BEGIN:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
<cfloop index="dayscount" from="#FromDoy#" to="#ToDoy#" step="1">
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
	<cfif dayscount lt 10>
		<cfset Doy2 = "00" & dayscount>
	<cfelseif dayscount LT 100>
		<cfset Doy2 = "0" & dayscount>
	</cfif>
	<!--- NGL:: BEGIN:: Format year properly for report retreival --->
	<cfset Year2 = RemoveChars("#ToYear#", 1, 2)>
	<!--- NGL:: BEGIN:: Format directory structure of date for report retreival --->
	<cfset ReptDate = #Month2# & #Month_Day2# & #Year2# & "." & #Doy2#>
	<cfdirectory action="list" name="content" directory="#rootdir##ToYear#\#ReptRegion#\DA\#ReptDate#\">
	<cfset linkurl = "#ServerUrl##report#/#FromYear#/#ReptRegion#/DA/#ReptDate#/#content.name#">
	<!--- NGL:: BEGIN:: Display result only when file exist that day --->
	<cfif content.recordcount gt 0>
	<cfloop query="content">
	<!--- NGL:: Retreive FMS report Name from database --->
	
	<cfset filename = Replace("#content.name#", ".RTF", "", "ALL")>
	<cfset filename = RemoveChars("#filename#", 1, 6)>
	<cfset filename = "#Right(filename, 3)#">
	<cfquery name="GetReportFileName" datasource="OnlineReports">
		SELECT ReportName, ReptFileName, Reportid
		FROM #rfile#ReportName
		where ReptFileName LIKE '%#filename#%'<!--- #form.ReptFreqCode# --->
	</cfquery>
	<cfif GetReportFileName.recordcount gt 0>
	<tr bgcolor="###iif(content.recordcount MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
		<td class="content" width="15%"><a href="#linkurl##content.name#" target="_blank">#GetReportFileName.Reportid#</a></td>	
		<td class="content" width="40%"><a href="#linkurl##content.name#" target="_blank">#GetReportFileName.ReportName#</a></td>	
		<td class="content" width="15%"><a href="#linkurl##content.name#" target="_blank">#GetReportFileName.ReptFileName#</a></td>
		<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
	</tr>
	</cfif>
	<!--- <tr bgcolor="###iif(content.recordcount MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
		<td class="content" width="15%" align="center">#dateformat(content.datelastmodified, "mm/dd/yy")#</td>
		<td class="content" width="35%"><a href="#linkurl#" target="_blank">#content.name#</a></td>	
		<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
	</tr> --->
	</cfloop>
	</cfif>
</cfloop>
<!--- <li>NGL:: END:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
</cfif>
</cfoutput>
