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

<CFIF TestDate LT 200005>

<TR><TD>
	<TABLE WIDTH="100%" BORDER="1" CELLSPACING="0" CELLPADDING="7" BORDERCOLOR="##808080" COLS="2">
	<TR VALIGN="BASELINE" BGCOLOR="##000080">
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 4</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>8 FMC's, 6 Subcenters</B></FONT></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040000mofm#Rept#.rtf"><FONT SIZE="2">04-00-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040000mofm#Rept#.rtf"><FONT SIZE="2">Regional Office - Atlanta, GA</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040100mofm#Rept#.rtf"><FONT SIZE="2">04-01-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040100mofm#Rept#.rtf"><FONT SIZE="2">Ft. Gillem, GA</FONT></A></TD>
	</TR>
-->
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040101mofm#Rept#.rtf"><FONT SIZE="2">04-01-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040101mofm#Rept#.rtf"><FONT SIZE="2">Ft. Gillem, GA</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040102mofm#Rept#.rtf"><FONT SIZE="2">04-01-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040102mofm#Rept#.rtf"><FONT SIZE="2">Ft. Benning, GA Subcenter</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<CFIF #reptmo# is "01">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040101mofm#Rept#.rtf"><FONT SIZE="2">04-01-01</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040101mofm#Rept#.rtf"><FONT SIZE="2">Ft. Gillem, GA FMC &nbsp; [Ft.&nbsp;Gordon,&nbsp;GA, Ft.&nbsp;Stewart,&nbsp;GA]</FONT></A></TD>
		<CFELSE>
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040103mofm#Rept#.rtf"><FONT SIZE="2">04-01-03</FONT></A></TD>
						<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040103mofm#Rept#.rtf"><FONT SIZE="2">Ft.&nbsp;Stewart,&nbsp;GA</FONT></A></TD>
		</cfif>	
	</TR>
	
	<TR VALIGN="BASELINE">
		<CFIF #reptmo# is "01">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040200mofm#Rept#.rtf"><FONT SIZE="2">04-02-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040200mofm#Rept#.rtf"><FONT SIZE="2">Smyrna, TN FMC &nbsp; [Memphis, TN]</FONT></A></TD>
		<CFELSE>
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040201mofm#Rept#.rtf"><FONT SIZE="2">04-02-01</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040201mofm#Rept#.rtf"><FONT SIZE="2">Murfreesboro&nbsp;[Smyrna, TN FMC]</FONT></A></TD>
			</TR>
			<TR VALIGN="BASELINE">
					<TD WIDTH="25%" ALIGN="CENTER">
						<A HREF="#ReptYear#/04/mo/#ReptMo#/040202mofm#Rept#.rtf"><FONT SIZE="2">04-02-02</FONT></A></TD>
					<TD WIDTH="75%">
						<A HREF="#ReptYear#/04/mo/#ReptMo#/040202mofm#Rept#.rtf"><FONT SIZE="2"> Memphis, TN</FONT></A></TD>
			</TR>
		</CFIF>
	<!-- <TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040400mofm#Rept#.rtf"><FONT SIZE="2">04-04-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040400mofm#Rept#.rtf"><FONT SIZE="2">Ft. Bragg, NC</FONT></A></TD>
	</TR> -->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040401mofm#Rept#.rtf"><FONT SIZE="2">04-04-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040401mofm#Rept#.rtf"><FONT SIZE="2">Ft. Bragg, NC FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040402mofm#Rept#.rtf"><FONT SIZE="2">04-04-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040402mofm#Rept#.rtf"><FONT SIZE="2">Camp LeJeune, NC Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040600mofm#Rept#.rtf"><FONT SIZE="2">04-06-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040600mofm#Rept#.rtf"><FONT SIZE="2">KSC, FL</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040601mofm#Rept#.rtf"><FONT SIZE="2">04-06-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040601mofm#Rept#.rtf"><FONT SIZE="2">KSC, FL FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040602mofm#Rept#.rtf"><FONT SIZE="2">04-06-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040602mofm#Rept#.rtf"><FONT SIZE="2">Miami, FL Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040700mofm#Rept#.rtf"><FONT SIZE="2">04-07-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040700mofm#Rept#.rtf"><FONT SIZE="2">Jackson, MS</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040701mofm#Rept#.rtf"><FONT SIZE="2">04-07-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040701mofm#Rept#.rtf"><FONT SIZE="2">Jackson, MS FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040702mofm#Rept#.rtf"><FONT SIZE="2">04-07-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040702mofm#Rept#.rtf"><FONT SIZE="2">Stennis Space Center, MS Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040800mofm#Rept#.rtf"><FONT SIZE="2">04-08-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040800mofm#Rept#.rtf"><FONT SIZE="2">Ft. McClellan, AL</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040801mofm#Rept#.rtf"><FONT SIZE="2">04-08-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040801mofm#Rept#.rtf"><FONT SIZE="2">Ft. McClellan, AL</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040802mofm#Rept#.rtf"><FONT SIZE="2">04-08-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040802mofm#Rept#.rtf"><FONT SIZE="2">Mobile, AL Subcenter</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<CFIF #reptmo# is "01">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040801mofm#Rept#.rtf"><FONT SIZE="2">04-08-01</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040801mofm#Rept#.rtf"><FONT SIZE="2">Ft. McClellan, AL FMC</FONT></A></TD>
		<CFELSE>
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040803mofm#Rept#.rtf"><FONT SIZE="2">04-08-03</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040803mofm#Rept#.rtf"><FONT SIZE="2">Ft. Rucker, AL FMC</FONT></A></TD>		
		</TR>
		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040804mofm#Rept#.rtf"><FONT SIZE="2">04-08-04</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040804mofm#Rept#.rtf"><FONT SIZE="2">Redstone Arsenal, AL</FONT></A></TD>		
		</TR>
		</cfif>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040900mofm#Rept#.rtf"><FONT SIZE="2">04-09-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040900mofm#Rept#.rtf"><FONT SIZE="2">Aiken, SC</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040901mofm#Rept#.rtf"><FONT SIZE="2">04-09-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040901mofm#Rept#.rtf"><FONT SIZE="2">Aiken, SC FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040902mofm#Rept#.rtf"><FONT SIZE="2">04-09-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040902mofm#Rept#.rtf"><FONT SIZE="2">Ft. Jackson, SC Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041200mofm#Rept#.rtf"><FONT SIZE="2">04-12-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041200mofm#Rept#.rtf"><FONT SIZE="2">Ft. Knox, KY FMC &nbsp; [Ft. Campbell, KY]</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041201mofm#Rept#.rtf"><FONT SIZE="2">04-12-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041201mofm#Rept#.rtf"><FONT SIZE="2">Ft. Knox, KY FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041202mofm#Rept#.rtf"><FONT SIZE="2">04-12-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041202mofm#Rept#.rtf"><FONT SIZE="2">Ft. Campbell, KY FMC</FONT></A></TD>
	</TR>
	</TABLE>
	
	</TD>
