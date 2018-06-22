<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>


<cfoutput>
<CFIF #ParameterExists(Month_Day)# IS "YES">

	<CFIF #Cookie.ReptFrequency# IS "Da">
		<CFSET Doy2 = #Doy#>
		<CFIF #Doy# LT 10>
			<CFSET Doy2 = "00" & #Doy#>
		<CFELSEIF #Doy# LT 100>
			<CFSET Doy2 = "0" & #Doy#>
		</CFIF>
	</CFIF>	
	<CFIF #Cookie.ReptFrequency# IS "WK">
		<CFSET ReptWeek = NumberFormat((#doy# / 7), "99")>
		<CFIF #ReptWeek# LT 10>
			<CFSET ReptDate = NumberFormat(#ReptWeek#, "09")>
		<CFELSE>
			<CFSET ReptDate = NumberFormat(#ReptWeek#, "99")>
		</CFIF>
	<CFELSE>
		<CFSET Year2 = RemoveChars("#YEAR#", 1, 2)>
		<CFIF #month# LT 10>
			<CFSET Month2 = "0" & #Month#>
		<CFELSE>
			<CFSET Month2 = #Month#>
		</CFIF>
		<CFIF #Month_Day# LT 10>
			<CFSET Month_Day2 = "0" & #Month_Day#>
		<CFELSE>
			<CFSET Month_Day2 = #Month_Day#>	
		</CFIF>
		<CFSET ReptDate = #Month2# & #Month_Day2# & #Year2# & "." & #Doy2#>
	</CFIF>
</CFIF>
<CFIF #ParameterExists(Cookie.ReptYear)# IS "YES" AND #ParameterExists(Cookie.ReptFileName)# IS "YES" AND #ParameterExists(Cookie.ReptRegion)# IS "YES" AND #ParameterExists(Cookie.ReptFrequency)# IS "YES">
	<CFSET loadit = "http://159.142.133.74/feds/" & "#ReptYear#" & "/" & "#ReptRegion#" & "/" & "#ReptFrequency#" & "/" & "#ReptDate#" & "/" & "FSS23" & "#Cookie.ReptFileName#" & ".RTF">

</CFIF>

<HEAD>
	<TITLE>Load the url and go</TITLE>
<script language="JavaScript">

function LinkTo()
 			{
				var target = "_top"	
				var xurl = "#loadit#"
				window.open(xurl,target)
 			}
</script>
</HEAD>

<body onLoad="LinkTo()">
#loadit#
</cfoutput>
</BODY>
</HTML>
