<!--- <cfparam name="startRow" default="1">
	<cfparam name="EndRow" default="50"> --->	
<!--- <CFIF end lte 101>&nbsp;<CFELSE>[<STRONG><A HREF="#CGI.SCRIPT_NAME#?start=#Pstart#&end=#Pend#">Previous</A></STRONG>]</CFIF>
<CFIF end lte total>[<STRONG><A HREF="#CGI.SCRIPT_NAME#?start=#start#&end=#end#">Next</A></STRONG>]&nbsp;</CFIF>
<CFSET Pstart = start - 10>
<CFSET Pend = Pstart + 10>
<CFSET start = start + 10>
<CFSET end = start + 10> --->

<cfquery datasource="OnlineReportsSQL" name="findInfo"><!--- ReptFileName, CategoryCode, ReportName --->
	select *
	from FEDS23Reportname
	where ReptFreqCode = '#form.RTFCatItems#'
</cfquery> 

<!--- these used for looping to make next previous buttons. --->
<CFPARAM NAME="start" DEFAULT="1">
<!--- <CFPARAM NAME="end" DEFAULT="50"> --->
<CFPARAM NAME="end" DEFAULT="#findInfo.recordcount#">


<CFSET total = #findInfo.recordcount#>
<div align="center" class="title">RTF files for <cfoutput>#form.RTFItems#</cfoutput></div>
<table align="center" width="100%">
<th class="header">Category</th><th class="header">File Name</th><th class="header">Report Name</th>
<th class="header">count <cfoutput>#form.DateInfo#</cfoutput></th>
<!--- <th class="header">count 2004</th><th class="header">count 2005</th><th class="header">count 2006</th><th class="header">count 2007</th> --->
<cfoutput>
<cfloop query="findInfo"  startrow="#start#" endrow="#end#">
	<cfquery datasource="OnlineReportsSQL" name="findInfo2004"><!--- timeout="20000" datepart("yyyy", date_viewed) --->
		select count(*) as total_view2004
		from feds_LogReader	
		where yearof = '#form.DateInfo#'
		and filename like '%#ReptFileName#%'
	</cfquery>
	<!--- <cfquery datasource="OnlineReports" name="findInfo2004"><!--- timeout="20000" datepart("yyyy", date_viewed) --->
		select count(*) as total_view2004
		from feds_LogReader	
		where yearof = '2004'
		and filename like '%#ReptFileName#%'
	</cfquery>
	
	<cfquery datasource="OnlineReports" name="findInfo2005">
		select count(*) as total_view2005
		from feds_LogReader	
		where yearof = '2005'
		and filename like '%#ReptFileName#%'
	</cfquery>
	
	<cfquery datasource="OnlineReports" name="findInfo2006">
		select count(*) as total_view2006
		from feds_LogReader	
		where yearof = '2006'
		and filename like '%#ReptFileName#%'
	</cfquery>
	<cfquery datasource="OnlineReports" name="findInfo2007">
		select count(*) as total_view2007
		from feds_LogReader	
		where yearof = '2007'
		and filename like '%#ReptFileName#%'
	</cfquery> --->
				<tr  bgcolor="###iif(currentrow MOD 2,DE('F8F8F8'),DE('eeeeee'))#">
					<td align="center" class="content">#ReptFreqCode#</td>
					<td class="content">#ReptFileName#</td>
					<td class="content">&nbsp;&nbsp;#ReportName#</td>
					<cfif findInfo2004.total_view2004 is 0>
						<td align="center" class="content" style="color:FF0000">#findInfo2004.total_view2004#</td>
					<cfelse>
						<td align="center" class="content">#findInfo2004.total_view2004#</td>
					</cfif> 
					<!--- <cfif findInfo2005.total_view2005 is 0>
						<td align="center" class="content" style="color:FF0000">#findInfo2005.total_view2005# </td>
					<cfelse>
						<td align="center" class="content">#findInfo2005.total_view2005# </td>
					</cfif>	
					
					<cfif findInfo2006.total_view2006 is 0>
						<td align="center" class="content" style="color:FF0000">#findInfo2006.total_view2006# </td>
					<cfelse>
						<td align="center" class="content">#findInfo2006.total_view2006# </td>
					</cfif>	
					<cfif findInfo2007.total_view2007 is 0>
						<td align="center" class="content" style="color:FF0000">#findInfo2007.total_view2007# </td>
					<cfelse>
						<td align="center" class="content">#findInfo2007.total_view2007# </td>
					</cfif>	 --->
				</tr>	
</cfloop>
<!--- this stuff was used to loop and make next and previous buttons. --->
	<CFSET Pstart = start - 50>
	<CFSET Pend = Pstart + 50>
	<CFSET start = start + 50>
	<CFSET end = start + 50>	
	<!--- <CFIF end lte 101>&nbsp;<CFELSE>[<STRONG><A HREF="display_logfile.cfm?start=#Pstart#&end=#Pend#&submit=submit&RTFItems=#RTFItems#">Previous</A></STRONG>]</CFIF>
	<CFIF end lte total>[<STRONG><A HREF="display_logfile.cfm?start=#start#&end=#end#&submit=submit&RTFItems=#RTFItems#">Next</A></STRONG>]&nbsp;</CFIF>--->
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="display_logfile.cfm">Back to select List</a> 
</cfoutput>
 
<tr><td>&nbsp;</td></tr>
</table>

<!--- 	<cfif #startRow# is #endRow#>
		<!---<cfset startRow = startRow - 50> 	 --->
		<cfif startRow LTE 50>
		<cfelse>
			<cfset startRow = startRow - endRow + 1>
			<cfset endRow = startRow + 50>
			<a href="display_logfile.cfm?startRow=#startRow#&endRow=#endRow#&submit=submit&RTFItems=#RTFItems#">previous log reading</a>
		</cfif>
		&nbsp;&nbsp;&nbsp;
		<!---<cfset startRow = endRow + 1>
		<cfset endRow = startRow + 50>  --->
		<!--- <cfset endRow = endRow + 49> --->
		<!--- <cfset endRow = log_directory.recordcount - startRow> --->
		<cfif endRow GTE #findInfo.recordcount#>
		<cfelse>
			<cfset startRow = endRow>
			<cfset endRow = endRow + 50>
			<a href="display_logfile.cfm?startRow=#startRow#&endRow=#endRow#&submit=submit&RTFItems=#RTFItems#">next log reading</a>					
						
		</cfif>				
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="display_logfile.cfm">Back to select List</a>
	<cfabort>
	<cfelse>
		<cfset startRow = startRow + 1>
	</cfif> --->

<!--- </cfif> --->