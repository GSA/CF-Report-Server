
<cfoutput>
<!--- Logic: --->
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
	<!--- NGL:: BEGIN:: Display result only when file exist that day --->
	<cfif content.recordcount gt 0>
	<cfloop query="content">
	<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
		<td class="content" width="10%" align="left">#GetReportName.reportname#</td>
		<td class="content" width="22%" align="center">
		<a href="#linkurl#/#FromYear#/#form.ReptRegion#/fss23/#datelookup##dayscount#/#content.name#" target="_blank">#content.name#</a>
		</td>
		<td class="content" width="53%">#dateformat(content.datelastmodified, "mm/dd/yy")#</td>
		<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
	</tr>
	</cfloop>
	</cfif>
</cfloop>
<!--- <li>NGL:: END:: Loop from #FromDoy# to #IntermediaryToDoy# in #FromYear#</li> --->

<!--- <li>NGL:: BEGIN:: Loop from #IntermediaryFromDoy# to #ToDoy# in #ToYear#</li> --->
<cfloop index="dayscount" from="#IntermediaryFromDoy#" to="#ToDoy#" step="1">
	<cfset doy = dayscount + 1>
	<cfset datelookup = "#dateformat(doy,"mmdd")#"&"#removeChars(ToYear, 1, 2)#">
	<cfif dayscount lt 10>
	<cfset dayscount = ".00"&"#dayscount#">
	<cfelse>
	<cfset dayscount = ".0"&"#dayscount#">
	</cfif>
	<cfset FileDatePrefix = "#form.reportfile#">
	<cfdirectory action="list" name="content" directory="#rootdir#\#ToYear#\#form.ReptRegion#\fss23\#datelookup##dayscount#\" filter="#FileDatePrefix#*">
	<!--- NGL:: BEGIN:: Display result only when file exist that day --->
	<cfif content.recordcount gt 0>
	<cfloop query="content">
	<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
		<td class="content" width="10%" align="left">#GetReportName.reportname#</td>
		<td class="content" width="22%" align="center">
		<a href="#linkurl#/#ToYear#/#form.ReptRegion#/fss23/#datelookup##dayscount#/#content.name#" target="_blank">#content.name#</a>
		</td>
		<td class="content" width="53%">#dateformat(content.datelastmodified, "mm/dd/yy")#</td>
		<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
	</tr>
	</cfloop>
	</cfif>
</cfloop>
<!--- <li>NGL:: END:: Loop from #IntermediaryFromDoy# to #ToDoy# in #ToYear#</li> --->
<cfelseif Val(FromYear) eq Val(ToYear)>
<!--- <li>NGL:: BEGIN:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
<cfloop index="dayscount" from="#FromDoy#" to="#ToDoy#" step="1">
	<cfset doy = dayscount + 1>
	<cfset datelookup = "#dateformat(doy,"mmdd")#"&"#removeChars(FromYear, 1, 2)#">
	<cfif dayscount lt 10>
	<cfset dayscount = ".00"&"#dayscount#">
	<cfelse>
	<cfset dayscount = ".0"&"#dayscount#">
	</cfif>
	<cfset FileDatePrefix = "#form.reportfile#">
	<cfdirectory action="list" name="content" directory="#rootdir#\#FromYear#\#form.ReptRegion#\fss23\#datelookup##dayscount#\" filter="#FileDatePrefix#*">
	<!--- NGL:: BEGIN:: Display result only when file exist that day --->
	<cfif content.recordcount gt 0>
	<cfloop query="content">
	<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
		<td class="content" width="10%" align="left">#GetReportName.reportname#</td>
		<td class="content" width="22%" align="center">
		<a href="#linkurl#/#FromYear#/#form.ReptRegion#/fss23/#datelookup##dayscount#/#content.name#" target="_blank">#content.name#</a>
		</td>
		<td class="content" width="53%">#dateformat(content.datelastmodified, "mm/dd/yy")#</td>
		<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
	</tr>
	</cfloop>
	</cfif>
</cfloop>
<!--- <li>NGL:: END:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
</cfif>
</cfoutput>
