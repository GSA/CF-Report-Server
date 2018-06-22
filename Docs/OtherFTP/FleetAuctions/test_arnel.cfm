<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>



<cfdirectory directory="D:\reports\docs\otherftp\FleetAuctions\processed\" action="list" name="test" 
filter="PhotoDataFromIMS_Processed_#dateformat(now(),"yyyymmdd")#*" >

<cfset photofile="">
<cfoutput query ="test">
   <cfset photofile =#name#>
</cfoutput>

<cfdirectory directory="D:\reports\docs\otherftp\FleetAuctions\processed\" action="list" name="test" 
filter="dataFromIMS_Processed_#dateformat(now(),"yyyymmdd")#*" >

<cfset datafile="">
<cfoutput query ="test">
   <cfset datafile =#name#>
</cfoutput>


<cfdirectory directory="D:\reports\docs\otherftp\FleetAuctions\FleetDataExport\" action="list" name="test" 
filter="AutoAuctions_extract_#dateformat(now(),"yyyymmdd")#*" >
<cfset autodatafile="">
<cfoutput query ="test">
   <cfset autodatafile =#name#>
</cfoutput>




<cfoutput>
<cfmail to="arnel.macatula@gsa.gov,pramod.nair@gsa.gov,ramachandrarao.nagarajan@gsa.gov" from="test" subject="AutoAuction files import">
  Files for today :#now()# 
  <cfmailparam file = "D:\reports\docs\otherftp\FleetAuctions\processed\#photofile#" type="text/plain"/>
  <cfmailparam file = "D:\reports\docs\otherftp\FleetAuctions\processed\#datafile#" type="text/plain"/>
  <cfmailparam file = "D:\reports\docs\otherftp\FleetAuctions\FleetDataExport\#autodatafile#" type="text/plain"/>
  
</cfmail>
</cfoutput>


CHECK YOUR MAIL NOW AFTER FEW SECONDS...


<body>

</body>
</html>
