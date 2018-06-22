<HTML>
<HEAD>
<title>page title</title>
<SCRIPT LANGUAGE="JavaScript">
<!--
function topwindow()
 {
msgWindow=window.open('<cfoutput>#cookie.LinkURL##cookie.FileName#.rtf</cfoutput>' ,'JavaScriptIt','toolbar= 0,location= 0,directories= 0,status= 0,menubar= 0,scrollbars= 0,resizable= 1,copyhistory= 0,width=150,height=300');
 }
// End the hiding here.-->


<!-- Begin
function newwindow() {
msgWindow=window.open('<cfoutput>#cookie.LinkURL##session.FileName#.rtf</cfoutput>' ,'JavaScriptIt','toolbar= 0,locationbar="", location= 0,directories= 0,status= 0,menubar= 0,scrollbars= 0,resizable= 1,copyhistory= 0,width=800,height=600');
}
// End -->
</SCRIPT>
</head>

<H2><font face="Ariel"><font face="" color="Teal">You have selected password protected data<br>Please enter a password</font></font></H2>

<!----------------------------------------------------------------
	The below login form checks for the existence of Username and
	Password cookies and pre-fills then into the login form if
	it exists.
------------------------------------------------------------------>
<CFIF action is 'Enter'>
<BODY>
	<FORM ACTION="getpassword.cfm?action=validate" METHOD=POST>
	<PRE>
	
	     <table>
	     <tr>
		 	<td >Password </td>
			<td><INPUT TYPE="password" NAME="Password" tabindex="1"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td></td><td> <INPUT TYPE="submit" VALUE=" Authenticate "></td></tr>
		</table>
	</PRE>
	
	</FORM>
<CFELSEIF action is 'validate'>
<BODY>
	<CFDIRECTORY action="list" directory="#Cookie.directory#" name="contents" sort="name" filter="*.rtf">

	<cfquery name="getreport" datasource="OnLineReports">
		select	* from fss19reportname
		where catagorycode = '#cookie.reportcatagory#'
			AND reptfilename = '#session.FileName#'
			AND Password = '#Password#'
	</cfquery>
	<cfif getreport.recordcount is 0>
		<table>
	     <tr>
		 	<td><font size="+1">Invalid Password </font></td>
		</tr>
		<tr><td><cfoutput>catagorycode = #cookie.reportcatagory#<br>
				reptfilename = #session.FileName#<br>
				Password = #Password#</cfoutput></td></tr>
		<tr>	
			<td><a href="getpassword.cfm?action=enter">Click here to continue</a></td>
		</tr>
		</table>	
<cfelse>
<BODY onload="newwindow()">




		<table>
	     <tr>
		 	<td><font size="+1">Password accepted</font> </td>
		</tr>
		<tr>	
			<td>	<a href="<cfoutput>#session.previousURL#</cfoutput>">click to return to the calander</a></td>
		</tr>
		</table>	
	</cfif>	
</cfif>

</BODY>
</HTML>
