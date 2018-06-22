
<CFIF IsDefined("cookie.ReptStore")>
	<CFSET client.reptstore = "#Cookie.ReptStore#">	
	<cfcookie name="reptstore" value="" expires="NOW">
<CFelseif not IsDefined("client.reptstore")>
	<CFSET Client.reptStore = 'CI'>
</CFIF>	
<CFSET StoreID = "#client.ReptStore#">







<!-- frames -->
<frameset cols="200,*" frameborder="no" border=0 framespacing="0" border="0">
    <frame name="Frame-Left" src="index-left.cfm" marginwidth="10" marginheight="10" scrolling="no" frameborder="no">
	<Frameset rows="100,*" frameborder="no" border=0 framespacing="0">
    	<frame name="Frame-top" src="Index-top.cfm" marginwidth="5" marginheight="5" scrolling="no" frameborder="no">
		<frame name="Frame-btm" src="loadCalendar.cfm" marginwidth="5" marginheight="5" scrolling="auto" frameborder="no">
	</FRAMESET><noframes></noframes>
</frameset>
