<!--- Connect to FTP Server --->

<cfftp action="OPEN" server="ftp.autoims.com"  username="GSA" password="giacsyofvu" stoponerror="No" passive="Yes" connection="MyConn" retrycount="3">

<cfftp action="LISTDIR" server="ftp.autoims.com"  username="GSA" password="giacsyofvu" stoponerror="Yes" name="Getfiles" directory="reports" connection="MyConn">


	<CFSET mostRecentFile = "">
	<CFLOOP query="Getfiles">
		<CFIF (Getfiles.name GT mostRecentFile) and (left(Getfiles.name, 6) EQ "50104_")>
			<CFSET mostRecentFile = Getfiles.name>
		</CFIF>
	</CFLOOP>

<!--- Query of Queries
<cfquery name="see" maxrows=1 dbtype="query">
Select name, path
from getfiles
order by name desc
</cfquery> --->

 <!--- Display Contents --->
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

<p><cfoutput>File to download: #mostRecentFile#</cfoutput></p>
 

<!---  <cfoutput>#see.name#</cfoutput> --->
<cfftp action="GETFILE" server="ftp.autoims.com"  username="GSA" password="giacsyofvu" stoponerror="Yes" localfile="D:\reports\docs\otherftp\FleetAuctions\PhotoDataFromIMS.CSV" remotefile="reports/#mostRecentFile#" transfermode="AUTO" failifexists="No" connection="MyConn"><!---  --->

<P>Close the connection:
<cfftp connection = "MyConn"
    action = "close"
    stopOnError = "Yes">

<P>Did it succeed? <cfoutput>#cfftp.succeeded#</cfoutput>

<p>Done!!</p>



 

