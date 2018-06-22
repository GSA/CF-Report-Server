<cfswitch expression="#thisTag.executionMode#">
<cfcase value= "start">
	<cfparam name="attributes.title" type="string" default="FSS Insite" />
	<!--- Start tag processing --->
  	<cfoutput>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<title>#attributes.title#</title>
<style type="text/css">
<!--

#left-side-nav {
	width: 167px;
	float: left;
}
#content {
	float: left;
}

.table {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 10px;
	margin: 0px;
	padding: 0px;
	width: 550px;
	}
.table .th {
	 background-color: #f00;
	 color: #fff;
	 font-weight: bold;
	 border-bottom: 1px dotted #f00;
	}
.table .tr:nth-child(odd) {
	 background-color: #eee;
	}
	.table .td {
	 float: left;
	 width: 48%;
	 padding-left: 2%;
	}
#notice {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 10px;
	width: 765px;
	background-color: #003098;
}
#body {
	position: relative;
	width: 765px;
	height: 432px;
	margin-top: 0;
	margin-right: auto;
	margin-bottom: 0;
	margin-left: auto;
}
#header {
	position: relative;
	margin: 0 auto;
	width: 765px;
}
#header-rule {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	font-weight: bold;
	color: #FFFFFF;
	background-color: #003098;
}
.horizontal-rule {
	background-color: #003098;
	margin: 0px;
	padding: 0px;
}

-->
</style>
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
