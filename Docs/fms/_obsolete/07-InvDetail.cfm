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
<CFIF TestDate LT 200007>
<TR><TD>
	<TABLE WIDTH="100%" BORDER="1" CELLSPACING="0" CELLPADDING="7" BORDERCOLOR="##808080" COLS="2">	
	<TR VALIGN="BASELINE" BGCOLOR="##000080">
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 7</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>12 FMC's, 6 Subcenters</B></FONT></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070101mofm#rept#.rtf"><FONT SIZE="2">07-01-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070101mofm#rept#.rtf"><FONT SIZE="2">Ft. Worth, TX FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070102mofm#rept#.rtf"><FONT SIZE="2">07-01-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070102mofm#rept#.rtf"><FONT SIZE="2">Red River, TX Subcenter</FONT></A></TD>
	</TR>

	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070201mofm#rept#.rtf"><FONT SIZE="2">07-02-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070201mofm#rept#.rtf"><FONT SIZE="2">New Orleans, LA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070202mofm#rept#.rtf"><FONT SIZE="2">07-02-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070202mofm#rept#.rtf"><FONT SIZE="2">Ft. Polk, LA Subcenter</FONT></A></TD>
	</TR>
	
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070300mofm#rept#.rtf"><FONT SIZE="2">07-03-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070300mofm#rept#.rtf"><FONT SIZE="2">Houston, TX FMC</FONT></A></TD>
	</TR>
	
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070401mofm#rept#.rtf"><FONT SIZE="2">07-04-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070401mofm#rept#.rtf"><FONT SIZE="2">Oklahoma City, OK FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070402mofm#rept#.rtf"><FONT SIZE="2">07-04-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070402mofm#rept#.rtf"><FONT SIZE="2">Ft. Sill, OK Subcenter</FONT></A></TD>

	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070500mofm#rept#.rtf"><FONT SIZE="2">07-05-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070500mofm#rept#.rtf"><FONT SIZE="2">Little Rock, AR FMC</FONT></A></TD>
	</TR>
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070601mofm#rept#.rtf"><FONT SIZE="2">07-06-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070601mofm#rept#.rtf"><FONT SIZE="2">San Antonio, TX FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070602mofm#rept#.rtf"><FONT SIZE="2">07-06-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070602mofm#rept#.rtf"><FONT SIZE="2">Ft. Hood, TX Subcenter</FONT></A></TD>
	</TR>
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070700mofm#rept#.rtf"><FONT SIZE="2">07-07-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070700mofm#rept#.rtf"><FONT SIZE="2">Los Alamos, NM FMC</FONT></A></TD>
	</TR>
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070900mofm#rept#.rtf"><FONT SIZE="2">07-09-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070900mofm#rept#.rtf"><FONT SIZE="2">White Sands, NM FMC</FONT></A></TD>
	</TR>
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071000mofm#rept#.rtf"><FONT SIZE="2">07-10-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071000mofm#rept#.rtf"><FONT SIZE="2">El Paso, TX FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071100mofm#rept#.rtf"><FONT SIZE="2">07-11-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071100mofm#rept#.rtf"><FONT SIZE="2">Panama FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071200mofm#rept#.rtf"><FONT SIZE="2">07-12-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071200mofm#rept#.rtf"><FONT SIZE="2">Albuquerque, NM FMC</FONT></A></TD>
	</TR>
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071501mofm#rept#.rtf"><FONT SIZE="2">07-15-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071501mofm#rept#.rtf"><FONT SIZE="2">Gallup, NM FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071502mofm#rept#.rtf"><FONT SIZE="2">07-15-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071502mofm#rept#.rtf"><FONT SIZE="2">Farmington, NM Subcenter</FONT></A></TD>
	</TR>
	</TABLE>
	
