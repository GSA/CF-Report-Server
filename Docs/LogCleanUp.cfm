 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Report2 Server Log Clean Up</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
<body>
 <cfoutput>
<strong>Report Server Cleanup</strong><br> <br>
<!--- <cfsilent> --->  
	<cfscript>
	ThisDir1 = "#GetDirectoryFromPath(Path_Translated)#OtherFTP\logs\Apps80\W3SVC9";
	ThisDir2 = "#GetDirectoryFromPath(Path_Translated)#OtherFTP\logs\AutoAuctions\W3SVC7";
	ThisDir3 = "#GetDirectoryFromPath(Path_Translated)#OtherFTP\logs\Expo\W3SVC3";
	ThisDir4 = "#GetDirectoryFromPath(Path_Translated)#OtherFTP\logs\Insite80\W3SVC4";
	ThisDir5 = "#GetDirectoryFromPath(Path_Translated)#OtherFTP\logs\SurplusSales\W3SVC5";
	ThisDate = DateAdd("d",-730, now());
	</cfscript>
	
	<cfdirectory name="AllFiles1" directory="#ThisDir1#" sort="datelastmodified"> 
	<cfdirectory name="AllFiles2" directory="#ThisDir2#" sort="datelastmodified"> 
	<cfdirectory name="AllFiles3" directory="#ThisDir3#" sort="datelastmodified"> 
	<cfdirectory name="AllFiles4" directory="#ThisDir4#" sort="datelastmodified"> 
	<cfdirectory name="AllFiles5" directory="#ThisDir5#" sort="datelastmodified"> 

	ThisDir1 = #ThisDir1#<br>
	ThisDir2 = #ThisDir2#<br>
	ThisDir3 = #ThisDir3#<br>
	ThisDir4 = #ThisDir4#<br>
	ThisDir5 = #ThisDir5#<br>
	ThisDate = #ThisDate#<br>
	
	<!--- <cfdump var="#AllFiles1#" label="AllFiles1"><br> 
	<cfdump var="#AllFiles2#" label="AllFiles2"><br> 
	<cfdump var="#AllFiles3#" label="AllFiles3"><br> 
	<cfdump var="#AllFiles4#" label="AllFiles4"><br> 
	<cfdump var="#AllFiles5#" label="AllFiles5"><br> ---> 
	 
	 
	The cleanup date being used is <strong>#dateformat(ThisDate, 'mm/dd/yyyy')#</strong>.<br><br>

	
	<!--- SCR 25: MLN  ; Directory - D:\Reports\Docs\\OtherFTP\logs\Apps80\W3SVC9 --->
	<cfif AllFiles1.recordcount gt 0>
		<p>*** Processing: <strong>#ThisDir1#</strong> ***********************************************************************************<br>
		<cfquery name="OldFiles1" dbtype="query">
			select * from AllFiles1
			where datelastmodified < #ThisDate#  
			order by datelastmodified  
		</cfquery>
		The directory <strong>#ThisDir1#</strong> contains <strong>#AllFiles1.recordcount#</strong> records.<br>
		A total of <strong>#OLDFiles1.recordcount#</strong> records will be <strong>DELETED</strong> from directory <strong>#ThisDir1# - AFTER</strong> this clean up. <br><br>
		<cfif OldFiles1.recordcount gt 0>
			<cfdump var="#OldFiles1#" label="Files to be Deleted from #ThisDir1#"> <br><br>
			<!--- need un-comment the loop process below when deleting data by the date submited ---> 
			<cfloop query="OldFiles1">
				<!--- #ThisDir1#/#name[currentrow]#<br> --->
				<cffile file="#ThisDir1#/#name[currentrow]#" action="delete"> <!--- --->
			</cfloop>
		<cfelse>
			<strong>No records will be deleted from: #ThisDir1#.</strong><br><br>	
		</cfif>   <!--- OldFiles1.recordcount --->
	</cfif>   <!--- AllFiles1.recordcount --->
	
 	<!--- SCR 25: MLN  ; Directory - D:\Reports\Docs\\OtherFTP\logs\AutoAuctions\W3SVC7 --->
	<cfif AllFiles2.recordcount gt 0>
		<p>*** Processing: <strong>#ThisDir2#</strong> ***********************************************************************************<br>
		<cfquery name="OldFiles2" dbtype="query">
			select * from AllFiles2
			where datelastmodified < #ThisDate#  
			order by datelastmodified  
		</cfquery>
		The directory <strong>#ThisDir2#</strong> contains <strong>#AllFiles2.recordcount#</strong> records.<br>
		A total of <strong>#OLDFiles2.recordcount#</strong> records will be <strong>DELETED</strong> from directory <strong>#ThisDir2# - AFTER</strong> this clean up. <br><br>
		<cfif OldFiles2.recordcount gt 0>
			<cfdump var="#OldFiles2#" label="Files to be Deleted from #ThisDir2#"> <br><br>
			<!--- need un-comment the loop process below when deleting data by the date submited ---> 
			<cfloop query="OldFiles2">
				<!--- #ThisDir2#/#name[currentrow]#<br> --->
				<cffile file="#ThisDir2#/#name[currentrow]#" action="delete"> <!--- --->
			</cfloop>
		<cfelse>
			<strong>No records will be deleted from: #ThisDir2#.</strong><br><br>	
		</cfif>   <!--- OldFiles2.recordcount --->
	</cfif>   <!--- AllFiles2.recordcount --->
	
	<!--- SCR 25: MLN  ; Directory - D:\Reports\Docs\\OtherFTP\logs\Expo\W3SVC3 --->
	<cfif AllFiles3.recordcount gt 0>
		<p>*** Processing: <strong>#ThisDir3#</strong> ***********************************************************************************<br>
		<cfquery name="OldFiles3" dbtype="query">
			select * from AllFiles3
			where datelastmodified < #ThisDate#  
			order by datelastmodified  
		</cfquery>
		The directory <strong>#ThisDir3#</strong> contains <strong>#AllFiles3.recordcount#</strong> records.<br>
		A total of <strong>#OLDFiles3.recordcount#</strong> records will be <strong>DELETED</strong> from directory <strong>#ThisDir3# - AFTER</strong> this clean up. <br><br>
		<cfif OldFiles3.recordcount gt 0>
			<cfdump var="#OldFiles3#" label="Files to be Deleted from #ThisDir3#"> <br><br>
			<!--- need un-comment the loop process below when deleting data by the date submited ---> 
			<cfloop query="OldFiles3">
				<!--- #ThisDir3#/#name[currentrow]#<br> --->
				<cffile file="#ThisDir3#/#name[currentrow]#" action="delete"> <!--- --->
			</cfloop>
		<cfelse>
			<strong>No records will be deleted from: #ThisDir3#.</strong><br><br>	
		</cfif>   <!--- OldFiles3.recordcount --->
	</cfif>   <!--- AllFiles3.recordcount --->
	
	<!--- SCR 25: MLN  ; Directory - D:\Reports\Docs\\OtherFTP\logs\Insite80\W3SVC4 --->
	<cfif AllFiles4.recordcount gt 0>
		<p>*** Processing: <strong>#ThisDir4#</strong> ***********************************************************************************<br>
		<cfquery name="OldFiles4" dbtype="query">
			select * from AllFiles4
			where datelastmodified < #ThisDate#  
			order by datelastmodified  
		</cfquery>
		The directory <strong>#ThisDir4#</strong> contains <strong>#AllFiles4.recordcount#</strong> records.<br>
		A total of <strong>#OLDFiles4.recordcount#</strong> records will be <strong>DELETED</strong> from directory <strong>#ThisDir4# - AFTER</strong> this clean up. <br><br>
		<cfif OldFiles4.recordcount gt 0>
			<cfdump var="#OldFiles4#" label="Files to be Deleted from #ThisDir4#"> <br><br>
			<!--- need un-comment the loop process below when deleting data by the date submited ---> 
			<cfloop query="OldFiles4">
				<!--- #ThisDir4#/#name[currentrow]#<br> --->
				<cffile file="#ThisDir4#/#name[currentrow]#" action="delete"> <!--- --->
			</cfloop>
		<cfelse>
			<strong>No records will be deleted from: #ThisDir4#.</strong><br><br>	
		</cfif>   <!--- OldFiles4.recordcount --->
	</cfif>   <!--- AllFiles4.recordcount --->	
	
	<!--- SCR 25: MLN  ; Directory - D:\Reports\Docs\\OtherFTP\logs\SurplusSales\W3SVC5  --->	
	<cfif AllFiles5.recordcount gt 0>
		<p>*** Processing: <strong>#ThisDir5#</strong> ***********************************************************************************<br>
		<cfquery name="OldFiles5" dbtype="query">
			select * from AllFiles5
			where datelastmodified < #ThisDate#  
			order by datelastmodified  
		</cfquery>
		The directory <strong>#ThisDir5#</strong> contains <strong>#AllFiles5.recordcount#</strong> records.<br>
		A total of <strong>#OLDFiles5.recordcount#</strong> records will be <strong>DELETED</strong> from directory <strong>#ThisDir5# - AFTER</strong> this clean up. <br><br>
		<cfif OldFiles5.recordcount gt 0>
			<cfdump var="#OldFiles5#" label="Files to be Deleted from #ThisDir5#">
			<!--- need un-comment the loop process below when deleting data by the date submited ---> 
			<cfloop query="OldFiles5">
				<!--- #ThisDir5#/#name[currentrow]#<br> --->
				<cffile file="#ThisDir5#/#name[currentrow]#" action="delete"> <!--- --->
			</cfloop>
		<cfelse>
			<strong>No records will be deleted from: #ThisDir5#.</strong><br><br>	
		</cfif>   <!--- OldFiles5.recordcount --->
	</cfif>   <!--- AllFiles5.recordcount --->			
<!--- </cfsilent> --->  

</cfoutput>
 
</body>

</html>
