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
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 3</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>6 FMC's, 0 Subcenters</B></FONT></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030000mofm#rept#.rtf"><FONT SIZE="2">03-00-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030000mofm#rept#.rtf"><FONT SIZE="2">Regional Office - Philadelphia, PA</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030200mofm#rept#.rtf"><FONT SIZE="2">03-02-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030200mofm#rept#.rtf"><FONT SIZE="2">Baltimore, MD FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030301mofm#rept#.rtf"><FONT SIZE="2">03-03-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030301mofm#rept#.rtf"><FONT SIZE="2">Richmond, VA FMC &nbsp; [Ft. Lee, VA]</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030400mofm#rept#.rtf"><FONT SIZE="2">03-04-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030400mofm#rept#.rtf"><FONT SIZE="2">Norfolk, VA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030600mofm#rept#.rtf"><FONT SIZE="2">03-06-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030600mofm#rept#.rtf"><FONT SIZE="2">Huntington, WV FMC &nbsp; [Radford, VA]</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030700mofm#rept#.rtf"><FONT SIZE="2">03-07-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030700mofm#rept#.rtf"><FONT SIZE="2">Philadelphia, PA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030800mofm#rept#.rtf"><FONT SIZE="2">03-08-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/030800mofm#rept#.rtf"><FONT SIZE="2">Pittsburg, PA FMC &nbsp; [Harrisburg, PA]</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/031100mofm#rept#.rtf"><FONT SIZE="2">03-11-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/031100mofm#rept#.rtf"><FONT SIZE="2">Western FMC (Ft. Belvoir)</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/031400mofm#rept#.rtf"><FONT SIZE="2">03-14-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/03/mo/#ReptMo#/031400mofm#rept#.rtf"><FONT SIZE="2">Eastern FMC (Hyattsville)</FONT></A></TD>
	</TR>
	</TABLE>
	
</TD></TR>
</TABLE>
</CENTER>

</CFOUTPUT>
</BODY>
</HTML>
