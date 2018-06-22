
<CFIF PARAMETEREXISTS(SHOW)>
<HTML>
<HEAD>
	<TITLE>Calendar</TITLE>
</HEAD>

<BODY TEXT="Black" LINK="Black" VLINK="Black" ALINK="Red" background="images/bg.jpg">
<CENTER>

<!----------------------------------------------------------------------->
<!---|                                                               |--->
<!---|     Upper part of the frame containing Month/Year DropDown    |--->
<!---|     Boxes and QuickDate Navigation Bar.                       |--->
<!---|                                                               |--->
<!----------------------------------------------------------------------->

<CFIF SHOW IS "top">

<CFPARAM NAME="CurrentDate" DEFAULT="#dateformat(now())#">
<CFPARAM NAME="FormDate" DEFAULT="#CurrentDate#">
<CFPARAM NAME="ThisDate" DEFAULT="#FormDate#">

<CFOUTPUT>
<SCRIPT LANGUAGE="JavaScript">
function UpdateLowerFrame()
{
parent.bottom.document.location = 'calendarwin_htm.cfm?format=#format#&show=bottom&SelectedMonth=' + document.theForm.monthform.options[document.theForm.monthform.selectedIndex].value + '&SelectedYear=' + document.theForm.yearform.options[document.theForm.yearform.selectedIndex].value + '&datefield=#datefield#'
parent.topframe.document.location = 'calendarwin_htm.cfm?format=#format#&show=top&thisdate=' + document.theForm.monthform.options[document.theForm.monthform.selectedIndex].value + '/1/' + document.theForm.yearform.options[document.theForm.yearform.selectedIndex].value + '&datefield=#datefield#'
}
function QuickDate(JumpTo)
{
parent.document.location =  'calendarwin_htm.cfm?skip=y&format=#format#&formdate=' + JumpTo + '&datefield=#datefield#';
}
</SCRIPT>
</CFOUTPUT>
<FORM METHOD="post" NAME="theForm" ACTION="">

<SELECT NAME="monthform" SIZE="1" ONCHANGE="UpdateLowerFrame()">
<CFLOOP INDEX="month_number" FROM=1 TO=12>
<CFOUTPUT><OPTION VALUE="#month_number#" <CFIF MONTH_NUMBER IS MONTH(THISDATE)>selected</CFIF>>#MonthAsString(month_number)#</CFOUTPUT>
</CFLOOP>
</SELECT>

<SELECT NAME="yearform" SIZE="1" ONCHANGE="UpdateLowerFrame()">
<CFLOOP INDEX="year_number" FROM=1920 TO=2020>
<CFOUTPUT><OPTION VALUE="#year_number#" <CFIF YEAR_NUMBER IS YEAR(THISDATE)>selected</CFIF>>#year_number#</CFOUTPUT>
</CFLOOP>
</SELECT>

<BR>
<CFOUTPUT>
<table cellpadding=0 cellspacing=0 border=0 WIDTH=85%>
<tr>
<td align=center><A HREF="javascript:void(0)" ONCLICK="QuickDate('#dateformat(DateAdd("YYYY", "-1", ThisDate))#')" >&lt;&lt;</A></td>
<td align=center><A HREF="javascript:void(0)" ONCLICK="QuickDate('#dateformat(DateAdd("M", "-1", ThisDate))#')">&lt;</A></td>
<td align=center><A HREF="calendarwin_htm.cfm?show=close&month=#month(now())#&year=#year(now())#&day=#day(now())#&datefield=#datefield#&format=#urlencodedformat(format)#&skip=yes" >Current Date</A></td>
<td align=center><A HREF="javascript:void(0)" ONCLICK="QuickDate('#dateformat(DateAdd("M", "1", ThisDate))#')" >&gt;</A></td>
<td align=center><A HREF="javascript:void(0)" ONCLICK="QuickDate('#dateformat(DateAdd("YYYY", "1", ThisDate))#')" >&gt;&gt;</A></td>
</tr>
</table>
</CFOUTPUT>
</FORM>
</CFIF>



<!----------------------------------------------------------------------->
<!---|                                                               |--->
<!---|     Bottom part of the frame containing Days in Month         |--->
<!---|                                                               |--->
<!----------------------------------------------------------------------->

