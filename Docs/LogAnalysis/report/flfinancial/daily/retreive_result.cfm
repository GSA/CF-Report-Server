<cfoutput>
<!--- NGL:: BEGIN:: Determine which report to display --->
<cfif form.reportlevel eq 1><!--- Tier 1 --->
	<cfquery name="qy_GetReportTier" datasource="OnLineReports">
		select	ReptFileName from FLreportname
		Where tier  = <cfqueryPARAM value = "#form.reportlevel#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfloop query="qy_GetReportTier">
		<cfset compdate = month2 & qy_GetReportTier.ReptFileName>
		<cfdirectory action="list" directory="#session.directory#" name="contents" filter="#compdate#*.xls" sort="name">
		<!--- NGL:: Counter increment --->
		<cfif contents.recordcount gt 0>
			<cfloop query="contents">
				<cfif compdate is Replace("#contents.name#", ".xls", "")>
				<cfset FileName1 = Replace("#contents.name#", ".xls", "")>
				<cfset FileName = RemoveChars(FileName1,1,2)>
				<cfquery name="getreport" datasource="OnLineReports">
					select	* from FLreportname
					Where reptfilename LIKE <cfqueryPARAM value = "#FileName#" cfsqltype="cf_sql_varchar">
				</cfquery>
					<!--- NGL:: BEGIN:: determine = last date modified --->
					<cfset filedate = contents.dateLastModified>
					<cfset ReportNm = UCase(#getreport.reportname#)>
				<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
					<td class="content" width="10%" align="center">#getreport.ReptFreqCode#</td>
					<td class="content" width="10%" align="center">#filedate#</td>
					<td class="content" width="22%" align="center">							
					<cfif trim(session.browserName) IS 'MSIE'>
						<a href="#session.linkurl##contents.name#" target="_new">#FileName1#</a>
					<cfelse>
						<a href="#session.linkurl##contents.name#">#FileName1#</a>					
					</cfif>
					</td>
					<td class="content" width="43%">#ReportNm#</td>
					<td class="content" width="15%" align="right">#LSNumberFormat(size, ",")#</td>
				</tr>
				</cfif>	
			</cfloop>
		</cfif>	
	</cfloop>
<cfelseif form.reportlevel eq 2><!--- Tier 2 --->
	<cfquery name="qy_GetReportTier" datasource="OnLineReports">
		select	ReptFileName from FLreportname
		Where tier  = <cfqueryPARAM value = "#form.reportlevel#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfloop query="qy_GetReportTier">
		<cfset compdate = month2 & qy_GetReportTier.ReptFileName>
		<cfdirectory action="list" directory="#session.directory#" name="contents" filter="#compdate#*.xls" sort="name">
		<!--- NGL:: Counter increment --->
		<cfif contents.recordcount gt 0>
			<cfloop query="contents">
				<cfif compdate is Replace("#contents.name#", ".xls", "")>
				<cfset FileName1 = Replace("#contents.name#", ".xls", "")>
				<cfset FileName = RemoveChars(FileName1,1,2)>
				<cfquery name="getreport" datasource="OnLineReports">
					select	* from FLreportname
					Where reptfilename LIKE <cfqueryPARAM value = "#FileName#" cfsqltype="cf_sql_varchar">
				</cfquery>
					<!--- NGL:: BEGIN:: determine = last date modified --->
					<cfset filedate = contents.dateLastModified>
					<cfset ReportNm = UCase(#getreport.reportname#)>
				<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
					<td class="content" width="10%" align="center">#getreport.ReptFreqCode#</td>
					<td class="content" width="10%" align="center">#filedate#</td>
					<td class="content" width="22%" align="center">							
					
					<cfif trim(session.browserName) IS 'MSIE'>
						<a href="#session.linkurl##contents.name#" target="_new">#FileName1#</a>
					<cfelse>
						<a href="#session.linkurl##contents.name#">#FileName1#</a>					
					</cfif>
					
					</td>
					<td class="content" width="43%">#ReportNm#</td>
					<td class="content" width="15%" align="right">#LSNumberFormat(size, ",")#</td>
				</tr>
				</cfif>	
			</cfloop>
		</cfif>	
	</cfloop>
<cfelseif form.reportlevel eq 3><!--- Tier 3 --->
	<cfquery name="qy_GetReportTier" datasource="OnLineReports">
		select	ReptFileName from FLreportname
		Where tier  = <cfqueryPARAM value = "#form.reportlevel#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfloop query="qy_GetReportTier">
		<cfset compdate = month2 & qy_GetReportTier.ReptFileName>
		<cfdirectory action="list" directory="#session.directory#" name="contents" filter="#compdate#*.xls" sort="name">
		<!--- NGL:: Counter increment --->
		<cfif contents.recordcount gt 0>
			<cfloop query="contents">
				<cfif compdate is Replace("#contents.name#", ".xls", "")>
				<cfset FileName1 = Replace("#contents.name#", ".xls", "")>
				<cfset FileName = RemoveChars(FileName1,1,2)>
				<cfquery name="getreport" datasource="OnLineReports">
					select	* from FLreportname
					Where reptfilename LIKE <cfqueryPARAM value = "#FileName#" cfsqltype="cf_sql_varchar">
				</cfquery>
					<!--- NGL:: BEGIN:: determine = last date modified --->
					<cfset filedate = contents.dateLastModified>
					<cfset ReportNm = UCase(#getreport.reportname#)>
				<tr bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
					<td class="content" width="10%" align="center">#getreport.ReptFreqCode#</td>
					<td class="content" width="10%" align="center">#filedate#</td>
					<td class="content" width="22%" align="center">							
					<cfif trim(session.browserName) IS 'MSIE'>
						<a href="#session.linkurl##contents.name#" target="_new">#FileName1#</a>
					<cfelse>
						<a href="#session.linkurl##contents.name#">#FileName1#</a>					
					</cfif>
					</td>
					<td class="content" width="43%">#ReportNm#</td>
					<td class="content" width="15%" align="right">#LSNumberFormat(size, ",")#</td>
				</tr>
				</cfif>	
			</cfloop>
		</cfif>	
	</cfloop>
</cfif>
					
</cfoutput>