<HTML>

<HEAD>
<TITLE>FMS-201 - VEHICLE INVENTORY (DETAIL)</TITLE>
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
			<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 1</B></FONT></TD>
			<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>2 FMC's, 0 Subcenters</B></FONT></TD>
		</TR>
		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/../#ReptYear#/01/mo/#ReptMo#/010500mofe#rept#.rtf"><FONT SIZE="2">01-05-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/010500mofe#rept#.rtf"><FONT SIZE="2">Stuttgart, GE FMC</FONT></A></TD>
		</TR>
		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/010600mofe#rept#.rtf"><FONT SIZE="2">01-06-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/010600mofe#rept#.rtf"><FONT SIZE="2">W&uuml;rzburg, GE FMC</FONT></A></TD>
		</TR>
	
		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/010700mofe#rept#.rtf"><FONT SIZE="2">01-07-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/010700mofe#rept#.rtf"><FONT SIZE="2">Mannheim, GE FMC</FONT></A></TD>
		</TR>
		
		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/010800mofe#rept#.rtf"><FONT SIZE="2">01-08-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/010800mofe#rept#.rtf"><FONT SIZE="2">Wiesbaden, GE FMC</FONT></A></TD>
		</TR>
		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/010900mofe#rept#.rtf"><FONT SIZE="2">01-09-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/010900mofe#rept#.rtf"><FONT SIZE="2">Grafenwoehr, GE FMC</FONT></A></TD>
		</TR>
		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/011000mofe#rept#.rtf"><FONT SIZE="2">01-10-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/011000mofe#rept#.rtf"><FONT SIZE="2">Chievres, Belgium FMC</FONT></A></TD>
		</TR>
		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/011100mofe#rept#.rtf"><FONT SIZE="2">01-11-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/01/mo/#ReptMo#/011100mofe#rept#.rtf"><FONT SIZE="2">Vicenza, Italy FMC</FONT></A></TD>
		</TR>
		</TABLE>
		</TD></TR>
	</TABLE>
	</CENTER>
	
	
</cfoutput>
<BR><BR>



</BODY>
</HTML>
