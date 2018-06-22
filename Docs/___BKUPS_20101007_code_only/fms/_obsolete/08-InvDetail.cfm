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
<CFIF TestDate LT 200012>
<TR><TD>
	<TABLE WIDTH="100%" BORDER="1" CELLSPACING="0" CELLPADDING="7" BORDERCOLOR="##808080" COLS="2">
	<TR VALIGN="BASELINE" BGCOLOR="##000080">
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 8</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>6 FMC's, 2 Subcenters</B></FONT></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080000mofm#rept#.rtf"><FONT SIZE="2">08-00-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080000mofm#rept#.rtf"><FONT SIZE="2">Regional Office - Denver, CO</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080100mofm#rept#.rtf"><FONT SIZE="2">08-01-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080100mofm#rept#.rtf"><FONT SIZE="2">Denver, CO</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080101mofm#rept#.rtf"><FONT SIZE="2">08-01-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080101mofm#rept#.rtf"><FONT SIZE="2">Denver, CO FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080102mofm#rept#.rtf"><FONT SIZE="2">08-01-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080102mofm#rept#.rtf"><FONT SIZE="2">Grand Junction, CO Subcenter</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080300mofm#rept#.rtf"><FONT SIZE="2">08-03-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080300mofm#rept#.rtf"><FONT SIZE="2">Salt Lake City, UT FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080700mofm#rept#.rtf"><FONT SIZE="2">08-07-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080700mofm#rept#.rtf"><FONT SIZE="2">Casper, WY FMC</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/081800mofm#rept#.rtf"><FONT SIZE="2">08-18-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/081800mofm#rept#.rtf"><FONT SIZE="2">Billings, MT</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/081801mofm#rept#.rtf"><FONT SIZE="2">08-18-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/081801mofm#rept#.rtf"><FONT SIZE="2">Billings, MT FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/081802mofm#rept#.rtf"><FONT SIZE="2">08-18-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/081802mofm#rept#.rtf"><FONT SIZE="2">Helena, MT Subcenter</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/082000mofm#rept#.rtf"><FONT SIZE="2">08-20-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/082000mofm#rept#.rtf"><FONT SIZE="2">Bismarck, ND FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/082100mofm#rept#.rtf"><FONT SIZE="2">08-21-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/082100mofm#rept#.rtf"><FONT SIZE="2">Pierre, SD FMC</FONT></A></TD>
	</TR>
	</TABLE>
</TD></TR>
<CFELSE>
<TR><TD>
	<TABLE WIDTH="100%" BORDER="1" CELLSPACING="0" CELLPADDING="7" BORDERCOLOR="##808080" COLS="2">
	<TR VALIGN="BASELINE" BGCOLOR="##000080">
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 8</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>4 FMC's</B></FONT></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080100mofm#rept#.rtf"><FONT SIZE="2">08-01-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080100mofm#rept#.rtf"><FONT SIZE="2">Denver FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080300mofm#rept#.rtf"><FONT SIZE="2">08-03-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/080300mofm#rept#.rtf"><FONT SIZE="2">Salt Lake City, UT FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/081800mofm#rept#.rtf"><FONT SIZE="2">08-18-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/081800mofm#rept#.rtf"><FONT SIZE="2">Montana/Wyoming FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/082100mofm#rept#.rtf"><FONT SIZE="2">08-21-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/08/mo/#ReptMo#/082100mofm#rept#.rtf"><FONT SIZE="2">Dakota States FMC</FONT></A></TD>
	</TR>
	</TABLE>
</TD></TR>
</CFIF>
</TABLE>
</CENTER>

</CFOUTPUT>
</BODY>
</HTML>
