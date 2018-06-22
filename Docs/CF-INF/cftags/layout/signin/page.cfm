<cfswitch expression="#thisTag.executionMode#">
<cfcase value= "start">
	<cfparam name="attributes.title" type="string" default="FSS Insite" />
	<!--- Start tag processing --->
  	<cfoutput>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script language="JavaScript" src="/bin/scripts/calendarpopup.js"></script>

<!-- This prints out the default stylehseets used by the DIV style calendar.
     Only needed if you are using the DIV style popup -->
<script language="JavaScript">document.write(getCalendarStyles());</script>

<!-- These styles are here only as an example of how you can over-ride the default
     styles that are included in the script itself. -->

<style>
	.TESTcpYearNavigation,
	.TESTcpMonthNavigation
			{
			background-color:##6677DD;
			text-align:center;
			vertical-align:center;
			text-decoration:none;
			color:##FFFFFF;
			font-weight:bold;
			}
	.TESTcpDayColumnHeader,
	.TESTcpYearNavigation,
	.TESTcpMonthNavigation,
	.TESTcpCurrentMonthDate,
	.TESTcpCurrentMonthDateDisabled,
	.TESTcpOtherMonthDate,
	.TESTcpOtherMonthDateDisabled,
	.TESTcpCurrentDate,
	.TESTcpCurrentDateDisabled,
	.TESTcpTodayText,
	.TESTcpTodayTextDisabled,
	.TESTcpText
			{
			font-family:arial;
			font-size:8pt;
			}
	TD.TESTcpDayColumnHeader
			{
			text-align:right;
			border:solid thin ##6677DD;
			border-width:0 0 1 0;
			}
	.TESTcpCurrentMonthDate,
	.TESTcpOtherMonthDate,
	.TESTcpCurrentDate
			{
			text-align:right;
			text-decoration:none;
			}
	.TESTcpCurrentMonthDateDisabled,
	.TESTcpOtherMonthDateDisabled,
	.TESTcpCurrentDateDisabled
			{
			color:##D0D0D0;
			text-align:right;
			text-decoration:line-through;
			}
	.TESTcpCurrentMonthDate
			{
			color:##6677DD;
			font-weight:bold;
			}
	.TESTcpCurrentDate
			{
			color: ##FFFFFF;
			font-weight:bold;
			}
	.TESTcpOtherMonthDate
			{
			color:##808080;
			}
	TD.TESTcpCurrentDate
			{
			color:##FFFFFF;
			background-color: ##6677DD;
			border-width:1;
			border:solid thin ##000000;
			}
	TD.TESTcpCurrentDateDisabled
			{
			border-width:1;
			border:solid thin ##FFAAAA;
			}
	TD.TESTcpTodayText,
	TD.TESTcpTodayTextDisabled
			{
			border:solid thin ##6677DD;
			border-width:1 0 0 0;
			}
	A.TESTcpTodayText,
	SPAN.TESTcpTodayTextDisabled
			{
			height:20px;
			}
	A.TESTcpTodayText
			{
			color:##6677DD;
			font-weight:bold;
			}
	SPAN.TESTcpTodayTextDisabled
			{
			color:##D0D0D0;
			}
	.TESTcpBorder
			{
			border:solid thin ##6677DD;
			}
</style>
</head>
<body>
	</cfoutput>
</cfcase>
<cfcase value="end">
	<!--- End tag processing --->
	<cfoutput>
</body>
</html>
	</cfoutput>
</cfcase>
</cfswitch>
