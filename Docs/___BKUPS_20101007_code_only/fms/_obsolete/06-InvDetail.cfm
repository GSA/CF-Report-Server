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
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 6</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>3 FMC's, 1 Subcenter</B></FONT></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/06/mo/#ReptMo#/060000mofm#rept#.rtf"><FONT SIZE="2">06-00-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/06/mo/#ReptMo#/060000mofm#rept#.rtf"><FONT SIZE="2">Regional Office - Kansas City, MO</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/06/mo/#ReptMo#/060100mofm#rept#.rtf"><FONT SIZE="2">06-01-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/06/mo/#ReptMo#/060100mofm#rept#.rtf"><FONT SIZE="2">Kansas City, MO FMC &nbsp; [Wichita, KS]</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/06/mo/#ReptMo#/060300mofm#rept#.rtf"><FONT SIZE="2">06-03-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/06/mo/#ReptMo#/060300mofm#rept#.rtf"><FONT SIZE="2">Omaha, NE FMC &nbsp; [Des Moine, IA]</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/06/mo/#ReptMo#/060400mofm#rept#.rtf"><FONT SIZE="2">06-04-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/06/mo/#ReptMo#/060400mofm#rept#.rtf"><FONT SIZE="2">St. Louis, MO</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/06/mo/#ReptMo#/060401mofm#rept#.rtf"><FONT SIZE="2">06-04-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/06/mo/#ReptMo#/060401mofm#rept#.rtf"><FONT SIZE="2">St. Louis, MO FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/06/mo/#ReptMo#/060402mofm#rept#.rtf"><FONT SIZE="2">06-04-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/06/mo/#ReptMo#/060402mofm#rept#.rtf"><FONT SIZE="2">Ft. Leonard Wood, MO Subcenter</FONT></A></TD>
	</TR>
	</TABLE>
	
</TD></TR>
</TABLE>
</CENTER>

</CFOUTPUT>
</BODY>
</HTML>
