<!--- WARNINGS 
	1) Never use PIE (314159265359) as an employee id its being used in the validation system
	2) Dont use the EMail Notification of your Cold Fusion is not set up for it.
			WARNINGS --->

<!--- Enter Your Admin Data Here --->
<CFSET #AdminName# = "Gerald lloyd">
<CFSET #AdminEmail# = "gerald.lloyd@gsa.gov">
<CFSET #ReceiveNotice# = "Gerald Lloyd <gerald.lloyd@gsa.gov>">
<CFSET #EMailNotification# = "Yes">
<CFSET #ApplicationTitle# = "OnLine Reports (Feds23)">

<!--- Enter Your Site Design Information Here --->
<CFSET #BackGroundColor# = "##FFFFFF">
<CFSET #TextColor# = "##000000">
<CFSET #LinkColor# = "##0000ff">
<CFSET #VlinkColor# = "##0000ff">
<CFSET #AlinkColor# = "##660099">
<CFSET #TitleColor# = "##000000">

<!--- DO NOT EDIT BELOW THIS LINE --->
<CFSET #CUR_YEAR# = Year(#Now()#)>
<CFSET #CUR_MONTH# = Month(#Now()#)>
<CFSET #CUR_DAY# = Day(#Now()#)>
<CFSET #PresentDate# = #DateFormat(Now(),'mm/dd/yy')#>
<CFSET #linkName# = "LoadRept.cfm">
<CFSET #targetName# = "Frame-btm">
<cfset First_Year = '1997'>
<cfset Last_Year = #CUR_YEAR# + 1>
