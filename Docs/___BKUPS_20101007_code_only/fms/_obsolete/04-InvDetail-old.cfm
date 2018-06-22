<HTML>

<HEAD>
<TITLE>FMS-201 - VEHICLE INVENTORY (DETAIL) - PART A</TITLE>
</HEAD>

<BODY BGCOLOR="##000000" BACKGROUND="images/bg-yel2wht.gif">

<CFOUTPUT>
<P ALIGN="CENTER"><font color="maroon" size="+2">
Reports for #ReptMo#, #ReptYear#</font>

<BR><BR>


<CFIF #part# IS "a">
	<CFSET REPT = "201">
<CFELSE>
	<CFSET REPT = "202">
</CFIF>
<FONT FACE="Arial" COLOR="maroon"><B>FMS
-201 - Vehicle Inventory (Detail) - Part A</B></FONT></P>

<CENTER>
<TABLE WIDTH="500" BORDER="0">
<TR><TD>
	<TABLE WIDTH="100%" BORDER="1" CELLSPACING="0" CELLPADDING="7" BORDERCOLOR="##808080" COLS="2">
	<TR VALIGN="BASELINE" BGCOLOR="##000080">
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 4</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>8 FMC's, 6 Subcenters</B></FONT></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040000mofm201.rtf"><FONT SIZE="2">04-00-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040000mofm201.rtf"><FONT SIZE="2">Regional Office - Atlanta, GA</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040100mofm201.rtf"><FONT SIZE="2">04-01-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040100mofm201.rtf"><FONT SIZE="2">Ft. Gillem, GA</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<CFIF #reptmo# is "01">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040101mofm201.rtf"><FONT SIZE="2">04-01-01</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040101mofm201.rtf"><FONT SIZE="2">Ft. Gillem, GA FMC &nbsp; [Ft.&nbsp;Gordon,&nbsp;GA, Ft.&nbsp;Stewart,&nbsp;GA]</FONT></A></TD>
		<CFELSE>
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040103mofm201.rtf"><FONT SIZE="2">04-01-03</FONT></A></TD>
						<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040103mofm201.rtf"><FONT SIZE="2">Ft.&nbsp;Stewart,&nbsp;GA</FONT></A></TD>
		</cfif>	
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040102mofm201.rtf"><FONT SIZE="2">04-01-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040102mofm201.rtf"><FONT SIZE="2">Ft. Benning, GA Subcenter</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<CFIF #reptmo# is "01">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040200mofm201.rtf"><FONT SIZE="2">04-02-00</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040200mofm201.rtf"><FONT SIZE="2">Smyrna, TN FMC &nbsp; [Memphis, TN]</FONT></A></TD>
		<CFELSE>
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040201mofm201.rtf"><FONT SIZE="2">04-02-01</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040201mofm201.rtf"><FONT SIZE="2">Murfreesboro&nbsp;[Smyrna, TN FMC]</FONT></A></TD>
			</TR>
			<TR VALIGN="BASELINE">
					<TD WIDTH="25%" ALIGN="CENTER">
						<A HREF="#ReptYear#/04/mo/#ReptMo#/040202mofm201.rtf"><FONT SIZE="2">04-02-02</FONT></A></TD>
					<TD WIDTH="75%">
						<A HREF="#ReptYear#/04/mo/#ReptMo#/040202mofm201.rtf"><FONT SIZE="2"> Memphis, TN</FONT></A></TD>
			</TR>
		</CFIF>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040400mofm201.rtf"><FONT SIZE="2">04-04-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040400mofm201.rtf"><FONT SIZE="2">Ft. Bragg, NC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040401mofm201.rtf"><FONT SIZE="2">04-04-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040401mofm201.rtf"><FONT SIZE="2">Ft. Bragg, NC FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040402mofm201.rtf"><FONT SIZE="2">04-04-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040402mofm201.rtf"><FONT SIZE="2">Camp LeJeune, NC Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040600mofm201.rtf"><FONT SIZE="2">04-06-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040600mofm201.rtf"><FONT SIZE="2">KSC, FL</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040601mofm201.rtf"><FONT SIZE="2">04-06-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040601mofm201.rtf"><FONT SIZE="2">KSC, FL FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040602mofm201.rtf"><FONT SIZE="2">04-06-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040602mofm201.rtf"><FONT SIZE="2">Miami, FL Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040700mofm201.rtf"><FONT SIZE="2">04-07-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040700mofm201.rtf"><FONT SIZE="2">Jackson, MS</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040701mofm201.rtf"><FONT SIZE="2">04-07-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040701mofm201.rtf"><FONT SIZE="2">Jackson, MS FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040702mofm201.rtf"><FONT SIZE="2">04-07-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040702mofm201.rtf"><FONT SIZE="2">Stennis Space Center, MS Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040800mofm201.rtf"><FONT SIZE="2">04-08-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040800mofm201.rtf"><FONT SIZE="2">Ft. McClellan, AL</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<CFIF #reptmo# is "01">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040801mofm201.rtf"><FONT SIZE="2">04-08-01</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040801mofm201.rtf"><FONT SIZE="2">Ft. McClellan, AL FMC</FONT></A></TD>
		<CFELSE>
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040803mofm201.rtf"><FONT SIZE="2">04-08-03</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040803mofm201.rtf"><FONT SIZE="2">Ft. Rucker, AL FMC</FONT></A></TD>		
		</TR>
		<TR VALIGN="BASELINE">
			<TD WIDTH="25%" ALIGN="CENTER">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040804mofm201.rtf"><FONT SIZE="2">04-08-04</FONT></A></TD>
			<TD WIDTH="75%">
				<A HREF="#ReptYear#/04/mo/#ReptMo#/040804mofm201.rtf"><FONT SIZE="2">Redstone, AL FMC</FONT></A></TD>		
		</TR>
		</cfif>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040802mofm201.rtf"><FONT SIZE="2">04-08-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040802mofm201.rtf"><FONT SIZE="2">Mobile, AL Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040900mofm201.rtf"><FONT SIZE="2">04-09-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040900mofm201.rtf"><FONT SIZE="2">Aiken, SC</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040901mofm201.rtf"><FONT SIZE="2">04-09-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040901mofm201.rtf"><FONT SIZE="2">Aiken, SC FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040902mofm201.rtf"><FONT SIZE="2">04-09-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040902mofm201.rtf"><FONT SIZE="2">Ft. Jackson, SC Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041200mofm201.rtf"><FONT SIZE="2">04-12-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041200mofm201.rtf"><FONT SIZE="2">Ft. Knox, KY FMC &nbsp; [Ft. Campbell, KY]</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041201mofm201.rtf"><FONT SIZE="2">04-12-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041201mofm201.rtf"><FONT SIZE="2">Ft. Knox, KY FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041202mofm201.rtf"><FONT SIZE="2">04-12-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041202mofm201.rtf"><FONT SIZE="2">Ft. Campbell, KY FMC</FONT></A></TD>
	</TR>
	</TABLE>
	
