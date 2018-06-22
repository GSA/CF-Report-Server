<CFOUTPUT>
<!---
<TABLE CELLSPACING=0 CELLPADDING=5 BORDER=0>
	<TR VALIGN=TOP>
	  <TD HEIGHT="1" WIDTH="1000"><SPACER TYPE="block">
	  </TD>
	</TR>
</TABLE>--->

<table width="78%" border="0" cellspacing="0" cellpadding="0">
  <TR>
    <TD>
      <HR>
    </TD>
  </TR> 
  <TR>
    <TD CLASS=FSSCOMPBODY WIDTH="100%"></TD>
     <TABLE CELLSPACING=1 CELLPADDING=1 WIDTH="80%" BORDER=0>
        <TR>
          <TD CLASS=FSSBARLIVE ALIGN="MIDDLE" WIDTH="36%">&nbsp;
		    <CFIF client.user is 'jamesrschimmel' OR client.user is 'stevencmorris'>
              <CFSET client.end = #TimeFormat(Now(), "hh:mm:sstt")#>
              <CFSET client.start = #Replace(client.start, "AM", "", "ALL")#>
              <CFSET client.end = #Replace(client.end, "AM", "", "ALL")#>
			  <CFSET client.start = #Replace(client.start, "PM", "", "ALL")#>
			  <CFSET client.end = #Replace(client.end, "PM", "", "ALL")#>
			  <CFSET client.min = #GetToken(client.end, 2, ":")# - #GetToken(client.start, 2, ":")#>
			  <CFSET client.sec = #GetToken(client.end, 3, ":")# - #GetToken(client.start, 3, ":")#>
              <CFIF #client.sec# LT 0>
			    <CFSET client.sec = #client.sec# + 60>
			    <CFSET client.min = 0>
			 </CFIF>		
			      
			  PageLoad:&nbsp;#client.min#&nbsp;min&nbsp;#client.sec#&nbsp;sec.
			</CFIF>
		  </TD>
 
	      <td width="30%" class="FSSCOMPBODY" ALIGN="MIDDLE">
		    <CFIF ISDEFINED('INSITE')>
              <CFSET SESSION.INSITE = INSITE>
	        </CFIF>
	
		    <CFIF ISDEFINED('SESSION.INSITE')>
			    <CFIF SESSION.INSITE IS "ON">
				  <CFSET BUTTONVALUE = "ON">
				  <CFSET BUTTONVALUEO = "ON">
			    <CFELSE>
				  <CFSET BUTTONVALUE = "OFF">
				  <CFSET BUTTONVALUEO = "OFF">
			    </CFIF>
		    <CFELSE>
			  <CFSET BUTTONVALUE = "ON">
			  <CFSET BUTTONVALUEO = "ON">
		    </CFIF>

		  <A HREF="http://#host#/index.cfm">
		  <B>http://insite.fss.gsa.gov</B></A></td>
			
          <TD CLASS=FSSBARLIVE ALIGN="MIDDLE" WIDTH="36%">&nbsp;</TD>
	    </TR>		
         <TR>
          <TD ALIGN="MIDDLE" WIDTH="35%">&nbsp;</TD>
 
	      <TD CLASS=FSSCOMPBODY ALIGN="MIDDLE" WIDTH="30%" Nowrap>
		  <B>Your Single Source for FSS News and Information</TD></B></TD>
			
          <TD ALIGN="MIDDLE" WIDTH="35%">&nbsp;</TD>
	    </TR>
     </TABLE>
  </TR>
</TABLE>
</CFOUTPUT>
