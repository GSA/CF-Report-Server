����  -A 
SourceFile JC:\blackstone_final\cfusion\wwwroot\CFIDE\administrator\analyzer\index.cfm cfindex2ecfm1099799456  coldfusion/runtime/CFPage  <init> ()V  
  	 this Lcfindex2ecfm1099799456; LocalVariableTable Code bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   FORM Lcoldfusion/runtime/Variable; FORM  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   REQUEST REQUEST    	  " L10N_SELECT L10N_SELECT % $ 	  ' ADVANCED_OPTIONS ADVANCED_OPTIONS * ) 	  , BASIC_OPTIONS BASIC_OPTIONS / . 	  1 FUNCFEATURES FUNCFEATURES 4 3 	  6 SLCTERR SLCTERR 9 8 	  ; COMPAT COMPAT > = 	  @ 	ANAL_SLCT 	ANAL_SLCT C B 	  E 	TREEFIELD 	TREEFIELD H G 	  J COOKIE COOKIE M L 	  O 	DIRECTORY 	DIRECTORY R Q 	  T JSPLZSPCTMP JSPLZSPCTMP W V 	  Y 	RETURNURL 	RETURNURL \ [ 	  ^ ISSESSIONVARENABLED ISSESSIONVARENABLED a ` 	  c LOCALE LOCALE f e 	  h OTHERFEATURES OTHERFEATURES k j 	  m PAGENAME PAGENAME p o 	  r TITLE TITLE u t 	  w TAGFEATURES TAGFEATURES z y 	  | RUN_ANALYZER RUN_ANALYZER  ~ 	  � DEFAULTPATH DEFAULTPATH � � 	  � URL URL � � 	  � 
L10N_CLEAR 
L10N_CLEAR � � 	  � FUNC FUNC � � 	  � SLCTINF SLCTINF � � 	  � SLCTALL SLCTALL � � 	  � BROWSE_SERVER BROWSE_SERVER � � 	  � VOID VOID � � 	  � OTHER OTHER � � 	  � TAG TAG � � 	  � com.macromedia.SourceModTime   ��)�0 pageContext #Lcoldfusion/runtime/NeoPageContext; � �	  � getOut ()Ljavax/servlet/jsp/JspWriter; � � javax/servlet/jsp/PageContext �
 � � parent Ljavax/servlet/jsp/tagext/Tag; � �	  � 
 � _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V � �
  � REQUEST.LOCALE � en � checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V � �
  � isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z � �
  � java/lang/String � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
  � LCase � �
  � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � 
LOCALEFILE � java/lang/StringBuffer � resources/code_ � (Ljava/lang/String;)V  �
 � � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � .xml  toString ()Ljava/lang/String; java/lang/Object
 


 %class$coldfusion$tagext$net$CookieTag Ljava/lang/Class; coldfusion.tagext.net.CookieTag forName %(Ljava/lang/String;)Ljava/lang/Class; java/lang/Class

	  _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag;
  coldfusion/tagext/net/CookieTag cfcookie name cfadmin_lastpage  _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"#
 $ setName& �
' expires) 30+ J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;"-
 . 
setExpires (Ljava/lang/Object;)V01
2 value4 CGI6 SCRIPT_NAME8 setValue: �
; 	_emptyTag !(Ljavax/servlet/jsp/tagext/Tag;)Z=>
 ? 

A 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTagDC	 F !coldfusion/tagext/lang/IncludeTagH 	cfincludeJ templateL udf.cfmN setTemplateP �
IQ ANALYZER_DIRECTORYS COOKIE.ANALYZER_DIRECTORYU .W 
ExpandPathY �
 Z 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V �\
 ] FILTER_ FORM.FILTERa *.cfmc SEVERITYSCOPEe FORM.SEVERITYSCOPEg errori  

k BROWSESUBMITm FORM.BROWSESUBMITo  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Zqr
 s 
    u setw1 coldfusion/runtime/Variabley
