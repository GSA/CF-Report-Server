
<!----------------------------------------------------------------
	The below login form checks for the existence of Username and
	Password cookies and pre-fills then into the login form if
	it exists.
------------------------------------------------------------------>
<CFIF action is 'Enter'>
<body>
	<FORM ACTION="pass-bottom.cfm?action=validate&file=<cfoutput>#url.file#&ext=#url.ext#</cfoutput>" METHOD=POST>
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
	
<!--- 	<CFDIRECTORY action="list" directory="#session.directory#" name="contents" sort="name" filter="*.#url.extension#"> --->

	<cfquery name="getreport" datasource="OnLineReports">
		select	* from fss19reportname
		where catagorycode = '#session.reportcatagory#'
			AND alias = '#url.file#'
			AND Password = '#Password#'
	</cfquery>
	<cfif getreport.recordcount is 0>
		<table>
	     <tr>
		 	<td><font size="+1">Invalid Password </font></td>
		</tr>
		<!--- <tr><td><cfoutput>catagorycode = #session.reportcatagory#<br>
				reptfilename = #session.FileName#<br>
				ext = #url.ext#<br>
				Password = #Password#</cfoutput></td></tr> --->
		<tr>	
			<td><a href="pass-bottom.cfm?action=enter&file=<cfoutput>#url.file#</cfoutput>">Click here to continue</a></td>
		</tr>
		</table>	
	<cfelse>
		<table>
		<!--- <tr><td><cfoutput>catagorycode = #session.reportcatagory#<br>
				reptfilename = #getreport.reptFileName#<br>
				ext = #url.ext#<br>
				Password = #Password#</cfoutput> ---></td></tr> --->
		<tr>	
	     <tr>
		 	<td><font size="+1">Password accepted</font> </td>
		</tr>
		<tr>	
			<td><a href="<cfoutput>#session.LinkURL##getreport.reptFileName#.#url.ext#</cfoutput>" onMouseOver="window.Status = 'Hello!';return true" onMouseOut="window.defaultStatus = 'Hello!';return true" onClick="window.Status = 'Hello!';return true" onkeyup="window.Status = 'Hello!';return true" onblur="window.Status = 'Hello!';return true" target="Frame-btm" >Click here to load the report</a></td>
		</tr>
		</table>	
	</cfif>	
</cfif>

</BODY>
</HTML>
