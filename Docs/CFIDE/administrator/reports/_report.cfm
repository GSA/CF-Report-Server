����  -� 
SourceFile KC:\blackstone_final\cfusion\wwwroot\CFIDE\administrator\reports\_report.cfm cf_report2ecfm717476946  coldfusion/runtime/CFPage  <init> ()V  
  	 this Lcf_report2ecfm717476946; LocalVariableTable Code bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   LOCALE Lcoldfusion/runtime/Variable; LOCALE  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   SETTINGS_DESCRIPTION SETTINGS_DESCRIPTION    	  " FLDRS FLDRS % $ 	  ' WS WS * ) 	  , READER READER / . 	  1 	WSERVICES 	WSERVICES 4 3 	  6 SYSTEM SYSTEM 9 8 	  ; X X > = 	  @ 	EXTENSION 	EXTENSION C B 	  E CFCLASSPATH CFCLASSPATH H G 	  J MAIL MAIL M L 	  O 
GETEDITION 
GETEDITION R Q 	  T I I W V 	  Y MAILSERVERS MAILSERVERS \ [ 	  ^ SCOPES SCOPES a ` 	  c ORBS ORBS f e 	  h SEP SEP k j 	  m DATASOURCES DATASOURCES p o 	  r DELIM DELIM u t 	  w MINUTES MINUTES z y 	  | JAVACLASSPATH JAVACLASSPATH  ~ 	  � ATASKS ATASKS � � 	  � DISABLEDDSN DISABLEDDSN � � 	  � URLS URLS � � 	  � CTAGS CTAGS � � 	  � 	DEBUGGING 	DEBUGGING � � 	  � ALLDSN ALLDSN � � 	  � SECURITY SECURITY � � 	  � PI PI � � 	  � CLIENTSTORES CLIENTSTORES � � 	  � 	CLASSPATH 	CLASSPATH � � 	  � DSN DSN � � 	  � MAPPINGS MAPPINGS � � 	  � APPLETS APPLETS � � 	  � GATEWAYS GATEWAYS � � 	  � THRD THRD � � 	  � PARAM PARAM � � 	  � PATHNAME PATHNAME � � 	  � EVENTGATEWAY EVENTGATEWAY � � 	  � STORAGE STORAGE � � 	  � SBOX SBOX � � 	  � PERMISSIONS PERMISSIONS � � 	  � RUNTIME RUNTIME � � 	  � 
DATASOURCE 
DATASOURCE � � 	  � HOURS HOURS � � 	  � IPS IPS � � 	  � 
JAVALOCALE 
JAVALOCALE  	  REQUEST REQUEST 	  REPORT_GENERATED REPORT_GENERATED
 	  TAGS TAGS 	  com.macromedia.SourceModTime   �l^8 pageContext #Lcoldfusion/runtime/NeoPageContext;	  getOut ()Ljavax/servlet/jsp/JspWriter; javax/servlet/jsp/PageContext
 parent Ljavax/servlet/jsp/tagext/Tag;!"	 # 

% _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V'(
 ) java+ java.lang.System- CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;/0
 1 set (Ljava/lang/Object;)V34 coldfusion/runtime/Variable6
75 java.io.InputStreamReader9 _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;;<
 = init? java/lang/ObjectA java/lang/StringC INE _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;GH
 I _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;KL
 M java.util.LocaleO 	componentQ CFIDE.adminapi.runtimeS CFIDE.adminapi.extensionsU CFIDE.adminapi.mailW CFIDE.adminapi.debuggingY CFIDE.adminapi.datasource[ CFIDE.adminapi.eventgateway] CFIDE.adminapi.security_ REQUEST.LOCALEa enc checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Vef
 g isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Zij
 k _autoscalarizem<
 n _String &(Ljava/lang/Object;)Ljava/lang/String;pq coldfusion/runtime/Casts
tr Trim &(Ljava/lang/String;)Ljava/lang/String;vw
 x LCasezw
 { _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V}~
  
LOCALEFILE� java/lang/StringBuffer� resources/reports_� (Ljava/lang/String;)V �
�� 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;G�
 � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;��
�� .xml� toString ()Ljava/lang/String;��
B� (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag� forName %(Ljava/lang/String;)Ljava/lang/Class;�� java/lang/Class�
����	 � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag;��
 � "coldfusion/tagext/lang/ImportedTag� l10n� 
../cftags/� admin� setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V��
�� &coldfusion/runtime/AttributeCollection� id� Settings_Summary� var� pageName� ([Ljava/lang/Object;)V �
�� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
�� 	hasEndTag (Z)V��
�� 
doStartTag ()I��
�� 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � Settings Summary� write�� java/io/Writer�
�� doAfterBody��
�� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � doEndTag�� #javax/servlet/jsp/tagext/TagSupport�
�� doCatch (Ljava/lang/Throwable;)V��
�� 	doFinally� 
�� 
� report_generated� Report generated on� settings_description� �
This report shows the status of all ColdFusion configuration settings.
To display the area of the ColdFusion Administrator where you can edit the group settings,
click any of the groups in the report.
� 	rendering� 	Rendering� 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag���	 � !coldfusion/tagext/lang/IncludeTag� 	cfinclude template ../header.cfm _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 	 setTemplate�
  	_emptyTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
  ../include/margintop.cfm $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag�	  coldfusion/tagext/io/OutputTag
� 

<span class="pageHeader"> pageHeader_settingSummary %Server Settings &gt; Settings Summary  *</span>
<br><br>

<!-- margin top -->
"  $ Now "()Lcoldfusion/runtime/OleDateTime;&'
 ( mmm dd, yyyy* 
DateFormat 6(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;,-
 . hh:mm TT0 
TimeFormat2-
 3 
<br><br>

5 x
<br><br>





<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td colspan="2" bgcolor="#7 	GRAYLIGHT9 &" class="cellBlueTopAndBottom">
		<b>; versionInfo= Version Information? �</b>
	</td>
</tr>
<tr>
	<td>
		
		<table border="0" cellpadding="2" cellspacing="0" width="100%">
		<tr>
			<td colspan="2" class="cellBlueTopAndBottom" bgcolor="#A 	BLUELIGHTC ">
				<strong>E serverDetailsG Server DetailsI ]</strong>
			</td>
		</tr>
		<tr>
			<td width="250" nowrap class="cell3BlueSides">
				K serverProductM Server ProductO 	_factor25 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;QR
 S �
			</td>
			<td class="cellRightAndBottomBlueSide" width="1000">
				ColdFusion MX
			</td>
		</tr>
		<tr>
			<td nowrap class="cell3BlueSides">
				U versionW VersionY <
			</td>
			<td class="cellRightAndBottomBlueSide">
				[ SERVER] 
COLDFUSION_ PRODUCTVERSIONa O &nbsp;
			</td>
		</tr>
		<tr>
			<td nowrap class="cell3BlueSides">
				c editione Editiong 
getEditioni 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;kl
 m serialNumbero Serial Numberq LICENSEs 
LICENSEKEYu Q &nbsp;
			</td>
		</tr>

		<tr>
			<td nowrap class="cell3BlueSides">
				w osy Operating System{ OS} NAME 	osversion� 
OS Version� 	_factor26�R
 � VERSION� � &nbsp;
			</td>
		</tr>
		</table>
		
	</td>
</tr>
</table>
<br><br>


<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td colspan="2" bgcolor="#� +" class="cellBlueTopAndBottom">
		<strong>� 
jvmdetails� JVM Details� �</strong>
	</td>
</tr>
<tr>
	<td>
		
		<table border="0" cellpadding="2" cellspacing="0" width="100%">
		<tr>
			<td width="250" nowrap class="cell4BlueSides">
				� javaversion� Java Version� =
			</td>
			<td class="cell4BlueSides" width="1000">
				� getProperty� java.version� 
javavendor� Java Vendor� java.vendor� javavendorurl� Java Vendor URL� E
			</td>
			<td class="cellRightAndBottomBlueSide">
				<a href="� java.vendor.url� 	_factor27�R
 � " target="_blank">� S</a> &nbsp;
			</td>
		</tr>
		<tr>
			<td nowrap class="cell3BlueSides">
				� javahome� 	Java Home� 	java.home� javafileEncoding� Java File Encoding� getEncoding� javaDefaultLocale� Java Default Locale� string� 
getDefault� JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;��
 � fileSeparator� File Separator� 	_factor28�R
 � file.separator� pathSeparator� Path Separator� path.separator� lineSeparator� Line Separator� @
			</td>
			<td class="cellRightAndBottomBlueSide">
				Chr(� line.separator� Asc (Ljava/lang/String;)I��
 � (I)Ljava/lang/String;p�
t� P) &nbsp;
			</td>
		</tr>
		<tr>
			<td nowrap class="cell3BlueSides">
				� username� 	User Name� 	user.name� userhome� 	User Home� 	_factor29�R
 � 	user.home� userdir� User Dir� user.dir� jvmSpecVersion  Java VM Specification Version java.vm.specification.version jvmSpecVendor Java VM Specification Vendor java.vm.specification.vendor
 jvmSpecName Java VM Specification Name 	_factor30R
  java.vm.specification.name 
jvmVersion Java VM Version java.vm.version 	jvmVendor Java VM Vendor java.vm.vendor jvmName! Java VM Name# java.vm.name% javaSpecVersion' Java Specification Version) 	_factor31+R
 , java.specification.version. javaSpecVendor0 Java Specification Vendor2 java.specification.vendor4 javaSpecName6 Java Specification Name8 java.specification.name: javaClassVersion< Java Class Version> java.class.version@   &nbsp;
			</td>
		</tr>

		B &class$coldfusion$tagext$lang$ObjectTag  coldfusion.tagext.lang.ObjectTagED�	 G  coldfusion/tagext/lang/ObjectTagI cfobjectK actionM CREATEO 	setActionQ�
JR typeT JAVAV setTypeX�
JY name[ thrd]��
J_ classa java.lang.Threadc setClasse�
Jf 	_factor32hR
 i 
		k getContextClassLoaderm getURLso 

		q windowss 	_contains '(Ljava/lang/String;Ljava/lang/String;)Zuv
 w ;y :{  } ArrayLen (Ljava/lang/Object;)I�
 � 1� _double (Ljava/lang/String;)D��
t� _Object (D)Ljava/lang/Object;��
t� i� SetVariable��
 � _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object;��
 � getFile� /� 	REReplace�
 �  &nbsp� CFLOOP� checkRequestTimeout��
 � _checkCondition (DDD)Z��
 � java.class.path� <br />� concat�w
D� ALL� Replace \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;��
 � <b>CF Classpath</b><br>� <br><b>Server Classpath</b><br>� F


		<tr>
			<td nowrap valign="top" class="cell3BlueSides">
				� CFServerJavaClassPath� CF Server Java Class Path� U
			</td>
		</tr>
		<tr>
			<td nowrap valign="top" class="cell3BlueSides">
				� javaClassPath� Java Class Path� 	_factor33�R
 � 
javaExtDir� Java Ext Dirs� java.ext.dirs� 9" class="cellBlueTopAndBottom">
		<b class="form-title">� 
serverInfo� Server Information� :">
				<strong><a href="../settings/server_settings.cfm">� generalSettings� General Settings� $</a></strong>
			</td>
		</tr>
		� jrun� IsUserInRole (Ljava/lang/Object;)Z��
 � A
		<tr>
			<td nowrap class="cell3BlueSides" width="250">
				� simultaniousRequestLimit� Simultaneous request limit� I
			</td>
			<td class="cellRightAndBottomBlueSide" width="1000">
				� getRuntimeProperty� SimultaneousThreads�  &nbsp;
			</td>
		</tr>
		� 	_factor34�R
 � 5
		<tr>
			<td nowrap class="cell3BlueSides">
				� timeoutRequests� Timeout requests� TimeoutRequests� YesNoFormat�q
 � requestTimeLimit� Request Time Limit  timeoutRequestTimeLimit seconds N&nbsp;
			</td>
		</tr>
		<tr>
			<td nowrap class="cell3BlueSides">
				 useUUIDForCFToken Use UUID for CFToken
 getScopeProperty UUIDCFToken whitespaceMngmt Enable Whitespace Management 
Whitespace 	_factor35R
  missingTemplate Missing Template Handler MissingTemplateHandler siteWideError Site-wide Error Handler! SiteWideErrorHandler# enableHTTPStatusCodes% Enable HTTP status codes' HTTPStatusCodes) Enable Global Script Protection+ globalScriptProtect- 	_factor36/R
 0 
				2 Len4�
 5 (I)Ljava/lang/Object;�7
t8 cfformScriptSrcDir: "Default CFForm ScriptSrc Directory< CFFormScriptSrc> ^ &nbsp;
			</td>
		</tr>

		
		<tr>
			<td colspan="2" class="cellBlueBottom" bgcolor="#@ 2">
				<strong><a href="../settings/caching.cfm">B cachingD CachingF U</a></strong>
			</td>
		</tr>
		<tr>
			<td nowrap class="cell3BlueSides">
				H templateCacheSizeJ Template cache sizeL getCachePropertyN TemplateCacheSizeP 	templatesR 	_factor37TR
 U enableTrustedCacheW Enable trusted cacheY TrustedCache[ cachedQuerylimit] Cached query limit_ MaxCachedQuerya H
			</td>
		</tr>
		<tr>
			<td nowrap class="cell3BlueSides">
				c saveClassFilese Save Class Filesg SaveClassFilesi  &nbsp;
			</td>
		</tr>
	k *coldfusion/runtime/TransientVariableHolderm &(Lcoldfusion/runtime/NeoPageContext;)V o
np cacheWebServerPathr Cache web server pathst CacheRealPathv 
			</td>
		</tr>
		x unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;z{ coldfusion/runtime/NeoException}
~| t50 [Ljava/lang/String; Any���	 � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I��
~� CFCATCH� bind '(Ljava/lang/String;Ljava/lang/Object;)V��
n� unbind� 
n� 	_factor38�R
 � B
		
		<tr>
			<td colspan="2" class="cellBlueBottom" bgcolor="#� :">
				<strong><a href="../settings/clientvariables.cfm">� clientVarSettings� Client Variable Settings� defaultClientVariableStore� Default client variable store� clientStorage� _boolean (D)Z��
t� storage� "None"� IIf 9(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;��
 � +REQUEST.CLIENTSCOPE.SETTINGS.PURGE_INTERVAL� isDefinedCanonicalName (Ljava/lang/String;)Z��
 � ClientVariablePugeInterval� Purge Interval� CLIENTSCOPE� SETTINGS� PURGE_INTERVAL� indexOf� 	subString� 0� (Ljava/lang/Object;)D��
t� int� length� hours� minutes� 	_factor39�R
 � D

		
		<tr>
			<td colspan="2" class="cellBlueBottom" bgcolor="#� clientStores� Client Stores� "</strong>
			</td>
		</tr>

		� getClientStores� _validatingMap #(Ljava/lang/Object;)Ljava/util/Map;��
 � java/util/Map� entrySet ()Ljava/util/Set;���� java/util/Set� iterator ()Ljava/util/Iterator;���� java/util/Iterator� next ()Ljava/lang/Object;���� class$java$util$Map$Entry java.util.Map$Entry���	 � _cast 7(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;��
t� java/util/Map$Entry� getKey���  x >
		<tr>
			<td colspan="2" class="cellBlueBottom" bgcolor="# X</strong> &nbsp;
			</td>
		</tr>
		<tr>
			<td nowrap class="cell3BlueSides">
				 Type _Map
�
t TYPE 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object;G
  description Description StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z
  DESCRIPTION  &nbsp;
				 
				 &nbsp;
				 	purgeData  Purge data after time limit" PURGE$ 	timelimit& 
Time limit( _factor0*R
 + TIMEOUT- days/ disableGlobalupdates1 Disable global updates3 DISABLE_GLOBALS5 hasNext ()Z78�9 F


		
		<tr>
			<td colspan="2" class="cellBlueBottom" bgcolor="#; :">
				<strong><a href="../settings/memoryvariables.cfm">= memoryVariables? Memory VariablesA 	_factor40CR
 D 0REQUEST.RUNTIME.VARIABLES.SESSION.USEJ2EESESSIONF j2eesessionsH J2EE SessionsJ 	VARIABLESL SESSIONN USEJ2EESESSIONP appVariablesR Application VariablesT Q</strong>
			</td>
		</tr>
		<tr>
			<td nowrap class="cell3BlueSides">
				V enableAppVariablesX Enable Application VariablesZ enableApplicationScope\ defaultTimeout^ Default Timeout` 	_factor41bR
 c applicationScopeTimeoute 
maxTimeoutg Maximum Timeouti applicationScopeMaxTimeoutk \ &nbsp;
			</td>
		</tr>
		
		<tr>
			<td colspan="2" class="cellBlueBottom" bgcolor="#m 
sessionVaro Session Variablesq L</td></strong>
		</tr>
		<tr>
			<td nowrap class="cell3BlueSides">
				s enableSessionVaru Enable session variablesw enableSessionScopey 	_factor42{R
 | sessionScopeTimeout~ sessionScopeMaxTimeout� ` &nbsp;
			</td>
		</tr>


		
		<tr>
			<td colspan="2" class="cellBlueBottom" bgcolor="#� 3">
				<strong><a href="../settings/mappings.cfm">� 
CFMappings� ColdFusion Mappings� &</a></strong>
			</td>
		</tr>

		� getMappings� C &nbsp;
			</td>
			<td class="cellRightAndBottomBlueSide">
				� ,">
				<strong><a href="../mail/index.cfm">� mailConnectionSettings� Mail Connection Settings� defaultserverPort� Default Server Port� 	_factor43�R
 � getMailProperty� defaultPort� ConnectionTimeout� Connection Timeout� Timeout� SpoolInterval� Spool Interval� spoolInterval� mailDeliveryThreads� Mail Delivery Threads� 	_factor44�R
 � maxDeliveryThreads� maintainConnectionsToMailServer� "Maintain Connection to Mail Server� maintainConnections� 
enterprise� spoolMessagesTo� Spool Messages To� spoolToDevice� messagesSpooledToMemory� Messages Spooled to Memory� MaxMessagesInMemory� defaultMailCharset� Default CFMail Charset� 	_factor45�R
 � X &nbsp;
			</td>
		</tr>
		<tr>
			<td colspan="2" class="cellBlueBottom" bgcolor="#� defaultMailServer� Default Mail Server�  </strong>
			</td>
		</tr>
		� getMailServers�@        _compare (Ljava/lang/Object;D)D��
 � BackupMailServer� Backup Mail Servers� server� Server� port� Port� PORT� Username� _factor1�R
 � USERNAME� password� Password� PASSWORD� mailLoggingSettings� Mail Logging Settings� logSeverity  Log Severity 	_factor46R
  getLogProperty logMailSeverity	 logEmailMessages *Log all E-mail messages sent by ColdFusion logMailSentMessages 3">
				<strong><a href="../settings/charting.cfm"> charting Charting 	cachetype 
Cache Type getChartProperty 	CacheType images 	_factor47!R
 " maxImagesinCache$ !Maximum number of images in cache& 	Cachesize( maxNumberofChartThreads* "Maximum number of charting threads, Threads. diskCacheLocation0 Disk cache location2 	CachePath4 $ &nbsp;
			</td>
		</tr>

		
		6 
standalone8 (Z)Ljava/lang/Object;�:
t;��
t= .">
				<strong><a href="../settings/jvm.cfm">? 
javaAndJVMA Java and JVMC jvmPathE Java virtual machine pathG getJVMPropertyI jdkPathK initMemorySizeM Initial memory sizeO MinJVMHeapSizeQ K MB
			</td>
		</tr>
		<tr>
			<td nowrap class="cell3BlueSides">
				S maxMemorySizeU Maximum memory sizeW MaxJVMHeapSizeY 	ClassPath[ 
Class path] _factor2_R
 ` \ &nbsp;
			</td>
		</tr>
		<tr>
			<td nowrap valign="top" class="cell3BlueSides">
				b jvmArgsd JVM argumentsf JVMArgumentsh 	_factor48jR
 k �
		</table>
		
	</td>
</tr>
</table>
<br><br>


<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td bgcolor="#m dataServiceso Data &amp; Servicesq 3">
				<strong><a href="../datasources/index.cfm">s dbDataSourcesu Database Data Sourcesw getDatasourcesy dsn{ q</strong> &nbsp;
			</td>
		</tr>
		<tr>
			<td width="250" nowrap valign="top" class="cell3BlueSides">
				} 	CFDSNName CF data source name� driver� Driver� DRIVER� jdbcurrl� JDBC URL� URL� Wrap '(Ljava/lang/String;I)Ljava/lang/String;��
 � _factor3�R
 � loginTimeout� Login timeout� LOGIN_TIMEOUT� [&nbsp;
			</td>
		</tr>
		<tr>
			<td nowrap valign="top" class="cell3BlueSides">
				� longTextBuffer� Long text buffer size� BUFFER� timeout� _factor4�R
 � Maintain connections� POOLING� interval� Interval� INTERVAL� restrictedSQLOperations� Restricted SQL operations� _factor5�R
 � ALTER� alter� 
ListAppend 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;��
 � create� DELETE� delete� DROP� drop� GRANT� grant� INSERT� insert� REVOKE� revoke� SELECT� select� UPDATE� update� disableConnections� Disable connections� _factor6�R
 � DISABLE� 8">
				<strong><a href="../extensions/webservices.cfm">� webServices� Web Services� getWebServices� ws� B
		<tr>
			<td nowrap valign="top" class="cell3BlueSides">
				� 	_factor49�R
 � �
		</table>
		
	</td>
</tr>
</table>
<br><br>


<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td colspan="2" bgcolor="#� debuggingAndLogging� Debugging &amp; Logging� 1">
				<strong><a href="../debugging/index.cfm">� debuggingSettings  Debugging Settings n</a></strong>
			</td>
		</tr>
		<tr>
			<td width="250" nowrap valign="top" class="cell3BlueSides">
				 enableDebugging Enable debugging getDebugProperty
 enableDebug enableRobustExceptionInfo #Enable Robust Exception Information enableRobustExceptions 	_factor50R
  displayFormat Display format debugTemplate executionTimes Execution times templateExecutionTime! executionTimeFormat# Execution time format% templateModel' executionTimeHighlightThreshold) "Execution time highlight threshold+ templateHighlightMinimum- 	_factor51/R
 0 X ms
			</td>
		</tr>
		<tr>
			<td nowrap valign="top" class="cell3BlueSides">
				2 
dbActivity4 Database activity6 showDatabaseInfo8 exceptioninfo: Exception information< showExceptionInfo> tracingInfo@ Tracing informationB 	showTraceD 	timerInfoF Timer InformationH 	_factor52JR
 K 	showTimerM 	variablesO 	VariablesQ showVariablesS ^</strong>
			</td>
		</tr>
		<tr>
			<td nowrap valign="top" class="cell3BlueSides">
				U applicationW ApplicationY showApplicationVariables[ cgi] CGI_ 	_factor53aR
 b showCGIVariablesd clientf Clienth showClientVariablesj cookiel Cookien showCookieVariablesp formr Formt showFormVariablesv requestx Requestz 	_factor54|R
 } showRequestVariables showServerVariables� session� Session� showSessionVariables� url� showUrlVariables� 2">
				<strong><a href="../debugging/iplist.cfm">� debuggingIpAddr� Debugging IP Addresses� 	_factor55�R
 � b</a></strong>
			</td>
		</tr>
		<tr>
			<td nowrap valign="top" class="cell3BlueSides">
				� debugIPAddrRestriction� !Debugging IP Address Restrictions� 	getIPList� <br>� ListChangeDelims��
 � 2">
				<strong><a href="../logging/settings.cfm">� loggingSettings� Logging Settings� logDir� Log directory� LogDirectory� maxFileSize� Maximum file size� MaxFileSize� 	_factor56�R
 � X kb
			</td>
		</tr>
		<tr>
			<td nowrap valign="top" class="cell3BlueSides">
				� maxNumbOfActivities� Maximum number of archives� MaxArchives� ` &nbsp;
			</td>
		</tr>
		
		<tr>
			<td nowrap valign="top" class="cell3BlueSides">
				� logSlowPages� Log slow pages� LogSlowRequests� slowPageTimeLimit� Slow page time limit� LogRequestTimeLimit� logCorbaCalls� Log CORBA calls� 	_factor57�R
 � LogCorbaCalls� logScheduledTask� Log scheduled tasks� LogScheduledTask� scheduledTasksAndProbes� Schedule Tasks &amp; Probes� 9">
				<strong><a href="../scheduler/scheduletasks.cfm">� scheduledTasks� Scheduled Tasks� 	SCHEDULER� _resolve��
 � listAll� 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object;��
 � TASK��
 � 
startsWith� 	cfprobe__� aTasks[i].start_date� _checkParam S(Ljava/lang/String;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;)Ljava/lang/Object;��
 � aTasks[i].end_date  aTasks[i].interval aTasks[i].start_time aTasks[i].url aTasks[i].username aTasks[i].request_time_out
 aTasks[i].publish aTasks[i].path aTasks[i].file aTasks[i].resolveURL P

		
		<tr>
			<td width="250" colspan="2" class="cellBlueBottom" bgcolor="# q</strong> &nbsp;
			</td>
		</tr>
		<tr>
			<td nowrap valign="top" class="cell3BlueSides" width="250">
				 	startDate 
Start Date 
START_DATE endDate End Date  _factor7"R
 # END_DATE% 	startTime' 
Start Time) 
START_TIME+ end_time- endTime/ End Time1 END_TIME3 _factor85R
 6 request_time_out8 REQUEST_TIME_OUT: proxy_server< proxyServer> Proxy Server@ PROXY_SERVERB 	proxyPortD 
Proxy PortF HTTP_PROXY_PORTH _factor9JR
 K 
saveOutputM Save output to fileO PUBLISHQ publishPathS Publish pathU PATHW publishFilenameY Publish filename[ FILE] 
resolveURL_ Resolve URLsa 
RESOLVEURLc 	_factor10eR
 f 	_factor58hR
 i 
		
		k &(Ljava/lang/String;)Ljava/lang/Object;mm
 n coldfusion.probesp 2">
				<strong><a href="../scheduler/probes.cfm">r systemProbest System Probesv ^</a></strong>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="cellBlueBottom" bgcolor="#x probeSettingsz Probe Settings| notificationEmailRecipients~ Notification Email Recipients� config� emailto� 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;��
 � notificationSentFrom� Notification Sent From� 	emailfrom� probeURL� Probe.cfm URL� 	_factor11�R
 � probeurl� probeUsername� Probe.cfm Username� ">
				� Mid ((Ljava/lang/String;II)Ljava/lang/String;��
 � enabled� Enabled� DISABLED���
t� (Z)Ljava/lang/String;p�
t� 	_factor12�R
 � requestTimeout� Request Timeout� ;
			</td>
			<td class="cellRightAndBottomBlueSide">
			� 	_factor13�R
 � publishpath� emailFailure� sendEmailNotifications� Send Email Notifications� EMAILFAILURE� 	_factor14�R
 � executeScript� excuseTheProgram� Execute the Program� EXECUTESCRIPT� 	_factor59�R
 � 
extensions� 
Extensions� �</b>
	</th>
</tr>
<tr>
	<td>
		
		
		<table border="0" cellpadding="2" cellspacing="0" width="100%">
		<tr>
			<td colspan="2" class="cellBlueTopAndBottom" bgcolor="#� 4">
				<strong><a href="../extensions/applets.cfm">� javaApplets� Java Applets� 
getApplets� code� Code� D(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;)Ljava/lang/Object;��
 � method� Method� codeBase� Codebase� codebase� archive� Archive� 	_factor15�R
 � height� Height� width� Width� vSpace� Vertical Space	 	_factor16	R
 	 vspace	 hspace	 Horizontal Space	
 	alignment	 	Alignment	 align	 notSupportedMessage	 Not supported message	 message	 appletParams	 Applet Parameters	 	_factor17	R
 	 !</strong>
			</td>
		</tr>
				 
parameters	! param	# E
			<tr>
				<td nowrap valign="top" class="cell3BlueSides">
						% F &nbsp;
				</td>
				<td class="cellRightAndBottomBlueSide">
						' ! &nbsp;
				</td>
			</tr>
				) 0">
				<strong><a href="../extensions/cfx.cfm">	+ cfxTags	- CFX Tags	/ getCFX	1 	_factor60	3R
 	4 '</strong> &nbsp;
			</td>
		</tr>
			6 tagName	8 Tag name	: 	_factor18	<R
 	= library	? severLibrary	A Server library	C LIBRARY	E cache	G keepLibraryLoaded	I Keep library loaded	K CACHE	M 	procedure	O 	Procedure	Q 	PROCEDURE	S 	classname	U 
Class name	W 	CLASSNAME	Y 	_factor19	[R
 	\ ;">
				<strong><a href="../extensions/customtagpaths.cfm">	^ customTagPaths	` Custom Tag Paths	b getCustomTagPaths	d :
		<tr>
			<td colspan="2" class="cell3BlueSides">
					f 2">
				<strong><a href="../extensions/corba.cfm">	h corba	j CORBA	l selectedConnector	n Selected connector	p 	getUseOrb	r 
						t 
					[	v none	x ]
					z 	_factor61	|R
 	} ]
				&nbsp;
			</td>
		</tr>
		<tr>
			<td colspan="2" class="cellBlueBottom" bgcolor="#	 
