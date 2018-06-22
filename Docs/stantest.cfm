<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>
<!--- <CFSET RootDir = "d:\reports\docs\fss19\2008\#DT#\0Z\"> --->

<CFSET CTR = 336>
<cfloop index="idx" list ="01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31">

	<!--- <cfset DT = 20080105.005> --->
	<cfset DT = "200812" & #idx# & "." & #CTR#>
	<CFSET CTR = CTR + 1>
<cfoutput>#DT#</cfoutput><br>
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0A\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0B\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0C\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0D\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0E\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0F\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0G\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0H\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0I\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0J\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0K\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0L\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0M\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0N\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0O\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0P\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0Q\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0R\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0S\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0T\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0U\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0V\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0W\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0X\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0Y\MC">
	<cfdirectory action="CREATE" directory="d:\reports\docs\fss19\2008\#DT#\0Z\MC">


</cfloop>	


</body>
</html>
