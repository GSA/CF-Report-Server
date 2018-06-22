<!--- Connect to FTP Server --->
<cfset mysftp = createobject("component","sftp").init()>
<cftry>
   <cfset mysftp.connect(host="ftp.autoims.com",
                      username="GSA",
                      password="2RzkQ9qn",
                      knownhostsfile="c:\known_hosts")>
   <cfcatch type="any">
      <cfif #findnocase("unknownhostkey",cfcatch.message)#>
         <cfset mysftp.addhostkey(host="ftp.autoims.com",
                                  username="GSA",
                                  password="2RzkQ9qn",
                               knownhostsfile="c:\known_hosts")>

         <cfoutput>Adding host key for yourhost<br/></cfoutput>

         <cfset mysftp.connect(host="ftp.autoims.com",
                               username="GSA",
                               password="2RzkQ9qn",
                               knownhostsfile="c:\known_hosts")>

	  </cfif>
   </cfcatch>
</cftry>

hello
<!--- <cfabort> --->

<cfset dirarray = mysftp.dir()>
<cfdump var="#dirarray#">
bye
<cfset mysftp.disconnect()>
<!--- would suggest you remove object maybe using structkeydelete when finished --->
<cfset mysftp = "">
<cfabort>
<!--- <cfset mysftp.cd("reports")> --->
<cfset Getfiles = mysftp.dir()>
<cfdump var="#Getfiles#">




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
 

<!--- <cfset mysftp.get("#mostRecentFile#")> --->


<P>Close the connection:
<!--- disconnect --->
<cfset mysftp.disconnect()>
<!--- would suggest you remove object maybe using structkeydelete when finished --->
<cfset mysftp = "">

<!--- <P>Did it succeed? <cfoutput>#cfftp.succeeded#</cfoutput> --->

<p>Done!!</p>



 

