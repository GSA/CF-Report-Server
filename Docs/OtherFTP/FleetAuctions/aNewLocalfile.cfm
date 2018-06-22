<!--- available methods and arguments
   init : establish some defaults in sftp object
   connect: connect to host
   cd   : change host directory
   dir  : return an array of filenames on host directory
   get  : get a file from host to the local working directory (default to current dir)
   put  : put a file onto the host from local working directory
   del  : delete a file on the host
   mkdir: create a new directory on the host
   disconnect: close connection to host

   arguments:
   init : workingdir (optional, defaults to ".")
   connect : host, username, password, privatekey, passphrase, knownhostsfile
   addhostkey : host, username, password, knownhostsfile
   disconnect : none
   cd : directory
   dir : directory (optional, defaults to ".")
   mkdir : directory
   get,put,del : filename
 --->
<!--- example code for calling sftp --->
<!--- Create an object and call constructor (init) method
      the init method has one optional parameter of workingdir
      this defaults the local directory to the current directory
      where this page is called from. You can specify any valid path on the server
      but be aware that expandPath(workingdir) is done so specify the dir
      as either relative to the current dir or absolute in relation to the
      web root
 --->
<cfset mysftp = createobject("component","sftp").init()>
<!--- Now call connect method and supply the host, username and password

      Since version 1.2.0 there is an extra method of 'addhostkey' this
      caters for the first connection to a host.

      The code below will detect the initial unknownhostkey failure and
      invoke the addhostkey, then re-attempt the connection.

      You may wish to handle missing keys in another way, this is just an example

      Since version 1.3.0 you can connect using public/private key authentication
      instead of a password. To use this specify a full path to a private key in
      the privatekey argument and the passphrase in the passphrase argument instead
      of the password.  An example is commented out below.

       --->
<cftry>
  <!--- key based authentication

  while testing this method I would also comment out
  the <cfcatch> block below which may mask any errors you are getting

  <cfset mysftp.connect(host="yourhost",
                      username="youruser",
                      privatekey="c:\privatekeypath\id_rsa",
                      knownhostsfile="c:\known_hosts")>

 --->
   <cfset mysftp.connect(host="yourhost",
                      username="youruser",
                      password="yourpass",
                      knownhostsfile="c:\known_hosts")>
   <cfcatch type="any">
      <cfif #findnocase("unknownhostkey",cfcatch.message)#>
         <cfset mysftp.addhostkey(host="yourhost",
                                  username="youruser",
                                  password="yourpassword",
                                  knownhostsfile="c:\known_hosts")>

         <cfoutput>Adding host key for yourhost<br/></cfoutput>

         <cfset mysftp.connect(host="yourhost",
                               username="youruser",
                               password="yourpassword",
                               knownhostsfile="c:\known_hosts")>

      </cfif>
   </cfcatch>
</cftry>
<!--- create a new directory on the host below the current directory --->
<cfset mysftp.mkdir("subdir")>
<!--- change directory on the host --->
<cfset mysftp.cd("subdir")>
<!--- put a local file onto the host in the current directory --->
<!--- <cfset mysftp.put("bigfile.txt","aNewRemoteFile")>  use this file to test that biger files are correctly transferred --->
<cfset mysftp.put("example.cfm","aNewRemoteFile")>
<!--- get an array of all files (and sub directories) in the
      current folder on the host --->
<cfset dirarray = mysftp.dir()>
<cfdump var="#dirarray#">
<!--- rename a file --->
<cfset mysftp.rename("aNewRemoteFile","ARenamedFile")>
<!--- get an array of all files (and sub directories) in the
      current folder on the host --->
<cfset dirarray = mysftp.dir()>
<cfdump var="#dirarray#">
<!--- get the renamed file back again --->
<cfset mysftp.get("ARenamedFile","aNewLocalfile.cfm")>
<!--- now delete the remote file --->
<cfset mysftp.del("ARenamedFile")>
<!--- get an array of all files (and sub directories) in the
      current folder on the host --->
<cfset dirarray = mysftp.dir()>
<cfdump var="#dirarray#">
<!--- cd up a level and remove the subdir --->
<cfset mysftp.cd("../")>
<!--- get an array of all files (and sub directories) in the
      current folder on the host --->
<cfset dirarray = mysftp.dir()>
<cfdump var="#dirarray#">
<!--- now delete the remote directory subdir --->
<cfset mysftp.rmdir("subdir")>


<!--- disconnect --->
<cfset mysftp.disconnect()>
<!--- would suggest you remove object maybe using structkeydelete when finished --->
<cfset mysftp = "">