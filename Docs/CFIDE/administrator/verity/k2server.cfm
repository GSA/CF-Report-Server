����  -� 
SourceFile KC:\blackstone_final\cfusion\wwwroot\CFIDE\administrator\verity\k2server.cfm cfk2server2ecfm2052745680  coldfusion/runtime/CFPage  <init> ()V  
  	 this Lcfk2server2ecfm2052745680; LocalVariableTable Code bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   FORM Lcoldfusion/runtime/Variable; FORM  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   LOCALE LOCALE    	  " AERRORMESSAGES AERRORMESSAGES % $ 	  ' REQUEST REQUEST * ) 	  , K2ADMINPORT K2ADMINPORT / . 	  1 K2SERVERPORT K2SERVERPORT 4 3 	  6 K2SERVERALIAS K2SERVERALIAS 9 8 	  ; 
VERITYHOST 
VERITYHOST > = 	  @ 
ERROR_HOST 
ERROR_HOST C B 	  E ERROR_ADMINPORT ERROR_ADMINPORT H G 	  J HIDEADVANCEDSETTINGS HIDEADVANCEDSETTINGS M L 	  O ERROR_INDEXALIAS ERROR_INDEXALIAS R Q 	  T ERROR_SERVERPORT ERROR_SERVERPORT W V 	  Y K2INDEXALIAS K2INDEXALIAS \ [ 	  ^ K2INDEXPORT K2INDEXPORT a ` 	  c ERROR_INDEXPORT ERROR_INDEXPORT f e 	  h K2ADMINALIAS K2ADMINALIAS k j 	  m SUCCESSMESSAGE SUCCESSMESSAGE p o 	  r ERROR_ADMINALIAS ERROR_ADMINALIAS u t 	  w BERRORSEXIST BERRORSEXIST z y 	  | SHOWADVANCEDSETTINGS SHOWADVANCEDSETTINGS  ~ 	  � ERROR_SERVERALIAS ERROR_SERVERALIAS � � 	  � ERROR_K2UPDATE ERROR_K2UPDATE � � 	  � CFCATCH CFCATCH � � 	  � com.macromedia.SourceModTime   ��( @ pageContext #Lcoldfusion/runtime/NeoPageContext; � �	  � getOut ()Ljavax/servlet/jsp/JspWriter; � � javax/servlet/jsp/PageContext �
 � � parent Ljavax/servlet/jsp/tagext/Tag; � �	  � java/lang/String � LICENSE � _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � getAppServerPlatform � java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � sunone � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � SERVER � OS � ADDITIONALINFORMATION � _resolveAndAutoscalarize � �
  � sunos �  
	 � _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V � �
  � 'class$coldfusion$tagext$net$LocationTag Ljava/lang/Class; !coldfusion.tagext.net.LocationTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � !coldfusion/tagext/net/LocationTag � 
cflocation � url � ../homepage.cfm � _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � setUrl (Ljava/lang/String;)V � �
 � � 	_emptyTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 
	 � %class$coldfusion$tagext$net$CookieTag coldfusion.tagext.net.CookieTag � � �	  � coldfusion/tagext/net/CookieTag � cfcookie name cfadmin_lastpage setName �
  expires
 NEVER J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; �
  
setExpires (Ljava/lang/Object;)V
  
 


 30 value CGI SCRIPT_NAME _String &(Ljava/lang/Object;)Ljava/lang/String;!"
 �# setValue% �
 & 

( $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag+* �	 - coldfusion/tagext/io/SilentTag/ 
doStartTag ()I12
03 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;56
 7 REQUEST.LOCALE9 en; checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V=>
 ? isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)ZAB
 C _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;EF
 G Trim &(Ljava/lang/String;)Ljava/lang/String;IJ
 K LCaseMJ
 N _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)VPQ
 R 
LOCALEFILET java/lang/StringBufferV resources/verity_X  �
WZ append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;\]
W^ .xml` toString ()Ljava/lang/String;bc
 �d falsef seth coldfusion/runtime/Variablej
ki ArrayNew (I)Ljava/util/List;mn
 o ADMINSUBMITq FORM.ADMINSUBMITs  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Zuv
 w *coldfusion/runtime/TransientVariableHoldery &(Lcoldfusion/runtime/NeoPageContext;)V {
z| VERITY~ ADVANCEDMODE� FORM.ADVANCEDMODE� int� JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;��
 � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag�� �	 � coldfusion/tagext/io/OutputTag�
�3 (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag�� �	 � "coldfusion/tagext/lang/ImportedTag� l10n� 
../cftags/� admin� :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V�
�� &coldfusion/runtime/AttributeCollection� id� 	k2updated� var� SuccessMessage� ([Ljava/lang/Object;)V �
�� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
�� 	hasEndTag (Z)V��
��
�3 >
				Verity K2 Server Configuration information updated.
			� write� � java/io/Writer�
�� doAfterBody�2
�� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � doEndTag�2 #javax/servlet/jsp/tagext/TagSupport�
�� doCatch (Ljava/lang/Throwable;)V��
�� 	doFinally� 
��
�� coldfusion/tagext/QueryLoop�
��
��
�� unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;�� coldfusion/runtime/NeoException�
�� t24 [Ljava/lang/String; ANY���	 � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I��
�� bind '(Ljava/lang/String;Ljava/lang/Object;)V��
z� error_k2update� K
				An error occurred while attempting to save your changes. <br />
				� MESSAGE� D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; ��
 � <br />
				� DETAIL� <br />
			� true� ArrayLen (Ljava/lang/Object;)I� 
  (D)Ljava/lang/Object; �
 � _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V
  unbind
 
z _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;
  coldfusion/tagext/GenericTag
� k2_pagename pagename Verity K2 Server %class$coldfusion$tagext$lang$ParamTag coldfusion.tagext.lang.ParamTag �	  coldfusion/tagext/lang/ParamTag cfparam! type# string% setType' �
 ( K2ServerAddress*
  default- 	localhost/ 
setDefault1
 2 
	

4 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag76 �	 9 !coldfusion/tagext/lang/IncludeTag; 	cfinclude= template? ../header.cfmA setTemplateC �
<D )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTagGF �	 I #coldfusion/tagext/html/form/FormTagK cfformM actionO 	setActionQ �
LR methodT postV 	setMethodX �
LY
L3 ../include/buttonbar.cfm\ ../include/margintop.cfm^ ../include/errors.cfm`  


b 
	<span style="color:green">d </span>
	<br><br>
f 

<span class="pageHeader">h pageHeader_k2verityj )Data &amp; Services &gt; Verity K2 Serverl </span>
<br><br>

n K2config_welcomep
	The Verity indexing engine can be installed and configured on a different host than
	the one ColdFusion MX is running on.  If this is the case, you can configure the host
	that ColdFusion will use when performing search operations.  If you have purchased
	the Verity product, you may need to configure the aliases and ports of the services
	that ColdFusion uses.  Click the Advanced button to configure these values.  You should
	not need to change these values if you are running with the ColdFusion-installed version
	of Verity.
r _factor4t
 u h
<br><br>



<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td bgcolor="#w 	GRAYLIGHTy &" class="cellBlueTopAndBottom">
		<b>{ 
l10n_addk2} Configure Verity K2 Server |</b>
	</td>
</tr>
</table>

<table border="0" cellpadding="5" cellspacing="0">
<tr>
	<td>
		<label for="VerityHost">� k2_host� Verity Host Name� </label>
		&nbsp;&nbsp;
		� 
error_host� APlease enter a valid host name or IP address ( xxx.xxx.xxx.xxx ).� 
	</td>
	<td>
		� *class$coldfusion$tagext$html$form$InputTag $coldfusion.tagext.html.form.InputTag�� �	 � $coldfusion/tagext/html/form/InputTag� cfinput� text�
�( required� (Ljava/lang/String;)Z ��
 �� ((Ljava/lang/String;Ljava/lang/String;Z)Z ��
 � setRequired��
�� 
VerityHost�
� message� 
setMessage� �
��
�& 	maxlength� 150� _int (Ljava/lang/String;)I��
 �� ((Ljava/lang/String;Ljava/lang/String;I)I ��
 � setMaxLength (I)V��
�� size� 20� (coldfusion/tagext/html/form/FormChildTag�
�� 
	</td>
</tr>
� SHOWADVANCED� FORM.SHOWADVANCED� .
	<tr>
		<td>
			<label for="K2adminAlias">� k2_adminalias� K2 Admin Alias� </label>
			&nbsp;&nbsp;
			� error_adminalias� DPlease enter an alias. The default K2 Admin alias is 'ColdFusionK2'.� 
		</td>
		<td>
			� Yes� K2adminAlias� >
		</td>
	</tr>
	<tr>
		<td>
			<label for="K2adminPort">� k2_adminport� K2 Admin Port� error_adminport� FPlease enter a valid K2 Admin port. The default K2 Admin port is 9950.� _factor1�
 � validate� integer� setValidate� �
�� K2adminPort� Size� 5� @
		</td>
	</tr>
	<tr>
		<td>
			<label for="K2serverAlias">� k2_serveralias� K2 Server Alias� error_serveralias� MPlease enter an alias. The default K2 server alias is 'ColdFusionK2_server1'.� K2serverAlias ?
		</td>
	</tr>
	<tr>
		<td>
			<label for="K2serverPort"> k2_serverport K2 Server Port _factor2	
 
 error_serverport HPlease enter a valid K2 Server port. The default K2 Server port is 9920. K2serverPort ?
		</td>
	</tr>
	<tr>
		<td>
			<label for="K2indexAlias"> k2_indexalias K2 Index Alias error_indexalias QPlease enter an alias. The default K2 index alias is 'ColdFusionK2_indexserver1'. K2indexAlias _factor3
  >
		</td>
	</tr>
	<tr>
		<td>
			<label for="K2indexPort">! k2_indexport# K2 Index Port% error_indexport' FPlease enter a valid K2 Index port. The default K2 Index port is 9960.) K2indexPort+ 
		</td>
	</tr>
- _factor5/
 0 �
</table>

<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td class="cellBlueTopAndBottom" bgcolor="#2 	BLUELIGHT4 ">
		6 
			8 hideAdvancedSettings: Hide Advanced Settings< 5
			<input type="Submit" name="hideAdvanced" value="> O" class="buttn">
			<input type="hidden" name="advancedmode" value="true">
		@ showAdvancedSettingsB Show Advanced SettingsD 5
			<input type="Submit" name="showAdvanced" value="F P" class="buttn">
			<input type="hidden" name="advancedmode" value="false">
		H '
	</td>
</tr>
</table>

<br />

J ../include/marginbottom.cfmL
L�
L�
L�
L� _factor6R
 S _factor7U
 V 		

X ../footer.cfmZ metaData Ljava/lang/Object;\]	 ^ <clinit> runPage ()Ljava/lang/Object; out Ljavax/servlet/jsp/JspWriter; value 	include45 #Lcoldfusion/tagext/lang/IncludeTag; LineNumberTable getMetadata __factorParent 	location0 #Lcoldfusion/tagext/net/LocationTag; cookie1 !Lcoldfusion/tagext/net/CookieTag; cookie2 silent8  Lcoldfusion/tagext/io/SilentTag; mode8 I t9 Ljava/lang/Throwable; t10 module9 $Lcoldfusion/tagext/lang/ImportedTag; mode9 t13 t14 t15 t16 t17 t18 param10 !Lcoldfusion/tagext/lang/ParamTag; 	include11 output44  Lcoldfusion/tagext/io/OutputTag; mode44 t23 t25 t26 java/lang/Throwable� form43 %Lcoldfusion/tagext/html/form/FormTag; mode43 module39 mode39 t8 t11 t12 module40 mode40 t19 t20 t21 	include41 	include42 t27 t28 t29 t30 t31 module17 mode17 t6 t7 module18 mode18 module19 mode19 t22 input20 &Lcoldfusion/tagext/html/form/InputTag; module36 mode36 t32 t33 t34 t35 t36 module37 mode37 t39 t40 t41 t42 t43 t44 input38 	include12 	include13 	include14 module15 mode15 module16 mode16 varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; module31 mode31 input32 module33 mode33 module34 mode34 input35 input26 module27 mode27 module28 mode28 input29 module30 mode30 module21 mode21 module22 mode22 input23 module24 mode24 module25 mode25 t4 ,Lcoldfusion/runtime/TransientVariableHolder; output5 mode5 module4 mode4 #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable0 output7 mode7 module6 mode6 t37 !coldfusion/runtime/AbortException� java/lang/Exception� 1     #            $     )     .     3     8     =     B     G     L     Q     V     [     `     e     j     o     t     y     ~     �     �     �     � �    � �   * �   � �   � �   ��    �   6 �   F �   � �   \]           #     *� 
�                `      �     k׸ ݳ ��� ݳ �,� ݳ.�� ݳ��� ݳ�� �Y�S��� ݳ8� ݳ:H� ݳJ�� ݳ���Y� ����_�           k     ab     �     U*� �� �L*� �N*-+�W� �*+Y� �*�:--� ��<:>@[� �E� �� �*+� ��       4    U       Ucd    Ue]    U � �    Ufg h      � 8 � ! � K �    ib     "     �_�                U    � 
   �**+� �Y�S� ��� �� ��� ��~�� �Y�  &W*�� �Y�SY�S� �͸ ��~�� ��  y*,϶ �*� �+� �� �:��� � �� �� �*,�� �*� �+� �� :� �	��� �� �*,� �*,� �*� �+� �� :� �	��*� �Y S� ˸$� �'� �� �*,� �*,)� �*�.+� ��0:�4Y6� �*,�8M**� -!:<�@**� #�D� #*+� �Y!S**� #�H�$�L�O�S*+� �YUS�WYY�[*+� �Y!S� ˸$�_a�_�e�S*� }g�l*� (*�p�l**� rt�x� *,�� ����T� � :	� 	�:
*,��M�
��� �*,)� �*��	+� ���:�������Y� �Y�SYSY�SYS��������Y6� 6*,�8M,���Ú��� � :� �:*,��M���� :� #�� � #:�Ш � :� �:�ө*,� �*�
+� �� :"$&� �)"+� �,".0��3� �� �*,�� �*� A*+� �YSY?S� ˶l*� n*+� �YSYlS� ˶l*� 2*+� �YSY0S� ˶l*� <*+� �YSY:S� ˶l*� 7*+� �YSY5S� ˶l*� _*+� �YSY]S� ˶l*� d*+� �YSYbS� ˶l*,5� �*�:+� ��<:>@B� �E� �� �*,)� �*��,+� ���:��Y6�  *,�T� �*,� ��Ԛ����� :� #�� � #:�ب � :� �:�٩*� [  ���  �������  k���k��         �      �j �   �cd   �e]   �kl   �mn   �on   �pq   �rs   �tu 	  �v] 
  �wx   �ys   �zu   �{]   �|]   �}u   �~u   �]   ���   ��g   ���   ��s   ��]   ��u   ��u   ��] h  � l            /  C  /  /     W  r  ^  �  �  �  �  �     �  �  �    � 1 9 	9 
f f j l o o e v v u � !� !� !� !� !� !� !�  u � "� "� "� "� "� "� !u � %� %� $� &� &� &� %� $� *� *� *� *� *� *A 9 Oq Q} Q� QA Q Q" V3 VD V VW Vb Xb X^ W~ Y~ Yz X� Z� Z� Y� [� [� Z� \� \� [� ]� ]� \
 ^
 ^ ]^ W" _A b* bT b� �\ d R    � 	    k*,� �*�J++� ��L:NP*� �Y S� ˸$� �SNUW� �Z�[Y6��*,�8M*,�v� �*,�1� �,3��,*+� �Y5S� ˸$��,7��**� �ʶx� �*,9� �*��'� ���:�������Y� �Y�SY;SY�SY;S��������Y6� 6*,�8M,=���Ú��� � :� �:	*,��M�	��� :
� )�Ԩ
�� � #:�Ш � :� �:�ө,?��,**� P�H�$��,A��� �*,9� �*��(� ���:�������Y� �Y�SYCSY�SYCS��������Y6� 6*,�8M,E���Ú��� � :� �:*,��M���� :� )� ��� � #:�Ш � :� �:�ө,G��,**� ��H�$��,I��,K��*�:)� ��<:>@M� �E� �� :� d� ��*,� �*�:*� ��<:>@]� �E� �� :� '� _�*,)� ��N��K� � :� �:*,��M��O� :� #�� � #:�P� � :� �:�Q�*� 	(.  Z`�io     �KQ��Z`   U   JCI� JRX      B    k      kj �   kcd   ke]   k��   k�s   k�x   k�s   k�u   kt] 	  kv] 
  k�u   k�u   kz]   k�x   k�s   k}u   k~]   k]   k�u   k�u   k�]   k�g   k�]   k�g   k�]   k�u   k�]   k�]   k�u   k�u   k�] h   � ,   d  e  e A e y � � � � � � � � � � � � � � � � � � � � � � � � � � � �� �� �� �� �� �� �� �� �
 �� �q �y �y �x �� �� � � �� �� �� �� �� �� � �  e /    	  .  �,x��,*+� �YzS� ˸$��,|��*��+� ���:�������Y� �Y�SY~S��������Y6� 6*,�8M,����Ú��� � :� �:*,��M���� :� #�� � #:		�Ш � :
� 
�:�ө,���*��+� ���:�������Y� �Y�SY�S��������Y6� 6*,�8M,����Ú��� � :� �:*,��M���� :� #�� � #:�Ш � :� �:�ө,���*��+� ���:�������Y� �Y�SY�SY�SY�S��������Y6� 6*,�8M,����Ú��� � :� �:*,��M���� :� #�� � #:�Ш � :� �:�ө,���*��+� ���:�$�� �������������� ����**� F�H�$� ���**� A�H�$� �������������Y� �Y�SY�SY�SY�S����� �� �,ƶ�**� �ʶx��*+,��� �*+,�� �*+,� � �,"��*��$+� ���:�������Y� �Y�SY$S��������Y6� 6*,�8M,&���Ú��� � :� �: *,��M� ��� :!� #!�� � #:""�Ш � :#� #�:$�ө$,Ҷ�*��%+� ���:%%�����%��Y� �Y�SY(SY�SY(S����%��%��Y6&� 6*%&,�8M,*��%�Ú��� � :'� '�:(*&,��M�(%��� :)� #)�� � #:*%*�Ш � :+� +�:,%�ө,,ض�*��&+� ���:--��ڸ�����-���� ��-�,� ��-�$�� ��-��**� i�H�$� ��-���������-�**� d�H�$� ��-��Y� �Y�SY,SY�SY�S����-� �� �,.��*�  p � �   e � �� e � �  -FL  "rx�"��  �  �;A��JP  ���  �����  |��  q���q��      � .  �      �j �   �cd   �e]   ��x   ��s   ��u   ��]   ��]   �tu 	  �vu 
  ��]   ��x   ��s   �{u   �|]   �}]   �~u   �u   ��]   ��x   ��s   ��u   ��]   ��]   ��u   ��u   ��]   ���   ��x   ��s   ��u   ��]    ��] !  ��u "  ��u #  ��] $  ��x %  ��s &  ��u '  ��] (  ��] )  ��u *  ��u +  ��] ,  ��� -h   � ;   {  �  �  �  � U � z � % � � � �7 � � �� �� �� �  �� �a � �� �� �� �� �� �� �� � � �h �% �- �- �1 �4 �, �a �� �� �h � �U �a �� �% �� � � �* �; �L �L �e �y �y �� �� �� �� �, � t    �    B*,� �*�:+� ��<:>@]� �E� �� �*,� �*�:+� ��<:>@_� �E� �� �*,� �*�:+� ��<:>@a� �E� �� �*,c� �**� s�D�  ,e��,**� s�H�$��,g��,i��*��+� ���:�������Y� �Y�SYkS��������Y6� 6*,�8M,m���Ú��� � :	� 	�:
*,��M�
��� :� #�� � #:�Ш � :� �:�ө,o��*��+� ���:�������Y� �Y�SYqS��������Y6� 6*,�8M,s���Ú��� � :� �:*,��M���� :� #�� � #:�Ш � :� �:�ө*� 17  ]c�lr  ���  � ��)/       �   B      Bj �   Bcd   Be]   B�g   B�g   B�g   B�x   B�s   Btu 	  Bv] 
  B�]   B�u   Bzu   B{]   B�x   B�s   B~u   B]   B�]   B�u   B�u   B�] h   n    e  f  f 2 f Q g : g d g � h l h � h � k � k � k � k � l � l � l � l � k � n � p" p � p� p� s� s� s       Y    '*+,� **+,� � **!+,� � #**&+,� � (**++,� � -**0+,� � 2**5+,� � 7**:+,� � <**?+,� � A**D+,� � F**I+,� � K**N+,� � P**S+,� � U**X+,� � Z**]+,� � _**b+,� � d**g+,� � i**l+,� � n**q+,� � s**v+,� � x**{+,� � }**�+,� � �**�+,� � �**�+,� � �**�+,� � ��           '      '��   '��          �,Ҷ�*��+� ���:�������Y� �Y�SYSY�SYS��������Y6� 6*,�8M,���Ú��� � :� �:*,��M���� :� #�� � #:		�Ш � :
� 
�:�ө,ض�*�� +� ���:��ڸ��������� ���� ���$�� ����**� Z�H�$� ������������**� 7�H�$� ����Y� �Y�SYSY�SY�S����� �� �,��*��!+� ���:�������Y� �Y�SYS��������Y6� 6*,�8M,���Ú��� � :� �:*,��M���� :� #�� � #:�Ш � :� �:�ө,Ҷ�*��"+� ���:�������Y� �Y�SYSY�SYS��������Y6� 6*,�8M,���Ú��� � :� �:*,��M���� :� #�� � #:�Ш � :� �:�ө,ض�*��#+� ���:�$�� ����ڸ������� ����**� U�H�$� ���**� _�H�$� �������������Y� �Y�SY�SY�SYS����� �� �*� 	 ^ w }   S � �� S � �  �	  �5;��DJ  ���  ����      .   �      �j �   �cd   �e]   ��x   ��s   ��u   ��]   ��]   �tu 	  �vu 
  ��]   ���   ��x   ��s   �|u   �}]   �~]   �u   ��u   ��]   ��x   ��s   ��u   ��]   ��]   ��u   ��u   ��]   ��� h   � '   � 7 � C � h �  � � � � � � � � �. �. �G �[ �[ �~ �� � � �� �� �� �� �[ �� �� �� �b �$ �B �S �g �x �x �� �� �� �� �� �+ � 	        �,ض�*��+� ���:��ڸ��������� ���� ���$�� ����**� K�H�$� ������������**� 2�H�$� ����Y� �Y�SY�SY�SY�S����� �� �,���*��+� ���:�������Y� �Y�SY�S��������Y6� 6*,�8M,����Ú��� � :� �:*,��M���� :	� #	�� � #:

�Ш � :� �:�ө,Ҷ�*��+� ���:�������Y� �Y�SY�SY�SY�S��������Y6� 6*,�8M, ���Ú��� � :� �:*,��M���� :� #�� � #:�Ш � :� �:�ө,ض�*��+� ���:�$�� ����ڸ������� ����**� ��H�$� ���**� <�H�$� �������������Y� �Y�SY�SY�SYS����� �� �,��*��+� ���:�������Y� �Y�SYS��������Y6� 6*,�8M,���Ú��� � :� �:*,��M���� :� #�� � #:�Ш � :� �:�ө*� 	'@F  lr�{�  �	  �5;��DJ  q��  f���f��      .   �      �j �   �cd   �e]   ���   ��x   ��s   ��u   ��]   �t] 	  �vu 
  ��u   ��]   ��x   ��s   �|u   �}]   �~]   �u   ��u   ��]   ���   ��x   ��s   ��u   ��]   ��]   ��u   ��u   ��] h   � &   �  � 2 � C � T � e � e � ~ � � � � � � � � �  � � � �1 � � �� �� �� �� �� �[ �y �� �� �� �� �� �� �� �� � �b � �V �{ �& � �    8  %  �,̶�*��+� ���:�������Y� �Y�SY�S��������Y6� 6*,�8M,ж��Ú��� � :� �:*,��M���� :� #�� � #:		�Ш � :
� 
�:�ө,Ҷ�*��+� ���:�������Y� �Y�SY�SY�SY�S��������Y6� 6*,�8M,ֶ��Ú��� � :� �:*,��M���� :� #�� � #:�Ш � :� �:�ө,ض�*��+� ���:�$�� ����ڸ������ܸ ����**� x�H�$� ���**� n�H�$� �������������Y� �Y�SY�SY�SY�S����� �� �,޶�*��+� ���:�������Y� �Y�SY�S��������Y6� 6*,�8M,���Ú��� � :� �:*,��M���� :� #�� � #:�Ш � :� �:�ө,Ҷ�*��+� ���:�������Y� �Y�SY�SY�SY�S��������Y6� 6*,�8M,���Ú��� � :� �: *,��M� ��� :!� #!�� � #:""�Ш � :#� #�:$�ө$*�  R k q   G � �� G � �  4:  `f�ou  ���  �������  e~�  Z���Z��      t %  �      �j �   �cd   �e]   ��x   ��s   ��u   ��]   ��]   �tu 	  �vu 
  ��]   ��x   ��s   �{u   �|]   �}]   �~u   �u   ��]   ���   ��x   ��s   ��u   ��]   ��]   ��u   ��u   ��]   ��x   ��s   ��u   ��]    ��] !  ��u "  ��u #  ��] $h   z    � 7 � \ �  � � � � �  �% � � �� �� �� �� �� �� �� �� � �* �6 �� �J �� �� �Q � �> �J �o � �     � 	 &  X�zY*� ��}:*+� �YSY?S**� A�H�$�L�S**� ���x� �Y�  W*� �Y�S� ˸  �*+� �YSYlS**� n�H�$�L�S*+� �YSY0S*�**� 2�H�$�L���S*+� �YSY:S**� <�H�$�L�S*+� �YSY5S*�**� 7�H�$�L���S*+� �YSY]S**� _�H�$�L�S*+� �YSYbS*�**� d�H�$�L���S*��+� ���:��Y6� �*��� ���:�������Y� �Y�SY�SY�SY�S��������Y6� 6*,�8M,����Ú��� � :	� 	�:
