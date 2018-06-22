<SCRIPT language=JavaScript>
<!--
	var win;
	function showStatement() {
		if (win == null || win.closed){
			win = window.open("http://www.gsa.gov/privacy.htm", "win", "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=775,height=275")
		}else{
			if (navigator.appName.substring(0.8) == "Netscape"){
				win.location.href = "http://www.gsa.gov/privacy.htm";
				this.win.focus();
			}else{
				win = window.open("http://www.gsa.gov/privacy.htm", "win", "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=775,height=275")
			}
		}
	}
	function display(stuff) {
		window.status = stuff
	}
	
	function getDate(field,format){
			var now		= new Date()
			var month	= now.getMonth();
			var date	= now.getDate();
			var year	= now.getYear();
			var day		= now.getDay();
			if(year < 2000){ year += 1900; }
			if(date <= 9){date = '0' + date;}
			if((field.value == null) || (field.value == "")){
				if(format == "short"){
					month++;
					if(month <= 9){month = "0" + month;}
					return field.value = month + "/" + date + "/" + year;
				}
				if(format == "med"){
					month = getMonthOfYear(month);
					return field.value = month + " " + date + ", " + year;
				}
				if(format == "long"){
					month = getMonthOfYear(month);
					day = getDayOfWeek(day);
					return field.value = day + ", " + month + " " + date + ", " + year;
				}
			}
		}
		// This function is required by function getDate
		function getDayOfWeek(n){
			var dow		= new Array(7)
				dow[0]	= "Sunday"
				dow[1]	= "Monday"
				dow[2]	= "Tuesday"
				dow[3]	= "Wednesday"
				dow[4]	= "Thursday"
				dow[5]	= "Friday"
				dow[6]	= "Saturday"
			return dow[n];
		}
		// This function is required by function getDate
		function getMonthOfYear(n){
			var moy		= new Array(12)
				moy[0]	= "January"
				moy[1]	= "Februrary"
				moy[2]	= "March"
				moy[3]	= "April"
				moy[4]	= "May"
				moy[5]	= "June"
				moy[6]	= "July"
				moy[7]	= "August"
				moy[8]	= "September"
				moy[9]	= "October"
				moy[10]	= "November"
				moy[11]	= "December"
			return moy[n];
		}

		//	This function is used to validate dates as input in form fields.
		//	This function should be called using the following method.
		//	onBlur="validDate(this,this.value);" 
		function validDate(field,iDate){
			var isError		= false;
			var error		= "";
			var errorMonth	= "An invalid month ";
			var errorDay	= "An invalid day ";
			var errorYear	= "An invalid year ";
			var errorFormat	= "Please enter the date as mm/dd/yyyy.  ";
			var errorEnd	= "has been entered in the date field.  ";
			var errorN		= "Please enter only Numeric charcters in the date field.  ";

			if((iDate == null)		||
				(iDate == "")		||
				(iDate.length < 10)	||
				(10 < iDate.length)){

				field.value = field.defaultValue;
				isError = true;
				error = error + errorFormat;
			}
			else{
				for(j = 0; j < field.value.length; j++){
					if((field.value.substring(j,j+1) != "0") &&
						(field.value.substring(j,j+1) != "1") &&
						(field.value.substring(j,j+1) != "2") &&
						(field.value.substring(j,j+1) != "3") &&
						(field.value.substring(j,j+1) != "4") &&
						(field.value.substring(j,j+1) != "5") &&
						(field.value.substring(j,j+1) != "6") &&
						(field.value.substring(j,j+1) != "7") &&
						(field.value.substring(j,j+1) != "8") &&
						(field.value.substring(j,j+1) != "9") &&
						(field.value.substring(j,j+1) != "/")){

						field.value = field.defaultValue;
						isError = true;
						error = error + errorN;
					}
				}
			}
			if(!isError){
				var month		= iDate.substring(0,2);
				var date		= iDate.substring(3,5);
				var year		= iDate.substring(6,10);
				var checkMonth	= parseInt(month - 1);
				var dim			= getDaysInMonth(checkMonth);

				if((month < 1) || (12 < month)){
					isError = true;
					field.value = field.defaultValue;
					error = error + errorMonth + errorEnd;
				}
				if(!isError){
					if((date < 1) || (dim < date)){
						isError = true;
						field.value = field.defaultValue;
						error = error + errorDay + errorEnd;
					}
				}
			}
			if(isError){
				return alert(error);
			}
		}
		//	This function is required for function validDate
		function getDaysInMonth(n){
			var dim = new Array(12)
				dim[0]	= "31"
				dim[1]	= "28"
				dim[2]	= "31"
				dim[3]	= "30"
				dim[4]	= "31"
				dim[5]	= "30"
				dim[6]	= "31"
				dim[7]	= "31"
				dim[8]	= "30"
				dim[9]	= "31"
				dim[10]	= "30"
				dim[11]	= "31"
			return dim[n];
		}
// End the hiding here.-->
</SCRIPT>

<CFOUTPUT>
<CFQUERY NAME="getOptions" DATASOURCE="#request.mydsn#">
	SELECT *
	FROM profiles
	WHERE ipid = '#client.ipid#'
</CFQUERY>

<!---
<CFIF ISDEFINED('SESSION.INSITE')>
  <CFIF SESSION.INSITE IS "ON">--->
		<CFIF '#getOptions.recordCount#' is 1
		     AND '#client.showCustom#' is 0>
		        <CFIF #path_translated# contains "orgChart">
				<CFELSE>
				  <CFINCLUDE TEMPLATE="leftBarPersonal.cfm">
			    </CFIF>
		<CFELSE>
		  <CFIF #path_translated# contains "orgChart" or path_translated contains "helpdesk\survey\survey_totals.cfm">
		  <CFELSE>
		    <CFINCLUDE TEMPLATE="leftBar.cfm">
		  </CFIF>
		</CFIF>  		
<!---
  <CFELSE>
    <CFIF #path_translated# contains "orgChart">
	<CFELSE>
	   <CFINCLUDE TEMPLATE="leftBar.cfm">
	</CFIF>    	
  </CFIF>
<CFELSE>
    <CFIF #path_translated# contains "orgChart">
    <CFELSE>
	     <CFINCLUDE TEMPLATE="leftBar.cfm">
	</CFIF>    	
</CFIF>--->
</CFOUTPUT>
 
	
