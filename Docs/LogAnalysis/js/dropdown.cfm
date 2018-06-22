<cfoutput>
<SCRIPT LANGUAGE="JavaScript">
<cfloop query="qy_GetCategory">
var #qy_GetCategory.CatagoryCode#Array =  new Array("('Reports in the #qy_GetCategory.CatagoryName# Category','',true,true)", <cfinclude template="../report/fss19/sql/qy_GetReport.cfm">
 <cfset i = 1><cfloop query="qy_GetReport"> 
	"('#qy_GetReport.reptfilename# - #qy_GetReport.reportName#')"<cfif qy_GetReport.recordcount gt i>,</cfif><cfset i = i + 1></cfloop>); 
	</cfloop>

function populateReportFile(inForm,selected) {
var selectedArray = eval(selected + "Array");
while (selectedArray.length < inForm.ReportFile.options.length) {
inForm.ReportFile.options[(inForm.ReportFile.options.length - 1)] = null;
}
for (var i=0; i < selectedArray.length; i++) {
eval("inForm.ReportFile.options[i]=" + "new Option" + selectedArray[i]);
}
if (inForm.ReportCatagory.options[0].value == '') {
inForm.ReportCatagory.options[0]= null;
if ( navigator.appName == 'Netscape') {
if (parseInt(navigator.appVersion) < 4) {
window.history.go(0);
}
else {   	
if (navigator.platform == 'Win32' || navigator.platform == 'Win16') {
window.history.go(0);
            }
         }
      }
   }
}
function populateUSstate(inForm,selected) {  
var stateArray =  new Array("('Select State','',true,true)",
"(' ')");
if (selected == 'USA') {
for (var i=0; i < stateArray.length; i++) {
eval("inForm.ReportFile.options[i]=" + "new Option" + stateArray[i]);
}
if ( navigator.appName == 'Netscape') {
if (parseInt(navigator.appVersion) < 4) {
window.history.go(0)
}
else {    	
if (navigator.platform == 'Win32' || navigator.platform == 'Win16') {
window.history.go(0)
         }
      }
   }
}
else {
}  
if (selected == 'Other') {
newReportFile = "";
while (newReportFile == ""){
newReportFile=prompt ("Please enter the name of your Report.", "");
}
if (newReportFile != null) {
inForm.ReportFile.options[(inForm.ReportFile.options.length-1)]=new Option(newReportFile,newReportFile,true,true);
inForm.ReportFile.options[inForm.ReportFile.options.length]=new Option('Other, not listed','Other');
   }
}
if(inForm.ReportFile.options[0].text == 'Select a Report') {
inForm.ReportFile.options[0]= null;
   }
}
</script>
</cfoutput>