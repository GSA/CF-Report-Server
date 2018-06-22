
<CFOUTPUT>
    <CFSET #CURRENT_YEAR#=#CUR_YEAR#>
    <CFSET #CURRENT_MONTH#=#CUR_MONTH#>
    <CFSET #CURRENT_DAY#=#CUR_DAY#>
</CFOUTPUT>


<CFQUERY NAME="CALENDAR" DATASOURCE="OMC">
	SELECT A.YEAR, A.MONTH, A.MONTH_DAY, A.WEEK_DAY, 0 AS CNT, A.THE_DATE
	FROM CALENDAR A
	WHERE YEAR=#ActiveYear#
		AND A.MONTH=#ActiveMonth#
	GROUP BY A.YEAR, A.MONTH, A.MONTH_DAY, A.WEEK_DAY, A.THE_DATE
</CFQUERY>

<CENTER>

<TABLE BORDER=0>
<TR>
<TD ALIGN=CENTER COLSPAN=7><IMG SRC="images/umcday.gif"></TD>
</TR>

<CFOUTPUT QUERY="CALENDAR" GROUP="MONTH_DAY">

  <CFOUTPUT GROUP="WEEK_DAY">

        <CFIF #WEEK_DAY# is 0>
            <TR>
        </CFIF>

        <CFIF #MONTH_DAY# is 0>
            <TD ALIGN=CENTER> </TD>
        <CFELSE>
            <CFIF #MONTH_DAY# is 32>
                <TD ALIGN=CENTER> </TD>
            <CFELSE>
                <CFSET #IsToday# = "NO">
                <CFIF #YEAR# is #CURRENT_YEAR#>
                    <CFIF #MONTH# is #CURRENT_MONTH#>
                        <CFIF #MONTH_DAY# is #CURRENT_DAY#>
                            <CFSET #IsToday# = "YES">
                        </CFIF>
                    </CFIF>
                </CFIF>

                <CFSET #EVENT_NAME# = "Y">

                <!-- Non-event day draw -->

                <CFIF #EVENT_NAME# is "">
                    <CFIF #IsToday# is "NO">
                        <TD ALIGN=CENTER WIDTH=50>#NumberFormat(MONTH_DAY)#</TD>
                    <CFELSE>
                        <TD ALIGN=CENTER><IMG SRC="images/umctoday30.gif" BORDER=0></TD>
                    </CFIF>

                <!-- Event day draw (hot) -->

                <CFELSE>
                    <TD ALIGN=CENTER WIDTH=50>
                    <CFSET #Doy# = #DayOfYear(THE_DATE)#>
                    <A HREF="#linkName#?Month_Day=#Month_Day#&Month=#Month#&Year=#Year#&Doy=#Doy#" TARGET=#targetName#>
                    <CFIF #IsToday# is "NO">
                      #NumberFormat(MONTH_DAY)#</A>
                    <CFELSE>
                      <IMG SRC="images/umctoday30.gif" BORDER=0></A>
                    </CFIF>
                    
                    </TD>
                </CFIF>
            </CFIF>
        </CFIF>

        <CFIF #WEEK_DAY# is 6>
            </TR>
        </CFIF>
    </CFOUTPUT>
</CFOUTPUT>
</TABLE>


</CENTER>
