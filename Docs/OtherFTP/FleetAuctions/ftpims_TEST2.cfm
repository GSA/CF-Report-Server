<!--- Connect to FTP Server --->
111
<cfset ftps = CreateObject("java","FTPSClient").init()>
aaa
 <CFABORT>
   <cfset ftps.connect("ftp.autoims.com",990)>bbb    
	<cfset login = ftps.login("GSA","2RzkQ9qn","account")>ccc        
	<!---this is where you do all your ftp stuff--->    
	<!---Array of FTPFile Objects--->
	<cfset files = ftps.listFiles()>ddd
	<!--- logout --->
	<cfset ftps.logout()>eee
	<!--- disconnect --->
	<cfset ftps.disconnect()>fff 



<CFABORT>












<cfftp action="OPEN" server="ftps://ftp.autoims.com:990"  username="GSA" password="2RzkQ9qn" stoponerror="No" passive="Yes" connection="MyConn" retrycount="3">

<cfftp action="LISTDIR" server="ftps://ftp.autoims.com:990"  username="GSA" password="2RzkQ9qn" stoponerror="Yes" name="Getfiles" directory="reports" connection="MyConn">


	<CFSET mostRecentFile = "">
	<CFLOOP query="Getfiles">
		<CFIF Getfiles.name GT mostRecentFile>
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
<cfftp action="GETFILE" server="ftps://ftp.autoims.com:990"  username="GSA" password="2RzkQ9pn" stoponerror="Yes" localfile="D:\reports\docs\otherftp\FleetAuctions\dataFromIMS.csv" remotefile="reports/#mostRecentFile#" transfermode="AUTO" failifexists="No" connection="MyConn">

<P>Close the connection:
<cfftp connection = "MyConn"
    action = "close"
    stopOnError = "Yes">

<P>Did it succeed? <cfoutput>#cfftp.succeeded#</cfoutput>

<p>Done!!</p>



 