</TD></TR>
</TABLE>
</CENTER>
<CFELSE>
	<FONT FACE="Arial" COLOR="maroon"><B>FMS
-202 - Vehicle Inventory (Detail) - Part B</B></FONT></P>

<CENTER>
<TABLE WIDTH="500" BORDER="0">
<TR><TD>
	<TABLE WIDTH="100%" BORDER="1" CELLSPACING="0" CELLPADDING="7" BORDERCOLOR="##808080" COLS="2">
	<TR VALIGN="BASELINE" BGCOLOR="##000080">
		<TD WIDTH="25%" ALIGN="CENTER"><FONT COLOR="##FFFFFF"><B>Region 4</B></FONT></TD>
		<TD WIDTH="75%"><FONT COLOR="##FFFFFF"><B>8 FMC's, 6 Subcenters</B></FONT></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040000mofm202.rtf"><FONT SIZE="2">04-00-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040000mofm202.rtf"><FONT SIZE="2">Regional Office - Atlanta, GA</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040100mofm202.rtf"><FONT SIZE="2">04-01-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040100mofm202.rtf"><FONT SIZE="2">Ft. Gillem, GA</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040101mofm202.rtf"><FONT SIZE="2">04-01-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040101mofm202.rtf"><FONT SIZE="2">Ft. Gillem, GA FMC &nbsp; [Ft.&nbsp;Gordon,&nbsp;GA, Ft.&nbsp;Stewart,&nbsp;GA]</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040102mofm202.rtf"><FONT SIZE="2">04-01-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040102mofm202.rtf"><FONT SIZE="2">Ft. Benning, GA Subcenter</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040200mofm202.rtf"><FONT SIZE="2">04-02-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040200mofm202.rtf"><FONT SIZE="2">Smyrna, TN FMC &nbsp; [Memphis, TN]</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040400mofm202.rtf"><FONT SIZE="2">04-04-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040400mofm202.rtf"><FONT SIZE="2">Ft. Bragg, NC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040401mofm202.rtf"><FONT SIZE="2">04-04-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040401mofm202.rtf"><FONT SIZE="2">Ft. Bragg, NC FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040402mofm202.rtf"><FONT SIZE="2">04-04-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040402mofm202.rtf"><FONT SIZE="2">Camp LeJeune, NC Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040600mofm202.rtf"><FONT SIZE="2">04-06-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040600mofm202.rtf"><FONT SIZE="2">KSC, FL</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040601mofm202.rtf"><FONT SIZE="2">04-06-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040601mofm202.rtf"><FONT SIZE="2">KSC, FL FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040602mofm202.rtf"><FONT SIZE="2">04-06-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040602mofm202.rtf"><FONT SIZE="2">Miami, FL Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040700mofm202.rtf"><FONT SIZE="2">04-07-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040700mofm202.rtf"><FONT SIZE="2">Jackson, MS</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040701mofm202.rtf"><FONT SIZE="2">04-07-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040701mofm202.rtf"><FONT SIZE="2">Jackson, MS FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040702mofm202.rtf"><FONT SIZE="2">04-07-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040702mofm202.rtf"><FONT SIZE="2">Stennis Space Center, MS Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040800mofm202.rtf"><FONT SIZE="2">04-08-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040800mofm202.rtf"><FONT SIZE="2">Ft. McClellan, AL</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040801mofm202.rtf"><FONT SIZE="2">04-08-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040801mofm202.rtf"><FONT SIZE="2">Ft. McClellan, AL FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040802mofm202.rtf"><FONT SIZE="2">04-08-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040802mofm202.rtf"><FONT SIZE="2">Mobile, AL Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040900mofm202.rtf"><FONT SIZE="2">04-09-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040900mofm202.rtf"><FONT SIZE="2">Aiken, SC</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040901mofm202.rtf"><FONT SIZE="2">04-09-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040901mofm202.rtf"><FONT SIZE="2">Aiken, SC FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040902mofm202.rtf"><FONT SIZE="2">04-09-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/040902mofm202.rtf"><FONT SIZE="2">Ft. Jackson, SC Subcenter</FONT></A></TD>
	</TR>
<!--
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041200mofm202.rtf"><FONT SIZE="2">04-12-00</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041200mofm202.rtf"><FONT SIZE="2">Ft. Knox, KY FMC &nbsp; [Ft. Campbell, KY]</FONT></A></TD>
	</TR>
-->
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041201mofm202.rtf"><FONT SIZE="2">04-12-01</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041201mofm202.rtf"><FONT SIZE="2">Ft. Knox, KY FMC</FONT></A></TD>
	</TR>
	<TR VALIGN="BASELINE">
		<TD WIDTH="25%" ALIGN="CENTER">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041202mofm202.rtf"><FONT SIZE="2">04-12-02</FONT></A></TD>
		<TD WIDTH="75%">
			<A HREF="#ReptYear#/04/mo/#ReptMo#/041202mofm202.rtf"><FONT SIZE="2">Ft. Campbell, KY FMC</FONT></A></TD>
	</TR>
	</TABLE>
	
</TD></TR>
</TABLE>
</CENTER>

<BR><BR>
>

</CFIF>
</CFOUTPUT>
</BODY>
</HTML>
