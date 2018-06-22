<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<CFQUERY NAME="GetCatagory" DATASOURCE="OnlineReports">
	SELECT *
	FROM Fss19ReportCatagory
	ORDER BY CatagoryName
</CFQUERY> 

<HEAD>
	<TITLE>Change catagory</TITLE>
<SCRIPT LANGUAGE="JavaScript">
function LinkTo(form)
 			{	
			newCatagory = (form.CatagoryCode.options[form.CatagoryCode.selectedIndex].value)
				var xurl = "ChangeCatagory.cfm?CatagoryCode=" + newCatagory
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
<h3>Please select a new Report Category</h3>
<p>


<center><FORM action="ChangeCatagory.cfm">
	<p><SELECT
		onChange="LinkTo(this.form)"
		NAME="CatagoryCode"
		Size="8">
			
			<cfoutput query="Getcatagory">
				<Option VALUE="#catagoryCode#">#catagoryName#
			</cfoutput>
	</select><br>
	
	</form>
</center>
</blockquote>
</BODY>
</HTML>
