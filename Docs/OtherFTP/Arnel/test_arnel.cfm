<!--- Connect to FTP Server --->

<cfftp action="OPEN" server="159.142.46.162"  username="ROADSFTP" password="FACT1MOR" stoponerror="No" passive="Yes" connection="MyConn" retrycount="3">

<cfftp action="LISTDIR" server="159.142.46.162" username="RODSFTP" password="FACT1MOR" stoponerror="Yes" name="Getfiles" directory="ROADSDEV" connection="MyConn">



<table border="1">
	<tr>
		<th>Name</th>
		<th>Path</th>
	</tr>
	<cfoutput query="Getfiles">
	<tr>
		<td>#Name#</td>
		<td>#path#</td>
	</tr>
	</cfoutput>
</table> 


 

