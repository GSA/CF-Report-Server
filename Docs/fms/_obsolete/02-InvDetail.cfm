<HTML>

<HEAD>
<TITLE>FMS-201 - VEHICLE INVENTORY (DETAIL) - PART A</TITLE>
</HEAD>

<BODY BGCOLOR="##000000" BACKGROUND="images/bg-yel2wht.gif">

<CFOUTPUT>
<CFSET TestDate = reptYear & ReptMo>
<P ALIGN="CENTER"><font color="maroon" size="+2">
Reports for #ReptMo#, #ReptYear#</font>

<BR><BR>


<CFIF #part# IS "a">
	<CFSET REPT = "201">
<CFELSE>
	<CFSET REPT = "202">
</CFIF>

<FONT FACE="Arial" COLOR="maroon"><B>FMS
-#Rept# - Vehicle Inventory (Detail) - Part #part#</B></FONT></P>
<CENTER>
<TABLE WIDTH="500" BORDER="0">
<TR><TD>
	<TABLE WIDTH="100%" BORDER="1" CELLSPACING="0" CELLPADDING="7" BORDERCOLOR="##808080" COLS="2">
	<TR VALIGN="BASELINE" BGCOLOR="##000080">
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 2</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>8 FMC's, 0 Subcenters</B></FONT></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/020000mofm#rept#.rtf"><FONT SIZE="2">02-00-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/020000mofm#rept#.rtf"><FONT SIZE="2">Regional Office - New York, NY</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/020100mofm#rept#.rtf"><FONT SIZE="2">02-01-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/020100mofm#rept#.rtf"><FONT SIZE="2">Brooklyn, NY FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/020200mofm#rept#.rtf"><FONT SIZE="2">02-02-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/020200mofm#rept#.rtf"><FONT SIZE="2">Buffalo, NY FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/020300mofm#rept#.rtf"><FONT SIZE="2">02-03-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/020300mofm#rept#.rtf"><FONT SIZE="2">Albany, NY FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/020400mofm#rept#.rtf"><FONT SIZE="2">02-04-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/020400mofm#rept#.rtf"><FONT SIZE="2">San Juan, PR FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/020700mofm#rept#.rtf"><FONT SIZE="2">02-07-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/020700mofm#rept#.rtf"><FONT SIZE="2">Edison, NJ FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/021100mofm#rept#.rtf"><FONT SIZE="2">02-11-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/021100mofm#rept#.rtf"><FONT SIZE="2">Waltham, MA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/021200mofm#rept#.rtf"><FONT SIZE="2">02-12-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/021200mofm#rept#.rtf"><FONT SIZE="2">Hartford, CT FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/021300mofm#rept#.rtf"><FONT SIZE="2">02-13-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/02/mo/#ReptMo#/021300mofm#rept#.rtf"><FONT SIZE="2">Concord, NH FMC</FONT></A></TD>
	</TR>
	</TABLE>
	</TD></TR>
</TABLE>
	
</CENTER>

</CFOUTPUT>
</BODY>
</HTML>
