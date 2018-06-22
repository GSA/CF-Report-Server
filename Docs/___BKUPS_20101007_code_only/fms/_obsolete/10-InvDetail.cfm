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
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 10</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>7 FMC's, 2 Subcenters</B></FONT></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100000mofm#rept#.rtf"><FONT SIZE="2">10-00-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100000mofm#rept#.rtf"><FONT SIZE="2">Regional Office - Seattle/Auburn, WA</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100100mofm#rept#.rtf"><FONT SIZE="2">10-01-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100100mofm#rept#.rtf"><FONT SIZE="2">Seattle, WA</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100101mofm#rept#.rtf"><FONT SIZE="2">10-01-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100101mofm#rept#.rtf"><FONT SIZE="2">Seattle, WA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100102mofm#rept#.rtf"><FONT SIZE="2">10-01-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100102mofm#rept#.rtf"><FONT SIZE="2">Ft. Lewis, WA Subcenter</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100200mofm#rept#.rtf"><FONT SIZE="2">10-02-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100200mofm#rept#.rtf"><FONT SIZE="2">Vancouver, WA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100300mofm#rept#.rtf"><FONT SIZE="2">10-03-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100300mofm#rept#.rtf"><FONT SIZE="2">Spokane, WA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100400mofm#rept#.rtf"><FONT SIZE="2">10-04-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100400mofm#rept#.rtf"><FONT SIZE="2">Tri-Cities, WA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100500mofm#rept#.rtf"><FONT SIZE="2">10-05-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100500mofm#rept#.rtf"><FONT SIZE="2">Boise, ID FMC</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100600mofm#rept#.rtf"><FONT SIZE="2">10-06-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100600mofm#rept#.rtf"><FONT SIZE="2">Anchorage, AK</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100601mofm#rept#.rtf"><FONT SIZE="2">10-06-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100601mofm#rept#.rtf"><FONT SIZE="2">Anchorage, AK FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100602mofm#rept#.rtf"><FONT SIZE="2">10-06-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100602mofm#rept#.rtf"><FONT SIZE="2">Fairbanks, AK Subcenter</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100800mofm#rept#.rtf"><FONT SIZE="2">10-08-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/10/mo/#ReptMo#/100800mofm#rept#.rtf"><FONT SIZE="2">Medford, OR FMC</FONT></A></TD>
	</TR>
	</TABLE>
	
</TD></TR>
</TABLE>
</CENTER>

</CFOUTPUT>
</BODY>
</HTML>
