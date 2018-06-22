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
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 5</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>7 FMC's, 0 Subcenters</B></FONT></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050000mofm#rept#.rtf"><FONT SIZE="2">05-00-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050000mofm#rept#.rtf"><FONT SIZE="2">Regional Office - Chicago, IL</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050100mofm#rept#.rtf"><FONT SIZE="2">05-01-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050100mofm#rept#.rtf"><FONT SIZE="2">Chicago, IL FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050200mofm#rept#.rtf"><FONT SIZE="2">05-02-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050200mofm#rept#.rtf"><FONT SIZE="2">Cleveland, OH FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050400mofm#rept#.rtf"><FONT SIZE="2">05-04-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050400mofm#rept#.rtf"><FONT SIZE="2">Indianapolis, IN FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050500mofm#rept#.rtf"><FONT SIZE="2">05-05-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050500mofm#rept#.rtf"><FONT SIZE="2">Milwaukee, WI FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050600mofm#rept#.rtf"><FONT SIZE="2">05-06-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050600mofm#rept#.rtf"><FONT SIZE="2">Detroit, MI FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050800mofm#rept#.rtf"><FONT SIZE="2">05-08-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/050800mofm#rept#.rtf"><FONT SIZE="2">Dayton, OH FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/051100mofm#rept#.rtf"><FONT SIZE="2">05-11-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/05/mo/#ReptMo#/051100mofm#rept#.rtf"><FONT SIZE="2">Minneapolis/St. Paul FMC</FONT></A></TD>
	</TR>
	</TABLE>
	
</TD></TR>
</TABLE>
</CENTER>


</CFOUTPUT>
</BODY>
</HTML>