zx 
	| 	directory~ ?� QUERY_STRING� ../filedialog/index.cfm� %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTag��	 � coldfusion/tagext/lang/AbortTag� DETAILS� URL.DETAILS� 1� (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag��	 � "coldfusion/tagext/lang/ImportedTag� l10n� 
../cftags/� admin� :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V&�
�� &coldfusion/runtime/AttributeCollection� id� code_analyzer� var� title� ([Ljava/lang/Object;)V �
�� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
�� 	hasEndTag (Z)V��
�� 
doStartTag ()I��
�� 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � CFML Code Analyzer� write� � java/io/Writer�
�� doAfterBody��
�� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � doEndTag�� #javax/servlet/jsp/tagext/TagSupport�
�� doCatch (Ljava/lang/Throwable;)V��
�� 	doFinally� 
�� ../header.cfm� ../include/margintop.cfm� _get� �
 � isSessionVarEnabled� 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;��
 � _boolean (Ljava/lang/Object;)Z��
 �� 	
	<p>
	� must_have_app_vars� `
	To use this application, you must enable session variables on the
	Memory Variables page.
	� 
	</p>

� 
	
<span class="pageHeader">� pageHeader_codeanalyzer� *Debugging &amp; Logging &gt; Code Analyzer� </span>
<br><br>

� 	anal_slct� .Please select at least one feature to analyze!� 	

<p>
 welcone_code_analyzer z
The Code Compatibility Analyzer helps migrate your applications to ColdFusion MX from earlier versions of ColdFusion. 
 
</p>

<p>
 code_analyzer_review	
The Code Compatibility Analyzer reviews the CFML pages that you specify and inform you of any potential compatibility issues. It detects unsupported and deprecated CFML features, and outlines the required implementation changes that ensure a smooth migration. 
 

</p>

 ERRORMSG URL.ERRORMSG $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag	  coldfusion/tagext/io/OutputTag
� 
	<ul>
	<li class="error">
	 
	</li>
	</ul>
	
� coldfusion/tagext/QueryLoop 
!�
!�
� _factor7 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;%&
 ' C

<FORM name="analyzerForm" METHOD="POST" action="index.cfm">

) W
<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td bgcolor="+ #- 	GRAYLIGHT/ &" class="cellBlueTopAndBottom">
		<b>1 l10n_codecomp3 Code Compatibility Analyzer5 �</b>
	</td>
</tr>
<tr>
	<td>
		
		<table border="0" cellpadding="2" cellspacing="0" width="100%">
		<tr>
			<td>
				<label for="directory">7 directory_to_analyze9 Directory to Analyze; �</label>
			</td>
		</tr>
		<tr>
			<td>
				<input type="text" maxlength="550" class="label" size="35" style="width:35em;" name="directory" id="directory" value="= ">
				? browse_serverA Browse ServerC 0
				<input type="submit" class="buttn" value="E v" name="browsesubmit" onClick="return browseSubmit();">
			</td>
		</tr>
		<tr>
			<td>
				<label for="recurse">G subdirI Analyze subdirectoriesK _factor0M&
 N @</label>
				<input type="checkbox" name="recurse" value="Yes" P RECURSER FORM.RECURSET _Object (Z)Ljava/lang/Object;VW
 �X checkedZ ( id="recurse">
				<label for="filter">\ fitype^ Analyze file types` i</label>
				<input type="text" maxlength="550" name="filter" id="filter" size="15" style="15em" value="b �" class="label">
				<font class="label">(example: *.cfm;*.cfc)</font>
			</td>
		</tr>
		</table>
		
	</td>
</tr>
</table>
d _factor8f&
 g FORM.DETAILSi slctallk Allm slcterro Errorq slctinfs Infou Z
	<table border="0" cellpadding="5" cellspacing="0" width="100%">
	<tr>
		<td bgcolor="w '" class="cellBlueTopAndBottom">
			<b>y l10n_advSettings{ Advanced Settings} _factor1&
 � K</b>
		</td>
	</tr>
	<tr>
		<td nowrap>
			<label for="severityScope">� flsev� Filter by severity� X</label>
			<select name="severityScope" id="severityScope" tabindex="2" size="1">
			� 	
			<OPTION value="all" � all� _compare '(Ljava/lang/Object;Ljava/lang/String;)D��
 � selected� >� $</OPTION>
			<option value="Error" � #</option>
			<option value="Info" � info� </option>  
			� +
			</select>
			<label for="validating">� valcfm� Validate CFML� t</label>
			<input type="checkbox" name="validating" checked id="validating">
		</td>
	</tr>	
	<tr>
		<td>
			� fitfet� Filter by product feature� _factor2�&
 � �
		</td>
	</tr>
	<tr>
		<td>
		  <div id="AnalysisScopes">
		  <table id="tblScopeCats" class="tabbodycategoriesbottom" border="0" width="100%" cellpadding="0" cellspacing="0">
			� selct� l10n_select� 
Select All� 
			� clear� 
l10n_clear� 	Clear All� runan� 
l10n_runan� Run Analyzer� basicop� 
l10n_basic� 
Basic View� java� #coldfusion.tools.CompatMetaInfoUtil� CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;��
 � init� GetTemplatePath�
 � GetDirectoryFromPath� �
 � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;��
 � getTagFeatures� _factor3�&
 � �
			<tr>
				<td>
					<table border="0" width="100%" cellspacing="0" cellpadding="1">
					<tr valign="top">
						<td>
							<label for="tagFeatures">� tag� Tags� *</label>
						</td>
						<td>
							� ^
								<select name="tagFeatures" id="tagFeatures" multiple size=8 class="label">
								� ,� java/util/StringTokenizer� '(Ljava/lang/String;Ljava/lang/String;)V �
�� 	nextToken�
�� SetVariable 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;��
 � 
					  			<option 
									� TAGSCOPE� FORM.TAGSCOPE� ListFind '(Ljava/lang/String;Ljava/lang/String;)I 
  (I)Ljava/lang/Object;V
 � 
										selected
									 
									>	 </option>
								 CFLOOP checkRequestTimeout �
  hasMoreTokens ()Z
� 
					  			</select>
							 "
						</td>
						<td>
							 U
								<input type="BUTTON" ONCLICK="ToggleSelected('tagFeatures', true);" VALUE=" "  class="buttn" />
							 V
								<input type="BUTTON" ONCLICK="ToggleSelected('tagFeatures', false);" VALUE=" _factor4 &
 ! !
						</td>
					</tr>
				  # getFuncFeatures% G
					<tr valign="top">
						<td>
							<label for="funcFeatures">' func) Function+ a
								<select name="funcFeatures" id="funcFeatures" multiple size=8 class="label">
					  		- 	FUNCSCOPE/ FORM.FUNCSCOPE1 
								>3 </option>
							5 
					  		</select>
							7 V
								<input type="BUTTON" ONCLICK="ToggleSelected('funcFeatures', true);" VALUE="9 " class="buttn" >
							; W
								<input type="BUTTON" ONCLICK="ToggleSelected('funcFeatures', false);" VALUE="= _factor5?&
 @  
						</td>
					</tr>
					B getOtherFeaturesD U
					<tr valign="top">
						<td align="left">
							<label for="otherFeatures">F otherH 1Operators,
						Variables, and Other ConstructsJ T
								<select name="otherFeatures" id="otherFeatures" multiple size=8>
								L !
					  				<option 
										N 
OTHERSCOPEP FORM.OTHERSCOPER !
											selected
										T $
						</td>
						<td>
					  		V W
								<input type="BUTTON" ONCLICK="ToggleSelected('otherFeatures', true);" VALUE="X X
								<input type="BUTTON" ONCLICK="ToggleSelected('otherFeatures', false);" VALUE="Z _factor6\&
 ] u
						</td>
					</tr>
					</table>
				</td>
			</tr>
			</table>
		</div>			
		</td>
	</tr>
	</table>
_ run_analyzera X
<table border="0" cellpadding="2" cellspacing="0" width="100%">
<tr>
	<td bgcolor="#c T" class="cellBlueTopAndBottom">
		<input type="submit" name="analyzeButton" value="e 2" onclick="return onSubmit();" class="buttn" >
		g advanced_optionsi Advanced Optionsk 0
			<input type="submit" name="details" value="m " class="buttn" >
		o �
			<INPUT TYPE="HIDDEN" NAME="tagScope" VALUE="none">
			<INPUT TYPE="HIDDEN" NAME="funcScope" VALUE="none">
			<Input TYPE="Hidden" NAME="otherScope" VALUE="none">
			q basic_optionss Basic Optionsu .
			<input type="submit" name="basic" value="w 
	</td>
</tr>
</table>
y _factor9{&
 |  
</FORM>
	
<br>
<br>
<br>
~ jsplzspctmp� 'Please specify your template directory!� �	
<script language="JavaScript">
function onSubmit() {
	var form = document.analyzerForm;
	
	if (form.directory.value == "") {
	  alert("� ");
	  form.directory.focus();
	  return false;
	}
    form.action="report.cfm?mode=basic&sort=featurename";
	return true;
}

function browseSubmit() {
	var form = document.analyzerForm;
    form.action="index.cfm";
	return true;
}
</script>
��	
<SCRIPT LANGUAGE="JAVASCRIPT">
	
	function browseSubmit() {
		var form = document.analyzerForm;
	    form.action="index.cfm?details=1";
		
		form.tagScope.value = createFeatureList("tagFeatures");
		form.funcScope.value = createFeatureList("funcFeatures");
		form.otherScope.value = createFeatureList("otherFeatures");

		return true;
	}


	function onSubmit() 
	{
		var form = document.analyzerForm;

		if (form.directory.value == "") {
		  alert("�4");
		  form.directory.focus();
		  return false;
		}
	
		var tagList = createFeatureList("tagFeatures");
		var funcList = createFeatureList("funcFeatures");
		var otherList = createFeatureList("otherFeatures");
		
		if (tagList == "none" && funcList == "none" && otherList == "none") {
		  alert("�,");
		  return false;
		}
		else {
		  //added .foo = none so that if the user hits Back instead of resubmit, we correctly
		  //handle changes
		  form.tagScope.value = createFeatureList("tagFeatures");
		  form.funcScope.value = createFeatureList("funcFeatures");
		  form.otherScope.value = createFeatureList("otherFeatures");

		  form.action = "report.cfm?mode=advanced&sort=severity";
		  
		  return true;

		}
	}
	
	function createFeatureList(catName) {
	  	var list = "";
	  	var allChecked = true;
		var marker = "";
		var checked = false;
		var dropDown = document.analyzerForm[catName];
		for(var i=0;i < dropDown.options.length; i++) {
			if(dropDown.options[i].selected) {
				if(list == "") list = dropDown.options[i].text;
				else list = list + "," + dropDown.options[i].text;
			} else allChecked = false;
		}
		if (allChecked) list = "all";
		if(list == "") list = "none";
		return list;
	}
	
	function ToggleSelected(field, onoff) {
		var dropDown = document.analyzerForm[field];
		for(var i=0; i < dropDown.options.length; i++) {
			dropDown.options[i].selected = onoff;
		}
	}
	
	
		// Select all features by default
		ToggleSelected('tagFeatures', true);
		ToggleSelected('funcFeatures', true);
		ToggleSelected('otherFeatures', true);			
			
</script>
� 	
� 	_factor10�&
 � ../include/marginbottom.cfm�  
� ../footer.cfm� metaData Ljava/lang/Object;��	 � __factorParent out Ljavax/servlet/jsp/JspWriter; value module50 $Lcoldfusion/tagext/lang/ImportedTag; mode50 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 output53  Lcoldfusion/tagext/io/OutputTag; mode53 module51 mode51 t16 t17 t18 t19 t20 t21 module52 mode52 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 LineNumberTable java/lang/Throwable� <clinit> runPage ()Ljava/lang/Object; 	include57 #Lcoldfusion/tagext/lang/IncludeTag; 	include58 output24 mode24 module23 mode23 t12 t13 t14 t15 getMetadata module13 mode13 module14 mode14 module15 mode15 t22 t23 module16 mode16 t34 t35 output17 mode17 t38 t39 t40 t41 module46 mode46 output47 mode47 Ljava/lang/String; Ljava/util/StringTokenizer; output48 mode48 output49 mode49 module42 mode42 output43 mode43 output44 mode44 output45 mode45 module38 mode38 output39 mode39 output40 mode40 output41 mode41 varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; module34 mode34 module35 mode35 module36 mode36 module37 mode37 module30 mode30 output31 mode31 module32 mode32 module33 mode33 cookie1 !Lcoldfusion/tagext/net/CookieTag; include2 include7 abort8 !Lcoldfusion/tagext/lang/AbortTag; module9 mode9 	include10 	include11 module12 mode12 module54 mode54 output55 mode55 t36 t37 output56 mode56 t42 t43 t44 t45 module25 mode25 module26 mode26 module27 mode27 output28 mode28 module29 mode29 output18 mode18 module19 mode19 module20 mode20 module21 mode21 module22 mode22 1     %            $     )     .     3     8     =     B     G     L     Q     V     [     `     e     j     o     t     y     ~     �     �     �     �     �     �     �     �     �     �    
   C   �   �      ��           #     *� 
�                {&    c  "  �*,B� �**� �j�t� R*+,��� �*+,��� �*+,��� �*+,�"� �*+,�A� �*+,�^� �,`��*,B� �*��2+���:�������Y�Y�SYbSY�SYbS��������Y6� 6*,��M,¶��˚��� � :� �:*,��M���� :� #�� � #:		�ب � :
� 
�:�۩*,B� �*�5+��:�Y6�8,d��,*!� �Y0S� �� ��,f��,**� �� ݸ ��,h��**� �j�t�� �*,�� �*��3���:�������Y�Y�SYjSY�SYjS��������Y6� 6*,��M,l���˚��� � :� �:*,��M���� :� &�t�� � #:�ب � :� �:�۩,n��,**� -� ݸ ��,p�ȧ �,r��*��4���:�������Y�Y�SYtSY�SYtS��������Y6� 6*,��M,v���˚��� � :� �:*,��M���� :� &� ��� � #:�ب � :� �:�۩,x��,**� 2� ݸ ��,p��,z�������"� :� #�� � #:�#� � : �  �:!�$�!*�  � � �   �� �!  !  �JP��Y_  �  �7=��FL  I���I��      V "  �      �� �   ���   ���   ���   ���   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���    ��� !�   � 6   u 	 w 	 w  w  w  w a �  w h � � � p2T\\[rz	z	y	�	�
�
�
�
�
�
�
�
���pxxw������]eeds��
z: �      Z     <��E��G������������Y������           <     ��     �     �*� �� �L*� �N*-+��� �*+B� �*�G9-��I:KM��%�R�@� �*+�� �*�G:-��I:KM��%�R�@� �*+Ƕ ��       >    �       ���    ���    � � �    ���    ��� �   "  � 8� !� K� j� S� }�    f&        �,*��*�+��:�Y6�>*,�O� �,Q��**� SU�t�YY�� W**� ����t��Y�� 
,[��,]��*�����:�������Y�Y�SY_S��������Y6� 6*,��M,a���˚��� � :� �:	*,��M�	��� :
� &� �
�� � #:�ب � :� �:�۩,c��,*� �Y`S� �� ��,e�������"� :� #�� � #:�#� � :� �:�$�*�  � � �   �	� �   nt� }�       �   �      �� �   ���   ���   ���   ���   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ��� �   v    L . i 6 j 6 j : j = j 5 j 5 j O j O j S j V j N j N j N j N j 5 j g j 5 j n j � k � k u k/ k7 l7 l6 lM l  P ��     "     ���                %&    X  *  �,���*��+���:�������Y�Y�SY�S��������Y6� 6*,��M,����˚��� � :� �:*,��M���� :� #�� � #:		�ب � :
� 
�:�۩,���*��+���:�������Y�Y�SY�SY�SY�S��������Y6� 6*,��M, ���˚��� � :� �:*,��M���� :� #�� � #:�ب � :� �:�۩,��*��+���:�������Y�Y�SYS��������Y6� 6*,��M,���˚��� � :� �:*,��M���� :� #�� � #:�ب � :� �:�۩,��*��+���:�������Y�Y�SY
S��������Y6� 6*,��M,���˚��� � :� �:*,��M���� : � # �� � #:!!�ب � :"� "�:#�۩#,��**� ��t� �*,}� �*�+��:$$�Y6%� 0,��,*�� �YS� �� ��,��$����$�"� :&� #&�� � #:'$'�#� � :(� (�:)$�$�)*,Ƕ �*�  R k q   G � �� G � �  4:  `f�ou  ���  �#��,2  ���  �������  /y�/��      � *  �      �� �   ���   ���   ���   ���   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���    ��� !  ��� "  ��� #  ��� $  ��� %  ��� &  ��� '  ��� (  ��� )�   �     1 7 3 \ 3  3 � 3 � 6  6% 6 � 6� 6� 9� 9� 9C ;z ?� ?J ?  A D D D D D D: EB HB HA GX H  E� K D \&    �  !  ,C��*� n***� A��E��ܶ{,G��*��.+���:�������Y�Y�SYIS��������Y6� 6*,��M,K���˚��� � :� �:*,��M���� :� #�� � #:		�ب � :
� 
�:�۩,��*�/+��:�Y6� �,M��**� n� ݸ �:�:��Y��:� ���N*I-��W,O��**� QS�t�YY�� OW*� �YQS� �� �**� �� ݸ ��Y�� #W*� �YQS� �����~��Y�� 
,U��,
��,**� �� ݸ ��,������Q,������"� :� #�� � #:�#� � :� �:�$�,W��*�0+��:�Y6� (,Y��,**� (� ݸ ��,<�������"� :� #�� � #:�#� � :� �:�$�,��*�1+��:�Y6� (,[��,**� �� ݸ ��,<�������"� :� #�� � #:�#� � :� �: �$� *� 	 s � �   h � �� h � �   ��� �
  7y�7��  �����      L !        � �   ��   ��   ��   ��   ��   ��   ��   �� 	  �� 
  ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��  �   � ;   �  �  �  �  �  � ! � X � } � ( � � � � � � �/ �7 �? �? �C �F �> �> �W �W �j �j �W �W �� �� �� �� �W �W �> �� �> �� �� �� �� �� � �� � � �! �B �J �J �I �X �( �� �� �� �� �� �� �� � ?&    �  !  ,$��*� 7***� A��&��ܶ{,(��*��*+���:�������Y�Y�SY*S��������Y6� 6*,��M,,���˚��� � :� �:*,��M���� :� #�� � #:		�ب � :
� 
�:�۩,��*�++��:�Y6� �,.��**� 7� ݸ �:�:��Y��:� ���N**-��W,���**� 02�t�YY�� OW*� �Y0S� �� �**� �� ݸ ��Y�� #W*� �Y0S� �����~��Y�� 
,��,4��,**� �� ݸ ��,6������Q,8������"� :� #�� � #:�#� � :� �:�$�,��*�,+��:�Y6� (,:��,**� (� ݸ ��,<�������"� :� #�� � #:�#� � :� �:�$�,��*�-+��:�Y6� (,>��,**� �� ݸ ��,<�������"� :� #�� � #:�#� � :� �: �$� *� 	 s � �   h � �� h � �   ��� �
  7y�7��  �����      L !        � �   ��   ��   ��   ��   ��   ��   ��   �� 	  �� 
  ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��  �   � ;   �  �  �  �  �  � ! � X � } � ( � � � � � � �/ �7 �? �? �C �F �> �> �W �W �j �j �W �W �� �� �� �� �W �W �> �� �> �� �� �� �� �� � �� � � �! �B �J �J �I �X �( �� �� �� �� �� �� �� �  &    �  !  �,��*��&+���:�������Y�Y�SY�S��������Y6� 6*,��M,���˚��� � :� �:*,��M���� :� #�� � #:		�ب � :
� 
�:�۩,��*�'+��:�Y6� �,��**� }� ݸ �:�:��Y��:� ���N*�-��W,���**� ���t�YY�� OW*� �Y�S� �� �**� �� ݸ ��Y�� #W*� �Y�S� �����~��Y�� 
,��,
��,**� �� ݸ ��,������Q,������"� :� #�� � #:�#� � :� �:�$�,��*�(+��:�Y6� (,��,**� (� ݸ ��,�������"� :� #�� � #:�#� � :� �:�$�,��*�)+��:�Y6� (,��,**� �� ݸ ��,�������"� :� #�� � #:�#� � :� �: �$� *� 	 R k q   G � �� G � �   ���� ���  X^�gm  �������      L !  �      �� �   ���   ���   ���   ���   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   � �   ���   ���   ���   ���  �   � 5   � 7 � \ �  � � � � � � � � � � � � �" �% � � �6 �6 �I �I �6 �6 �b �r �b �b �6 �6 � �� � �� �� �� �� �� � � �� � � �  �! �) �) �( �7 � �~ �� �� �� �� �� �� �       �    {*+,� **+,� � **!+,� � #**&+,� � (**++,� � -**0+,� � 2**5+,� � 7**:+,� � <**?+,� � A**D+,� � F**I+,� � K**N+,� � P**S+,� � U**X+,� � Z**]+,� � _**b+,� � d**g+,� � i**l+,� � n**q+,� � s**v+,� � x**{+,� � }**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � ��           {      {   {  �&      $  �,���*��"+���:�������Y�Y�SY�SY�SY�S��������Y6� 6*,��M,����˚��� � :� �:*,��M���� :� #�� � #:		�ب � :
� 
�:�۩*,�� �*��#+���:�������Y�Y�SY�SY�SY�S��������Y6� 6*,��M,����˚��� � :� �:*,��M���� :� #�� � #:�ب � :� �:�۩*,�� �*��$+���:�������Y�Y�SY�SY�SY�S��������Y6� 6*,��M,¶��˚��� � :� �:*,��M���� :� #�� � #:�ب � :� �:�۩*,�� �*��%+���:�������Y�Y�SY�SY�SY�S��������Y6� 6*,��M,ȶ��˚��� � :� �:*,��M���� : � # �� � #:!!�ب � :"� "�:#�۩#*,�� �*� A*�̶ж{*,�� �*� �***� A����Y*�ո�S�ܶ{*,�� �*� }***� A�����ܶ{*�  ^ w }   S � �� S � �  (AG  ms�|�  �  �7=��FL  ���  ���      j $  �      �� �   ���   ���   ��   ��   ���   ���   ���   ��� 	  ��� 
  ���   ��   ��   ���   ���   ���   ���   ���   ���   �	�   �
�   ���   ���   ���   ���   ���   ���   ��   ��   ���   ���   ���    ��� !  ��� "  ��� #�   � *   � 7 � C � h �  � � � � �2 � � �� �� �� �� �� �] �� �� �� �e �' �4 �7 �3 �3 �/ �/ �@ �M �^ �^ �^ �L �L �H �H �l �y �x �x �t �t � �&    �  "  ^,���*��+���:�������Y�Y�SY�S��������Y6� 6*,��M,����˚��� � :� �:*,��M���� :� #�� � #:		�ب � :
� 
�:�۩,���*�+��:�Y6� �,���*� �YfS� ������ 
,���,���,**� �� ݸ ��,���*� �YfS� �j���� 
,���,���,**� <� ݸ ��,���*� �YfS� ������ 
,���,���,**� �� ݸ ��,������7�"� :� #�� � #:�#� � :� �:�$�,���*�� +���:�������Y�Y�SY�S��������Y6� 6*,��M,����˚��� � :� �:*,��M���� :� #�� � #:�ب � :� �:�۩,���*��!+���:�������Y�Y�SY�S��������Y6� 6*,��M,����˚��� � :� �:*,��M���� :� #�� � #:�ب � : �  �:!�۩!*�  R k q   G � �� G � �   ���� ���  4MS  )y�)��  �
  �6<��EK      V "  ^      ^� �   ^��   ^��   ^�   ^�   ^��   ^��   ^��   ^�� 	  ^�� 
  ^��   ^�   ^�   ^��   ^��   ^��   ^��   ^�   ^�   ^��   ^��   ^��   ^��   ^��   ^��   ^�   ^�   ^��   ^��   ^��   ^��   ^��    ^�� !�   � *   ~ 7 � \ �  � � � � � � � � �  � � � � � � � �$ �4 �? �$ �F �N �N �M �\ �c �s �~ �c �� �� �� �� �� � � �� � �> �� �� �� �� �� � �&    � 
 .  *,Ƕ �**� #g�϶ �*,Ƕ �**� i� י #*!� �YgS**� i� ݸ � � � �*!� �Y�S� �Y�� �*!� �YgS� �� � �� ��� �*,	� �*�+��:!�%�(*,�/�35*7� �Y9S� �� �%�<�@� �*,B� �*�G+��I:KMO�%�R�@� �*,	� �**� PTV*X�[� �*,Ƕ �**� U*N� �YTS� ��^*,Ƕ �**� `bd� �*,Ƕ �**� fhj� �*,l� �**� np�t� �*,v� �*� �**� U� ݶ{*,}� �*� K�{*,}� �*� _� �Y*7� �Y9S� �� � ��� �*7� �Y�S� �� � ���{*,}� �*�G+��I:KM��%�R�@� �*,}� �*��+���:�@� �*,Ƕ �*,	� �**� ����t� %*,}� �*� �Y�S�� �*,Ƕ �*,B� �*��	+���:�������Y�Y�SY�SY�SY�S��������Y6	� 6*	,��M,ö��˚��� � :
� 
�:*	,��M���� :� #�� � #:�ب � :� �:�۩*,B� �*� s**� x� ݶ{*,Ƕ �*�G
+��I:KMݸ%�R�@� �*,Ƕ �*�G+��I:KM߸%�R�@� �*,B� �**� d���*������ �,��*��+���:�������Y�Y�SY�S��������Y6� 6*,��M,���˚��� � :� �:*,��M���� :� #�� � #:�ب � :� �:�۩,��ȧ6*+,�(� �*+,�h� �*+,�}� �,��*��6+���:�������Y�Y�SY�SY�SY�S��������Y6� 6*,��M,����˚��� � :� �:*,��M���� :� #�� � #:�ب � : �  �:!�۩!*,Ƕ �**� �j�t�� �*,Ƕ �*�7+��:""�Y6#� (,���,**� Z� ݸ ��,���"����"�"� :$� #$�� � #:%"%�#� � :&� &�:'"�$�'*,Ƕ ˧ �*,Ƕ �*�8+��:((�Y6)� >,���,**� Z� ݸ ��,���,**� F� ݸ ��,���(����(�"� :*� #*�� � #:+(+�#� � :,� ,�:-(�$�-*,�� �*,	� �*� �  �CI��RX  Wpv  L���L��  Ngm  C���C��  �+1��:@  q���q��      � .        � �   ��   ��      �   �      �   � 	  �� 
  ��   ��   ��   ��   ��   �   �   �    �   ��   ��   ��   ��   ��   ��   !�   "�   ��   ��   ��   ��   ��    �� !  #� "  $� #  %� $  &� %  �� &  �� '  '� (  (� )  )� *  *� +  +� ,  ,� -�  z �                3  3  3  3  3  3  '  '    W  \  \  q  S  S  G    }  � 
 � 
 � 
 � 
 � 
 � 
 �  �  & % % % / ; ; ; N ` ` f x x ~ � � � � � � � � � � � � � � � � � � � � � � � � � 
 )  < D ] � d m m q t l } �  �  �  �  �  l � !� #� # #� #i #u %u %q %q %� %� &� &� &� '� '� '� )� )� )� ) )< +a + +� .�'3X������������%�%� 
%�Q3[4|5�I�I�6�I�S�S�I�Sb5��[4���� 1� ) &    0  *  �*,}� �*��+���:�������Y�Y�SYlSY�SYlS��������Y6� 6*,��M,n���˚��� � :� �:*,��M���� :� #�� � #:		�ب � :
� 
�:�۩*,}� �*��+���:�������Y�Y�SYpSY�SYpS��������Y6� 6*,��M,r���˚��� � :� �:*,��M���� :� #�� � #:�ب � :� �:�۩*,}� �*��+���:�������Y�Y�SYtSY�SYtS��������Y6� 6*,��M,v���˚��� � :� �:*,��M���� :� #�� � #:�ب � :� �:�۩,x��*�+��:�Y6� ),.��,*!� �Y0S� �� �������"� :� #�� � #:�#� � : �  �:!�$�!,z��*��+���:""�����"��Y�Y�SY|S����"��"��Y6#� 6*"#,��M,~��"�˚��� � :$� $�:%*#,��M�%"��� :&� #&�� � #:'"'�ب � :(� (�:)"�۩)*�  _ x ~   T � �� T � �  )BH  nt�}�  �  �8>��GM  t���t��  /HN  $tz�$��      � *  �      �� �   ���   ���   �-�   �.�   ���   ���   ���   ��� 	  ��� 
  ���   �/�   �0�   ���   ���   ���   ���   ���   ���   �1�   �2�   ���   ���   ���   ���   ���   ���   �3�   �4�   ���   ���   ���    ��� !  �5� "  �6� #  �%� $  �&� %  ��� &  ��� '  ��� (  ��� )�   f    w 8 x D x i x  x � x y y3 y � y� y� z� z� z� z^ z }� }� }� }e }� } ~9 ~� ~ M&    Y  *  �,,��*�+��:�Y6� ),.��,*!� �Y0S� �� �������"� :� #�� � #:�#� � :� �:	�$�	,2��*��+���:

�����
��Y�Y�SY4S����
��
��Y6� 6*
,��M,6��
�˚��� � :� �:*,��M�
��� :� #�� � #:
�ب � :� �:
�۩,8��*��+���:�������Y�Y�SY:S��������Y6� 6*,��M,<���˚��� � :� �:*,��M���� :� #�� � #:�ب � :� �:�۩,>��,**� U� ݸ ��,@��*��+���:�������Y�Y�SYBSY�SYBS��������Y6� 6*,��M,D���˚��� � :� �:*,��M���� :� #�� � #:�ب � : �  �:!�۩!,F��,**� �� ݸ ��,H��*��+���:""�����"��Y�Y�SYJS����"��"��Y6#� 6*"#,��M,L��"�˚��� � :$� $�:%*#,��M�%"��� :&� #&�� � #:'"'�ب � :(� (�:)"�۩)*�   Y _�  h n   � � �   �� �%+  ���  �������  m��  b���b��  @Y_  5���5��      � *  �      �� �   ���   ���   �7�   �8�   ���   ���   ���   ��� 	  �9� 
  �:�   ���   ���   ���   ���   ���   ���   �;�   �<�   ���   ���   ���   ���   ���   ���   �=�   �>�   ���   ���   ���   ���   ���    ��� !  �?� "  �@� #  �%� $  �&� %  ��� &  ��� '  ��� (  ��� )�   ~    P ! S ) S ) S ( S  S  S � T � T � T< Ts ]� ]C ]� ] b b  b bF cR cw c c� c� d� d� d� d% iJ i� i       �    