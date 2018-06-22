<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate CarInfo from SASYIFBDATA.CSV Nightly Job - Cleanup Process</title>
	<!---  to be run as a daily scheduled task at 4:20 AM --->
</head>

<body>

		
		
	
<!--- rename/backup the csv file: --->
<CFFILE action="rename" source="D:\reports\docs\otherftp\PropertyAuctions\SASYIFBDATA.CSV"
 destination="D:\reports\docs\otherftp\PropertyAuctions\processed\SASYIFBDATA_Processed_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"hhmmss")#.csv"
 attributes="Normal">


<!--- rename/backup the log file  --->
<CFFILE action="rename" source="D:\reports\docs\otherftp\PropertyAuctions\SASYIFBDATANightlyDataLoad_logfile.html"
 destination="D:\reports\docs\otherftp\PropertyAuctions\logs\SASYIFBDATA_Log_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"hhmmss")#.html"
 attributes="Normal">


					

</body>
</html>
