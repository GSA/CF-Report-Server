<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate MB_INV from MB_INV.TXT Nightly Job - Cleanup Process</title>
	<!---  to be run as a daily scheduled task at 4:45 AM --->
</head>

<body>

		
		
	

<!--- rename/backup the log file  --->
<cfset logFileLocation = "D:\reports\docs\otherftp\CSCNavy\MB_INV_NightlyDataLoad_logfile.html">
<cfif FileExists(logFileLocation)>
	<CFFILE action="rename" source="D:\reports\docs\otherftp\CSCNavy\MB_INV_NightlyDataLoad_logfile.html"
	 destination="D:\reports\docs\otherftp\CSCNavy\logs\MB_INV_DATA_Log_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"hhmmss")#.html"
	 attributes="Normal">
</cfif> 


<!--- rename/backup the inout txt file: --->
<cfset inputFileLocation = "D:\reports\docs\otherftp\CSCNavy\MB_INV.TXT">
<cfif FileExists(inputFileLocation)>
	<CFFILE action="rename" source="D:\reports\docs\otherftp\CSCNavy\MB_INV.TXT"
	 destination="D:\reports\docs\otherftp\CSCNavy\processed\MB_INV_Processed_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"hhmmss")#.txt"
	 attributes="Normal">
</cfif> 

</body>
</html>
