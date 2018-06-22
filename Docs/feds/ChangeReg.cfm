<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<CFIF #ParameterExists(RegionNox)# IS "YES">
	<cfset client.ReptRegion = '#RegionNOx#'>
	<cfset session.ReptRegion = '#RegionNOx#'>
</CFIF>
<!--- <cfabort showerror="region = <cfoutput>#RegionNOx#</cfoutput>"> --->
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
