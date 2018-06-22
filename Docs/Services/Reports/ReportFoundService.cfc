<CFCOMPONENT OUTPUT="NO">
	<CFFUNCTION ACCESS="REMOTE" NAME="reportExists" RETURNTYPE="BOOLEAN">
		<CFARGUMENT NAME="reportPath" DEFAULT="NotSpecified" REQUIRED="YES" TYPE="STRING">
		
		<CFIF fileExists("\\fcoh1s-reports2\web_d$\reports\docs\fss19\#reportPath#")>
			<CFSET boolFileExists = TRUE>
		<CFELSE>
			<CFSET boolFileExists = FALSE>
		</CFIF>
	
		<CFRETURN "#boolFileExists#">
	</CFFUNCTION>
</CFCOMPONENT>