Connectors	� getCorbaConnectors	� e</strong> &nbsp;
			</td>
		</tr>
		<tr>
			<td nowrap valign="top" class="cell3BlueSides">
					� orbClassName	� ORB class name	� 	classPath	� 	Classpath	� orbPropFile	� ORB property file	� PROPERTYFILE	� 	_factor62	�R
 	� 9
		</table>
		
	</td>
</tr>
</table>
<br><br>


	� d
<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td colspan="2" bgcolor="#	� eventGateways	� Event Gateways	� 4">
				<strong><a href="../eventgateway/index.cfm">	� settings	� Settings	� a</a></strong>
			</td>
		</tr>
		<tr>
			<td width="250" nowrap class="cell3BlueSides">
					� enableEventGateway	� Enable Event Gateway	� getGatewayServiceStatus	� threadPoolSize	� Thread Pool Size	� getGatewayProperty	� maxQueueSize	� Max Queue Size	� 	_factor21	�R
 	� MaxQueueSize	� ;">
				<strong><a href="../eventgateway/gatewaytypes.cfm">	� gatewayTypes	� Gateway Types	� getGatewayTypes	� Class	� CLASS	� STARTTIMEOUT	� 	_factor20	�R
 	� killOnTimeout	� Kill On Timeout	� KILLONTIMEOUT	� 	_factor63	�R
 	� Security	� :">
				<strong><a href="../security/cfadminpassword.cfm">	� passwordSecurity	� Password Security	� useCFAdminPassword	� (Use a ColdFusion Administration Password	� getUseAdminPassword	� useRdsPassword	� Use an RDS Password	� getUseRDSPassword	� 8
			<tr>
				<td nowrap class="cell3BlueSides">
						� enableCFSecurity	� Enable ColdFusion Security	� ?
				</td>
				<td class="cellRightAndBottomBlueSide">
						� getEnableSandboxSecurity	�   &nbsp;
				</td>
			</tr>
			� 	_factor64	�R
 	� @
			<tr>
				<td colspan="2" class="cellBlueBottom" bgcolor="#	� 1">
					<strong><a href="../security/index.cfm">	� securitySandbox	� Security Sandboxes
  '</a></strong>
				</td>
			</tr>
			
 getSecuritySandboxes
 
			
 ">
					<strong>
 j</strong> &nbsp;
				</td>
			</tr>
			<tr>
				<td nowrap valign="top" class="cellGrayBottom">
					

 enabledDatasources
 Enabled Data Sources
 getDisabledDatasources
 
						
 StructDelete

 
 '(Ljava/lang/Object;Ljava/lang/Object;)D�

 
 StructKeyList #(Ljava/util/Map;)Ljava/lang/String;


 
 , 
  &nbsp;
					
  
						All
					
" M
				</td>
			</tr>
			<tr>
				<td nowrap class="cell3BlueSides">
					
$ disabledTags
& Disabled Tags
( getDisabledCFTags
* _List $(Ljava/lang/Object;)Ljava/util/List;
,
-
t
. ArrayToList $(Ljava/util/List;)Ljava/lang/String;
0
1
 
2 
						None
					
4 	_factor22
6R
 
7 disabledFunctions
9 Disabled Functions
; getDisabledCFFunctions
= U
				</td>
			</tr>
			<tr>
				<td colspan="2" class="cellBlueBottom" bgcolor="#
? fileDirPermissions
A File/Directory Permissions
C #</strong>
				</td>
			</tr>
			
E getSecuredFolders
G 7
			<tr>
				<td nowrap class="cell3BlueSides">
				
I TARGET
K <<ALL FILES>>
M '(Ljava/lang/Object;Ljava/lang/String;)D�
O
 
P allFileDirectories
R All files/directories
T ACTION
V 	_factor23
XR
 
Y serverPortPermissions
[ Sever/Port Permissions
] getSecuredIPPorts
_ *
a allServersPorts
c All servers/ports
e i
				</td>
				<td class="cellRightAndBottomBlueSide">
					connect, resolve
				</td>
			</tr>
			
g 	_factor24
iR
 
j 	_factor65
lR
 
m -
		</table>
		
	</td>
</tr>
</table>


o
� coldfusion/tagext/QueryLoop
r

s�

s�
� 	_factor66
wR
 
x 






z ../include/marginbottom.cfm
| ../footer.cfm
~ metaData Ljava/lang/Object;
�
�	 
� __factorParent out Ljavax/servlet/jsp/JspWriter; value module63 $Lcoldfusion/tagext/lang/ImportedTag; mode63 t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module64 mode64 t14 t15 t16 t17 t18 t19 module65 mode65 t22 t23 t24 t25 t26 t27 module66 mode66 t30 t31 t32 t33 t34 t35 module67 mode67 t38 t39 t40 t41 t42 t43 LineNumberTable java/lang/Throwable
� module59 mode59 module60 mode60 module61 mode61 t28 ,Lcoldfusion/runtime/TransientVariableHolder; module62 mode62 t36 t37 #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable0 !coldfusion/runtime/AbortException
� java/lang/Exception
� module55 mode55 module56 mode56 module57 mode57 module58 mode58 module51 mode51 module52 mode52 module53 mode53 module54 mode54 module46 mode46 module47 mode47 module48 mode48 module49 mode49 module50 mode50 module42 mode42 module43 mode43 module44 mode44 module45 mode45 module1 mode1 module2 mode2 module3 mode3 module4 mode4 include5 #Lcoldfusion/tagext/lang/IncludeTag; include6 	output273  Lcoldfusion/tagext/io/OutputTag; mode273 t4 D module40 mode40 t12 t13 module41 mode41 t20 t21 	module260 mode260 	module261 mode261 	module262 mode262 	module263 mode263 	module264 mode264 module36 mode36 module37 mode37 module38 mode38 object39 "Lcoldfusion/tagext/lang/ObjectTag; 	module254 mode254 	module259 mode259 module32 mode32 module33 mode33 module34 mode34 module35 mode35 	module245 mode245 Ljava/util/Iterator; 	module246 mode246 	module247 mode247 	module248 mode248 module28 mode28 module29 mode29 module30 mode30 module31 mode31 	module241 mode241 	module242 mode242 	module243 mode243 t29 	module244 mode244 	module219 mode219 	module220 mode220 	module233 mode233 varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; <clinit> runPage 
include274 
include275 module24 mode24 module25 mode25 module26 mode26 module27 mode27 module20 mode20 module21 mode21 module22 mode22 module23 mode23 	module203 mode203 	module204 mode204 	module218 mode218 module16 mode16 module17 mode17 module18 mode18 module19 mode19 	module170 mode170 	module171 mode171 	module172 mode172 module11 mode11 module12 mode12 module13 mode13 module14 mode14 module15 mode15 	module165 mode165 	module166 mode166 	module167 mode167 	module168 mode168 	module169 mode169 module7 mode7 module8 mode8 module9 mode9 module10 mode10 	module265 mode265 	module271 mode271 	module272 mode272 	module161 mode161 	module162 mode162 	module163 mode163 	module164 mode164 	module268 mode268 	module269 mode269 	module270 mode270 	module157 mode157 	module158 mode158 	module159 mode159 	module160 mode160 	module266 mode266 	module267 mode267 	module153 mode153 	module154 mode154 	module155 mode155 	module156 mode156 	module249 mode249 	module250 mode250 	module251 mode251 	module252 mode252 	module253 mode253 	module149 mode149 	module150 mode150 	module151 mode151 	module152 mode152 	module255 mode255 	module256 mode256 	module257 mode257 	module258 mode258 	module145 mode145 	module146 mode146 	module147 mode147 	module148 mode148 	module141 mode141 	module142 mode142 	module143 mode143 	module144 mode144 	module190 mode190 	module191 mode191 	module192 mode192 	module193 mode193 	module137 mode137 	module138 mode138 	module139 mode139 	module140 mode140 	module186 mode186 	module187 mode187 	module188 mode188 	module189 mode189 	module184 mode184 	module185 mode185 	module135 mode135 	module130 mode130 	module131 mode131 	module132 mode132 	module133 mode133 	module134 mode134 	module125 mode125 	module126 mode126 	module127 mode127 	module128 mode128 	module129 mode129 	module121 mode121 	module122 mode122 	module123 mode123 	module124 mode124 	module113 mode113 	module114 mode114 	module115 mode115 	module116 mode116 	module117 mode117 module98 mode98 module99 mode99 	module100 mode100 	module101 mode101 module69 mode69 module70 mode70 module71 mode71 module72 mode72 	module237 mode237 	module238 mode238 	module239 mode239 	module240 mode240 	module234 mode234 	module235 mode235 	module236 mode236 	module229 mode229 	module230 mode230 	module231 mode231 	module232 mode232 	module119 mode119 	module120 mode120 	module136 mode136 	module225 mode225 	module226 mode226 	module227 mode227 	module228 mode228 	module109 mode109 	module110 mode110 	module111 mode111 	module112 mode112 	module118 mode118 	module221 mode221 	module222 mode222 	module223 mode223 	module224 mode224 	module105 mode105 	module106 mode106 	module107 mode107 	module108 mode108 	module214 mode214 	module215 mode215 	module216 mode216 	module217 mode217 module97 mode97 	module102 mode102 	module103 mode103 	module104 mode104 	module209 mode209 	module210 mode210 	module211 mode211 	module212 mode212 	module213 mode213 module93 mode93 module94 mode94 module95 mode95 module96 mode96 	module205 mode205 	module206 mode206 	module207 mode207 	module208 mode208 module88 mode88 module89 mode89 module90 mode90 module91 mode91 module92 mode92 getMetadata 	module198 mode198 	module199 mode199 	module200 mode200 	module201 mode201 	module202 mode202 module84 mode84 module85 mode85 module86 mode86 module87 mode87 	module194 mode194 	module195 mode195 	module196 mode196 	module197 mode197 module80 mode80 module81 mode81 module82 mode82 module83 mode83 module76 mode76 module77 mode77 module78 mode78 module79 mode79 module68 mode68 module73 mode73 module74 mode74 module75 mode75 1     9            $     )     .     3     8     =     B     G     L     Q     V     [     `     e     j     o     t     y     ~     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �             
        ��   ��   �   D�   ��   ��   
�
�   H        #     *� 
�                �R    �  ,  @,���,*�DYDS���u��,���*��?+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,I��*��@+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��*� �***� �>�BY�S�N�8*,3�*,***� �o�6��������u��,��*����H,���*��A+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��*� �*�DY�SY�SY�S���8*,3�**� n***� ��>��BY|S�N�8*� �***� ��>��BY�SY**� n�oS�N�8*� n**� n�o��c���8*� }***� ��>��BY*�**� n�o��SY***� ��>��B�NS�N�8*,3�*,**� ��o�u��*,%�**��B+����:�������Y�BY�SY�S��������Y6� 6*,��M,ζ��ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*,%�*,**� }�o�u��*,%�**��C+����:$$�����$��Y�BY�SY�S����$��$��Y6%� 6*$%,��M,ж�$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+,��*�  q � �   f � �
� f � �  .GM  #sy
�#��  Kdj  @��
�@��  �  �<B
��KQ  ���  �
�� &      � ,  @      @
�"   @
�
�   @
�
�   @
�
�   @
� V   @
�
�   @
�
�   @
�
�   @
�
� 	  @
�
� 
  @
�
�   @
�
�   @
� V   @
�
�   @
�
�   @
�
�   @
�
�   @
�
�   @
�
�   @
�
�   @
� V   @
�
�   @
�
�   @
�
�   @
�
�   @
�
�   @
�
�   @
�
�   @
� V   @
�
�   @
�
�   @
�
�    @
�
� !  @
�
� "  @
�
� #  @
�
� $  @
� V %  @
�
� &  @
�
� '  @
�
� (  @
�
� )  @
�
� *  @
�
� +
�  b X       V { & �8 ��������������������"�"�"0%U% %�%�(�(�(�(�(�*�*�*�*�)++%+++	*8,8,C,8,8,4+P-b-e-e-a-t-s-O-O-K,�)�.�/�/�.�/�//�/b/k/k/j/y/�/�/�/7/�" �R    )  *  *��;+����:�������Y�BY�SYXS��������Y6� 6*,��M,Z���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �>O�BY\S�N����,d��*��<+����:�������Y�BY�SY^S��������Y6� 6*,��M,`���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �>O�BYbS�N�u��,d��*��=+����:�������Y�BY�SYfS��������Y6� 6*,��M,h���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �>O�BYjS�N����,l�ػnY*��q:*,l�**ݶ� �,���*��>+����:�������Y�BY�SYsS��������Y6� 6*,��M,u���ۚ��� � :� �: *,��M� ��� :!� &� �!�� � #:""�� � :#� #�:$��$,\��,***� �>O�BYwS�N����,y��*,l�*� M� <:%%�:&&�:''�����                 �'��� &�� � :(� (�:)���)*�  K d j   @ � �
� @ � �  /HN  $tz
�$��  ,2  X^
�gm  6<  ek
�tz  ���
����
��      � *        
�"   
�
�   
�
�   
�
�   
� V   
�
�   
�
�   
�
�   
�
� 	  
�
� 
  
�
�   
�
�   
� V   
�
�   
�
�   
�
�   
�
�   
�
�   
�
�   
�
�   
� V   
�
�   
�
�   
�
�   
�
�   
�
�   
�
�   
�
�   
�
�   
� V   
�
�   
�
�    
�
� !  
�
� "  
�
� #  
�
� $  
�
� %  
�
� &  
�
� '  
�
� (  
�
� )
�   � 6 0� U�  � �� �� �� �� �� �� �� �� ���9� ���������������������~�������� ������'���������
���� TR      $  �*,3�*,**� d�o�6�9����,d��*��7+����:�������Y�BY�SY;S��������Y6� 6*,��M,=���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �>��BY?S�N�u��,A��,*�DYDS���u��,C��*��8+����:�������Y�BY�SYES��������Y6� 6*,��M,G���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,I��*��9+����:�������Y�BY�SYKS��������Y6� 6*,��M,M���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �>O�BYQS�N�u��*,%�**��:+����:�������Y�BY�SYSS��������Y6� 6*,��M,S���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,��*�  o � �   d � �
� d � �  r��  g��
�g��  /HN  $tz
�$��  -3  	Y_
�	hn      j $  �      �
�"   �
�
�   �
�
�   �
�
�   �
� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �
�
�   �
� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � )  � 	� 	� 	� 	� 	� 	� � � T� y� $� �� �� �� �� �� ���	�	�� �W�|�'����9����������������������� /R    "  $  �,���*��3+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �>��BYS�N�u��,d��*��4+����:�������Y�BY�SY S��������Y6� 6*,��M,"���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �>��BY$S�N�u��,d��*��5+����:�������Y�BY�SY&S��������Y6� 6*,��M,(���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �>��BY*S�N����,d��*��6+����:�������Y�BY�SY&S��������Y6� 6*,��M,,���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��*� d***� �>��BY.S�N�8*�  R k q   G � �
� G � �  6OU  +{�
�+��  39  _e
�nt  �  �CI
��RX      j $  �      �
�"   �
�
�   �
�
�   �
�
�   �
� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �
�
�   �
� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � +  � 7� \� � �� �� �� �� �� �� ���@� ������������������$��������������������������i�u���t�t�p�p� R    �  ,  h,���*��.+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �>��BY�S�N����,d��*��/+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �>��BYS�N�u��*,%�**��0+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,��*��1+����:�������Y�BY�SY	S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� �>�BYS�N����,��*ݶ� �,���*��2+����:$$�����$��Y�BY�SYS����$��$��Y6%� 6*$%,��M,��$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+,\��,***� �>��BYS�N����,��*�  R k q   G � �
� G � �  6OU  +{�
�+��  4:  `f
�ou  ���  �#
��,2  ���  �
��!'      � ,  h      h
�"   h
�
�   h
�
�   h
�
�   h
� V   h
�
�   h
�
�   h
�
�   h
�
� 	  h
�
� 
  h
�
�   h
�
�   h
� V   h
�
�   h
�
�   h
�
�   h
�
�   h
�
�   h
�
�   h
�
�   h
� V   h
�
�   h
�
�   h
�
�   h
�
�   h
�
�   h
�
�   h
�
�   h
� V   h
�
�   h
�
�   h
�
�    h
�
� !  h
�
� "  h
�
� #  h
�
� $  h
� V %  h
�
� &  h
�
� '  h
�
� (  h
�
� )  h
�
� *  h
�
� +
�   � 8  � 7� \� � �� �� �� �� �� �� �� �� ���@� ���������������� �%�����������C�L�]�K�K�K�K�J�j�r�r�q�{�������8�A�R�@�@�@�@�?�_�q� �R    L  $  �,\��,**� ��o�u��,d��*��*+����:�������Y�BY�SY�S��������Y6� 6*,��M,˶��ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� <�>��BY�S�N�u��,���,*�DY:S���u��,϶�*��++����:�������Y�BY�SY�S��������Y6� 6*,��M,Ӷ��ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,B��,*�DYDS���u��,ն�*��,+����:�������Y�BY�SY�S��������Y6� 6*,��M,ٶ��ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,۶�*ݶ� �,��*��-+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,��,***� �>��BY�S�N�u��,��*�  h � �   ] � �
� ] � �  k��  `��
�`��  G`f  <��
�<��  .4  
Z`
�
io      j $  �      �
�"   �
�
�   �
�
�   �
�
�   �
� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �
�
�   �
� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � .  _ b b a b Mg rg g �g �j �j �j �j �i �jyyyyPzuz z�z��������,�Q���������������������������������� 
wR    a  ,  i*,&�**� <*,.�2�8*� 2*,:�2�8***� 2�>@�BY**� <�DYFS�JS�NW*�*,P�2�8*� �*RT�2�8*� F*RV�2�8*� P*RX�2�8*� �*RZ�2�8*� �*R\�2�8*� �*R^�2�8*� �*R`�2�8*,&�***�	bd�h*,&�***� �l� $*�DYS**� �o�u�y�|��*�DY�S��Y���*�DYS���u���������*,&�**��+����:�������Y�BY�SY�SY�SY�S��������Y6� 6*,��M,Ӷ��ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��*,��**��+����:�������Y�BY�SY�SY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��*,��**��+����:�������Y�BY�SY�SY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��*,��**��+����:�������Y�BY�SY�SY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*,&�**��+��� :$$�
�$�� �*,��**��+��� :%%�
�%�� �*,&�**�+���:&&�Y6'�'*&,�T� �*&,��� �*&,��� �*&,��� �*&,��� �*&,�� �*&,�-� �*&,�j� �*&,��� �*&,��� �*&,�� �*&,�1� �*&,�V� �*&,��� �*&,��� �*&,�E� �*&,�d� �*&,�}� �*&,��� �*&,��� �*&,��� �*&,�� �*&,�#� �*&,�l� �*&,��� �*&,�� �*&,�1� �*&,�L� �*&,�c� �*&,�~� �*&,��� �*&,��� �*&,��� �*&,�j� �*&,��� �*&,�	5� �*&,�	~� �*&,�	�� �*&,�	�� �*&,�	�� �*&,�
n� �,
p��&�
q���&�
t� :(� #(�� � #:)&)�
u� � :*� *�:+&�
v�+*� ���  �

��  ���  }��
�}��  Qjp  F��
�F��  39  _e
�nt   AG
� PV      � ,  i      i
�"   i
�
�   i
�
�   i
�
�   i
� V   i
�
�   i
�
�   i
�
�   i
�
� 	  i
�
� 
  i
�
�   i
�
�   i
� V   i
�
�   i
�
�   i
�
�   i
�
�   i
�
�   i
�
�   i
�
�   i
� V   i
�
�   i
�
�   i
�
�   i
�
�   i
�
�   i
�
�   i
�
�   i
� V   i
�
�   i
�
�   i
�
�    i
�
� !  i
�
� "  i
�
� #  i
�
� $  i
�
� %  i
�
� &  i
� V '  i
�
� (  i
�
� )  i
�
� *  i
�
� +
�  � m                !        +  <  *  *  X  [  W  W  S  i  l  h  h  d  z 	 } 	 y 	 y 	 u  � 
 � 
 � 
 � 
 � 	 �  �  �  �  � 
 �  �  �  �  �  �  �  �  �  �  �  �  �  �  �    �  �  �  �  �  �  �          � 9 ? ? U 5 5 '  � a � � � i * a m � 2 � * 6 [ � � �  �  $  �  �  � "� "� "� #� #� # 	� % 
lR     �     (*,l�**��� *+,�
k� �*,l�**�       *    (       (
�"    (
�
�    (
�
� 
�      � 	� 	� � 	 � �R    �    �*,l�**� �****� Ͷ>n�B�Np�B�N�8*,r�**^�DY~SY�S���ut�x�  *,%�**� xz�8*,%�*� *,%�**� x|�8*,%�**,l�**� K~�8*,r�*9**� ��o���9���9��N*�-��W� �*,l�**� �***� �**� Z�o����B�N�8*,l�**� �**� ׶o�u�~���8*,l�**� K��Y**� K�o�u��**� x�o�u��**� ׶o�u��**� x�o�u��������8*,l�*c\9��N*�-��W�������3*,l�**� �***� <�>��BY�S�N�u**� x�o�u**� x�o�u�������8*,l�**� ���Y���**� K�o�u��**� x�o�u�����**� ��o�u�����8,���*��(+����:

�����
��Y�BY�SY�S����
��
��Y6� 6*
,��M,���
�ۚ��� � :� �:*,��M�
��� :� #�� � #:
�� � :� �:
��,\��,**� K�o�u��,**� x�o�u��,���*��)+����:�������Y�BY�SY�S��������Y6� 6*,��M,Ķ��ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��*� ���  ���
����  q��  f��
�f��       �   �      �
�"   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
� 
  �
� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
� V   � 
�   �
�   �
�
�   �
�
�   �
�
�   �
�
� 
�  � s  F G G G G G G -G 5I 5I OI 5I XI dI dI `I `I jI uI �I �I }I }I �I uI 5I �I �J �J �J �J �J �L �L �L �L �L �L �L �M �M �M �M �M �M
N
NNN
N
NNN!N1O1O?O?OMOMO[O[OiO-O-O)O)OuO�L �L�P�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�QRRRRR#R)R)R�R�R�R�R=RtW�WDW�WZZYZZZZV_{_&_ 	�R    �  ,  q,���,*�DY:S���u��,<��*��+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	ض��ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,B��,*�DYDS���u��,	ڶ�*��+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	޶��ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,	���*��+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,��,***� ��>	��B�N����,d��*��+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� ��>	��B�N����,��*��� �,	��*��+����:$$�����$��Y�BY�SY	�S����$��$��Y6%� 6*$%,��M,	��$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+,	��,***� ��>	��B�N����,	���*�  r � �   g � �
� g � �  Ohn  D��
�D��  &,  RX
�ag  �  �17
��@F  ���  �!'
��06      � ,  q      q
�"   q
�
�   q
�
�   q
�   q V   q
�
�   q
�
�   q
�
�   q
�
� 	  q
�
� 
  q
�
�   q
�   q V   q
�
�   q
�
�   q
�
�   q
�
�   q
�
�   q
�
�   q
�   q V   q
�
�   q
�
�   q
�
�   q
�
�   q
�
�   q
�
�   q
�   q	 V   q
�
�   q
�
�   q
�
�    q
�
� !  q
�
� "  q
�
� #  q

� $  q V %  q
�
� &  q
�
� '  q
�
� (  q
�
� )  q
�
� *  q
�
� +
�   � 7  ~ � � � � W� |� &� �� �� �� �� ��4�Y���������x��������������������W�`�_�_�_�_�^�x��������������G�P�O�O�O�O�N�h�� hR    g    9,\��,***� <�>��BY/S�N�u��,d��*��$+����:�������Y�BY�SY1S��������Y6� 6*,��M,3���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� <�>��BY5S�N�u��,d��*��%+����:�������Y�BY�SY7S��������Y6� 6*,��M,9���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� <�>��BY;S�N�u��,d��*��&+����:�������Y�BY�SY=S��������Y6� 6*,��M,?���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� <�>��BYAS�N�u��,C��*�H'+���J:LNP�
�SLUW�
�ZL\^�
�`Lbd�
�g�� �*� 	 y � �   n � �
� n � �  ]v|  R��
�R��  AZ`  6��
�6��      $   9      9
�"   9
�
�   9
�
�   9
�   9 V   9
�
�   9
�
�   9
�
�   9
�
� 	  9
�
� 
  9
�
�   9
�   9 V   9
�
�   9
�
�   9
�
�   9
�
�   9
�
�   9
�
�   9
�   9 V   9
�
�   9
�
�   9
�
�   9
�
�   9
�
�   9
�
�   9 
�   � *  ' 	* * * * ) '* ^/ �/ ./ �/ �2 �2 �2 �2 �12B7g77�7�:�:�:�:�9�:&?K?�?�?�B�B�B�B�A�B�FFF$F�F 	�R    �    �,	���*����*+,�	�� �,\��,***� ܶ>	��BY	�S�N�u��,Ҷ�,*�DYDS���u��,	���*�� �+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	¶��ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,۶�*� �***� ܶ>	��B�N�8*,l�*9**� ȶo���9���9��N*�-��W�*+,�	�� �,��*��+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	Ѷ��ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DY	�S�����,��c\9��N*�-��W��������*,l�**�  � � �   � �
� �
  ���  �
��(.       �   �      �
�"   �
�
�   �
�
�   �
�   � V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �
�
�   �
�
�   �
�
�   �
�   � V   � 
�   �
�   �
�
�   �
�
�   �
�
�   �
�
� 
�   � /   ) ) ) K &N 7N %N %N $M DN LR LR KR cR �S �S jS!S-V,V,V(V(VBVMWMWMWMW[WjW�r�w�w�w?wMzGzGzGzGzFynz�WJW�} ) +R      $  �,\��,***� <�>��BYS�N�u��,d��*�� +����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� <�>��BYS�N�u��,d��*��!+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� <�>��BY S�N�u��,d��*��"+����:�������Y�BY�SY"S��������Y6� 6*,��M,$���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� <�>��BY&S�N�u��,d��*��#+����:�������Y�BY�SY(S��������Y6� 6*,��M,*���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  y � �   n � �
� n � �  ]v|  R��
�R��  AZ`  6��
�6��  %>D  jp
�y      j $  �      �
�"   �
�
�   �
�
�   �
�   � V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �
�   � V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�   � V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�   � V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � (   	
 
 
 
 	 '
 ^ � . � � � � � �Bg�������&K���"�"�"�"�!�"
'/'�' 	�R      %  S,	���,*�DYDS���u��,F��*�� �+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,ض�*� i***� F�>	��B�N�8*,l�***� i�o��� �� :�*�� ������� N*-��W,��,*�DYDS���u��,F��,**� A�o�u��,	���*�� �+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� i**� A�o����DY	ZS��u��,c��*�� �+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� i**� A�o����DY�S��u��,c��*�� �+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	����ۚ��� � :� �: *,��M� ��� :!� #!�� � #:""�� � :#� #�:$��$,\��,***� i**� A�o����DY	�S��u��,������: ���*�  r � �   g � �
� g � �  ���  �
��!  ���  ���
��  ���  ���
����      t %  S      S
�"   S
�
�   S
�
�   S 
�   S! V   S
�
�   S
�
�   S
�
�   S
�
� 	  S
�
� 
  S
�
�   S
�"   S#
�   S$ V   S
�
�   S
�
�   S
�
�   S
�
�   S
�
�   S 
�   S%
�   S& V   S
�
�   S
�
�   S
�
�   S
�
�   S
�
�   S
�
�   S'
�   S( V   S
�
�   S
�
�    S
�
� !  S
�
� "  S
�
� #  S
�
� $
�   � 7  � � � � � W� |� &� �� �� �� �� �� �� ��  7 ? GGF^ffet��{2@::9
a��h-''&M��T:  R      $  �,\��,***� <�>��BY�S�N�u��,d��*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� <�>��BY�S�N�u��,d��*��+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� <�>��BYS�N�u��,d��*��+����:�������Y�BY�SYS��������Y6� 6*,��M,	���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� <�>��BYS�N�u��,d��*��+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  y � �   n � �
� n � �  ]v|  R��
�R��  AZ`  6��
�6��  %>D  jp
�y      j $  �      �
�"   �
�
�   �
�
�   �)
�   �* V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �+
�   �, V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �-
�   �. V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �/
�   �0 V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � (   � 	 �  �  �  �  � ' � ^ � � � . � � � � � � � � � � � � � �B �g � �� �� �� �� �� �� �� �& �K �� �� �������
/� 	|R    �  +  �*,l�***��o��� �� :� H�� ������� N*-��W*+,�	>� �*+,�	]� �*,l�*����: ���,���,*�DYDS���u��,	_��*�� �+����:�������Y�BY�SY	aS��������Y6� 6*,��M,	c���ۚ��� � :� �:*,��M���� :	� #	�� � #:

�� � :� �:��,۶�*� �***� F�>	e�B�N�8*,l�*9**� ��o���9���9��N*�-��W� C,	g��,**� �**� Z�o���u��,��c\9��N*�-��W��������,���,*�DYDS���u��,	i��*�� �+����:�������Y�BY�SY	kS��������Y6� 6*,��M,	m���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,I��*�� �+����:�������Y�BY�SY	oS��������Y6� 6*,��M,	q���ۚ��� � :� �:*,��M���� :� #�� � #:  �� � :!� !�:"��",\��***� F�>	s�B�N�u�y�6���� 0*,	u�*,***� F�>	s�B�N�u��*,3�*� �,	w��*�� �+����:##�����#��Y�BY�SY	yS����#��#��Y6$� 6*#$,��M,	y��#�ۚ��� � :%� %�:&*$,��M�&#��� :'� #'�� � #:(#(�� � :)� )�:*#��*,	{��*�  � �   �(.
� �7=  `y  U��
�U��  7=  ci
�rx  3LR  (x~
�(��      � (  �      �
�"   �
�
�   �
�
�   �
�"   �1
�   �2 V   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �3
�   �4 V   �
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �5
�   �6 V   �7
�   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �8
� #  �9 V $  �
�
� %  �
�
� &  �
�
� '  �
�
� (  �
�
� )  �
�
� *
�   C  � � � 9� Y� � q� y� y� x� �� �� �� ��N�Z�Y�Y�U�U�o�z�z�z�z�������������������w����������E�j�����(��������������������������������=��������� 	3R    �    ,���,*�DY:S���u��,϶�*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,Զ��ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,ֶ�,*�DYDS���u��,ض�*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,ܶ��ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,۶�*� �***� F�>��B�N�8*,l�***� öo��� �� :��� ������� N*-��W*+,��� �*+,�	� �*+,�	� �,	 ��**� ��BY**� A�oSY	"S���� �� :� {�� ������� N*	$-��W,	&��,**� Ҷo�u��,	(��,**� ��BY**� A�oSY	"SY**� ҶoS��u��,	*������: ���*,l�*����: ���,���,*�DYDS���u��,	,��*�� �+����:�������Y�BY�SY	.S��������Y6� 6*,��M,	0���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,۶�*�***� F�>	2�B�N�8*� 	 r � �   g � �
� g � �  Ohn  D��
�D��  ���  w��
�w��      .         
�"   
�
�   
�
�   :
�   ; V   
�
�   
�
�   
�
�   
�
� 	  
�
� 
  
�
�   <
�   = V   
�
�   
�
�   
�
�   
�
�   
�
�   
�
�    "   "   >
�   ? V   
�
�   
�
�   
�
�   
�
�   
�
�   7
� 
�   � <  �         W | & � � � � �4Y���������@qRt]tGt�t�t�w�w�v�w�z�z�z�y�y�y�zGt�}�~���/�g���6�������������       �    c*+,� **+,� � **!+,� � #**&+,� � (**++,� � -**0+,� � 2**5+,� � 7**:+,� � <**?+,� � A**D+,� � F**I+,� � K**N+,� � P**S+,� � U**X+,� � Z**]+,� � _**b+,� � d**g+,� � i**l+,� � n**q+,� � s**v+,� � x**{+,� � }**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**+,� �**+,� �	**+,� �**+,� ��           c      c@A   cBC  D      g     I�������������F���H�DY�S���������Y�B���
��           I     E�         �*�� L*�$N*-+�
y� �*+
{�**��-��� :
}�
��� �*+��**��-��� :
�
��� �*+��*�       >    �       �
�
�    �
�
�    �!"    �F
�    �G
� 
�   "  	 9	# !	# L	# l	$ T	$ 	$    �R    $  $  �,\��,***� <�>��BY�S�N�u��,d��*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,׶��ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� <�>��BY�S�N�u��,d��*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,ݶ��ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,߶�,***� <�>��BY�S�N�u����,��*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� <�>��BY�S�N�u��,d��*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  y � �   n � �
� n � �  ]v|  R��
�R��  G`f  <��
�<��  +DJ   pv
� �      j $  �      �
�"   �
�
�   �
�
�   �H
�   �I V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �J
�   �K V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �L
�   �M V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �N
�   �O V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � *   � 	 �  �  �  �  � ' � ^ � � � . � � � � � � � � � � � � � �B �g � �� �� �� �� �� �� �� �� �� �, �Q �� �� �� �� �� �� �� �� � �5 �� � �R      $  �,���,***� <�>��BY�S�N�u��,���*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� <�>��BY�S�N�u��,d��*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� 2�>��B�N�u��,d��*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,¶��ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,*�***��>��B�N�ʸu��,d��*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,ζ��ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  y � �   n � �
� n � �  ]v|  R��
�R��  ;TZ  0��
�0��   9?  ek
�tz      j $  �      �
�"   �
�
�   �
�
�   �P
�   �Q V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �R
�   �S V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �T
�   �U V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �V
�   �W V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � )   � 	 �  �  �  �  � ' � ^ � � � . � � � � � � � � � � � � � �B �g � �� �� �� �� �� �� �  �E �� �� �� �� �� �� �� �� �� �� � �* �� � �R    �  "  6*,l�***�o�q��**+,��� �,\��,*^�BYqSY�SY�S���u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,*^�BYqSY�SY�S���u��,��,���,*�DYDS���u��,s��*�� �+����:�������Y�BY�SYuS��������Y6� 6*,��M,w���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,۶�*� �**�DY�S����B�N��8*,l�*9**� ��o���9���9��N*�-��W��*,l�*****� �**� Z�o����DY�S����BY�S�N�>�H*+,��� �*+,��� �*+,��� �*,l�****� �**� Z�o���Ƕ� �,���*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,˶��ۚ��� � :� �:*,��M���� :� #�� � #:�� � : �  �:!��!,\��,***� �**� Z�o����DY�S��u��,��*,l�**,l�*c\9��N*�-��W�������O*� 	 � � �   � � �
� � �   ���  �� 
��	  \u{  Q��
�Q��      8   6      6
�"   6
�
�   6
�
�   6X
�   6Y V   6
�
�   6
�
�   6
�
�   6
�
� 	  6
�
� 
  6
�
�   6Z
�   6[ V   6
�
�   6
�
�   6
�
�   6
�
�   6
�
�   6
�
�   6 
�   6
�
�   6
�
�   6\
�   6] V   6
�
�   67
�   6
�
�   6
�
�   6
�
�    6
�
� !
�  & I  6 	: 	: : : (W :Z @Z FZ 0Y 0Y /Y SZ �_ �_ Z__#b)b/baaa<b :CeKjKjJjbj�k�kik k+o+o+o+o'n'nMpXqXqXqXqfquq�q�r�r�r�������� ���	�A�f�������������������r�qUq �R    ;  $  �,\��,*^�DY~SY�S���u��,���,*�DY:S���u��,���*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,���*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,���,***� <�>��BY�S�N�u��,d��*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� <�>��BY�S�N�u��,d��*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,���,***� <�>��BY�S�N�u��*�  � � �   � � �
� � � �  Slr  H��
�H��  7PV  ,|�
�,��  4:  `f
�ou      j $  �      �
�"   �
�
�   �
�
�   �^
�   �_ V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �`
�   �a V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �b
�   �c V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �d
�   �e V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � *   {  ~  ~  } % ~ - � - � , � D � { � � � K � �8 �] � �� �� �� �� �� �� �� � �A �� �� �� �� �� �� �� �� �  �% �� �� �� �� �� �� �� � hR    ^  "  �,\��,***� ��>�BY�S�N����,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,ڶ��ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� ��>�BY�S�N����,���,*�DY:S���u��,<��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,B��,*�DYDS���u��,��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,۶�*� �**�DY�S����B�N��8*,l�*9**� ��o���9���9  ��N*�-��W� �*,l�*****� �**� Z�o����DY�S����BY�S�N�>�� :*+,�$� �*+,�7� �*+,�L� �*+,�g� �,��*,l�* c\9 ��N*�-��W��� ����[*� 	 z � �   o � �
� o � �  ~��  s��
�s��  [tz  P��
�P��      8   �      �
�"   �
�
�   �
�
�   �f
�   �g V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �h
�   �i V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �j
�   �k V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�  
�   � =  � 	� � � � � � � '� _� �� .� �� �� �� �� �� �� �� ������+�c���2����������@�e����������������������������&�5�Y�.�.�.��2.��5���� �R    #  ,  C,V��*��+����:�������Y�BY�SYXS��������Y6� 6*,��M,Z���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,*^�DY`SYbS���u��,d��*��+����:�������Y�BY�SYfS��������Y6� 6*,��M,h���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,**� U�>j*�B�n�u��,d��*��+����:�������Y�BY�SYpS��������Y6� 6*,��M,r���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,*�DYtSYvS���u��,x��*��+����:�������Y�BY�SYzS��������Y6� 6*,��M,|���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,*^�DY~SY�S���u��,d��*��+����:$$�����$��Y�BY�SY�S����$��$��Y6%� 6*$%,��M,���$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+*�  R k q   G � �
� G � �  4MS  )y
�)��  +1  W]
�fl  �  �9?
��HN  ���  �!
��*0      � ,  C      C
�"   C
�
�   C
�
�   Cl
�   Cm V   C
�
�   C
�
�   C
�
�   C
�
� 	  C
�
� 
  C
�
�   Cn
�   Co V   C
�
�   C
�
�   C
�
�   C
�
�   C
�
�   C
�
�   Cp
�   Cq V   C
�
�   C
�
�   C
�
�   C
�
�   C
�
�   C
�
�   Cr
�   Cs V   C
�
�   C
�
�   C
�
�    C
�
� !  C
�
� "  C
�
� #  Ct
� $  Cu V %  C
�
� &  C
�
� '  C
�
� (  C
�
� )  C
�
� *  C
�
� +
�   � %   I 7 Q \ Q  Q � Q � T � T � S � T Y> Y � Y� Y� \� \� \� [� \� a a� a} a� d� d� c� d� s� s� s_ sg vg vf u� v� {� {� { �R      ,  .,���*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� ��>�BY�S�N�u��,���*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,Ŷ��ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� ��>�BY�S�N����,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,˶��ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� ��>�BY�S�N�u��*,%�**�� �+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,���*�� �+����:$$�����$��Y�BY�SY�S����$��$��Y6%� 6*$%,��M,Ѷ�$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+*�  S l r   H � �
� H � �  8QW  -}�
�-��  6<  bh
�qw  "  �HN
��W]  ���  �
��      � ,  .      .
�"   .
�
�   .
�
�   .v
�   .w V   .
�
�   .
�
�   .
�
�   .
�
� 	  .
�
� 
  .
�
�   .x
�   .y V   .
�
�   .
�
�   .
�
�   .
�
�   .
�
�   .
�
�   .z
�   .{ V   .
�
�   .
�
�   .
�
�   .
�
�   .
�
�   .
�
�   .|
�   .} V   .
�
�   .
�
�   .
�
�    .
�
� !  .
�
� "  .
�
� #  .~
� $  . V %  .
�
� &  .
�
� '  .
�
� (  .
�
� )  .
�
� *  .
�
� +
�   � (  Y 8^ ]^ ^ �^ �a �a �a �a �` �arBr �r�r�u�u�u�u�u�u�t�uz'z�z�z�}�}�}�}�|�}�}}�}n}����u� QR    *  $  �,��*��+����:�������Y�BY�SYS��������Y6� 6*,��M,!���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,#��,**��o�u��*,%�*,**�)+�/��*,%�*,**�)1�4��,6��,**� #�o�u��,8��,*�DY:S���u��,<��*��+����:�������Y�BY�SY>S��������Y6� 6*,��M,@���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,B��,*�DYDS���u��,F��*��	+����:�������Y�BY�SYHS��������Y6� 6*,��M,J���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,L��*��
+����:�������Y�BY�SYNS��������Y6� 6*,��M,P���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  R k q   G � �
� G � �  ���  }��
�}��  d}�  Y��
�Y��  !:@  fl
�u{      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � .   % 7 ' \ '  ' � ' � + � + � * � + � + � + � + � + � + � + � + � + � + � + � + � + � + +	 .	 . , . : : :6 :m ;� ;= ;� ;� C� C� C CI Dn D D� D I+ I� I 
iR    � 	 #  �,	���,*�DYDS���u��,	���*��	+����:�������Y�BY�SY	�S��������Y6� 6*,��M,
���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,
��*� �***� ��>
�B�N�8*,
�***� �o��� �� :���� ������� N*-��W*+,�
8� �*+,�
Z� �,	���,*�DYDS���u��,
	��*��+����:�������Y�BY�SY
\S��������Y6� 6*,��M,
^���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,
F��*� �***� ��>
`�BY**� A�oS�N�8*,
�*9**� ��o���9���9��N*�-��W�8,
J��**� �**� Z�o��
b�
Q�� �*,	u�**��+����:�������Y�BY�SY
dS��������Y6� 6*,��M,
f���ۚ��� � :� �:*,��M���� :� #�� � #:  �� � :!� !�:"��"*,3�*� **,	u�*,**� �**� Z�o���u��*,3�*,
h��c\9��N*�-��W��������*,
�*����: ��7*� 	 r � �   g � �
� g � �  ���  �
��#  	"(  �NT
��]c      B    �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �
�"   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   � 
�   �
�   �
�
�   �
�
�   ��
�   �� V   �7
�   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "
�   � =  � � � � � W� |� &� �� �� �� �� �� �� ����7�W	_	_	^	v	�	�	}	4	@	Q	?	?	;	;	`	k	k	k	k	y	�	�	�	�	�	�		�	t		�	�	�	�	�		�	�	�	h	�	� �R      $  �,���*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� ��>��B�N�u�����,n��,*�DYDS���u��,���*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,���*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� ��>�BY�S�N�u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� ��>�BY�S�N�u��*�  S l r   H � �
� H � �  Wpv  L��
�L��  .4  
Z`
�
io  �  �?E
��NT      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � (  9 8> ]> > �> �A �A �A �A �A �A �@ �A �H �H �HH<IaII�I�NN�N�N�Q�Q�Q�Q�P�Q�VV�VeVnYYmYmYlX 
XR    � 	 "  �,
%��*��+����:�������Y�BY�SY
:S��������Y6� 6*,��M,
<���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,	��***� ��>
>�BY**� A�oS�N������ =*,
�*,***� ��>
>�BY**� A�oS�N�
/�
3��,
!�ا 
,
5��,
@��,*�DYDS���u��,
	��*��+����:�������Y�BY�SY
BS��������Y6� 6*,��M,
D���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,
F��*� (***� ��>
H�BY**� A�oS�N�8*,
�*9**� (�o���9���9��N*�-��W��,
J��***� (**� Z�o����DY
LS�
N�
Q�� �*,	u�**��+����:�������Y�BY�SY
SS��������Y6� 6*,��M,
U���ۚ��� � :� �:*,��M���� :� #�� � #:�� � : �  �:!��!*,3�*� ;*,	u�*,***� (**� Z�o����DY
LS��u��*,3�*,	��,***� (**� Z�o����DY
WS��u��,	*��c\9��N*�-��W�������q*� 	 S l r   H � �
� H � �  ���  ���
����  �
  �6<
��EK      8   �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   � 
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �7
�   �
�
�   �
�
�   �
�
�    �
�
� !
�   E  � 8� ]� � �� �� �� �� �� �� �� ��� �� �� �� �� ���'�'� ��.�6�6�5�M�����T���(�����7�B�B�B�B�P�_�j�w�q�����������\�g�v�p�p�o���g�q���������������?� �R    i  $  �,\��,***� ��>�BY�S�N����,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� ��>�BY�S�N����,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� ��>�BY�S�N����,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� ��>�BY�S�N����,n��,*�DYDS���u��,���*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  z � �   o � �
� o � �  _x~  T��
�T��  D]c  9��
�9��  Hag  =��
�=��      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � 4   	       ' _ � . � �! �! �! �! �! �! � !D&i&&�&�)�)�)�)�)�)�(�)).N.�.�.�1�1�1�1�1�1�0�1�8�8�8�8-9R9�9 
6R    � 	   ,,	���,*�DYDS���u��,
	��,**� A�o�u��,
��*��
+����:�������Y�BY�SY
S��������Y6� 6*,��M,
���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,	��*� �***� ��>
�BY**� A�oS�N�8*� �***� ��>z�B�N��8*,	u�***� ��o������ �*,
�**� Z��8� =***� ��o�**� �**� Z�o���u�
W*� Z**� Z�o��c���8**� Z�o**� ��o���9�
�t|����*,
�*,***� ��o��

����,
!�ا 
,
#��,
%��*��+����:�������Y�BY�SY
'S��������Y6� 6*,��M,
)���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,	��***� ��>
+�BY**� A�oS�N������ >*,
�*,***� ��>
+�BY**� A�oS�N�
/�
3��*,	u�*� 
,
5��*�  � � �   } � �
� } � �  Ngm  C��
�C��       �   ,      ,
�"   ,
�
�   ,
�
�   ,�
�   ,� V   ,
�
�   ,
�
�   ,
�
�   ,
�
� 	  ,
�
� 
  ,
�
�   ,�
�   ,� V   ,
�
�   ,
�
�   ,
�
�   ,
�
�   ,
�
�   ,
�
� 
�  f Y  � � � � � '� '� &� 5� m� �� <� �� ��� �� �� ��$�#�#�#�#�� ��<�D�D�D�V�b�b�^�l�l�|�w�w�k�k�k�����������������������^�^�������������������������D���3�X������������������������������#�#��� |R    :  $  �,\��,***� ��>�BYeS�N����,c��*�� �+����:�������Y�BY�SYgS��������Y6� 6*,��M,i���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� ��>�BYkS�N����,c��*�� �+����:�������Y�BY�SYmS��������Y6� 6*,��M,o���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� ��>�BYqS�N����,c��*�� �+����:�������Y�BY�SYsS��������Y6� 6*,��M,u���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� ��>�BYwS�N����,c��*�� �+����:�������Y�BY�SYyS��������Y6� 6*,��M,{���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  z � �   o � �
� o � �  _x~  T��
�T��  D]c  9��
�9��  )BH  nt
�}�      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � 0  � 	� � � � � � � '� _� �� .� �� � � � � � � � Di��	�	�	�	�	�	��	)N����������3� 	�R    .  ,  >,	���,*�DY:S���u��,϶�*�� �+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,B��,*�DYDS���u��,	���*�� �+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,	���*�� �+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,��,***� ܶ>	��B�N����,d��*�� �+����:�������Y�BY�SY	�S��������Y6� 6*,��M,	����ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� ܶ>	��BY	�S�N�u��,d��*�� �+����:$$�����$��Y�BY�SY	�S����$��$��Y6%� 6*$%,��M,	���$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+*�  r � �   g � �
� g � �  Ohn  D��
�D��  &,  RX
�ag  �  �17
��@F  ���  �
��%+      � ,  >      >
�"   >
�
�   >
�
�   >�
�   >� V   >
�
�   >
�
�   >
�
�   >
�
� 	  >
�
� 
  >
