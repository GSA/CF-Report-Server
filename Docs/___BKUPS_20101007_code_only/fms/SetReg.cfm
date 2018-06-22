
<cfset session.regioncode = "#url.regioncode#">
<HTML>

<HEAD>
<TITLE>Fleet Reports - <cfoutput>#session.regioncode#<</cfoutput>/TITLE>
</HEAD>

<FRAMESET ROWS="100,*"
          FRAMEBORDER="0"
          BORDER=0
          FRAMESPACING="0"
          BORDER="0"
          BORDERCOLOR="#FFFFFF">
<FRAME NAME="main-top"
       SRC="banner.cfm"
       SCROLLING="No"
       FRAMEBORDER="0"
       NORESIZE
       FRAMESPACING="0"
       BORDERCOLOR="#FFFFFF">
<FRAME NAME="Frame-btm"
       <cfoutput>SRC="catagorySelect.cfm"</cfoutput>
       SCROLLING="Auto"
       FRAMEBORDER="0"
       NORESIZE
       FRAMESPACING="0"
       BORDERCOLOR="#FFFFFF">
</FRAMESET>

</HTML>
