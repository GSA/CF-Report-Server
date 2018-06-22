<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<CFIF IsDefined("StoreIDx")>
	<CFSET client.ReptStore = "#StoreIDx#">
</CFIF>

<HEAD>
	<TITLE>Post a Store Change</TITLE>

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
