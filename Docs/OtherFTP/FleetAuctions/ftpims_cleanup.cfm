<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Download the dataFromIMS.csv file via FTP - Cleanup Process</title>
	<!---  to be run as a daily scheduled task at  AM --->
</head>

<body>


<!--- rename/backup the log file  --->
<CFFILE action="rename" source="D:\reports\docs\otherftp\FleetAuctions\AutoIMSFTP_logfile.html"
 destination="D:\reports\docs\otherftp\FleetAuctions\logs\AutoIMSFTP_Log_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"hhmmss")#.html"
 attributes="Normal">


</body>
</html>
