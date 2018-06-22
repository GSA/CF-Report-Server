<div id=NavBar style="position:relative;width:296px;top:5px;" align="left" class="content">
<table border="0" align="center">
<tr>
   <td class="content"><input type="button" value="<- Last" onClick="Skip('-')" class="contentSmall"></td>
   <td class="content"> </td>
   <td class="content"><select name="month" onChange="On_Month()" class="contentSmall">

<script language="JavaScript1.2">
if (ie4||ns6){
   for (j=0;j<Month_Label.length;j++) {
      document.writeln('<option selected value=' + j + '>' + Month_Label[j]);
   }
}
</script>

       </select>
   </td>
   <td class="content"><input type="text" name="year" size=4 maxlength=4 onKeyPress="return Check_Nums()" onKeyUp="On_Year()" class="contentSmall"></td>
   <td class="content"> </td>
   <td class="content"><input type="button" value="Next ->" onClick="Skip('+')" class="contentSmall"></td>
</tr></table></div>
<div id=Calendar style="position:relative;width:260px;top:+2px;" align="right" class="content"></div>