*,��M�
��� :� )� i�R�� � #:�Ш � :� �:�ө�Ԛ�3��� :� &��� � #:�ب � :� �:�٩���:�:��:���   �           ���*��+� ���:��Y6�*��� ���:�������Y� �Y�SY�SY�SY�S��������Y6� v*,�8M,��,**� �� �Y�S���$��,���,**� �� �Y�S���$��,����Ú��� � :� �:*,��M���� :� )� i� ��� � #:�Ш � :� �:�ө�Ԛ����� : � &� r �� � #:!!�ب � :"� "�:#�٩#*� }��l**� (� �Y**� (�H��c�S**� ��H�	� �� � :$� $�:%��%*� ���  ���  TDJ�TSY   jp� ju�lr  �����  �������   BE      ~ &  X      Xj �   Xcd   Xe]   X��   X��   X�s   X�x   X�s   Xtu 	  Xv] 
  X�]   X�u   Xzu   X{]   X|]   X}u   X~u   X]   X��   X��   X�u   X��   X�s   X�x   X�s   X�u   X�]   X�]   X�u   X�u   X�]   X�]    X�u !  X�u "  X�] #  X�u $  X�] %h  b X  .  .  .  .  - 1 / 1 / 5 / 8 / 0 / 0 / I / I / 0 / q 1 q 1 q 1 q 1 _ 0 � 2 � 2 � 2 � 2 � 2 � 2 � 2 � 1 � 3 � 3 � 3 � 3 � 2 � 4 � 4 � 4 � 4 � 4 � 4 � 4 � 3 5 5 5 5 � 4/ 62 62 62 62 6. 6. 6 5 _ / 0 .  -� :� :� :_ :F 9� @� @ @% B% B$ A= BE CE CD B] C� @� ? G G F I I I I( I I. I. I G F   ,       �    