<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate Auto Schedule Input (testing)</title>
</head>

<body>

	<CFSET fielddataArray = ArrayNew(1)>
	
	<CFSET fielddataArray[1] = "scheduleID">
	<CFSET fielddataArray[2] = "x1112">
			<!--- strip out leading * from AddressCode field --->
			<CFIF Left(#fieldDataArray[2]#,1) EQ "*">
				<cfset fieldDataArray[2] = RemoveChars(#fieldDataArray[2]#,1,1)>			
			</CFIF>
<cfoutput>#fieldDataArray[2]#</cfoutput>


<cf_bodycontent>


<h3>Environment Info</h3>
<cfoutput>
Cold Fusion Version in use: #server.ColdFusion.ProductVersion#<br>
currenttemplatepath = #getcurrenttemplatepath()#<br>
basetemplatepath = #getbasetemplatepath()#<br>
current directory = #getdirectoryfrompath(getcurrenttemplatepath())#<br>


<h3>This is being run on #dateformat(now(), "mmmm, dd yyyy")# at #timeformat(now(),"hh:mm:ss")# </h3>

</cfoutput>

</cf_bodycontent>

<!--- ///////////end of change files --->
<cfoutput>#request.bodycontent#</cfoutput>

<!--- ---> 

<cfmail from="stanley.shabaz@gsa.gov" to="stanley.shabaz@gsa.gov" subject="data load complete">
testing --- done.
</cfmail>

<cfabort>


				
<!--- 						///// old way ///////////			
					<cfloop index="i" from="2" to="8">
						<CFIF ListFind("3,4,5,6,7",i) is not 0>
							<CFIF isdate(fieldDataArray[i])>
								#createODBCdatetime(fieldDataArray[i])#<CFIF i NEQ 8>,</cfif>
							<CFELSE>
								NULL<CFIF i NEQ 8>,</cfif>
							</CFIF>
							
						<CFELSEIF ListFind("2,8",i) is not 0>
							'#fieldDataArray[i]#'<CFIF i NEQ 8>,</cfif>
							
						<cfelse>
							#fieldDataArray[i]#<CFIF i NEQ 8>,</cfif>
						</cfif>
					</cfloop>	
 --->					
					

</body>
</html>
