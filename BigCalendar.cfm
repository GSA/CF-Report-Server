<!--- Enter Your Admin Data Here --->
<cfparam name="attributes.BackGroundColor" default="##FFFFFF">
<cfparam name="attributes.TextColor" default="##000000">
<cfparam name="attributes.LinkColor" default="##0000ff">
<cfparam name="attributes.VlinkColor" default="##0000ff">
<cfparam name="attributes.AlinkColor" default="##660099">
<cfparam name="attributes.TitleColor" default="##000000">
<cfparam name="attributes.ApplicationTitle" Default="FSS OnLine Reports">
<cfparam name="attributes.ActiveYear" default="#Year(Now())#">
<cfparam name="attributes.ActiveMonth" default="#Month(Now())#">
<cfparam name="attributes.ActiveDay" default="#Day(Now())#">
<cfparam name="attributes.linkName" default="LoadRept.cfm">
<cfparam name="attributes.targetName" default="Frame-btm">
<cfparam name="attributes.FirstYear" default="1997">
<cfset LastYear = #Year(Now())# + 1>
<CFIF #ParameterExists(URL.Month)# IS "Yes">
	<CFSET #attributes.ActiveMonth# = #URL.ActiveMonth#>
	<CFSET #attributes.ActiveDay# = #URL.ActiveDay#>
	<CFSET #attributes.ActiveYear# = #URL.ActiveYear#>
</cfif>	
<!--- 
<!--- Enter Your Site Design Information Here --->
<CFSET #BackGroundColor# = "##FFFFFF">
<CFSET #TextColor# = "##000000">
<CFSET #LinkColor# = "##0000ff">
<CFSET #VlinkColor# = "##0000ff">
<CFSET #AlinkColor# = "##660099">
<CFSET #TitleColor# = "##000000">

<!--- DO NOT EDIT BELOW THIS LINE --->
<CFSET #CUR_YEAR# = Year(#Now()#)>
<CFSET #CUR_MONTH# = Month(#Now()#)>
<CFSET #CUR_DAY# = Day(#Now()#)>

<CFSET #linkName# = "LoadRept.cfm">
<CFSET #targetName# = "Frame-btm">
<cfset First_Year = '1997'>
<cfset Last_Year = #CUR_YEAR# + 1>


<CFIF #ParameterExists(URL.Month)# IS "Yes">
	<CFSET #ActiveMonth# = #URL.Month#>
	<CFSET #ActiveDay# = #URL.Month_Day#>
	<CFSET #ActiveYear# = #URL.Year#>
<CFELSEif Isdefined("FORM.Month")>
	<CFSET #ActiveMonth# = #FORM.Month#>
	<CFSET #ActiveYear# = #FORM.Year#>
	<CFSET #ActiveDay# = #FORM.Month_Day#>
<cfelse>
	<CFSET #ActiveMonth# = #CUR_Month#>
	<CFSET #ActiveYear# = #CUR_Year#>
	<CFSET #ActiveDay# = #CUR_Day#>
</CFIF>
 --->
<!--- <CFQUERY NAME="MONTH" DATASOURCE="OMC">
	SELECT Month_Desc
	FROM Month
	WHERE Month_No=#ActiveMonth#
</CFQUERY>
<cfset session.month_desc = "> --->

<HTML>

