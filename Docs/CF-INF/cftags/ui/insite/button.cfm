<cfparam name="attributes.Text" type="string" default="">
<cfparam name="attributes.Href" type="string" default=""> 

<cfoutput>
<a href="#attributes.Href#" class="zsmall">[ #attributes.Text# ]</a>
</cfoutput> 