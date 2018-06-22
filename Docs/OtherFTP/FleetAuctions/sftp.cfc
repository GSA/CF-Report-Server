<cfcomponent name="sftp" displayname="secure ftp" hint="does sftp for you!">

	<cffunction name="init" access="public" output="false" returntype="any">
      <cfargument name="workingdir" required="false" default=".">
      <cfscript>
	      variables.jsch = createobject('java',"com.jcraft.jsch.JSch");
	      variables.mymonitor = createobject('java',"MyProgressMonitor");
	      variables.working_dir = expandPath(arguments.workingdir);
	      variables.errormess = arrayNew(1);
	      arrayappend(errormess,"End of File");
	      arrayappend(errormess,"No such file");
	      arrayappend(errormess,"Permission denied");
	      arrayappend(errormess,"Failure");
	      arrayappend(errormess,"Bad message");
	      arrayappend(errormess,"No connection");
	      arrayappend(errormess,"Operation unsupported");
      </cfscript>
		<cfreturn this/>
	</cffunction>

	<cffunction name="connect" displayname="connect" access="public" output="false">
		<cfargument name="host" type="string" hint="host name or IP" required="true" />
		<cfargument name="username" displayName="User name on host" type="string" required="true" />
		<cfargument name="password" displayName="user password" type="string" hint="password" required="false" />
		<cfargument name="privatekey" type="string" hint="privatekey file" required="false" />
		<cfargument name="passphrase" displayName="passphrase" type="string" required="false" />
		<cfargument name="knownhostsfile" displayName="full path to known_host file" type="string" hint="full path to known_host file" required="true" />
      <cfset var connect_method = "passwd">
      <cfif not structkeyexists(arguments,"password")>
         <!--- no password supplied so check for private key and passphrase --->
         <cfset connect_method = "key">
         <cfif not structkeyexists(arguments,"privatekey") or
               not structkeyexists(arguments,"passphrase")>
            <cfthrow message="CFSFTP.connect;either password, or passphrase and private key path must be supplied">
            <cfset errorhandler(myerror,'connect')>
         </cfif>
      <cfelse>
         <cfif structkeyexists(arguments,"privatekey") or
               structkeyexists(arguments,"passphrase")>
            <cfthrow message="CFSFTP.connect;either password, or passphrase and private key path must be supplied">
            <cfset errorhandler(myerror,'connect')>
         </cfif>
      </cfif>
      <cfscript>
	      try {
		      jsch.setKnownHosts(arguments.knownhostsfile);
		      if (connect_method IS 'key'){
		      	junk = jsch.addIdentity(arguments.privatekey,arguments.passphrase);
   				mysession =jsch.getSession(arguments.username,arguments.host, 990);
		      }
		      else {
   				mysession =jsch.getSession(arguments.username,arguments.host, 990);
   		      mysession.setPassword(arguments.password);
		      }
		      mysession.connect();
		      variables.mychannel=mysession.openChannel("ftp");
		      variables.mychannel.connect();
	      }
		   catch(any myerror){
		       errorhandler(myerror,'connect');
		   }
      </cfscript>
   </cffunction>

	<cffunction name="disconnect" hint="disconnects from host" access="public" output="false" returntype="any">
      <cfscript>
	      try{
	         mysession.disconnect();
	      }
		   catch(any myerror){
		       errorhandler(myerror,'disconnect');
		   }
      </cfscript>
	</cffunction>

	<cffunction name="addhostkey" displayname="addhostkey" access="public" output="false" returntype="any">
		<cfargument name="host" type="string" hint="host name or IP" required="true" />
		<cfargument name="username" displayName="User name on host" type="string" required="true" />
		<cfargument name="password" displayName="user password" type="string" hint="password" required="true" />
		<cfargument name="knownhostsfile" displayName="full path to known_host file" type="string" hint="full path to known_host file" required="true" />
      <cfset var hk = "">
      <cfset var keytype = "">
      <cfset var keystr = "">
      <cfset var line = "">
      <cfscript>
	      try {
		      hk = mysession.getHostKey();
		      keytype = hk.getType();
		      keystr = hk.getKey();
	      }
		   catch(any myerror){
		       errorhandler(myerror,'gethostkey');
		   }
      </cfscript>
      <cfset line = arguments.host & " " & keytype & " " & keystr>
      <cffile action="append" file="#arguments.knownhostsfile#" output="#line#">
	</cffunction>

	<cffunction name="dir" hint="lists remote directory returning an array" access="public" output="false" returntype="query">
		<cfargument name="directory" hint="directory to list on host" type="string" required="false" default=".">
      <cfscript>
         var dirlist = queryNew('filename,longname,filetype');
         var dir = "";
         var i = 1;
         var dummy = 0;
         var attr = "";
         var long = "";
	      try {
            /* returns array of objects representing directory */
	         dir=mychannel.ls(arguments.directory);
		      for (i=1;i LTE arraylen(dir);i=i+1){
               attr = dir[i].getAttrs();
               long = dir[i].getLongname();
               dummy = queryaddrow(dirlist,1);
               dummy = querysetcell(dirlist,'filename',dir[i].getFilename());
               dummy = querysetcell(dirlist,'longname',long);
               dummy = querysetcell(dirlist,'filetype',iif(left(attr,1) EQ "-",de("file"),de("directory")));
		      }
	      }
		   catch(any myerror){
		       errorhandler(myerror,'dir');
		   }
   		return dirlist;
      </cfscript>

	</cffunction>

	<cffunction name="get" hint="Get a file from host" access="public" output="false" returntype="any">
		<cfargument name="filename" type="string" hint="filename to get from host" required="true" />
		<cfargument name="localfilename" type="string" hint="filename to rename to on client" required="false" default="#arguments.filename#" />
      <cfscript>
         var localfile = working_dir & "/" & arguments.localfilename;
         var remotefile = arguments.filename;
         /* monitor function not used */
         var monitor = "";
         var mode = mychannel.OVERWRITE;
         try {
            mychannel.get(remotefile,localfile,variables.mymonitor.init(),mode);
	      }
		   catch(any myerror){
		       errorhandler(myerror,'get');
		   }
      </cfscript>
	</cffunction>

	<cffunction name="put" hint="send a file to the host" access="public" output="false" returntype="any">
		<cfargument name="filename" type="string" hint="filename to put on host" required="true" />
		<cfargument name="remotefilename" type="string" hint="filename use on host" required="false" default="#arguments.filename#" />
      <cfscript>
         var localfile = working_dir & "/" & arguments.filename;
         var remotefile = arguments.remotefilename;
         /* monitor function not used */
         var monitor = "";
         var mode = mychannel.OVERWRITE;
         try {
            mychannel.put(localfile,remotefile,variables.mymonitor.init(),mode);
	      }
		   catch(any myerror){
		       errorhandler(myerror,'put');
		   }
      </cfscript>
	</cffunction>

	<cffunction name="rename" hint="rename a file on the host" access="public" output="false" returntype="any">
		<cfargument name="filename" type="string" hint="filename to rename" required="true" />
		<cfargument name="newfilename" type="string" hint="new filename" required="true" />
      <cfscript>
         var fromfile = arguments.filename;
         var tofile = arguments.newfilename;
         try {
            mychannel.rename(fromfile,tofile);
	      }
		   catch(any myerror){
		       errorhandler(myerror,'rename');
		   }
      </cfscript>
	</cffunction>

	<cffunction name="del" hint="delete a file on host" access="public" output="false" returntype="any">
		<cfargument name="filename" type="string" hint="filename to delete from host" required="true" />
      <cfscript>
         try {
   		   mychannel.rm(arguments.filename);
	      }
		   catch(any myerror){
		       errorhandler(myerror,'del');
		   }
		</cfscript>
	</cffunction>

	<cffunction name="cd" hint="change directory on host" access="public" output="false" returntype="any">
		<cfargument name="directory" type="string" required="true" />
      <cfscript>
         try {
   		   mychannel.cd(arguments.directory);
	      }
		   catch(any myerror){
		       errorhandler(myerror,'cd');
		   }
		</cfscript>
	</cffunction>

	<cffunction name="mkdir" hint="make a new directory on host" access="public" output="false" returntype="any">
		<cfargument name="dir" type="string" hint="new directory to create on host" required="true" />
      <cfscript>
         try {
   		   mychannel.mkdir(arguments.dir);
	      }
		   catch(any myerror){
		       errorhandler(myerror,'mkdir');
		   }
		</cfscript>
	</cffunction>

   <cffunction name="rmdir" hint="delete directory on host" access="public" output="false" returntype="any">
		<cfargument name="dir" type="string" hint="directory to delete on host" required="true" />
      <cfscript>
         try {
   		   mychannel.rmdir(arguments.dir);
	      }
		   catch(any myerror){
		       errorhandler(myerror,'rmdir');
		   }
		</cfscript>
	</cffunction>
   <cffunction name="errorhandler" access="private">
      <cfargument name="result" type="any" required="true">
      <cfargument name="who_failed" type="string" required="true">
         <cfif isDefined("result.id")>
            <cfset this_error = errormess[result.id]>
            <cfthrow message="CFSFTP.#arguments.who_failed#;#this_error#">
         </cfif>
         <cfif isDefined("result.message")>
            <cfthrow message="CFSFTP.#arguments.who_failed#;#result.message#">
         </cfif>
         <cfthrow message="Unknown error in cfsftp">
   </cffunction>
</cfcomponent>