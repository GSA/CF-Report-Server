<CFIF '#client.first_name#' IS NOT ""
  and '#client.last_name#' IS NOT "">
  <cfset name = #client.first_name# & ' ' & #client.last_name#>
<cfelse>
  <CFIF '#client.user#' IS NOT "">
    <cfset name = #client.user#>
  </cfif>	
</cfif>

<TABLE CELLSPACING=0 CELLPADDING=0 WIDTH="100%" BORDER=0>
  <TR>
    <TD>
      <TABLE CELLSPACING=0 CELLPADDING=0 WIDTH="100%" BORDER="0">
      <TR>
          <TD CLASS=FSSBODY HEIGHT=5><SPACER HEIGHT="5" TYPE="block"></TD>
	  </TR>
      <TR>
          <TD CLASS=FSSOUTLINE>
            <TABLE CELLSPACING=0 CELLPADDING=2 WIDTH="100%" BORDER="0">
	            <TR>
			      <CFPARAM NAME="section" DEFAULT="FSS Insite">
				  <CFIF #SECTION# EQ "FSS Insite">
					<TD CLASS=FSSCOMPHEAD WIDTH="45%">
						<CFINCLUDE TEMPLATE="InsiteScroll.cfm">
					</TD>
					<CFIF Isdefined ('cookie.insiteUser')>
				      <CFOUTPUT>
					  <TD CLASS=FSSCOMPHEAD WIDTH="55%">#name#&nbsp;
					  <A href="options.cfm" STYLE="color: White;">Edit Options</A>
						&nbsp;
					  <!---<A href="javascript: alert('Coming Soon');" STYLE="color: White;">Logout</A></TD>--->
					  <A href="logout.cfm" STYLE="color: White;">Logout</A></TD>
				      </CFOUTPUT>
					<CFELSE>
					  <TD CLASS=FSSCOMPHEAD WIDTH="49%">&nbsp;</TD>
      				</CFIF>
				 <CFELSE>
				    <TD CLASS=FSSCOMPHEAD WIDTH="51%" ALIGN="LEFT">
					   <CFOUTPUT>#section#</CFOUTPUT></TD>
					<CFIF Isdefined ('cookie.insiteUser')>
					  <CFOUTPUT>
				      <TD CLASS=FSSCOMPHEAD WIDTH="49%"> #name#&nbsp;
					  <!---<A href="options.cfm">Edit Options</A>---></TD>
				      </CFOUTPUT>
					<CFELSE>
					  <TD CLASS=FSSCOMPHEAD WIDTH="49%">&nbsp;</TD>
      				</CFIF>
				 </CFIF>	
			    </TR>
		    </TABLE>
		  </TD>
	  </TR>
