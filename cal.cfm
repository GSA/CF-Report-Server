<!--- Enter Your Admin Data Here --->
<CFSET #AdminName# = "Gerald lloyd">
<CFSET #AdminEmail# = "gerald.lloyd@gsa.gov">
<CFSET #ReceiveNotice# = "Gerald Lloyd <gerald.lloyd@gsa.gov>">
<CFSET #EMailNotification# = "Yes">
<CFSET #ApplicationTitle# = "FSS OnLine Reports">

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
<CFSET #PresentDate# = #DateFormat(Now(),'mm/dd/yy')#>
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

<HTML>

</head>
<CFOUTPUT>
<BODY BGCOLOR=#BackGroundColor# TEXT=#TextColor# LINK=#LinkColor# VLINK=#VlinkColor# ALINK=#AlinkColor#>
</CFOUTPUT>
<CENTER>
<P><BR>
<TABLE BORDER=5>
<TD>
    <CENTER>
    <CFSET #LeftLimitReached# = "N">
	<CFIF #ActiveYear# is #FIRST_YEAR# AND #ActiveMonth# is 1>
		<CFSET #LeftLimitReached# = "Y">
	</CFIF>
    <CFSET #RightLimitReached# = "N">
	<CFIF #ActiveYear# is #LAST_YEAR# AND #ActiveMonth# is 12>
		<CFSET #RightLimitReached# = "Y">
	</CFIF>
    <TABLE BORDER=0>
    <TR>
    <TD ALIGN=CENTER  VALIGN=MIDDLE>
		<CFSET TargetYearP = #ActiveYear#>
        <CFIF #LeftLimitReached# is "N">
        	<CFOUTPUT>
			<CFSET LastMonth = #DecrementValue(ActiveMonth)#>
			<CFIF LastMonth lt 1>
				<CFSET LastMonth = 12>
				<CFSET TargetYearP = #DecrementValue(ActiveYear)#>
			</CFIF>
			<FORM METHOD="POST" ACTION="cal.cfm?Month_Day=#ActiveDay#&YEAR=#TargetYearP#&MONTH=#LastMonth#">
				<INPUT TYPE="SUBMIT" VALUE="&lt;" NAME="LEFT">
			</FORM>
            </CFOUTPUT>
        </CFIF>
    </TD>

    <TD ALIGN=CENTER VALIGN=TOP>
        <CFOUTPUT QUERY="MONTH">
            <FONT SIZE=+2><i>#monthasstring(ActiveMonth)# #ActiveYear#</i></FONT>
        </CFOUTPUT>
    </TD>

    <TD ALIGN=CENTER VALIGN=MIDDLE>
		<CFSET TargetYearN = #ActiveYear#>
        <CFIF #RightLimitReached# is "N">
            <CFOUTPUT>
			<CFSET NextMonth = #IncrementValue(ActiveMonth)#>
			<CFIF NextMonth gt 12>
				<CFSET NextMonth = 1>
				<CFSET TargetYearN = #IncrementValue(ActiveYear)#>
			</CFIF>
			<FORM METHOD="POST" ACTION="cal.cfm?Month_Day=#ActiveDay#&YEAR=#TargetYearN#&MONTH=#NextMonth#">
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
	<cfset firstofmonth = "#activemonth#" &  "/01/" & "#activeyear#">
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
					<cfset The_Date = '#activeMonth#' & '/' & '#ThisDay#' & '/' & '#activeyear#'>
					<CFSET #Doy# = #DayOfYear(THE_DATE)#>
					<cfoutput>
					   <A HREF="#linkName#?Month_Day=#ThisDay#&Month=#NumberFormat(ActiveMonth)#&Year=#ActiveYear#&Doy=#Doy#" TARGET=#targetName#>
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
    <FORM METHOD="POST" ACTION="cal.cfm">
	<INPUT TYPE=HIDDEN NAME="Month_Day" VALUE="#ActiveDay#">
    </CFOUTPUT>
	<TABLE BORDER=0>
		<TR>
			<TD>
				<INPUT TYPE="SUBMIT" VALUE="GoTo" NAME="GoTo">
				<SELECT NAME="MONTH" SIZE="0">
					<OPTION VALUE="1" <CFIF #ActiveMonth# is 1>SELECTED</CFIF>>January</OPTION>
					<OPTION VALUE="2" <CFIF #ActiveMonth# is 2>SELECTED</CFIF>>February</OPTION>
					<OPTION VALUE="3" <CFIF #ActiveMonth# is 3>SELECTED</CFIF>>March</OPTION>
					<OPTION VALUE="4" <CFIF #ActiveMonth# is 4>SELECTED</CFIF>>April</OPTION>
					<OPTION VALUE="5" <CFIF #ActiveMonth# is 5>SELECTED</CFIF>>May</OPTION>
					<OPTION VALUE="6" <CFIF #ActiveMonth# is 6>SELECTED</CFIF>>June</OPTION>
					<OPTION VALUE="7" <CFIF #ActiveMonth# is 7>SELECTED</CFIF>>July</OPTION>
					<OPTION VALUE="8" <CFIF #ActiveMonth# is 8>SELECTED</CFIF>>August</OPTION>
					<OPTION VALUE="9" <CFIF #ActiveMonth# is 9>SELECTED</CFIF>>September</OPTION>
					<OPTION VALUE="10" <CFIF #ActiveMonth# is 10>SELECTED</CFIF>>October</OPTION>
					<OPTION VALUE="11" <CFIF #ActiveMonth# is 11>SELECTED</CFIF>>November</OPTION>
					<OPTION VALUE="12" <CFIF #ActiveMonth# is 12>SELECTED</CFIF>>December</OPTION>
				</SELECT>
				<SELECT NAME="YEAR" SIZE="0">
					 <CFloop index="year" from="#First_year#" step="1" to="#Last_year#">
						<cfoutput><OPTION <CFIF #ActiveYear# is #YEAR#>SELECTED</CFIF>>#YEAR#</OPTION></cfoutput>
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
