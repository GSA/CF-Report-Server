<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate MB_CAF from MB_CAF.TXT Nightly Job - Cleanup Process</title>
	<!---  to be run as a daily scheduled task at 4:40 AM --->
</head>

<body>

		
		
	

<!--- rename/backup the log file  --->
<cfset logFileLocation = "D:\reports\docs\otherftp\CSCNavy\MB_CAF_NightlyDataLoad_logfile.html">
<cfif FileExists(logFileLocation)>
	<CFFILE action="rename" source="D:\reports\docs\otherftp\CSCNavy\MB_CAF_NightlyDataLoad_logfile.html"
	 destination="D:\reports\docs\otherftp\CSCNavy\logs\MB_CAF_DATA_Log_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"hhmmss")#.html"
	 attributes="Normal">
</cfif> 


<!--- rename/backup the input txt file: --->
<cfset inputFileLocation = "D:\reports\docs\otherftp\CSCNavy\MB_CAF.TXT">
<cfif FileExists(inputFileLocation)>
	<CFFILE action="rename" source="D:\reports\docs\otherftp\CSCNavy\MB_CAF.TXT"
	 destination="D:\reports\docs\otherftp\CSCNavy\processed\MB_CAF_Processed_#dateformat(now(),"yyyymmdd")#_#timeformat(now(),"hhmmss")#.txt"
	 attributes="Normal">
</cfif> 

</body>
</html>
