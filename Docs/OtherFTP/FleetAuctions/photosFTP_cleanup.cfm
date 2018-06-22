<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>photosFTP - Cleanup Process</title>
	<!---  to be run as a daily scheduled task at 4:20 AM --->
</head>

<body>

		

<!--- rename/backup the log file  --->
<CFFILE action="rename" source="D:\reports\docs\otherftp\FleetAuctions\photosFTP_logfile.html"
 destination="D:\reports\docs\otherftp\FleetAuctions\logs\photosFTP_Log_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"HHmmss")#.html"
 attributes="Normal">


					

</body>
</html>
