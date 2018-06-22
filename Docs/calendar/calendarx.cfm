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
