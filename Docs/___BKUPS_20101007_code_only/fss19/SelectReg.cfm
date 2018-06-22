<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<CFQUERY NAME="GetRegion" DATASOURCE="OnlineReports">
	SELECT *
	FROM FSS19Region
	WHERE type in ('l' , 'p')
	ORDER BY Type, RegionName
</CFQUERY> 

<HEAD>
	<TITLE>Change Region</TITLE>

<SCRIPT LANGUAGE="JavaScript">
function LinkTo(form)
 			{	
			newRegion = (form.RegionCode.options[form.RegionCode.selectedIndex].value)
				var xurl = "ChangeReg.cfm?Regionxx=" + newRegion
				window.open(xurl,"_top")
			}
</SCRIPT>
</HEAD>


<BODY text="maroon">
<p>
<p>
<p>
<p>
<p>

<blockquote>
<p>
<blockquote>
<p>
<Table>
<tr><td valign="top" align="left">Please select a new<br>Region/Program</td>

<TD><FORM action="ChangeReg.cfm">
	<p><SELECT
		onChange="LinkTo(this.form)" 
		NAME="RegionCode"
		Size="26">
			
			<cfoutput query="GetRegion">
				<Option VALUE="#RegionCode#">&nbsp;#RegionCode#&nbsp;-&nbsp;#RegionName#
			</cfoutput>
	</select><br>
	</form></td>
	</tr>
</table>
</center>
</blockquote>
</BODY>
</HTML>
