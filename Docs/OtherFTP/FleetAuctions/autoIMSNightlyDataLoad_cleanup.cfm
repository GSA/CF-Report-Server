<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate AutoIMS Nightly Job - Cleanup Process</title>
	<!---  to be run as a daily scheduled task at 2:39 AM --->
</head>

<body>

		
		
	
<!--- rename/backup the csv file: --->
<CFFILE action="rename" source="D:\reports\docs\otherftp\FleetAuctions\dataFromIMS.csv"
 destination="D:\reports\docs\otherftp\FleetAuctions\processed\dataFromIMS_Processed_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"HHmmss")#.csv"
 attributes="Normal">


<!--- rename/backup the log file  --->
<CFFILE action="rename" source="D:\reports\docs\otherftp\FleetAuctions\autoIMSNightlyDataLoad_logfile.html"
 destination="D:\reports\docs\otherftp\FleetAuctions\logs\dataFromIMS_Log_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"HHmmss")#.html"
 attributes="Normal">


					

</body>
</html>
