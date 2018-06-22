<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>

<CFQUERY NAME="GetReg" DATASOURCE="onlinereports">
	SELECT *
	FROM CSCStores
	WHERE StoreID = '#client.reptStore#'
</CFQUERY> 
<HEAD>
	<TITLE>Untitled</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000">

<a href="selectreg.cfm?country=USA" target="Frame-btm" ><img src="images/usa.jpg" width="108" height="40" alt="" border="0"></a>&nbsp;
<a href="selectreg.cfm?country=Europe" target="Frame-btm" ><img src="images/europe.jpg" width="123" height="40" alt="" border="0"></a>&nbsp;
<a href="selectreg.cfm?country=asia" target="Frame-btm" ><img src="images/asia.jpg" width="157" height="40" alt="" border="0"></a>&nbsp;
<br>
<img src="images/select.jpg" width="240" height="40" border="0" alt="">&nbsp;&nbsp;<font face="Tahoma" color="Navy" size="+3">"<cfoutput>#getreg.storename#</cfoutput>"</font>
		
	



</BODY>
</HTML>
