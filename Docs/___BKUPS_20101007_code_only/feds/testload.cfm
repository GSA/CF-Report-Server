<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>

<cfoutput>

<CFSET loadit = "http://test.fss.gsa.gov/templates/feds/dirlist.cfm?directory=Y:\triumph\httpd-80\fss\templates\feds\reports\">



<HEAD>
	<TITLE>Load the url and go</TITLE>
<script language="JavaScript">

function LinkTo()
 			{
				var target = "_top"	
				var xurl = ""
				window.open(xurl,target)
 			}
</script>
</HEAD>

<body>
<META HTTP-EQUIV="Refresh" CONTENT="0; URL=dirlist.cfm?directory=Y:\triumph\httpd-80\fss\templates\feds\reports\">
#loadit#
</cfoutput>

</BODY>
</HTML>
