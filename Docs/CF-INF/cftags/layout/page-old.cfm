<cfswitch expression="#thisTag.executionMode#">
<cfcase value= "start">
	<cfparam name="attributes.title" type="string" default="FSS Insite" />
	<!--- Start tag processing --->
  	<cfoutput>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>FSS Insite</title>
<meta name="ROBOTS" content="ALL" />
<link href="/library/css/insite.css" rel="stylesheet" type="text/css" />
</head>
<body>
	</cfoutput>
</cfcase>
<cfcase value="end">
	<!--- End tag processing --->
	<cfoutput>
</body>
</html>
	</cfoutput>
</cfcase>
</cfswitch>
