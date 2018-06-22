<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>CF_CALENDAR</TITLE>
</HEAD>

<BODY>

<table width="100%"><tr><td bgcolor="dddddd">
<font face="Arial,Helvetica" size="5"><i><b>&nbsp;&nbsp;&lt;CF_CALENDAR&gt;</b></i></font>
</td></tr></table>
<form name="MyForm">
<table><tr><td>
<cf_calendar form="MyForm" name="MyDate" calendardir="." value="" FORMAT="DD-MMM-YY" ></td>
<td>
&nbsp;&nbsp;Creates an Input field inside a form With a pop-up Calendar
</td></tr></table>
</form>

<table width="100%"><tr><td bgcolor="dddddd">
<font face="Arial,Helvetica" size="3"><i><b>&nbsp;&nbsp;USAGE</b></i></font>
</td></tr></table>
<font face="Arial,Helvetica">&lt;cf_calendar form="MyForm" name="MyDate" CalendarDir="/cf/CalendarFiles" VALUE="" &gt;</td></tr></font>
<BR><BR>
<table width="100%"><tr><td bgcolor="dddddd">
<font face="Arial,Helvetica" size="3"><i><b>&nbsp;&nbsp;ATTRIBUTES</b></i></font>
</td></tr></table>
<BR>
<table border="1" cellspacing="1" cellpadding="1">
<tr>
	<td bgcolor="cccccc">ATTRIBUTE</td>
	<td bgcolor="cccccc">DESCRIPTION</td>
</tr>
<tr>
	<td>NAME</td>
	<td>[REQUIRED] Name of input field</td>
</tr>
<tr>
	<td>FORM</td>
	<td>[REQUIRED] Name of form the input field is in</td>
</tr>
<tr>
	<td>CALENDARDIR</td>
	<td>[REQUIRED<font size="1">*</font>] Location of button images & <b>calendarwin.cfm</b><br>
<font size="1">* will work without it , only it will receive images & Files from http://www.melig.co.il/cf_zone/calendar/<br>
which could take some time</font>
	</td>
</tr>
<tr>
	<td>SIZE</td>
	<td>[OPTIONAL] Size of input field (default = 5)</td>
</tr>
<tr>
	<td>VALUE</td>
	<td>[OPTIONAL] Initial value of input field  (default = Current Date)</td>
</tr>
<tr>
	<td>HTML</td>
	<td>[OPTIONAL] YES/NO - HTML Version (Default = No)</td>
</tr>
<tr>
	<td>FORMAT</td>
	<td>[OPTIONAL] A cfml DateFormat (default = mm/dd/yyyy)</td>
</tr>
</table>
<BR>

<table width="100%"><tr><td bgcolor="dddddd">
<font face="Arial,Helvetica" size="3"><i><b>&nbsp;&nbsp;COMPATIBILITY</b></i></font>
</td></tr></table>
Netscape 3.* , 4.*<br>
Explorer 4.* (Still Problems with explorer 3.*)
<BR>
<table width="100%"><tr><td bgcolor="dddddd">
<font face="Arial,Helvetica" size="3"><i><b>&nbsp;&nbsp;BUGS / FEATURE REQUESTS</b></i></font>
</td></tr></table>
<a href="mailto:shlomy@melig.co.il">shlomy@melig.co.il</a>
<BR>
<table width="100%"><tr><td bgcolor="dddddd">
<font face="Arial,Helvetica" size="3"><i><b>&nbsp;&nbsp;EXAMPLE</b></i></font>
</td></tr></table>
<a href="http://www.melig.co.il/cf_zone/calendar/calendar_readme.cfm">http://www.melig.co.il/cf_zone/calendar/calendar_readme.cfm</a>
<table width="100%"><tr><td bgcolor="dddddd">
<font face="Arial,Helvetica" size="3"><i><b>&nbsp;&nbsp;INSTALLATION</b></i></font>
</td></tr></table>
Place the file <b>calendar.cfm</b> in your CFUSION\CUSTOM TAGS directory<br>
Place the <b>calendarwin.cfm</b> & <b>images directory</b>  in any directory under your HTTP root<br>
<table width="100%"><tr><td bgcolor="dddddd">
<font face="Arial,Helvetica" size="3"><i><b>&nbsp;&nbsp;VTM INSTALLATION</b></i></font>
</td></tr></table>
<a href="http://www.Allaire.com/taggallery/vtminfo.cfm">Installing VTM (Allaire)</a>
<BR>
<table width="100%"><tr><td bgcolor="dddddd">
<font face="Arial,Helvetica" size="3"><i><b>&nbsp;&nbsp;GRAPHIC ARTIST</b></i></font>
</td></tr></table>
Nir Gavish ( Tantalum )
<BR>
<table width="100%"><tr><td bgcolor="dddddd">
<font face="Arial,Helvetica" size="3"><i><b>&nbsp;&nbsp;SPELLING</b></i></font>
</td></tr></table>
Doron Habshush( Kongo )
<BR>
</BODY>
</HTML>
