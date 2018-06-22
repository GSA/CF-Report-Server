<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Create AutoAuctions_extract.txt</title>
	<!---  to be run as a daily scheduled task at 6:15 AM --->
</head>

<body>

		<cfquery name="getData" datasource="Remarketing">
			Select 
				CarInfo.Make,  
				CarInfo.Model,  
				CarInfo.Year,  
				CarInfo.Miles,  
				CarInfo.Color,  
				CarInfo.VIN,  
				AuctionHouse.AuctionHouseName,
				AuctionHouse.StreetAddress,
				AuctionHouse.City,
				AuctionHouse.State,
				AuctionHouse.ZipCode,
				AuctionHouse.ContactName,
				AuctionHouse.PhoneNumber,
				AuctionSchedule.AuctionStart,
				AuctionSchedule.Promo
			From
				CarInfo,
				auccarref,
				AuctionHouse,
				AuctionSchedule
				
			WHERE
				CarInfo.LocationID = auccarref.locationid AND
				auccarref.locationid = auccarref.addresscode AND
				auccarref.addresscode = AuctionHouse.addresscode AND
				auccarref.addresscode = AuctionSchedule.addresscode AND		
				DATEPART(YEAR, CarInfo.USaleDate) = DATEPART(YEAR, AuctionSchedule.AuctionStart) AND
				DATEPART(MONTH,CarInfo.USaleDate) = DATEPART(MONTH,AuctionSchedule.AuctionStart) AND
				DATEPART(DAY, CarInfo.USaleDate) = DATEPART(DAY, AuctionSchedule.AuctionStart) AND
				AuctionSchedule.Online is null
		</cfquery>


<!--- 
http://159.142.4.53/otherftp/fleetauctions/dinaoutput.cfm

CarInfo.SaleDate = AuctionSchedule.AuctionStart
DATEPART(YEAR, SAMPLE_DATE) = '2003' AND 
DATEPART(MONTH,SAMPLE_DATE) = '04' AND 
DATEPART(DAY, SAMPLE_DATE) = '09'
 --->



		
		
	<cfoutput>
	#getData.recordcount# records returned.<br>
	</cfoutput>
		
	
	
		<!--- <CFFILE action="WRITE" file="D:\reports\docs\otherftp\FleetAuctions\Dinath.csv" variable="csv"> --->
		
	<cfoutput query="getData">
				<!--- <p>#getData.Make#,  
				#getData.Model#,  
				#getData.Year#,  
				#getData.Miles#,  
				#getData.Color#,  
				#getData.VIN#,  
				#getData.AuctionHouseName#,
				#getData.StreetAddress#,
				#getData.City#,
				#getData.State#,
				#getData.ZipCode#,
				#getData.ContactName#,
				#getData.PhoneNumber#,
				#getData.AuctionStart#,
				<!--- #getData.Promo# ---></p> --->
				<p>mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm</p>
				
				<CFSET myline = #left(ljustify(getData.Make,30),30)# &   
				#left(ljustify(getData.Model,30),30)# &   
				#left(ljustify(getData.Year,4),4)# &   
				#left(ljustify(getData.Miles,10),10)# &   
				#left(ljustify(ltrim(getData.Color),50),50)# &   
				#left(ljustify(getData.VIN,30),30)# &   
				#left(ljustify(getData.AuctionHouseName,60),60)# & 
				#left(ljustify(getData.StreetAddress,60),60)# & 
				#left(ljustify(getData.City,60),60)# & 
				#left(ljustify(getData.State,10),10)# & 
				#left(ljustify(getData.ZipCode,5),5)# & 
				#left(ljustify(getData.ContactName,60),60)# & 
				#left(ljustify(getData.PhoneNumber,20),20)# & 
				#left(ljustify(dateformat(getData.AuctionStart,"mmddyyyy"),8),8)# & 
				#left(ljustify(timeformat(getData.AuctionStart,"hh:mm tt"),8),8)# & 
				#left(ljustify(getData.promo,2200),2200)#>
				
				<p>#myline#</p>
				
<CFFILE action="APPEND" file="D:\reports\docs\otherftp\FleetAuctions\FleetDataExport\AutoAuctions_extract.txt" variable="csv" output="#myline#">

	</cfoutput>
		
	rename the output file:
<CFFILE action="rename" source="D:\reports\docs\otherftp\FleetAuctions\FleetDataExport\AutoAuctions_extract.txt"
 destination="D:\reports\docs\otherftp\FleetAuctions\FleetDataExport\AutoAuctions_extract_#dateformat(now(),"yyyymmdd")#.txt"
 attributes="Normal">
