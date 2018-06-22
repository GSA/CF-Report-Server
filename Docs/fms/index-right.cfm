<HTML>

<CFQUERY NAME="GetReg" DATASOURCE="OnlineReports">
	SELECT *
	FROM FSS19Region
	WHERE RegionNo = '#RegionNo#'
</CFQUERY> 
<HEAD>
	<TITLE>Untitled</TITLE>
<SCRIPT LANGUAGE="JavaScript">
<!--
function SelectRegion(form)
	{
	chosenreg = "yes"
	RegionNo = (form.ReptRegion.options[form.ReptRegion.selectedIndex].value)
	}
//-->
</SCRIPT>	
</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">
<center><img src="images/reports-title.jpg" width=500 height=30 border=0 alt=""><br>
&nbsp;<br>
&nbsp;<br>
&nbsp;<br>
&nbsp;<br>
<blockquote>
<font size="+2" color="#000080">Your current settings for FEDS 23 online reports are:</font><br>
<UL><font size="+2" color="#000080"><cfoutput> #getreg.RegionName# for YEAR  #session.ReptYear#</cfoutput></font><br>
&nbsp;<br>
&nbsp;<br>
<UL>Click on YEAR or REGION in the left navigation panel at any time to change these settings.<br>If the curent settings are correct select the report frequency from the left panel. 
</UL>
</UL>	
	<p>&nbsp;</p>
	<hr>
	<p>
		<a href="mailto:al.iagnemmo@gsa.gov"><font size="+2" color="#000080"><b>Point of Contact</b></font></a><br>
		<br><font face="Arial">For questions or feedback pertaining to this web site...<br>
		contact Al Iagnemmo at <a href="mailto:al.iagnemmo@gsa.gov">al.iagnemmo@gsa.gov</a>.</font>
	</p>


</blockquote>

</BODY>
</HTML>
