<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<CFQUERY NAME="CALENDAR" DATASOURCE="OMC">
	SELECT A.YEAR, A.MONTH, A.MONTH_DAY, A.WEEK_DAY, 0 AS CNT, A.THE_DATE
	FROM CALENDAR A
	WHERE YEAR=#ActiveYear#
		AND A.MONTH=#ActiveMonth#
	GROUP BY A.YEAR, A.MONTH, A.MONTH_DAY, A.WEEK_DAY, A.THE_DATE
</CFQUERY>
<cfoutput><cfdump var="CALENDAR"></cfoutput>
<html>
<head>
	<title>Untitled</title>
</head>

<body>



</body>
</html>