</head>
<CFOUTPUT>
<BODY BGCOLOR=#attributes.BackGroundColor# TEXT=#attributes.TextColor# LINK=#attributes.LinkColor# VLINK=#attributes.VlinkColor# ALINK=#attributes.AlinkColor#>
</CFOUTPUT>
<CENTER>
<P><BR>
<TABLE BORDER=5>
<TD>
    <CENTER>
    <CFSET #LeftLimitReached# = "N">
	<CFIF #attributes.ActiveYear# is #attributes.FirstYear# AND #attributes.ActiveMonth# is 1>
		<CFSET #LeftLimitReached# = "Y">
	</CFIF>
    <CFSET #RightLimitReached# = "N">
	<CFIF #attributes.ActiveYear# is #LastYear# AND #attributes.ActiveMonth# is 12>
		<CFSET #RightLimitReached# = "Y">
	</CFIF>
    <TABLE BORDER=0>
    <TR>
    <TD ALIGN=CENTER  VALIGN=MIDDLE>
		<CFSET TargetYearP = #attributes.ActiveYear#>
        <CFIF #LeftLimitReached# is "N">
        	<CFOUTPUT>
			<CFSET LastMonth = #DecrementValue(attributes.ActiveMonth)#>
			<CFIF LastMonth lt 1>
				<CFSET LastMonth = 12>
				<CFSET TargetYearP = #DecrementValue(attributes.ActiveYear)#>
			</CFIF>
			<FORM METHOD="POST" ACTION="LoadCalendar.cfm?ActiveDay=#attributes.ActiveDay#&ActiveYear=#TargetYearP#&ActiveMonth=#LastMonth#">
				<INPUT TYPE=HIDDEN NAME="Modify" VALUE="Yes">
				<INPUT TYPE="SUBMIT" VALUE="&lt;" NAME="LEFT">
			</FORM>
            </CFOUTPUT>
        </CFIF>
    </TD>

    <TD ALIGN=CENTER VALIGN=TOP>
        <CFOUTPUT>
            <FONT SIZE=+2><i>#monthasstring(attributes.ActiveMonth)# #attributes.ActiveYear#</i></FONT>
        </CFOUTPUT>
    </TD>

    <TD ALIGN=CENTER VALIGN=MIDDLE>
		<CFSET TargetYearN = #attributes.ActiveYear#>
        <CFIF #RightLimitReached# is "N">
            <CFOUTPUT>
			<CFSET NextMonth = #IncrementValue(attributes.ActiveMonth)#>
			<CFIF NextMonth gt 12>
				<CFSET NextMonth = 1>
				<CFSET TargetYearN = #IncrementValue(attributes.ActiveYear)#>
			</CFIF>
			<FORM METHOD="POST" ACTION="LoadCalendar.cfm?ActiveDay=#attributes.ActiveDay#&ActiveYear=#TargetYearN#&ActiveMonth=#NextMonth#">
				<INPUT TYPE=HIDDEN NAME="Modify" VALUE="Yes">
				<INPUT TYPE="SUBMIT" VALUE="&gt;" NAME="RIGHT">
			</FORM>
            </CFOUTPUT>
        </CFIF>
    </TD>
    </TR>
    </TABLE>
	<!--- Calendar Section --->
	<CENTER>
	<TABLE BORDER=0>
	<TR>
	<TD ALIGN=CENTER COLSPAN=7><IMG SRC="images/umcday.gif"></TD>
	</TR>
	<!--- begin the days process --->
	<cfset firstofmonth = "#attributes.Activemonth#" &  "/01/" & "#attributes.Activeyear#">
	<cfset ThisDay = 0>
	<cfloop from="1" to="6" index="Week">
		<cfif ThisDay gte #Daysinmonth(firstofmonth)#>
			<cfbreak>
		<cfelse>
		<tr>
			<cfloop from="1" to="7" index="day">
				<TD ALIGN=CENTER width="50">
				<cfif (week is 1 and day LT #dayofweek(firstofmonth)#) OR (week is 5 and ThisDay GTE #Daysinmonth(firstofmonth)#) OR (week is 6 and ThisDay GTE #Daysinmonth(firstofmonth)#)>
					&nbsp;
				<cfelse>
					<cfset ThisDay = ThisDay +1>
					<cfset The_Date = '#attributes.ActiveMonth#' & '/' & '#ThisDay#' & '/' & '#attributes.Activeyear#'>
					<CFSET #Doy# = #DayOfYear(THE_DATE)#>
					<cfoutput>
					   <A HREF="#attributes.linkName#?Month_Day=#ThisDay#&Month=#NumberFormat(attributes.ActiveMonth)#&Year=#attributes.ActiveYear#&Doy=#Doy#" TARGET=#attributes.targetName#>
					   <CFIF The_Date is not '#dateFormat(now(), "MM/DD/YYYY")#'>
						 #ThisDay#</A>
						<CFELSE>
						  <IMG SRC="images/umctoday30.gif" BORDER=0></A>
						</CFIF>		
					</cfoutput>
				</cfif>
				</td>		
			</cfloop>
		</tr>
		</cfif>
	</cfloop>
	</table>
	</CENTER>
<!--- End Calendar section --->
    

     <CFOUTPUT>
    <FORM METHOD="POST" ACTION="LoadCalendar.cfm?ActiveDay=#attributes.ActiveDay#&ActiveYear=#TargetYearP#&ActiveMonth=#LastMonth#">
	<INPUT TYPE=HIDDEN NAME="Modify" VALUE="Yes">
    </CFOUTPUT>
	<TABLE BORDER=0>
		<TR>
			<TD>
				<INPUT TYPE="SUBMIT" VALUE="GoTo" NAME="GoTo">
				<SELECT NAME="MONTH" SIZE="0">
					<OPTION VALUE="1" <CFIF #attributes.ActiveMonth# is 1>SELECTED</CFIF>>January</OPTION>
					<OPTION VALUE="2" <CFIF #attributes.ActiveMonth# is 2>SELECTED</CFIF>>February</OPTION>
					<OPTION VALUE="3" <CFIF #attributes.ActiveMonth# is 3>SELECTED</CFIF>>March</OPTION>
					<OPTION VALUE="4" <CFIF #attributes.ActiveMonth# is 4>SELECTED</CFIF>>April</OPTION>
					<OPTION VALUE="5" <CFIF #attributes.ActiveMonth# is 5>SELECTED</CFIF>>May</OPTION>
					<OPTION VALUE="6" <CFIF #attributes.ActiveMonth# is 6>SELECTED</CFIF>>June</OPTION>
					<OPTION VALUE="7" <CFIF #attributes.ActiveMonth# is 7>SELECTED</CFIF>>July</OPTION>
					<OPTION VALUE="8" <CFIF #attributes.ActiveMonth# is 8>SELECTED</CFIF>>August</OPTION>
					<OPTION VALUE="9" <CFIF #attributes.ActiveMonth# is 9>SELECTED</CFIF>>September</OPTION>
					<OPTION VALUE="10" <CFIF #attributes.ActiveMonth# is 10>SELECTED</CFIF>>October</OPTION>
					<OPTION VALUE="11" <CFIF #attributes.ActiveMonth# is 11>SELECTED</CFIF>>November</OPTION>
					<OPTION VALUE="12" <CFIF #attributes.ActiveMonth# is 12>SELECTED</CFIF>>December</OPTION>
				</SELECT>
				<SELECT NAME="YEAR" SIZE="0">
					<CFloop index="year" from="#attributes.Firstyear#" step="1" to="#Lastyear#">
						<cfoutput>
						<OPTION Value="#year#" <CFIF #attributes.ActiveYear# is #YEAR#>SELECTED</CFIF>>#YEAR#</OPTION>
						</cfoutput>
					</cfloop>
				</SELECT>
			 </TD>
		</TR>
	</TABLE>
	</FORM>
   </CENTER>
</TD>
</TABLE>
<P>
</CENTER>
