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
				var xurl = "ChangeReg.cfm?RegionCode=" + newRegion
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
<h3>Please select a new Region/Program</h3>
<p>


<center><FORM action="ChangeReg.cfm">
	<p><SELECT
		onChange="linkto(this.form)" 
		NAME="RegionCode"
		Size="15">
			
			<cfoutput query="GetRegion">
				<Option VALUE="#RegionCode#">&nbsp;#RegionCode#&nbsp;-&nbsp;#RegionName#
			</cfoutput>
	</select><br>
	
	</form>
</center>
</blockquote>
</BODY>
</HTML>
