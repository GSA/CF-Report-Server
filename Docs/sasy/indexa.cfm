
<CFIF IsDefined("cookie.ReptRegion")>
	<cfset client.reptregion = "#cookie.ReptRegion#">
	<CfCOOKIE NAME="ReptRegion" VALUE="" expires="NOW">
<CFelseif not isdefined("client.reptregion")>
	<CFSET client.ReptRegion = "03">
</CFIF>	

<CFSET RegionNO = "#client.ReptRegion#">





<!-- frames -->
<frameset cols="200,*" frameborder="no" border=0 framespacing="0" border="0">
    <frame name="Frame-Left" src="index-left.cfm" marginwidth="10" marginheight="10" scrolling="no" frameborder="no">
	<Frameset rows="70,*" frameborder="no" border=0 framespacing="0">
    	<frame name="Frame-top" src="Index-top.cfm" marginwidth="5" marginheight="5" scrolling="no" frameborder="no">
		<frame name="Frame-btm" src="loadcalendar.cfm" marginwidth="5" marginheight="5" scrolling="auto" frameborder="no">
	</FRAMESET><noframes></noframes>
</frameset>
