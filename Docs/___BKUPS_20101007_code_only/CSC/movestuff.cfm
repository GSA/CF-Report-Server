<CFQUERY NAME="GetStore" DATASOURCE="onlinereports">
	SELECT *
	FROM CSCStores
	where country = 'asia'
	ORDER BY StoreID
</CFQUERY> 
<CFSET RootURL = #ServerUrl# & #ReportDir# & "/">

<CFSET RootDir = "T:\reports\docs\#ReportDir#\">
	

<CFSET Directory = #RootDir# & "#ReptYear#" & "\">
<CFSET LinkUrl = #RootURL# & "#ReptYear#" & "/">

<cfloop query="getstore">
	<CFDIRECTORY action="list" directory="#directory#" name="contents" sort="name" filter="1114-#storeid#-*.*">
	<cfoutput query="contents">
	<cfset fullname = '#directory#' & '#name#'>
		<cfset newname = #replace(fullname, "1114", "1117", "one")#>
			#fullname#, #newname#<br>
		<cffile action="RENAME" source="#fullname#" destination="#newname#">
	</cfoutput>
	
</cfloop>