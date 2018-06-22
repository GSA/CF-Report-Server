
<CFMODULE NAME="StdPortalPageInsite" Homebar="False" StatusBar="False"  banner="/_images/BannerReports.jpg" TITLE="Report Search"  Topline="No" GSALogo="No" sidenavname="" Leftnav="FALSE" bottomnav="No" TabBar="TRUE">
<SCRIPT LANGUAGE="JavaScript1.2">
<!--
function LinkToSel(form)
		{	
		newSelection= (form.legacy.options[form.legacy.selectedIndex].value)
			
			var xurl = "SearchSetup.cfm?Choice=" + newSelection
			window.open(xurl,"_self")
		}
// End the hiding here.-->
</SCRIPT>
<cfif IsDefined("url.choice")>
	<cfset session.system = '#url.choice#'>
</cfif>
<cfif NOT IsDefined("session.system")>
	<cfset session.system = 'FSS19'>
</cfif>

<CFQUERY NAME="GetLEGACY" DATASOURCE="OnlineReports">
	SELECT *
	FROM Systems
	where active = 1
	ORDER BY legacyCode
</CFQUERY>

<cfif session.system is 'fss19'>
	<CFQUERY NAME="GetCatagory" DATASOURCE="OnlineReports">
		SELECT *
		FROM Fss19ReportCatagory
		ORDER BY CatagoryName
	</CFQUERY> 
	<CFQUERY NAME="GetRegion" DATASOURCE="OnlineReports">
		SELECT *
		FROM FSS19Region
		WHERE type in ('l' , 'p')
		ORDER BY Type, RegionName
	</CFQUERY>
	<cfif IsDefined("url.action") and  #url.action# is 'next'>
		<cfquery name="getreport" datasource="OnLineReports">
			select	* from fss19reportname
				where catagorycode = '#form.catagorycode#'and password is NULL
				order by reptfilename			
		</cfquery>
	</cfif>
<cfelseif session.system is 'ASPA'>
	<cfquery name="getreport" datasource="OnLineReports">
		select	* from tassreportname
			where catagorycode = 'A'				
	</cfquery>
	
<cfelseif session.system is 'TARPS'>
	<cfquery name="getreport" datasource="OnLineReports">
		select	* from tassreportname
			where catagorycode = 'T'				
	</cfquery>	
<cfelseif session.system is 'CSC'>
<cfquery name="getreport" datasource="OnLineReports">
		select	* 
		from CSCreportname	
		order by reportname					
	</cfquery>	
	<CFQUERY NAME="GetStore" DATASOURCE="OnlineReports">
		SELECT *
		FROM CSCStores
		order by country, storename
	</CFQUERY>
<cfelseif session.system is 'SASY'>
	<cfquery name="getreport" datasource="OnLineReports">
		select	* from Sasyreportname						
	</cfquery>	
	<CFQUERY NAME="GetRegion" DATASOURCE="OnlineReports">
		SELECT regionno as regioncode, regionname
		FROM SasyRegion
		order by regionchar
	</CFQUERY>
<cfelseif session.system is 'FEDS'>
	<cfquery name="getreport" datasource="OnLineReports">
		select	reptfreqcode as reportfreq, reportname, reptfilename 
		from FEDS23reportname	
		order by reptfilename					
	</cfquery>	
	<CFQUERY NAME="GetRegion" DATASOURCE="OnlineReports">
		SELECT regionno as regioncode, regionname
		FROM Region
		order by regionno
	</CFQUERY>
<cfelseif session.system is 'FMS'>
	<cfquery name="getreport" datasource="OnLineReports">
		select	reptfreqcode as reportfreq, reportname, reptfilename 
		from FMSreportname	
		order by reptfreqcode, reptfilename					
	</cfquery>	
	<CFQUERY NAME="GetRegion" DATASOURCE="OnlineReports">
		SELECT regionno as regioncode, regionname
		FROM Region
		order by regionno
	</CFQUERY>
<cfelseif session.system is 'FL_Financial'>
	<cfquery name="getreport" datasource="OnLineReports">
		select tier, reptfreqcode as reportfreq, reportname, reptfilename 
		from FLreportname	
		order by tier, reptfreqcode, reptfilename					
	</cfquery>	
	<!--- <cfquery name="getmonths" datasource="OnLineReports">
		select * from months
		order by Month		
	</cfquery>	 --->
