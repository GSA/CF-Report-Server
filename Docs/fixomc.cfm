<cfquery name="getyear" datasource="omc">
Select * from calx
where year = 1998 and month < 3
</cfquery>

<cfoutput query="getyear">
	<cfset newdate = ''>
	<cfif getyear.the_date is not ''>
		<cfset newdate = #Dateformat(#dateadd("yyyy", "6",getyear.the_date)#, "MM/DD/YYYY")#>	
	</cfif>
	#getyear.the_date#, #newdate#<br>
	<cfquery name="addyear" datasource="omc">
		<cfif getyear.the_date is not ''>
			Insert into Calendar
				(Year, Month, Month_day, Week_day, The_Date)
			Values
				(2004, #getyear.month#, #getyear.month_day#, #getyear.Week_day#, '#newdate#')				
		<cfelse>
			Insert into Calendar
				(Year, Month, Month_day, Week_day)
			Values
				(2004, #getyear.month#, #getyear.month_day#, #getyear.Week_day#)			
		</cfif>
	</cfquery>
</cfoutput>