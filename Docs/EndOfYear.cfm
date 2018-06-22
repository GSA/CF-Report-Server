<HTML>
<HEAD>
	<Title>Online Reports</title>	
	<META NAME="ROBOTS" Content="ALL">
	<LINK HREF="http://www.fas.gsa.gov/_includes/basic.css" REL="stylesheet" TYPE="text/css">
</HEAD>
<BODY> 		
<table width="765" border="0" cellspacing="0" cellpadding="0" align="Center">
	<TR>
	<TD>           	
		<table width="765" border="0" cellspacing="0" cellpadding="0">		
			<TR>
 				<td align="right">
					<A HREF="#content"><font color="#FFFFFF" style="font-size: xx-small;">Skip Navigation</font></A>
					&nbsp; &nbsp;<a href="http://fss.gsa.gov/viewers"><font color="#FFFFFF" style="font-size: xx-small;">Section 508 Tools</font></a><br>
				</td>
			</tr>		
			<TR>						
				<TD COLSPAN="2">
					<IMG SRC="/_images/BannerReports.jpg" WIDTH="765" HEIGHT="52" BORDER="0" ALT="GSA Flag Banner Image">
				</TD>				
			</TR>			
		</TABLE>
       </TD>
      </TR>	   
               <LINK HREF="http://insite.fas.gsa.gov/insite.css" REL="stylesheet" TYPE="text/css">
	  <TR>
		 <TD>
	         <Table width="765" border="0" cellspacing="0" cellpadding="0" align="Center">
				<TR BCOLOR="ffffff">
				    <TD CLASS=FSSBARLIVE VALIGN=TOP><IMG HEIGHT=20 
				      SRC="/_images/tab02.gif" WIDTH=10 BORDER=0>
					</TD>				    
					<TD CLASS=FSSBARLIVE ALIGN=BOTTOM WIDTH="25%">
					  <A HREF=http://insite.fas.gsa.gov/index.cfm><FONT CLASS=FSSBARLIVE>
					  <B>FAS Insite</B></FONT></A>
					</TD>
				    <TD CLASS=FSSBARDEAD VALIGN=TOP><IMG HEIGHT=20 
				      SRC="/_images/tab02.gif" WIDTH=10 BORDER=0>
					</TD>				    
					<TD CLASS=FSSBARDEAD ALIGN=BOTTOM WIDTH="25%">
					  <A HREF=http://insite.fas.gsa.gov/offices.cfm><FONT CLASS=FSSBARDEAD>
					  <B>FAS Offices</B></FONT></A>
					</TD>
				    <TD CLASS=FSSBARDEAD VALIGN=TOP><IMG HEIGHT=20 
				      SRC="/_images/tab02.gif" WIDTH=10 BORDER=0>
					</TD>
					<TD CLASS=FSSBARDEAD ALIGN=BOTTOM WIDTH="25%">
					  <A HREF=http://www.fss.gsa.gov/NewsEvents/newslistngN.cfm?programoffice=FSS&region=all><FONT CLASS=FSSBARDEAD>
					  <B>FAS News/Events</B></FONT></A>
					</TD>
					<TD CLASS=FSSBARDEAD VALIGN=TOP><IMG HEIGHT=20 
				      SRC="/_images/tab02.gif" WIDTH=10 BORDER=0>
					</TD>
					<TD CLASS=FSSBARDEAD ALIGN=BOTTOM WIDTH="25%">
					  <A HREF=http://www.fss.gsa.gov><FONT CLASS=FSSBARDEAD>
					  <B>FAS Home</B></FONT></A>
					</TD>
			    </TR>
			    <TR>
			      <TD CLASS=FSSBARDEAD COLSPAN=8 HEIGHT=5><SPACER HEIGHT="5" TYPE="block"></TD>
			    </TR>
			</TABLE>
             </TD>
          </TR>
      <TR>
	<TD>                
		<table width="765" border="0" cellspacing="0" cellpadding="3" align="Center">
        	<TR Width="765" valign="top">
					<TD width="765"><A NAME="content"></a>
					
					
<CFSET Session.NewYear = #Year(now())# + 1>   
<h2>Online Reports - End of Year Process</h2>
<h3>Create New Directory Structures for Year = <cfoutput>#Session.NewYear#</cfoutput></h3>

<ul>
<li>
<a href="StartYear.cfm?ReptDir=Others">CSC,SASY,TASS</a>&nbsp;
	<cfif IsDefined("session.completeothers")>
		Done
	</cfif>
</li>
<li>
<a href="StartYear.cfm?ReptDir=FSS19&RequestTimeout=900">FSS19</a>&nbsp;
	<cfif IsDefined("session.completeFSS19")>
		Done
	</cfif>
</li>
<li>
<a href="StartYear.cfm?ReptDir=FMS">FMS</a>&nbsp;
	<cfif IsDefined("session.completeFMS")>
		Done
	</cfif>
</li>
<li>
<a href="StartYear.cfm?ReptDir=FEDS">FEDS</a>&nbsp;
	<cfif IsDefined("session.completeFEDS")>
		Done
	</cfif>
</li>
</ul>
</body>
</html>

                               	</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</Table>
		<BR>
		</BODY>
		</HTML>
<STYLE TYPE="text/css">
            <!--
            BODY,P,TH,TD {
               font-family: Arial,sans-serif;
               font-size: 10pt;
               }
            BODY {
               background-color: FFFFFF;
               
            
               margin: 0px 0px 0px 10px;
               padding: 0px 0px 0px 0px;
            
               border: 0;
               }
            A {
               color: 003399;
               }
            A:hover {
               color: #990000;
               text-decoration: underline;
               }
            A:active {
               color: #004880;
               text-decoration: underline;
               }
            .status_bar, .nav_section, .nav_section_title {
               font-size: 8pt;
			   color : #004880;
               }
            .nav_section_title {
               border: 1px solid #004880;
			   font-size : 10pt;
			   font-weight : 700;
               }
            .banner_links_bar_1 {
               font-size: 8pt;
               }
			 .banner_links_bar_1:hover {
			 	color: yellow;
				}
             A.top_nav_bar {
                color: white;
                font-weight: bold;
                font-size: 8pt;
                font-family: Helvetica;
                text-decoration: none;
             } 
            A:Hover.top_nav_bar {
                color: #3399ff;
                text-decoration: none;
                }
            A:Active.top_nav_bar {
                color: #0066FF;
                }
            A:Visited.tip_nav_bar {
                text-decoration: none;
                }
            A:link.top_nav_bar {
                color: white;
                text-decoration: none;
                } 
                
            -->
         </STYLE>
 <STYLE TYPE="text/css">
            <!--
            A.section {
               font-weight: bold;
               font-size: 11pt;
               color: 003399;
               text-decoration: none;
               }
            A.subSection {
               color: 000000;
               text-decoration: none;
               }
            -->
         </STYLE>
</STYLE> 