<CFIF SHOW IS "bottom">

	<CFPARAM NAME="current_date" DEFAULT="#dateformat(now())#">
	<CFPARAM NAME="FormDate" DEFAULT="#current_date#">
	<CFPARAM NAME="ThisDate" DEFAULT="#FormDate#">
	<CFPARAM NAME="SelectedMonth" DEFAULT="#month(ThisDate)#">
	<CFPARAM NAME="SelectedYear" DEFAULT="#year(ThisDate)#">
	<CFSET FIRSTDAY= SelectedMonth & "/1/" & SelectedYear >
	<CFSET LASTDAY= SelectedMonth & "/" & #DAYSINMONTH(FIRSTDAY)# & "/" & SelectedYear >
	<CFSET FIRST_NN = #DAYOFWEEK(FIRSTDAY)# - 1 >
	<CFSET LAST_NN = 7 - #DAYOFWEEK(LASTDAY)# >


		<TABLE CELLSPACING="0" CELLPADDING="0" BORDER=0 width=175 >
		<TR>
<TD ALIGN=CENTER width=25>Su</TD>
<TD ALIGN=CENTER width=25>Mo</TD>
<TD ALIGN=CENTER width=25>Tu</TD>
<TD ALIGN=CENTER width=25>We</TD>
<TD ALIGN=CENTER width=25>Th</TD>
<TD ALIGN=CENTER width=25>Fr</TD>
<TD ALIGN=CENTER width=25>Sa</TD>
		</TR>

	
		<TR>
		<CFLOOP FROM="1" TO="#first_nn#" INDEX="DayLoop">
		<TD>&nbsp;&nbsp;</TD>
		</CFLOOP>
		<CFLOOP FROM="1" TO="#daysinmonth(firstday)#" INDEX="thisday">
		<CFOUTPUT>
		<TD ALIGN=CENTER width=25>
		<CFSET INNERDATE = "#month(firstday)#/#thisday#/#year(firstday)#">
<CFIF THISDAY LT 10><cfset thisday = "0" & thisday></CFIF>
<A HREF="calendarwin_htm.cfm?show=close&month=#month(firstday)#&year=#year(firstday)#&day=#thisday#&datefield=#datefield#&format=#urlencodedformat(format)#&skip=yes" >
#thisday#</A>

</TD>

	<CFIF #DAYOFWEEK(INNERDATE)# IS 7></TR><TR></CFIF>
		</CFOUTPUT>
		</CFLOOP>
		<CFLOOP FROM="1" TO="#last_nn#" INDEX="DayLoop">
		<TD width=25>&nbsp;&nbsp;</TD>
		</CFLOOP>
		</TR>
		</TABLE>

</CFIF>

<CFIF SHOW IS "close">
<cfset thedate = CreateDate(year, month, day) >
	<CFOUTPUT>
		<SCRIPT LANGUAGE="JavaScript">
		parent.opener.document.#datefield#.value = '#dateformat(thedate,format)#'
		parent.window.close()
		</SCRIPT>
	</CFOUTPUT>
</CFIF>

</CENTER>


</BODY>
</HTML>

<CFELSE>

<cfparam name="formdate" default="#dateformat(now())#">
<cfif not isdate(FORMDATE)>
<CFSET FORMDATE ="#dateformat(now())#">
</cfif>

<cfif not parameterexists(skip)>
<CFSET FORMDATE ="#dateformat(FORMDATE,format)#">
<CFSET FORMDATE ="#dateformat(FORMDATE)#">
</cfif>
<CFOUTPUT>
<FRAMESET ROWS="58,*" FRAMEBORDER="0" BORDER=0 FRAMESPACING="0" BORDER="0">
    <FRAME NAME="topframe" SRC="calendarwin_htm.cfm?show=top&format=#urlencodedformat(format)#&formdate=#formdate#&datefield=#datefield#" MARGINWIDTH="0" MARGINHEIGHT="0" SCROLLING="No" FRAMEBORDER="0" FRAMESPACING="0">
    <FRAME NAME="bottom" SRC="calendarwin_htm.cfm?show=bottom&format=#urlencodedformat(format)#&formdate=#formdate#&datefield=#datefield#" MARGINWIDTH="0" MARGINHEIGHT="0" SCROLLING="No" FRAMEBORDER="no" FRAMESPACING="0">
</FRAMESET>
</CFOUTPUT>
</CFIF>