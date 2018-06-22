
<cfoutput>
<!--- Logic: --->
<cfif Val(FromYear) lt Val(ToYear)>
<!--- <li>NGL:: BEGIN:: Loop from #FromDoy# to #IntermediaryToDoy# in #FromYear#</li> --->
<cfloop index="dayscount" from="#FromDoy#" to="#IntermediaryToDoy#" step="1">
	
	<cfset datelookup = dateformat(dayscount,"mmdd")>
	<cfset FileDatePrefix = "#datelookup#-#Right(form.regionstore, 2)#-">
	<cfdirectory action="list" name="content" directory="#rootdir#\#FromYear#\" filter="#FileDatePrefix#*">
	<!--- NGL:: BEGIN:: Display result only when file exist that day --->
	<cfif content.recordcount gt 0>
	<cfloop query="content">
	<tr bgcolor="###iif(content.recordcount MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
		<td class="content" width="20%" align="center">#dateformat(content.datelastmodified, "mm/dd/yy")#</td>
		<td class="content" width="65%"><a href="" target="_blank">#form.reportfile# - #datelookup#</a></td>	
		<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
	</tr>
	</cfloop>
	</cfif>
</cfloop>
<!--- <li>NGL:: END:: Loop from #FromDoy# to #IntermediaryToDoy# in #FromYear#</li> --->

<!--- <li>NGL:: BEGIN:: Loop from #IntermediaryFromDoy# to #ToDoy# in #ToYear#</li> --->
<cfloop index="dayscount" from="#IntermediaryFromDoy#" to="#ToDoy#" step="1">
	<cfset datelookup = dateformat(dayscount,"mmdd")>
	<cfset FileDatePrefix = "#datelookup#-#Right(form.regionstore, 2)#-">
	<cfdirectory action="list" name="content" directory="#rootdir#\#ToYear#\" filter="#FileDatePrefix#*">
	<!--- NGL:: BEGIN:: Display result only when file exist that day --->
	<cfif content.recordcount gt 0>
	<cfloop query="content">
	<tr bgcolor="###iif(content.recordcount MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
		<td class="content" width="20%" align="center">#dateformat(content.datelastmodified, "mm/dd/yy")#</td>
		<td class="content" width="65%"><a href="" target="_blank">#form.reportfile# - #datelookup#</a></td>	
		<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
	</tr>
	</cfloop>
	</cfif>
</cfloop>
<!--- <li>NGL:: END:: Loop from #IntermediaryFromDoy# to #ToDoy# in #ToYear#</li> --->
<cfelseif Val(FromYear) eq Val(ToYear)>
<!--- <li>NGL:: BEGIN:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
<cfloop index="dayscount" from="#FromDoy#" to="#ToDoy#" step="1">
	<cfset datelookup = dateformat(dayscount,"mmdd")>
	<cfset FileDatePrefix = "#datelookup#-#Right(form.regionstore, 2)#-">
	<cfdirectory action="list" name="content" directory="#rootdir#\#ToYear#\" filter="#FileDatePrefix#*">
	<!--- NGL:: BEGIN:: Display result only when file exist that day --->
	<cfif content.recordcount gt 0>
	<cfloop query="content">
	<tr bgcolor="###iif(content.recordcount MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
		<td class="content" width="20%" align="center">#dateformat(content.datelastmodified, "mm/dd/yy")#</td>
		<td class="content" width="65%"><a href="" target="_blank">#form.reportfile# - #datelookup#</a></td>	
		<td class="content" width="15%" align="right">#LSNumberFormat(content.size, ",")#</td>
	</tr>
	</cfloop>
	</cfif>
</cfloop>
<!--- <li>NGL:: END:: Loop from #FromDoy# to #ToDoy# in #ToYear# from month number #FromMonth# to month number #ToMonth#</li> --->
</cfif>
</cfoutput>
