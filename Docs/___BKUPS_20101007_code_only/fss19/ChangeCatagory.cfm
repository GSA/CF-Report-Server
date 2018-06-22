<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<CFIF #ParameterExists(catagoryCode)# IS "YES">
<CFset client.Reportcatagory = "#catagoryCode#">
</CFIF>

<HEAD>
	<TITLE>Post a category Change</TITLE>

<script language="JavaScript">

function LinkTo()
 			{
				var target = "_top"	
				var xurl = "indexa.cfm"
				window.open(xurl,target)
 			}
</script>

</HEAD>

<body onLoad="LinkTo()">



</BODY>
</HTML>
