
<!---------------------------------------------------------------------------->
<!--- Change this parameter to the Directory containing the Calendar files --->
<!---------------------------------------------------------------------------->
<cfparam name="attributes.CalendarDir" default="http://#http_host#/calendar">
<!---------------------------------------------------------------------------->
<cfparam name="attributes.Format" default="mm/dd/yyyy">
<cfparam name="attributes.size" default="10">
<cfparam name="attributes.value" default="#dateformat(NOW(),attributes.format)#">
<cfparam name="attributes.html" default="no">
<cfif attributes.html is "no">
<cfset winfile = "calendarwin" >
<cfelse>
<cfset winfile = "calendarwin_htm" >
</cfif>
<cfoutput>
<script language="JavaScript">
function popupwindow(formname,datename)
{
theValue= 'document.' + formname + '.' + datename + '.value'
UrlForPopUp = '#attributes.CalendarDir#/#winfile#.cfm?format=#urlencodedformat(attributes.Format)#&datefield=' + formname + '.' + datename
if( eval(theValue) != '') {
theValue = eval(theValue)
UrlForPopUp = UrlForPopUp + '&formdate=' + escape(theValue)
}
datewindow = window.open(UrlForPopUp, 'datewindow', 'height=220,width=200,scrollbars=1');
datewindow.focus();
}

</script>

<input type="text" name="#attributes.name#" value="#dateformat(attributes.value,attributes.format)#" SIZE=#attributes.size# >
<a href="javascript:popupwindow('#attributes.form#','#attributes.name#')" <CFIF CGI.HTTP_USER_AGENT CONTAINS "4.">onMouseover="document.img#attributes.name#.src='#attributes.CalendarDir#/images/cal2.jpg'" onMouseout="document.img#attributes.name#.src='#attributes.CalendarDir#/images/cal1.jpg'"</CFIF>><img src="#attributes.CalendarDir#/images/cal1.jpg" width=25 height=21 alt="Click Here to open the calendar" border="0" name="img#attributes.name#" align=top></A>
</cfoutput>