</TD></TR>
<CFELSE>
<TR><TD>
	<TABLE WIDTH="100%" BORDER="1" CELLSPACING="0" CELLPADDING="7" BORDERCOLOR="##808080" COLS="2">	
	<TR VALIGN="BASELINE" BGCOLOR="##000080">
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 7</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>9 FMC's</B></FONT></TD>
	</TR>
	
		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/07/mo/#ReptMo#/070100mofm#rept#.rtf"><FONT SIZE="2">07-01-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/07/mo/#ReptMo#/070100mofm#rept#.rtf"><FONT SIZE="2">Ft. Worth, TX FMC</FONT></A></TD>
		</TR>
	
	
		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/07/mo/#ReptMo#/070200mofm#rept#.rtf"><FONT SIZE="2">07-02-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/07/mo/#ReptMo#/070200mofm#rept#.rtf"><FONT SIZE="2">New Orleans, LA FMC</FONT></A></TD>
		</TR>
	
	

		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/07/mo/#ReptMo#/070400mofm#rept#.rtf"><FONT SIZE="2">07-04-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/07/mo/#ReptMo#/070400mofm#rept#.rtf"><FONT SIZE="2">Oklahoma City, OK FMC</FONT></A></TD>
		</TR>
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070500mofm#rept#.rtf"><FONT SIZE="2">07-05-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070500mofm#rept#.rtf"><FONT SIZE="2">Little Rock, AR FMC</FONT></A></TD>
	</TR>

		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/07/mo/#ReptMo#/070600mofm#rept#.rtf"><FONT SIZE="2">07-06-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/07/mo/#ReptMo#/070600mofm#rept#.rtf"><FONT SIZE="2">San Antonio, TX FMC</FONT></A></TD>
		</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071000mofm#rept#.rtf"><FONT SIZE="2">07-10-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071000mofm#rept#.rtf"><FONT SIZE="2">El Paso, TX FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071100mofm#rept#.rtf"><FONT SIZE="2">07-11-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071100mofm#rept#.rtf"><FONT SIZE="2">Panama FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071200mofm#rept#.rtf"><FONT SIZE="2">07-12-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071200mofm#rept#.rtf"><FONT SIZE="2">Albuquerque, NM FMC</FONT></A></TD>
	</TR>

		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/07/mo/#ReptMo#/071500mofm#rept#.rtf"><FONT SIZE="2">07-15-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/07/mo/#ReptMo#/071500mofm#rept#.rtf"><FONT SIZE="2">Gallup, NM FMC</FONT></A></TD>
		</TR>
		
	</TABLE>
	
</TD></TR>
</CFIF>	
</TABLE>
</CENTER>
<!--- <CFELSE>
<FONT FACE="Arial" COLOR="maroon"><B>FMS
-202 - Vehicle Inventory (Detail) - Part B</B></FONT></P>

<CENTER>
<TABLE WIDTH="500" BORDER="0">
<TR><TD>
	<TABLE WIDTH="100%" BORDER="1" CELLSPACING="0" CELLPADDING="7" BORDERCOLOR="##808080" COLS="2">
	<TR VALIGN="BASELINE" BGCOLOR="##000080">
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 7</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>12 FMC's, 6 Subcenters</B></FONT></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070101mofm202.rtf"><FONT SIZE="2">07-01-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070101mofm202.rtf"><FONT SIZE="2">Ft. Worth, TX FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070102mofm202.rtf"><FONT SIZE="2">07-01-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070102mofm202.rtf"><FONT SIZE="2">Red River, TX Subcenter</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070201mofm202.rtf"><FONT SIZE="2">07-02-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070201mofm202.rtf"><FONT SIZE="2">New Orleans, LA FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070202mofm202.rtf"><FONT SIZE="2">07-02-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070202mofm202.rtf"><FONT SIZE="2">Ft. Polk, LA Subcenter</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070300mofm202.rtf"><FONT SIZE="2">07-03-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070300mofm202.rtf"><FONT SIZE="2">Houston, TX FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070401mofm202.rtf"><FONT SIZE="2">07-04-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070401mofm202.rtf"><FONT SIZE="2">Oklahoma City, OK FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070402mofm202.rtf"><FONT SIZE="2">07-04-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070402mofm202.rtf"><FONT SIZE="2">Ft. Sill, OK Subcenter</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070500mofm202.rtf"><FONT SIZE="2">07-05-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070500mofm202.rtf"><FONT SIZE="2">Little Rock, AR FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070601mofm202.rtf"><FONT SIZE="2">07-06-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070601mofm202.rtf"><FONT SIZE="2">San Antonio, TX FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070602mofm202.rtf"><FONT SIZE="2">07-06-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070602mofm202.rtf"><FONT SIZE="2">Ft. Hood, TX Subcenter</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070700mofm202.rtf"><FONT SIZE="2">07-07-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070700mofm202.rtf"><FONT SIZE="2">Los Alamos, NM FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070900mofm202.rtf"><FONT SIZE="2">07-09-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/070900mofm202.rtf"><FONT SIZE="2">White Sands, NM FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071000mofm202.rtf"><FONT SIZE="2">07-10-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071000mofm202.rtf"><FONT SIZE="2">El Paso, TX</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071100mofm202.rtf"><FONT SIZE="2">07-11-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071100mofm202.rtf"><FONT SIZE="2">Panama FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071200mofm202.rtf"><FONT SIZE="2">07-12-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071200mofm202.rtf"><FONT SIZE="2">Albuquerque, NM FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071501mofm202.rtf"><FONT SIZE="2">07-15-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071501mofm202.rtf"><FONT SIZE="2">Gallup, NM FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071502mofm202.rtf"><FONT SIZE="2">07-15-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/07/mo/#ReptMo#/071502mofm202.rtf"><FONT SIZE="2">Farmington, NM Subcenter</FONT></A></TD>
	</TR>
	</TABLE>
	
</TD></TR>
</TABLE>
</CENTER>


<BR><BR>


</CFIF>  --->
</CFOUTPUT>
</BODY>
</HTML>
