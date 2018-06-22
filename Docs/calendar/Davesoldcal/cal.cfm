<CFINCLUDE TEMPLATE="conf.cfm">

<CFSET #PageTitle# = "">
<CFSET #HelpName# = "Calendar">
<CFSET #HelpFile# = "CalendarHelp.cfm">

<CFIF #ParameterExists(URL.Month)# IS "Yes">
	<CFSET #ActiveMonth# = #URL.Month#>
	<CFSET #ActiveDay# = #URL.Month_Day#>
	<CFSET #ActiveYear# = #URL.Year#>
<CFELSE>
	<CFSET #ActiveMonth# = #FORM.Month#>
	<CFSET #ActiveYear# = #FORM.Year#>
	<CFSET #ActiveDay# = #FORM.Month_Day#>
</CFIF>

<CFQUERY NAME="MONTH" DATASOURCE="OMC">
	SELECT Month_Desc
	FROM Month
	WHERE Month_No=#ActiveMonth#
</CFQUERY>
<cfset session.month_desc = "#month.month_desc#">
<CFQUERY NAME="CalendarYears" DATASOURCE="OMC">
	SELECT Year
	FROM Calendar
	GROUP BY Year
  ORDER BY Year
</CFQUERY>

<CFQUERY NAME="LastCalYear" DATASOURCE="OMC">
	SELECT Year
	FROM Calendar
	ORDER BY Year DESC
</CFQUERY>
<CFQUERY NAME="FirstCalYear" DATASOURCE="OMC">
	SELECT Year
	FROM Calendar
	ORDER BY Year ASC
</CFQUERY>
<HTML>

</head>
<CFOUTPUT>
<BODY BGCOLOR=#BackGroundColor# TEXT=#TextColor# LINK=#LinkColor# VLINK=#VlinkColor# ALINK=#AlinkColor#>
</CFOUTPUT>
<CENTER>
<P><BR><TABLE BORDER=5>
<TD>
    <CENTER>
    <CFSET #LeftLimitReached# = "N">
        <CFIF #ActiveYear# is #FIRSTCALYEAR.Year# AND #ActiveMonth# is 1>
            <CFSET #LeftLimitReached# = "Y">
        </CFIF>

    <CFSET #RightLimitReached# = "N">
        <CFIF #ActiveYear# is #LASTCALYEAR.Year# AND #ActiveMonth# is 12>
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
                <FORM METHOD="POST" ACTION="Cal.cfm?Month_Day=#ActiveDay#&YEAR=#TargetYearP#&MONTH=#LastMonth#">
                    <INPUT TYPE="SUBMIT" VALUE="&lt;" NAME="LEFT">
                </FORM>
            </CFOUTPUT>
        </CFIF>
    </TD>

    <TD ALIGN=CENTER VALIGN=TOP>
        <CFOUTPUT QUERY="MONTH">
            <FONT SIZE=+2><i>
                #MONTH_DESC# #ActiveYear#
            </i></FONT>
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
                <FORM METHOD="POST" ACTION="Cal.cfm?Month_Day=#ActiveDay#&YEAR=#TargetYearN#&MONTH=#NextMonth#">
                    <INPUT TYPE="SUBMIT" VALUE="&gt;" NAME="RIGHT">
                </FORM>
            </CFOUTPUT>
        </CFIF>
    </TD>
    </TR>
    </TABLE>

    <CFINCLUDE template="Calendar.cfm">

    <CFOUTPUT>
        <FORM METHOD="POST" ACTION="Cal.cfm">
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
                        <CFOUTPUT QUERY="CalendarYears">
                            <OPTION <CFIF #ActiveYear# is #YEAR#>SELECTED</CFIF>>#YEAR#</OPTION>
                        </CFOUTPUT>
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
