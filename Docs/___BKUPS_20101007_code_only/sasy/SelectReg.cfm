<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<CFQUERY NAME="GetRegion" DATASOURCE="onlinereports">
	SELECT *
	FROM SASYRegion
	ORDER BY RegionNo
</CFQUERY> 

<HEAD>
	<TITLE>Change Region</TITLE>
<SCRIPT LANGUAGE="JavaScript">
function LinkTo(form)
 			{	
			newRegion = (form.RegionNOx.options[form.RegionNOx.selectedIndex].value)
				var xurl = "ChangeReg.cfm?RegionNOx=" + newRegion
				window.open(xurl,"_top")
			}
</SCRIPT>
</HEAD>


<BODY text="maroon">

Click region
<FORM action="ChangeReg.cfm">
	<SELECT
		onChange="LinkTo(this.form)" 
		NAME="RegionNOx"
		Size="12">
			<cfoutput query="GetRegion">
				<Option VALUE="#RegionNo#">#RegionName#
			</cfoutput>
	</select>
	
</form>
</BODY>
</HTML>
