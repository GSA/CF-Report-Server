<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>testing of service</title>
</head>

<body>
<p>Testing the service call here:</p><br>
<CFINVOKE WEBSERVICE="http://reports.fss.gsa.gov/services/reports/ReportFoundService.cfc?wsdl" METHOD="reportExists" RETURNVARIABLE="myReturnString"> 
	<CFINVOKEARGUMENT NAME="reportPath" VALUE="2005\20050617.168\0A\QC\L090.RTF" />
</CFINVOKE>
reportExists("2005\20050617.168\0A\QC\L090.RTF"): <cfoutput>#myReturnString#</cfoutput><BR>


<CFINVOKE WEBSERVICE="http://reports.fss.gsa.gov/services/reports/ReportFoundService.cfc?wsdl" METHOD="reportExists" RETURNVARIABLE="myReturnString"> 
	<CFINVOKEARGUMENT NAME="reportPath" VALUE="2005\20050617.168\0A\QC\L090zz.RTF" />
</CFINVOKE>
reportExists("2005\20050617.168\0A\QC\L090zz.RTF"): <cfoutput>#myReturnString#</cfoutput><BR>

<CFINVOKE WEBSERVICE="http://reports.fss.gsa.gov/services/reports/ReportFoundService.cfc?wsdl" METHOD="reportExists" RETURNVARIABLE="myReturnString"> 
	<CFINVOKEARGUMENT NAME="reportPath" VALUE="2005\20050617.168\0A\QC\L039.CSV" />
</CFINVOKE>
reportExists("2005\20050617.168\0A\QC\L039.CSV"): <cfoutput>#myReturnString#</cfoutput><BR>

<CFINVOKE WEBSERVICE="http://reports.fss.gsa.gov/services/reports/ReportFoundService.cfc?wsdl" METHOD="reportExists" RETURNVARIABLE="myReturnString"> 
	<CFINVOKEARGUMENT NAME="reportPath" VALUE="" />
</CFINVOKE>
reportExists(""): <cfoutput>#myReturnString#</cfoutput><BR>

</body>
</html>
