<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<CFQUERY NAME="GetStore" DATASOURCE="onlinereports">
	SELECT *
	FROM CSCStores
	where country = '#url.country#'
	ORDER BY StoreID
</CFQUERY> 

<HEAD>
	<TITLE>Change Store</TITLE>
<SCRIPT LANGUAGE="JavaScript">
function LinkTo(form)
 			{	
			newStore = (form.StoreIDx.options[form.StoreIDx.selectedIndex].value)
				var xurl = "ChangeReg.cfm?StoreIDx=" + newStore
				window.open(xurl,"_top")
			}
</SCRIPT>
</HEAD>


<BODY text="maroon">

Click Store
<FORM action="ChangeReg.cfm">
	<SELECT
		onChange="LinkTo(this.form)" 
		NAME="StoreIDx"
		Size="12">
			<cfoutput query="GetStore">
				<Option VALUE="#StoreID#">#StoreName#
			</cfoutput>
	</select>
	
</form>
</BODY>
</HTML>