</cfif>
<cfif (IsDefined("url.action") and (#url.action# is 'next' or #url.action# is 'change'))>	
	<cfif session.system is 'FL xxxx'>
		<cfset fdate = #form.startmonth#>
		<cfset tdate = #form.endmonth#>
	<cfelse>
		<cfset fdate = #form.fromdate#>
		<cfset tdate = #form.todate#>
	</cfif>
<cfelse>
	<cfset url.action = 'Begin'>	 
	<cfset fdate = #DateFormat(Now(),"MM/DD/YYYY")#>
	<cfset tdate = #DateFormat(Now(),"MM/DD/YYYY")#>
	<cfset currentmonth = #DatePart("m", now())#>
</cfif>	

<cfif url.action is 'next' or session.system is 'SASY' or session.system is 'TARPS' or session.system is 'ASPA' or session.system is 'CSC' or session.system is 'FEDS' or session.system is 'FL_Financial'>
	<cfoutput><form action="SearchForReport.cfm?system=#session.system#" method="POST" enablecab="Yes" name="DateIn"></cfoutput> 
<cfelse>
	<form action="searchsetup.cfm?action=next" method="POST" enablecab="Yes" name="DateIn">
</cfif>	
  <p>&nbsp;</p><p>&nbsp;</p>
  <table  border="1" bordercolor="#0000ff" align="center">
  
  <tr>
		<td>
			<table align="center" width="100%"> 
				<tr>
					<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Select System to Search</font></td>				
				</tr>  
			    <tr> 
			      <td align="center">		
<!--- 				  	<select onChange="LinkToAction(mainform,this,'changepublisher&publishervar=')" name="publisher">		   --->
				  	<SELECT	NAME="legacy" Size="1" onChange="LinkToSel(this.form)">
						<cfoutput query="GetLEGACY">
						<option Value="#LegacyCode#" 
						<cfif Isdefined("session.system") and #session.system# is '#LegacyCode#'>
						 Selected
						</cfif>>#LegacyCode#</option>	
						</cfoutput>
					</select>	
				  </td>
			    </tr>			    
			</table>	
		</td>
	</tr>
  
  	<tr>
		<td>
			<table align="center" width="100%"> 
				<tr>
					<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Search Period</font></td>				
				</tr> 
				<cfif #session.system# is 'FL xxx'>
					<tr align="center"> 
				     	<td>
							<b><font color="#990000">From:&nbsp;</font></b>
						  		<SELECT	NAME="StartMonth" Size="1">			
									<cfoutput query="GetMonths">
										<Option VALUE="#Month#"
										<cfif url.action is 'next' and #form.StartMonth# is #getmonths.Month#>
										 selected>#getmonths.MonthName#
										<cfelseif url.action is 'begin' and #getmonths.Month# is currentmonth>
										 selected>#getmonths.MonthName#
										<cfelse>
											>#getmonths.MonthName#
										</cfif>
									</cfoutput>
								</select>		
						      &nbsp;<font color="#990000"><b>To&nbsp;</b></font>
							  <SELECT	NAME="EndMonth" Size="1">			
									<cfoutput query="GetMonths">
										<Option VALUE="#Month#"
										<cfif url.action is 'next' and #form.StartMonth# is #getmonths.Month#>
										 selected>#getmonths.MonthName#
										<cfelseif url.action is 'begin' and #getmonths.Month# is currentmonth>
										 selected>#getmonths.MonthName#
										<cfelse>
											>#getmonths.MonthName#
										</cfif>
									</cfoutput>
								</select>							
						</td>
				    </tr>					
				<cfelse>
				    <tr align="center"> 
				      <td><b><font color="#990000">From:&nbsp;<CF_CALENDAR NAME="fromDate" FORM="DateIn" VALUE="#fdate#"></font></b>
				      &nbsp;<font color="#990000"><b>To&nbsp;<CF_CALENDAR NAME="toDate" FORM="DateIn" VALUE="#tdate#"></b></font> </td>
				    </tr>	
				</cfif>		    
			</table>	
		</td>
	</tr> 
	<cfif session.system is 'fss19'>
		<tr>		
			<td>
				<table align="center" width="100%">  
				 	<tr>
						<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Select to Establish Report Choices</font></td>				
					</tr>  
				    <tr> 
				      <td>
							<SELECT	NAME="RegionCode" Size="1">			
								<cfoutput query="GetRegion">
									<Option VALUE="#getregion.RegionCode#"
									<cfif url.action is 'next' and #form.regioncode# is #getregion.regioncode#>
									 selected>&nbsp;#getregion.RegionCode#&nbsp;-&nbsp;#getregion.RegionName#
									<cfelse>
										>&nbsp;#getregion.RegionCode#&nbsp;-&nbsp;#getregion.RegionName#
									</cfif>
								</cfoutput>
							</select>		
						&nbsp;		
							<SELECT	NAME="CatagoryCode"	Size="1">
								<cfoutput query="Getcatagory">
									<Option VALUE="#catagoryCode#"
									<cfif url.action is 'next' and #form.catagorycode# is '#getcatagory.catagorycode#'>
										 selected>&nbsp;#catagoryCode#&nbsp;-&nbsp;#catagoryName#
									 <cfelse>
										>&nbsp;#catagoryCode#&nbsp;-&nbsp;#catagoryName#
									</cfif>	
								</cfoutput>
							</select>
						</td>
					</tr>
				</table>			
			</td>	
		</tr>
	<cfelseif session.system is 'SASY'>
		<tr>		
			<td>
				<table align="center" width="100%">  
				 	<tr>
						<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Select Region</font></td>				
					</tr>  
				    <tr> 
				      <td align="center">
							<SELECT	NAME="RegionCode" Size="1">										
								<cfoutput query="GetRegion">
									<Option VALUE="#getregion.RegionCode#"
									<cfif url.action is 'change' and #form.regioncode# is #getregion.regioncode#>
									 selected										
									</cfif>
									>&nbsp;#getregion.RegionCode#&nbsp;-&nbsp;#getregion.RegionName#
								</cfoutput>
							</select>
						</td>
					</tr>
				</table>			
			</td>	
		</tr>
	<cfelseif session.system is 'FEDS'>
		<tr>		
			<td>
				<table align="center" width="100%">  
				 	<tr>
						<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Select Region</font></td>				
					</tr>  
				    <tr> 
				      <td align="center">
							<SELECT	NAME="RegionCode" Size="1">										
								<cfoutput query="GetRegion">
									<Option VALUE="#getregion.RegionCode#"
									<cfif url.action is 'change' and #form.regioncode# is #getregion.regioncode#>
									 selected										
									</cfif>
									>&nbsp;#getregion.RegionCode#&nbsp;-&nbsp;#getregion.RegionName#
								</cfoutput>
								<option Value="ASREQ">ASREQ</option>
								<option Value="NW">NW</option>	
							</select>

						</td>
					</tr>
				</table>			
			</td>	
		</tr>	
	<cfelseif session.system is 'CSC'>
		<tr>		
			<td>
				<table align="center" width="100%">  
				 	<tr>
						<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Select Store</font></td>				
					</tr>  
				    <tr> 
				      <td align="center">
							<SELECT	NAME="StoreID" Size="1">									
								<cfoutput query="GetStore">
									<Option VALUE="#getstore.storeID#"
									<cfif url.action is 'change' and #form.StoreID# is #getstore.storeid#>
									 selected
									</cfif>
										>&nbsp;#getstore.storeid#&nbsp;-&nbsp;#getstore.storeName#								
								</cfoutput>
							</select>
						</td>
					</tr>
				</table>			
			</td>	
		</tr>	
	<cfelseif session.system is 'FMS'>
		<tr>		
			<td>
				<table align="center" width="100%">  
				 	<tr>
						<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Select Region</font></td>				
					</tr>  
				    <tr> 
				      <td align="center">
							<SELECT	NAME="RegionCode" Size="1">										
								<cfoutput query="GetRegion">
									<Option VALUE="#getregion.RegionCode#"
									<cfif url.action is 'change' or url.action is 'next' and #form.regioncode# is #getregion.regioncode#>
									 selected										
									</cfif>
									>#getregion.RegionName#
								</cfoutput>								
							</select>
							&nbsp;
							<SELECT	NAME="FreqCode" Size="1">										
								<option Value="DA" <cfif url.action is 'change' or url.action is 'next' and #form.freqcode# is 'DA'> selected </cfif>>Daily</option>
								<option Value="IE" <cfif url.action is 'change' or url.action is 'next' and #form.freqcode# is 'IE'> selected </cfif>>I & E</option>
								<option Value="MO" <cfif url.action is 'change' or url.action is 'next' and #form.freqcode# is 'MO'> selected </cfif>>Monthly</option>									
							</select>
						</td>
					</tr>
				</table>			
			</td>	
		</tr>								
	
	<cfelseif session.system is 'FL_Financial'>
		<tr>		
			<td>
				<table align="center" width="100%">  
				 	<tr>
						<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Select Report</font></td>				
					</tr>  
				    <tr> 
				    	<td>
							<SELECT	NAME="ReportFile" Size="1">									
								<cfoutput query="Getreport">
									<Option VALUE="#ReptFileName#"
										<cfif IsDefined("form.ReptFileName") and form.ReptFileName is getreport.ReptFileName>
										selected
										</cfif>									
									>Tier #tier#&nbsp;#reportName#
								</cfoutput>
							</select>
						</td>
					</tr>
				</table>			
			</td>	
		</tr>								
	</cfif>
	<cfif session.system is 'FSS19' and url.action is 'next'>
		<tr>
			<td>
				<table align="center" width="100%">  
				 	<tr>
						<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Select the Report</font></td>				
					</tr>  
					<tr>
						<td>
							<SELECT	NAME="ReportFile" Size="1">									
								<cfoutput query="Getreport">
									<Option VALUE="#ReptFileName#">#ReptFileName#, #Reportfreq#, #reportName#
								</cfoutput>
							</select>
						</td>
					</tr>
				</table>
			</td>
		<tr>
	<cfelseif session.system is 'CSC'>	
		<tr>
			<td>
				<table align="center" width="100%">  
				 	<tr>
						<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Select the Report</font></td>				
					</tr>  
					<tr>
						<td>
							<SELECT	NAME="ReportFile" Size="1">									
								<cfoutput query="Getreport">									
									<Option VALUE="#ReptFileName#">#ReptFileName#, #Reportfreq#, #reportname#
								</cfoutput>
							</select>
						</td>
					</tr>
				</table>
			</td>
		<tr>
	<cfelseif session.system is 'ASPA' or session.system is 'TARPS'>
		<tr>
			<td>
				<table align="center" width="100%">  
				 	<tr>
						<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Select the Report</font></td>				
					</tr>  
					<tr>
						<td>
							<SELECT	NAME="ReportFile" Size="1">									
								<cfoutput query="Getreport">									
									<Option VALUE="#ReptFileName#">#ReptFileName#, #Reportfreq#, #reportname#
								</cfoutput>
							</select>
						</td>
					</tr>
				</table>
			</td>
		<tr>
	<cfelseif session.system is 'SASY' or session.system is 'FEDS'>
		<tr>
			<td>
				<table align="center" width="100%">  
				 	<tr>
						<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Select the Report</font></td>				
					</tr>  
					<tr>
						<td>
							<SELECT	NAME="ReportFile" Size="1" >									
								<cfoutput query="Getreport">
									<cfset smallname = #left(#reportName#, 50)#>
									<Option VALUE="#ReptFileName#">#ReptFileName#, #Reportfreq#, #smallName#
								</cfoutput>
							</select>
							
						</td>
					</tr>
				</table>
			</td>
		<tr>			 
	<CFELSEIF session.system is 'FMS' and url.action is 'next'>
		<tr>
			<td>
				<table align="center" width="100%">  
				 	<tr>
						<td bgcolor="#0000FF" colspan="2" align="center"><font size="+1" color="#FFFFFF">Select the Report</font></td>				
					</tr>  
					<tr>
						<td>
							<SELECT	NAME="ReportFile" Size="1" >									
								<cfoutput query="Getreport">
									<cfset smallname = #left(#reportName#, 50)#>
									<Option VALUE="#ReptFileName#">#Reportfreq#, #ReptFileName#, &nbsp; &nbsp;#smallName#
								</cfoutput>
							</select>
						</td>
					</tr>
				</table>
			</td>
		<tr>		 	
	</cfif>
  	<tr> 
      <td colspan="2" align="center"> 
	  	<cfif url.action is 'begin' and (session.system is 'FSS19' or session.system is 'FMS')>
			<input type="submit" name="Submit" value="Next">					
		<cfelse>
	        <input type="Submit" value="search" name="search">
			<!--- NGL:: BEGIN:: New button to copyfile in the exportresultfolder --->
			<cfif session.system is 'FSS19'>
			<input type="submit" value="Copy to Result to Temp Folder" name="exportresult">
			</cfif>
			<!--- NGL:: END:: New button to copy file to the exportresult folder --->	
			<input type="Button" value="Reset" name="reset" onclick="javascript:document.location='searchsetup.cfm?action=begin';">
        </cfif>
		
      </td>
    </tr>
  </table>
</form>		
</cfmodule>


