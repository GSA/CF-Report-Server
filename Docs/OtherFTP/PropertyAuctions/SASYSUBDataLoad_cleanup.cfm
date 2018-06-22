<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate bidresults from SASYSUBDATA.CSV Nightly Job - Cleanup Process</title>
	<!---  to be run as a daily scheduled task at 4:00 AM --->
</head>

<body>

		
		
	
<!--- rename/backup the csv file: --->
<CFFILE action="rename" source="D:\reports\docs\otherftp\PropertyAuctions\SASYSUBDATA.CSV"
 destination="D:\reports\docs\otherftp\PropertyAuctions\processed\SASYSUBDATA_Processed_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"hhmmss")#.csv"
 attributes="Normal">


<!--- rename/backup the log file  --->
<CFFILE action="rename" source="D:\reports\docs\otherftp\PropertyAuctions\SASYSUBDataLoad_logfile.html"
 destination="D:\reports\docs\otherftp\PropertyAuctions\logs\SASYSUBDataLoad_Log_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"hhmmss")#.html"
 attributes="Normal">


					

</body>
</html>
