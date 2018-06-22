<cfoutput>
<SCRIPT LANGUAGE="JavaScript">
<cfloop query="qy_GetRegion">
var #qy_GetRegion.region#Array =  new Array("('Reports in the #qy_GetRegion.region# Category','',true,true)", <cfinclude template="../report/csc/sql/qy_GetRegionStore.cfm">
 <cfset i = 1><cfloop query="qy_GetRegionStore"> 
	"('#qy_GetRegionStore.storename# - #qy_GetRegionStore.storeid#')"<cfif qy_GetRegionStore.recordcount gt i>,</cfif><cfset i = i + 1></cfloop>); 
	</cfloop>

function populateRegionStore(inForm,selected) {
var selectedArray = eval(selected + "Array");
while (selectedArray.length < inForm.RegionStore.options.length) {
inForm.RegionStore.options[(inForm.RegionStore.options.length - 1)] = null;
}
for (var i=0; i < selectedArray.length; i++) {
eval("inForm.RegionStore.options[i]=" + "new Option" + selectedArray[i]);
}
if (inForm.region.options[0].value == '') {
inForm.region.options[0]= null;
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
function populateStore(inForm,selected) {  
var stateArray =  new Array("('Select State','',true,true)",
"(' ')");
if (selected == 'USA') {
for (var i=0; i < stateArray.length; i++) {
eval("inForm.RegionStore.options[i]=" + "new Option" + stateArray[i]);
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
newRegionStore = "";
while (newRegionStore == ""){
newRegionStore=prompt ("Please enter the name of your Store.", "");
}
if (newRegionStore != null) {
inForm.RegionStore.options[(inForm.RegionStore.options.length-1)]=new Option(newRegionStore,newRegionStore,true,true);
inForm.RegionStore.options[inForm.RegionStore.options.length]=new Option('Other, not listed','Other');
   }
}
if(inForm.RegionStore.options[0].text == 'Select a Region') {
inForm.RegionStore.options[0]= null;
   }
}
</script>
</cfoutput>