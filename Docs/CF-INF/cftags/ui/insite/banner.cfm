<cfparam name="attributes.img" type="string" default="">
<cfparam name="attributes.width" type="string" default=""> 
<cfparam name="attributes.height" type="string" default=""> 
<cfparam name="attributes.border" type="string" default=""> 
<cfparam name="attributes.text" type="string" default="">
<cfparam name="attributes.color" type="string" default="">

<cfoutput>
<img src="#attributes.img#" width="#attributes.width#" height="#attributes.height#" border="#attributes.border#" alt="#attributes.text#" />
</cfoutput> 