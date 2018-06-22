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
<CFIF TestDate LT 200009>
<TR><TD>
	<TABLE WIDTH="100%" BORDER="1" CELLSPACING="0" CELLPADDING="7" BORDERCOLOR="##808080" COLS="2">
	<TR VALIGN="BASELINE" BGCOLOR="##000080">
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 9</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>10 FMC's, 0 Subcenters</B></FONT></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090000mofm#rept#.rtf"><FONT SIZE="2">09-00-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090000mofm#rept#.rtf"><FONT SIZE="2">Regional Office - San Francisco, CA</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090100mofm#rept#.rtf"><FONT SIZE="2">09-01-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090100mofm#rept#.rtf"><FONT SIZE="2">San Francisco, CA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090200mofm#rept#.rtf"><FONT SIZE="2">09-02-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090200mofm#rept#.rtf"><FONT SIZE="2">Los Angeles, CA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090300mofm#rept#.rtf"><FONT SIZE="2">09-03-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090300mofm#rept#.rtf"><FONT SIZE="2">Las Vegas, NV FMC</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090500mofm#rept#.rtf"><FONT SIZE="2">09-05-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090500mofm#rept#.rtf"><FONT SIZE="2">San Diego, CA FMC</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090700mofm#rept#.rtf"><FONT SIZE="2">09-07-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090700mofm#rept#.rtf"><FONT SIZE="2">Sacramento, CA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090900mofm#rept#.rtf"><FONT SIZE="2">09-09-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090900mofm#rept#.rtf"><FONT SIZE="2">Honolulu, HI FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091300mofm#rept#.rtf"><FONT SIZE="2">09-13-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091300mofm#rept#.rtf"><FONT SIZE="2">Phoenix, AZ FMC</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091500mofm#rept#.rtf"><FONT SIZE="2">09-15-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091500mofm#rept#.rtf"><FONT SIZE="2">Holbrook, AZ FMC</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091800mofm#rept#.rtf"><FONT SIZE="2">09-18-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091800mofm#rept#.rtf"><FONT SIZE="2">Santa Maria, CA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091900mofm#rept#.rtf"><FONT SIZE="2">09-19-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091900mofm#rept#.rtf"><FONT SIZE="2">Edwards AFB, CA FMC</FONT></A></TD>
	</TR>
	</TABLE>
	
</TD></TR>

<CFELSE>

<TR><TD>
	<TABLE WIDTH="100%" BORDER="1" CELLSPACING="0" CELLPADDING="7" BORDERCOLOR="##808080" COLS="2">
	<TR VALIGN="BASELINE" BGCOLOR="##000080">
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 9</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>9 FMC's, 0 Subcenters</B></FONT></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090000mofm#rept#.rtf"><FONT SIZE="2">09-00-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090000mofm#rept#.rtf"><FONT SIZE="2">Regional Office - San Francisco, CA</FONT></A></TD>
	</TR>
-->
	<!--- <TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090100mofm#rept#.rtf"><FONT SIZE="2">09-01-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090100mofm#rept#.rtf"><FONT SIZE="2">San Francisco, CA FMC</FONT></A></TD>
	</TR> --->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090200mofm#rept#.rtf"><FONT SIZE="2">09-02-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090200mofm#rept#.rtf"><FONT SIZE="2">Los Angeles, CA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090300mofm#rept#.rtf"><FONT SIZE="2">09-03-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090300mofm#rept#.rtf"><FONT SIZE="2">Las Vegas, NV FMC</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090500mofm#rept#.rtf"><FONT SIZE="2">09-05-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090500mofm#rept#.rtf"><FONT SIZE="2">San Diego, CA FMC</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090700mofm#rept#.rtf"><FONT SIZE="2">09-07-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090700mofm#rept#.rtf"><FONT SIZE="2">Sacramento, CA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090900mofm#rept#.rtf"><FONT SIZE="2">09-09-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/090900mofm#rept#.rtf"><FONT SIZE="2">Honolulu, HI FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091300mofm#rept#.rtf"><FONT SIZE="2">09-13-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091300mofm#rept#.rtf"><FONT SIZE="2">Phoenix, AZ FMC</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091500mofm#rept#.rtf"><FONT SIZE="2">09-15-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091500mofm#rept#.rtf"><FONT SIZE="2">Holbrook, AZ FMC</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091800mofm#rept#.rtf"><FONT SIZE="2">09-18-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091800mofm#rept#.rtf"><FONT SIZE="2">Santa Maria, CA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091900mofm#rept#.rtf"><FONT SIZE="2">09-19-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/09/mo/#ReptMo#/091900mofm#rept#.rtf"><FONT SIZE="2">Edwards AFB, CA FMC</FONT></A></TD>
	</TR>
	</TABLE>
</TD></TR>
</CFIF>
</CFOUTPUT>
</TABLE>
</CENTER>

<BR><BR>
>


</BODY>
</HTML>
