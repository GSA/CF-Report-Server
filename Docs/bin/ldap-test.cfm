<cfset arguments.login="RyanRWilliams" />

  <cfldap action="query"
	name="validatedUser"
	attributes="sAMAccountName,sn,givenname"
	start="dc=ENT,dc=DS,dc=GSA,dc=GOV"
	scope="SUBTREE"
	server="192.168.113.6"
	port="389"
	timeout="60"
	filter="sAMAccountName=#arguments.login#"
	rebind="Yes"
  />

<cfdump var="#validatedUser#" />