</TR>
<CFELSE>
<TR><TD>
	<TABLE WIDTH="100%" BORDER="1" CELLSPACING="0" CELLPADDING="7" BORDERCOLOR="##808080" COLS="2">
	<TR VALIGN="BASELINE" BGCOLOR="##000080">
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 4</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>8 FMC's, 6 Subcenters</B></FONT></TD>
	</TR>

	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040100mofm#Rept#.rtf"><FONT SIZE="2">04-01-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040100mofm#Rept#.rtf"><FONT SIZE="2">Ft. Gillem, GA</FONT></A></TD>
	</TR>
	
	<TR VALIGN="BASELINE">
		
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040200mofm#Rept#.rtf"><FONT SIZE="2">04-02-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040200mofm#Rept#.rtf"><FONT SIZE="2">Murfreesboro, TN</FONT></A></TD>
			</TR>
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040400mofm#Rept#.rtf"><FONT SIZE="2">04-04-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040400mofm#Rept#.rtf"><FONT SIZE="2">Ft. Bragg, NC</FONT></A></TD>
	</TR>
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040600mofm#Rept#.rtf"><FONT SIZE="2">04-06-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040600mofm#Rept#.rtf"><FONT SIZE="2">Kennedy Space Center, FL</FONT></A></TD>
	</TR>
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040800mofm#Rept#.rtf"><FONT SIZE="2">04-08-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040800mofm#Rept#.rtf"><FONT SIZE="2">Ft. McClellan, AL</FONT></A></TD>
	</TR>
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040900mofm#Rept#.rtf"><FONT SIZE="2">04-09-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040900mofm#Rept#.rtf"><FONT SIZE="2">Savannah River Site, SC</FONT></A></TD>
	</TR>
	
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041200mofm#Rept#.rtf"><FONT SIZE="2">04-12-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041200mofm#Rept#.rtf"><FONT SIZE="2">Ft. Knox, KY</FONT></A></TD>
	</TR>
	
	</TABLE>
	
	</TD>
</TR>
</cfif>
</TABLE>
</CENTER>
</CFOUTPUT>
</BODY>
</HTML>
