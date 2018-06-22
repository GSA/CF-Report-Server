<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate CarInfo from FMSVEHICLES.CSV Nightly Job - Cleanup Process</title>
	<!---  to be run as a daily scheduled task at 4:20 AM --->
</head>

<body>

		
		
	
<!--- rename/backup the csv file: --->
<CFFILE action="rename" source="D:\reports\docs\otherftp\FleetAuctions\FMSVEHICLES.CSV"
 destination="D:\reports\docs\otherftp\FleetAuctions\processed\FMSVEHICLES_Processed_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"HHmmss")#.csv"
 attributes="Normal">


<!--- rename/backup the log file  --->
<CFFILE action="rename" source="D:\reports\docs\otherftp\FleetAuctions\FMSNightlyDataLoad_logfile.html"
 destination="D:\reports\docs\otherftp\FleetAuctions\logs\FMSVEHICLES_Log_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"HHmmss")#.html"
 attributes="Normal">


					

</body>
</html>
