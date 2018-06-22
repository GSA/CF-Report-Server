<HTML>

<BODY>
<HEAD>
<SCRIPT LANGUAGE="JavaScript">
<!--
function topwindow()
 {
msgWindow=window.open('<cfoutput>#session.LinkURL##session.FileName#.rtf</cfoutput>' ,'JavaScriptIt','toolbar= 0,location= 0,directories= 0,status= 0,menubar= 0,scrollbars= 0,resizable= 1,copyhistory= 0,width=150,height=300');
 }
// End the hiding here.-->
</SCRIPT>

</head>

<H2><font face="Ariel"><font face="" color="Teal">You have selected password protected data<br>Please enter a password</font></font></H2>

<!----------------------------------------------------------------
	The below login form checks for the existence of Username and
	Password cookies and pre-fills then into the login form if
	it exists.
------------------------------------------------------------------>
<CFIF action is 'Enter'>
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
	<CFDIRECTORY action="list" directory="#session.directory#" name="contents" sort="name" filter="*.rtf">

	<cfquery name="getreport" datasource="OnLineReports">
		select	* from fss19reportname
		where catagorycode = '#session.reportcatagory#'
			AND reptfilename = '#session.FileName#'
			AND Password = '#Password#'
	</cfquery>
	<cfif getreport.recordcount is 0>
		<table>
	     <tr>
		 	<td><font size="+1">Invalid Password </font></td>
		</tr>
		<tr><td><cfoutput>catagorycode = #session.reportcatagory#<br>
				reptfilename = #session.FileName#<br>
				Password = #Password#</cfoutput></td></tr>
		<tr>	
			<td><a href="getpassword.cfm?action=enter">Click here to continue</a></td>
		</tr>
		</table>	
	<cfelse>
		<table>
	     <tr>
		 	<td><font size="+1">Password accepted</font> </td>
		</tr>
		<tr>	
			<td><a href="<cfoutput>#session.LinkURL##session.FileName#.rtf</cfoutput>" onMouseOver="window.Status = 'Hello!';return true" onMouseOut="window.defaultStatus = 'Hello!';return true" onClick="window.Status = 'Hello!';return true" onkeyup="window.Status = 'Hello!';return true" onblur="window.Status = 'Hello!';return true" target="Frame-btm" >Click here to load the report</a></td>
		</tr>
		</table>	
	</cfif>	
</cfif>

</BODY>
</HTML>