�
�   >�
�   >� V   >
�
�   >
�
�   >
�
�   >
�
�   >
�
�   >
�
�   >�
�   >� V   >
�
�   >
�
�   >
�
�   >
�
�   >
�
�   >
�
�   >�
�   >� V   >
�
�   >
�
�   >
�
�    >
�
� !  >
�
� "  >
�
� #  >�
� $  >� V %  >
�
� &  >
�
� '  >
�
� (  >
�
� )  >
�
� *  >
�
� +
�   � )  ) , , , , W- |- &- �- �5 �5 �5 �546Y66�6�;;�;x;�>�>�>�>�>=�>�C�C�CWC`FqF_F_F^E~F�K�K�K aR    "  $  �,\��,***� ��>�BYNS�N����,c��*�� �+����:�������Y�BY�SYPS��������Y6� 6*,��M,R���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� ��>�BYTS�N����,n��,*�DYDS���u��,F��*�� �+����:�������Y�BY�SYPS��������Y6� 6*,��M,R���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,V��*�� �+����:�������Y�BY�SYXS��������Y6� 6*,��M,Z���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� ��>�BY\S�N����,c��*�� �+����:�������Y�BY�SY^S��������Y6� 6*,��M,`���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  z � �   o � �
� o � �  ~��  s��
�s��  <U[  1��
�1��  !:@  fl
�u{      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � ,  � 	� � � � � � � '� _� �� .� �� �� �� �� �� �� �� ������+�c���2���!�F����������������������+��� 	�R    Z  $  �,��,*�DYDS���u��,F��,***� �**� Z�o����DYS��u��,��*�� �+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �**� Z�o����DYS��u��,d��*�� +����:�������Y�BY�SY	�S��������Y6� 6*,��M,	ƶ��ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DY	�S��u��,d��*��+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DY	�S��u��*,%�**��+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  � � �   � � �
� � � �  ���  ���
����  {��  p��
�p��  i��  ^��
�^��      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � (  W Y Y Y Y -Z 'Z 'Z &Z NZ �_ �_ U__bbba;bsg�gBg�gjjj i(j`o�o/o�o�r�r�r�qrNrsrr JR    �  $  o,3��*�� �+����:�������Y�BY�SY5S��������Y6� 6*,��M,7���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� ��>�BY9S�N����,c��*�� �+����:�������Y�BY�SY;S��������Y6� 6*,��M,=���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� ��>�BY?S�N����,c��*�� �+����:�������Y�BY�SYAS��������Y6� 6*,��M,C���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� ��>�BYES�N����,c��*�� �+����:�������Y�BY�SYGS��������Y6� 6*,��M,I���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  S l r   H � �
� H � �  8QW  -}�
�-��  6<  bh
�qw  !  �GM
��V\      j $  o      o
�"   o
�
�   o
�
�   o�
�   o� V   o
�
�   o
�
�   o
�
�   o
�
� 	  o
�
� 
  o
�
�   o�
�   o� V   o
�
�   o
�
�   o
�
�   o
�
�   o
�
�   o
�
�   o�
�   o� V   o
�
�   o
�
�   o
�
�   o
�
�   o
�
�   o
�
�   o�
�   o� V   o
�
�   o
�
�   o
�
�    o
�
� !  o
�
� "  o
�
� #
�   � (  � 8� ]� � �� �� �� �� �� �� �� �� ���B� ���������������������'�������������������������� /R    "  $  �,c��*�� �+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� ��>�BYS�N�u��,c��*�� �+����:�������Y�BY�SYS��������Y6� 6*,��M, ���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� ��>�BY"S�N����,c��*�� �+����:�������Y�BY�SY$S��������Y6� 6*,��M,&���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� ��>�BY(S�N�u��,c��*�� �+����:�������Y�BY�SY*S��������Y6� 6*,��M,,���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� ��>�BY.S�N�u��*�  S l r   H � �
� H � �  8QW  -}�
�-��  6<  bh
�qw  !  �GM
��V\      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � *  � 8� ]� � �� �� �� �� �� �� ���B� ���������������������'����������������������m�v���u�u�t� JR    �  $  5,\��,***� �**� Z�o����DY�S��u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �**� Z�o����DY�S��u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��***� �**� Z�o���9�� 3*,3�*,***� �**� Z�o����DY;S��u��,��***� �**� Z�o���=���,���*�� �+����:�������Y�BY�SY?S��������Y6� 6*,��M,A���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DYCS��u��,c��*�� �+����:�������Y�BY�SYES��������Y6� 6*,��M,G���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� �**� Z�o����DYIS��u��,��*�  � � �   w � �
� w � �  o��  d��
�d��  ���  ���
����  ���  ���
����      j $  5      5
�"   5
�
�   5
�
�   5�
�   5� V   5
�
�   5
�
�   5
�
�   5
�
� 	  5
�
� 
  5
�
�   5�
�   5� V   5
�
�   5
�
�   5
�
�   5
�
�   5
�
�   5
�
�   5�
�   5� V   5
�
�   5
�
�   5
�
�   5
�
�   5
�
�   5
�
�   5�
�   5� V   5
�
�   5
�
�   5
�
�    5
�
� !  5
�
� "  5
�
� #
�   � 8  � � � � � /� g� �� 6� �� �� �� �� ���T�y�#���������������   ���. ;66I5R��Y			?	w�F�,5 R    
  $  �,���,*�DY:S���u��,϶�*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,B��,*�DYDS���u��,���*�� �+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,��*�� �+����:�������Y�BY�SYS��������Y6� 6*,��M,	���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,��,***� ��>�BYS�N����,c��*�� �+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� ��>�BYS�N����*�  r � �   g � �
� g � �  Ohn  D��
�D��  &,  RX
�ag  �  �7=
��FL      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � (  r     W� |� &� �� �� �� �� ��4�Y���������x����������������������]�f�w�e�e�e�e�d� 5R    u  $  �,\��,***� �**� Z�o����DY&S��u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �**� Z�o����DY�S��u��,c��*�� �+����:�������Y�BY�SY(S��������Y6� 6*,��M,*���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DY,S��u��,��***� �**� Z�o���.�� �,���*�� �+����:�������Y�BY�SY0S��������Y6� 6*,��M,2���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DY4S��u��,��,���*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  � � �   w � �
� w � �  o��  d��
�d��  ���  u��
�u��  t��  i��
�i��      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � ,  � � � � � /� g� �� 6� �� �� �� �� ���T�y�#�����������	����$��-�e���4�������������!�Y�~�(� "R    l    �*,l�*�~*��W*,l�*~*��W*,l�*~*��W*,l�*~*��W*,l�*~*��W*,l�*	~*��W*,l�*~*��W*,l�*~*��W*,l�*~*��W*,l�*~*��W*,l�*~*��W,��,*�DYDS���u��,F��,***� �**� Z�o����DY�S��u��,��*�� �+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,��,***� �**� Z�o����DYS��u��,c��*�� �+����:�������Y�BY�SYS��������Y6� 6*,��M,!���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��*� r��  g��
�g��  _x~  T��
�T��       �   �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
� 
�  � c  � � � � � � � � � � � !� !� � &� .� 1� 1� 4� 4� .� 9� A� D� D� G� G� A� L� T� W� W� Z� Z� T� _� g� j� j� m� m� g� r� z� }� }� �� �� z� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���W�|�&������������D�i�� �R    C    �,\��*� �~�8***� s**� ��o����DY�S��>�� **� �o�u���W***� s**� ��o����DYPS��>�� **� �o�uø�W***� s**� ��o����DY�S��>�� **� �o�uǸ�W***� s**� ��o����DY�S��>�� **� �o�u˸�W***� s**� ��o����DY�S��>�� **� �o�uϸ�W***� s**� ��o����DY�S��>�� **� �o�uӸ�W***� s**� ��o����DY�S��>�� **� �o�u׸�W***� s**� ��o����DY�S��>�� **� �o�u۸�W***� s**� ��o����DY�S��>�� **� �o�u߸�W*,3�*,**� �o�u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��*� ���  ���
����       z   �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
� 
�  � g  < @ @ ? A A A A :B :B EB :B :A @ RC LC LC LC uD uD �D uD uC LB �E �E �E �E �F �F �F �F �E �D �G �G �G �G �H �H �H �H �G �FI �I �I �I&J&J1J&J&I �H>K8K8K8KaLaLlLaLaK8JyMsMsMsM�N�N�N�N�MsL�O�O�O�O�P�P�P�P�O�N�Q�Q�Q�QRRRRQ�P ?$S-T-T,S;TsY�YBY �R    '  ,  G,\��,***� s**� ��o����DY.S��u��*,%�**�� �+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,���*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� s**� ��o����DY�S�����,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� s**� ��o����DY�S��u��*,%�**�� �+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,���*�� �+����:$$�����$��Y�BY�SY�S����$��$��Y6%� 6*$%,��M,���$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+*�  � � �   x � �
� x � �  AZ`  6��
�6��  .GM  #sy
�#��  5;  ag
�pv  ���  �%
��.4      � ,  G      G
�"   G
�
�   G
�
�   G�
�   G� V   G
�
�   G
�
�   G
�
�   G
�
� 	  G
�
� 
  G
�
�   G�
�   G� V   G
�
�   G
�
�   G
�
�   G
�
�   G
�
�   G
�
�   G�
�   G� V   G
�
�   G
�
�   G
�
�   G
�
�   G
�
�   G
�
�   G�
�   G� V   G
�
�   G
�
�   G
�
�    G
�
� !  G
�
� "  G
�
� #  G 
� $  G V %  G
�
� &  G
�
� '  G
�
� (  G
�
� )  G
�
� *  G
�
� +
�   � %  $ ' ' ' & /' h' �' 7' �'&,K, �,�,�/�/�/�/�/�.�/484�4�4�7�7�7�6�77&7�7�7�<�<�< �R      ,  C,c��*��}+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� s**� ��o����DY�S��u��,c��*��~+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� s**� ��o����DY�S��u��*,%�**��+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,���*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� s**� ��o����DY�S��u��,c��*�� �+����:$$�����$��Y�BY�SY�S����$��$��Y6%� 6*$%,��M,���$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+*�  R k q   G � �
� G � �  >W]  3��
�3��  +DJ   pv
� �  �  �.4
��=C  ���  �!
��*0      � ,  C      C
�"   C
�
�   C
�
�   C
�   C V   C
�
�   C
�
�   C
�
�   C
�
� 	  C
�
� 
  C
�
�   C
�   C V   C
�
�   C
�
�   C
�
�   C
�
�   C
�
�   C
�
�   C
�   C V   C
�
�   C
�
�   C
�
�   C
�
�   C
�
�   C
�
�   C
�   C	 V   C
�
�   C
�
�   C
�
�    C
�
� !  C
�
� "  C
�
� #  C

� $  C V %  C
�
� &  C
�
� '  C
�
� (  C
�
� )  C
�
� *  C
�
� +
�   � #   7 \  � � � � � �#H �������5�����Tb\\[��$�$�$ �R    o  $  �,���,*�DYDS���u��,F��,**� ��o�u��,~��*��y+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,��,**� ��o�u��,c��*��z+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� s**� ��o����DYS��u��,c��*��{+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� s**� ��o����DY�S��u��,c��*��|+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� s**� ��o����DY�S��ud����*�  � � �   | � �
� | � �  Zsy  O��
�O��  F_e  ;��
�;��  2KQ  'w}
�'��      j $  �      �
�"   �
�
�   �
�
�   �
�   � V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �
�   � V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�   � V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�   � V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � .  � � � � � '� '� &� 5� l� �� <� �� �� �� ���?�d��������������+�P���������������<��������� _R    ;  ,  G,��,*�DYDS���u��,@��*��q+����:�������Y�BY�SYBS��������Y6� 6*,��M,D���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,I��*��r+����:�������Y�BY�SYFS��������Y6� 6*,��M,H���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �>J�BYLS�N�u��,d��*��s+����:�������Y�BY�SYNS��������Y6� 6*,��M,P���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �>J�BYRS�N�u��,T��*��t+����:�������Y�BY�SYVS��������Y6� 6*,��M,X���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� �>J�BYZS�N�u��,T��*��u+����:$$�����$��Y�BY�SY\S����$��$��Y6%� 6*$%,��M,^��$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+*�  q � �   f � �
� f � �  .GM  #sy
�#��  +1  W]
�fl  �  �;A
��JP  ���  �%
��.4      � ,  G      G
�"   G
�
�   G
�
�   G
�   G V   G
�
�   G
�
�   G
�
�   G
�
� 	  G
�
� 
  G
�
�   G
�   G V   G
�
�   G
�
�   G
�
�   G
�
�   G
�
�   G
�
�   G
�   G V   G
�
�   G
�
�   G
�
�   G
�
�   G
�
�   G
�
�   G
�   G V   G
�
�   G
�
�   G
�
�    G
�
� !  G
�
� "  G
�
� #  G
� $  G V %  G
�
� &  G
�
� '  G
�
� (  G
�
� )  G
�
� *  G
�
� +
�   � *  � � � � � V� {� &� ���8� ���������������������}��������������� ���a�j�{�i�i�h��������� �R    w  $  �*,l�***� Z�o۸��� �,��,*�DYDS���u��,F��*��b+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,ض�,��,*�DYDS���u��,F��,***� _**� Z�o����DY^S��u��,��*��c+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� _**� Z�o����DY^S��u��,d��*��d+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� _**� Z�o����DY�S��u��,d��*��e+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  � � �   � � �
� � � �  ���  ���
����  ���  ��
���  v��  k��
�k��      j $  �      �
�"   �
�
�   �
�
�   �
�   � V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   � 
�   �! V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �"
�   �# V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �$
�   �% V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � ,  % & & & #( #( "( :( q) �) A) �) & �,....+/%/%/$/L/�4�4S4	4777687o<�<?<�<?�?�?�>$?[D�D+D *R    �  $  �,��,*�DYDS���u��,F��,**� A�o�u��,��*��E+����:�������Y�BY�SYUS��������Y6� 6*,��M,	���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �**� A�o����DYS��u��,d��*��F+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��***� �**� A�o����� =*,3�*,***� �**� A�o����DYS��u��,�ا 
,��,d��*��G+����:�������Y�BY�SY!S��������Y6� 6*,��M,#���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� A�o����DY%S�����,d��*��H+����:�������Y�BY�SY'S��������Y6� 6*,��M,)���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  � � �   | � �
� | � �  s��  h��
�h��  ���  ���
����  ���  v��
�v��      j $  �      �
�"   �
�
�   �
�
�   �&
�   �' V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �(
�   �) V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �*
�   �+ V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �,
�   �- V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � 3  < > > > > '? '? &? 5? lD �D <D �D G �G �G �F!GXL}L(L�L�O�O�O�O�OOPPP
O2P<Q<Q�OCSzX�XJX X[[[[[Z/[f`�`6` 	[R    Z  $  f*,l�****�**� A�o���	@�� �,���*�� �+����:�������Y�BY�SY	BS��������Y6� 6*,��M,	D���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***�**� A�o����DY	FS��u��,��*,l�****�**� A�o���	H�� �,���*�� �+����:�������Y�BY�SY	JS��������Y6� 6*,��M,	L���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***�**� A�o����DY	NS��u��,��*,l�****�**� A�o���	P�� �,���*�� �+����:�������Y�BY�SY	RS��������Y6� 6*,��M,	R���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***�**� A�o����DY	TS��u��,��*,l�****�**� A�o���	V�� �,���*�� �+����:�������Y�BY�SY	VS��������Y6� 6*,��M,	X���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***�**� A�o����DY	ZS��u��,��*�  x � �   m � �
� m � �  ���  ���
����  ���  ���
���  ���  �
��      j $  f      f
�"   f
�
�   f
�
�   f.
�   f/ V   f
�
�   f
�
�   f
�
�   f
�
� 	  f
�
� 
  f
�
�   f0
�   f1 V   f
�
�   f
�
�   f
�
�   f
�
�   f
�
�   f
�
�   f2
�   f3 V   f
�
�   f
�
�   f
�
�   f
�
�   f
�
�   f
�
�   f4
�   f5 V   f
�
�   f
�
�   f
�
�    f
�
� !  f
�
� "  f
�
� #
�   D  � � 	� 	� � � %� ]� �� ,� �� �� �� �� ��� ��'�"�"�5�!�>�v���E���
����+�!�2�@�;�;�N�:�W�����^��#����D�:�K�Y�T�T�g�S�p�����w�.�<�6�6�5�]�S� 	<R    �    �,��,*�DYDS���u��,F��,**� A�o�u��,	7��***�**� A�o���\�� �,���*�� �+����:�������Y�BY�SY	9S��������Y6� 6*,��M,	;���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***�**� A�o����DY�S��u��,��*,l�****�**� A�o����� �,���*�� �+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***�**� A�o����DYS��u��,y��*,l�****�**� A�o���U�� �,���*�� �+����:�������Y�BY�SYUS��������Y6� 6*,��M,	���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***�**� A�o����DYS��u��,��*� 	 � � �   � � �
� �   ���  �

��  ���  �#)
��28         �      �
�"   �
�
�   �
�
�   �6
�   �7 V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �8
�   �9 V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �:
�   �; V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
� 
�   � ;  � � � � � '� '� &� 5� B� =� =� P� <� Y� �� �� `��%����F� <�M�[�V�V�i�U�r�����y�0�>�8�8�7�_�U�f�t�o�o���n���������I�W�Q�Q�P�x�n� 	R    Y  $  �,\��,**� ��BY**� A�oSY	S��u��,c��*�� �+����:�������Y�BY�SY		S��������Y6� 6*,��M,	���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,**� ��BY**� A�oSY		S��u��,c��*�� �+����:�������Y�BY�SY	S��������Y6� 6*,��M,	���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,**� ��BY**� A�oSY	S��u��,c��*�� �+����:�������Y�BY�SY	S��������Y6� 6*,��M,	���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,**� ��BY**� A�oSY	S��u��,Ҷ�,*�DYDS���u��,F��*�� �+����:�������Y�BY�SY	S��������Y6� 6*,��M,	���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  ~ � �   s � �
� s � �  g��  \��
�\��  Pio  E��
�E��  Xqw  M��
�M��      j $  �      �
�"   �
�
�   �
�
�   �<
�   �= V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �>
�   �? V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �@
�   �A V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �B
�   �C V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � ,  Q T T S S S +T cY �Y 2Y �Y �\\ �[ �[ �[\Laqaa�a�d�d�c�c�c�d5iZii�i�l�l�k�k�k�l�p�p�pp=qbqq �R    �    ,n��,*�DY:S���u��,϶�*��w+����:�������Y�BY�SYpS��������Y6� 6*,��M,r���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,B��,*�DYDS���u��,t��*��x+����:�������Y�BY�SYvS��������Y6� 6*,��M,x���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,۶�*� s***� ��>z�B�N�8*,l�***� s�o��� �� :� ��� ������� N*|-��W*+,��� �*+,��� �*+,��� �*+,��� �,\��,***� s**� ��o����DY�S�����,������: ��n,���,*�DYDS���u��,��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,۶�*� 7***� F�>��B�N�8*,l�***� 7�o��� �� :� c�� ������� N*�-��W,���,**� -�o�u��,���,**� 7**� -�o���u��,������: ���*� 	 q � �   f � �
� f � �  Mfl  B��
�B��  !  �GM
��V\      .         
�"   
�
�   
�
�   D
�   E V   
�
�   
�
�   
�
�   
�
� 	  
�
� 
  
�
�   F
�   G V   
�
�   
�
�   
�
�   
�
�   
�
�   
�
�    "   H
�   I V   
�
�   
�
�   
�
�   
�
�   
�
�   
�
�   7" 
�   @  � � � � � V� {� &� �� �� �� �� ��2�W���������������������JYX\R\R\R\R\Q[y\���_�d�d�d�d�ee�emeyhxhxhthth�h�i�i�i�i�l�l�k�l�o�n�n�no�i 	R    *  $  �,\��,**� ��BY**� A�oSY�S��u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,**� ��BY**� A�oSY�S��u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,**� ��BY**� A�oSY�S��u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,**� ��BY**� A�oSY�S��u��,c��*�� �+����:�������Y�BY�SY	 S��������Y6� 6*,��M,	���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  ~ � �   s � �
� s � �  g��  \��
�\��  Pio  E��
�E��  9RX  .~�
�.��      j $  �      �
�"   �
�
�   �
�
�   �J
�   �K V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �L
�   �M V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �N
�   �O V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �P
�   �Q V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � (  1 4 4 3 3 3 +4 c9 �9 29 �9 �<< �; �; �;<LAqAA�A�D�D�C�C�C�D5IZII�I�L�L�K�K�K�LQCQ�Q jR    �  ,  �,��*��m+����:�������Y�BY�SY%S��������Y6� 6*,��M,'���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �>�BY)S�N�u��*,%�**��n+����:�������Y�BY�SY S��������Y6� 6*,��M, ���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,��*��o+����:�������Y�BY�SY+S��������Y6� 6*,��M,-���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �>�BY/S�N�u��,d��*��p+����:�������Y�BY�SY1S��������Y6� 6*,��M,3���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� �>�BY5S�N�u��,7��*9��<Y�>� W*ݶ�<�>�!*+,�a� �,\��,***� �>J�BY\S�N�u��,c��*��v+����:$$�����$��Y�BY�SYeS����$��$��Y6%� 6*$%,��M,g��$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+,\��,***� �>J�BYiS�N�u��,��*�  R k q   G � �
� G � �  7PV  ,|�
�,��  �  �9?
��HN  ���  �#
��,2  17  ]c
�lr      � ,  �      �
�"   �
�
�   �
�
�   �R
�   �S V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �T
�   �U V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �V
�   �W V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �X
�   �Y V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #  �Z
� $  �[ V %  �
�
� &  �
�
� '  �
�
� (  �
�
� )  �
�
� *  �
�
� +
�   � >  { 7� \� � �� �� �� �� �� �� ���A� ����������_�h�y�g�g�f���������C�L�]�K�K�J�j�r�r�q�q���������q�����������������"�����������������q� �R    <  $  �,��,*�DYDS���u��,F��,**� A�o�u��,~��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,��,**� ��BY**� A�oSY�S��u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,**� ��BY**� A�oSY�S��u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,**� ��BY**� A�oSY�S��u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  � � �   } � �
� } � �  q��  f��
�f��  Zsy  O��
�O��  C\b  8��
�8��      j $  �      �
�"   �
�
�   �
�
�   �\
�   �] V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �^
�   �_ V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �`
�   �a V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �b
�   �c V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � *       ' ' & 5 m � < � � � �V!{!%!�!�$�$�#�#�#$?)d))�)�,�,�+�+�+�,(1M1�1 !R      $  �,\��,***� ��>�BY
S�N�u��,d��*��i+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� ��>�BYS�N����,���,*�DYDS���u��,��*��j+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,I��*��k+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �>�BYS�N�u��*,%�**��l+����:�������Y�BY�SY S��������Y6� 6*,��M, ���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  y � �   n � �
� n � �  |��  q��
�q��  9RX  .~�
�.��  7=  ci
�rx      j $  �      �
�"   �
�
�   �
�
�   �d
�   �e V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �f
�   �g V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �h
�   �i V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �j
�   �k V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � (  ^ 	a a a a ` 'a ^f �f .f �f �i �i �i �i �i �i �hirrr*ras�s1s�sxCx�x�x�{�{�{�{�z�{{({�{ �R    u  $  �,���*�� �+����:�������Y�BY�SYNS��������Y6� 6*,��M,P���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �**� Z�o����DYRS��u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,V���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DYXS��u��,c��*�� �+����:�������Y�BY�SYZS��������Y6� 6*,��M,\���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DY^S��u��,��***� �**� Z�o������ �,���*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� �**� Z�o����DY�S��u��,��*�  S l r   H � �
� H � �  @Y_  5��
�5��  -FL  "rx
�"��  >W]  3��
�3��      j $  �      �
�"   �
�
�   �
�
�   �l
�   �m V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   �n
�   �o V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �p
�   �q V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �r
�   �s V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � ,  � 8� ]� � �� �� �� �� �� ��%�J� ���������������7���������������������������#�H����������������� R    )  *  G,\��,***� P�>��BY�S�N�u��,Ҷ�,*�DYDS���u��,F��*��a+����:�������Y�BY�SY�S��������Y6� 6*,��M,ֶ��ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,ض�*� _***� P�>��B�N�8*,l�*9**� _�o���9���9��N*�-��W�L*+,��� �,\��,***� _**� Z�o����DY�S��u��,d��*��f+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� _**� Z�o����DY�S��u��,��c\9��N*�-��W��������,ն�,*�DYDS���u��,F��*��g+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � : �  �:!��!,W��*��h+����:""�����"��Y�BY�SYS����"��"��Y6#� 6*"#,��M,��"�ۚ��� � :$� $�:%*#,��M�%"��� :&� #&�� � #:'"'�� � :(� (�:)"��)*�  � � �   � � �
� � � �  ��  �)/
��8>  6<  bh
�qw  ���  �%
��.4      � '  G      G
�"   G
�
�   G
�
�   Gt
�   Gu V   G
�
�   G
�
�   G
�
�   G
�
� 	  G
�
� 
  G
�
�   G
�
�   G
�
�   G
�
�   Gv
�   Gw V   G 
�   G
�   G
�
�   G
�
�   G
�
�   G
�
�   Gx
�   Gy V   G
�
�   G7
�   G
�
�   G
�
�   G
�
�    G
�
� !  Gz
� "  G{ V #  G
�
� $  G
�
� %  G
�
� &  G
�
� '  G
�
� (  G
�
� )
�   � 8   	     ' /  /  .  F  }! �! M!!$$$
$
$$$/%/%/%/%=%L%cDqGkGkGjF�G�L�L�LOL]OWOWOVN~O�%,%�R�X�X�X�XY'Y�Y�Y�^�^�^ �R    �  ,  M,\��,***� �**� Z�o����DY,S��u��,��***� �**� Z�o���.�� �,���*�� �+����:�������Y�BY�SY0S��������Y6� 6*,��M,2���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �**� Z�o����DY4S��u��,��,���*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DY�S��u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,���***� �**� Z�o���9�� 3*,3�*,***� �**� Z�o����DY;S��u��,��***� �**� Z�o���=���,���*�� �+����:�������Y�BY�SY?S��������Y6� 6*,��M,A���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� �**� Z�o����DYCS��u��,c��*�� �+����:$$�����$��Y�BY�SYES����$��$��Y6%� 6*$%,��M,G��$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+,\��,***� �**� Z�o����DYIS��u��,��*�  � � �   � � �
� � �   ���  ���
����  ���  |��
�|��  ���  �
��  ���  ���
���      � ,  M      M
�"   M
�
�   M
�
�   M|
�   M} V   M
�
�   M
�
�   M
�
�   M
�
� 	  M
�
� 
  M
�
�   M~
�   M V   M
�
�   M
�
�   M
�
�   M
�
�   M
�
�   M
�
�   M�
�   M� V   M
�
�   M
�
�   M
�
�   M
�
�   M
�
�   M
�
�   M�
�   M� V   M
�
�   M
�
�   M
�
�    M
�
� !  M
�
� "  M
�
� #  M�
� $  M� V %  M
�
� &  M
�
� '  M
�
� (  M
�
� )  M
�
� *  M
�
� +
�  & I  � � � � � /� <� 7� 7� J� 6� S� �� �� Z������@� 6�G����N������4�l���;�������������%������F�S�N�N�a�M�j�����q�(�6�0�0�/�W�����^��#����D�M� �R    N  $  �,\��,***� P�>��BY�S�N�u��,d��*��]+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� P�>��BY�S�N����,��*��� �,���*��^+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� P�>��BY�S�N�u��,��,���*��_+����:�������Y�BY�SY�S��������Y6� 6*,��M,Ƕ��ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� P�>��BY�S�N�u��,d��*��`+����:�������Y�BY�SY�S��������Y6� 6*,��M,Ͷ��ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  y � �   n � �
� n � �  n��  c��
�c��  Yrx  N��
�N��  =V\  2��
�2��      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � 0  � 	� � � � � '� ^� �� .� �� � � � � � � �Sx#������
 >c�������"G� �R    � 	 $  ,���,*�DYDS���u��,���,***� �**� Z�o����DY�S��u***� �**� Z�o����DY�S��6����,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �**� Z�o����DY�S��u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DY�S����������,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DY�S��u��,c��*�� �+����:�������Y�BY�SY(S��������Y6� 6*,��M,*���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  � � �   �
� �$  ���  ��
��  ���  ���
��   ���  ���
����      j $        
�"   
�
�   
�
�   �
�   � V   
�
�   
�
�   
�
�   
�
� 	  
�
� 
  
�
�   �
�   � V   
�
�   
�
�   
�
�   
�
�   
�
�   
�
�   �
�   � V   
�
�   
�
�   
�
�   
�
�   
�
�   
�
�   �
�   � V   
�
�   
�
�   
�
�    
�
� !  
�
� "  
�
� #
�   � 4  r u u u u -v 'v 'v Kv Sv Mv Mv Mv Mv 'v 'v &u wv �{ �{ ~{5{C~=~=~<}d~����k�"�0�*�*�*�*�*�*�)�Y�����`��%����F�~���M� �R      ,  *,\��,***� P�>��BY�S�N�u��,d��*��X+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� P�>��BY�S�N�u��*,%�**��Y+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,��*��Z+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� P�>��BY�S�N�u��*,%�**��[+����:�������Y�BY�SYS��������Y6� 6*,��M,���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,d��*��\+����:$$�����$��Y�BY�SY�S����$��$��Y6%� 6*$%,��M,���$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+*�  y � �   n � �
� n � �  ^w}  S��
�S��  4:  `f
�ou     �EK
��TZ  ���  �
��      � ,  *      *
�"   *
�
�   *
�
�   *�
�   *� V   *
�
�   *
�
�   *
�
�   *
�
� 	  *
�
� 
  *
�
�   *�
�   *� V   *
�
�   *
�
�   *
�
�   *
�
�   *
�
�   *
�
�   *�
�   *� V   *
�
�   *
�
�   *
�
�   *
�
�   *
�
�   *
�
�   *�
�   *� V   *
�
�   *
�
�   *
�
�    *
�
� !  *
�
� "  *
�
� #  *�
� $  *� V %  *
�
� &  *
�
� '  *
�
� (  *
�
� )  *
�
� *  *
�
� +
�   � &  � 	� � � � � '� ^� �� .� �� �� �� �� �� ���C�h���� �%�������������������
���k�����r� ��     "     �
��                �R    @  ,  L,��,*�DYDS���u��,s��*�� �+����:�������Y�BY�SYuS��������Y6� 6*,��M,w���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,y��,*�DYDS���u��,s��*�� �+����:�������Y�BY�SY{S��������Y6� 6*,��M,}���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,���*�� �+����:�������Y�BY�SYS��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,*^�BYqSY�SY�S���u��,c��*�� �+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,*^�BYqSY�SY�S���u��,c��*�� �+����:$$�����$��Y�BY�SY�S����$��$��Y6%� 6*$%,��M,���$�ۚ��� � :&� &�:'*%,��M�'$��� :(� #(�� � #:)$)�� � :*� *�:+$��+*�  r � �   g � �
� g � �  Ohn  D��
�D��  &,  RX
�ag  �  �;A
��JP  ���  �$*
��39      � ,  L      L
�"   L
�
�   L
�
�   L�
�   L� V   L
�
�   L
�
�   L
�
�   L
�
� 	  L
�
� 
  L
�
�   L�
�   L� V   L
�
�   L
�
�   L
�
�   L
�
�   L
�
�   L
�
�   L�
�   L� V   L
�
�   L
�
�   L
�
�   L
�
�   L
�
�   L
�
�   L�
�   L� V   L
�
�   L
�
�   L
�
�    L
�
� !  L
�
� "  L
�
� #  L�
� $  L� V %  L
�
� &  L
�
� '  L
�
� (  L
�
� )  L
�
� *  L
�
� +
�   � *  : < < < < W= |= &= �= �A �A �A �A4BYBB�B�GG�GxG�J�J�J�I�II�J�O O�OaOsRyRRiQiQhQ�R�W�W�W �R      %  /,\��,***� �>�BYS�N�u��,d��*��T+����:�������Y�BY�SYhS��������Y6� 6*,��M,j���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �>�BY�S�N�u��,���,*�DYDS���u��,���*��U+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,���*� �***� F�>��B�N�8*,l�***� ��o��� �� :� c�� ������� N*-��W,���,**� A�o�u��,���,**� �**� A�o���u��,������: ���,ն�,*�DYDS���u��,���*��V+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,I��*��W+����:�������Y�BY�SY�S��������Y6� 6*,��M,����ۚ��� � :� �: *,��M� ��� :!� #!�� � #:""�� � :#� #�:$��$*�  y � �   n � �
� n � �  |��  q��
�q��  $  �JP
��Y_  ���  �
��      t %  /      /
�"   /
�
�   /
�
�   /�
�   /� V   /
�
�   /
�
�   /
�
�   /
�
� 	  /
�
� 
  /
�
�   /�
�   /� V   /
�
�   /
�
�   /
�
�   /
�
�   /
�
�   /
�
�   / "   /�
�   /� V   /
�
�   /
�
�   /
�
�   /
�
�   /
�
�   /
�
�   /�
�   /� V   /
�
�   /
�
�    /
�
� !  /
�
� "  /
�
� #  /
�
� $
�   � 9  � 	� � � � � '� ^� �� .� �� �� �� �� �� ������*�a���1����������������A�I�Q�Q�P�_�l�g�g�f�}�����������������p�����w� eR    :  $  �,���*�� �+����:�������Y�BY�SYNS��������Y6� 6*,��M,P���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �**� Z�o����DYRS�����,c��*�� �+����:�������Y�BY�SYTS��������Y6� 6*,��M,V���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DYXS��u��,c��*�� �+����:�������Y�BY�SYZS��������Y6� 6*,��M,\���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� Z�o����DY^S��u��,c��*�� �+����:�������Y�BY�SY`S��������Y6� 6*,��M,b���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#,\��,***� �**� Z�o����DYdS�����*�  S l r   H � �
� H � �  @Y_  5��
�5��  -FL  "rx
�"��  39  _e
�nt      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � (   8 ]  � � � � � � � �%J ���"�"�"�!�"'7'�'�'�*�*�*�)�*�/$/�/�/�2�2�2�2�2�1 {R      $  �,\��,***� �>�BYfS�N�u��,d��*��P+����:�������Y�BY�SYhS��������Y6� 6*,��M,j���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,***� �>�BYlS�N�u��,n��,*�DYDS���u��,F��*��Q+����:�������Y�BY�SYpS��������Y6� 6*,��M,r���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,t��*��R+����:�������Y�BY�SYvS��������Y6� 6*,��M,x���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �>�BYzS�N����,d��*��S+����:�������Y�BY�SY_S��������Y6� 6*,��M,a���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  y � �   n � �
� n � �  |��  q��
�q��  9RX  .~�
�.��  6<  bh
�qw      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � (  � 	� � � � � '� ^� �� .� �� �� �� �� �� ������*�a���1����C����������������������'��� bR      $  �,۶�*G��� �,���*��L+����:�������Y�BY�SYIS��������Y6� 6*,��M,K���ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,\��,*�DY�SYMSYOSYQS������,��,���,*�DYDS���u��,F��*��M+����:�������Y�BY�SYSS��������Y6� 6*,��M,U���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,W��*��N+����:�������Y�BY�SYYS��������Y6� 6*,��M,[���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �>�BY]S�N����,d��*��O+����:�������Y�BY�SY_S��������Y6� 6*,��M,a���ۚ��� � :� �:*,��M���� : � # �� � #:!!�� � :"� "�:#��#*�  c | �   X � �
� X � �  v��  k��
�k��  3LR  (x~
�(��  06  \b
�kq      j $  �      �
�"   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
� 	  �
�
� 
  �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   �
�
�   ��
�   �� V   �
�
�   �
�
�   �
�
�    �
�
� !  �
�
� "  �
�
� #
�   � '  v y y y H| m| | �| � � � � �~ � y����$�[���+����=�����������������������!��� CR    �  %  ,ն�,*�DYDS���u��,F��*��D+����:�������Y�BY�SY�S��������Y6� 6*,��M,ٶ��ۚ��� � :� �:*,��M���� :� #�� � #:		�� � :
� 
�:��,۶�*� �***� �>��B�N�8*,l�***� ��o��� �� :��� ������� N*-��W*+,�,� �,\��,***� �**� A�o����DY.S��u��*,%�**��I+����:�������Y�BY�SY0S��������Y6� 6*,��M,0���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,��*��J+����:�������Y�BY�SY2S��������Y6� 6*,��M,4���ۚ��� � :� �:*,��M���� :� #�� � #:�� � :� �:��,\��,***� �**� A�o����DY6S�����,������: ���,<��,*�DYDS���u��,>��*��K+����:�������Y�BY�SY@S��������Y6� 6*,��M,B���ۚ��� � :� �: *,��M� ��� :!� #!�� � #:""�� � :#� #�:$��$*�  q � �   f � �
� f � �  ���  �
�� &  ���  ~��
�~��  ���  ���
���      t %        
�"   
�
�   
�
�   �
�   � V   
�
�   
�
�   
�
�   
�
� 	  
�
� 
  
�
�   
�"   �
�   � V   
�
�   
�
�   
�
�   
�
�   
�
�    
�   �
�   � V   
�
�   
�
�   
�
�   
�
�   
�
�   
�
�   �
�   � V   
�
�   
�
�    
�
� !  
�
� "  
�
� #  
�
� $
�   � 0  2 6 6 6 6 V7 {7 &7 �7 �; �; �; �; �; �;<<6<J`XcRcRcQbyc�c�c�c7cnh�h>h�hk�k�k�k�k�j#k<:nBuBuAuYu�v�v`v         