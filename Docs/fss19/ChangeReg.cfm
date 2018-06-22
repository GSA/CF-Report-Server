<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<CFIF #ParameterExists(Regionxx)# IS "YES">
	<cfset client.RegionCode = "#Regionxx#">
	<cfset session.RegionCode = "#Regionxx#">
</CFIF>


<HEAD>
	<TITLE>Post a Region Change</TITLE>

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
