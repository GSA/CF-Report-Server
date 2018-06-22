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
		NAME="RegionCode"
		Size="26">
			
			<cfoutput query="GetRegion">
				<Option VALUE="#RegionCode#">&nbsp;#RegionCode#&nbsp;-&nbsp;#RegionName#
			</cfoutput>
	</select><br>
	<INPUT type="submit" Value="Change Region">
	</form>
</center>
</blockquote>
</BODY>
</HTML>
