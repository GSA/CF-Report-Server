����  -B 
SourceFile KC:\blackstone_final\cfusion\wwwroot\CFIDE\administrator\setup\migration.cfm cfmigration2ecfm837848027  coldfusion/runtime/CFPage  <init> ()V  
  	 this Lcfmigration2ecfm837848027; LocalVariableTable Code bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   FORM Lcoldfusion/runtime/Variable; FORM  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   OUTPUT OUTPUT    	  " BCF5MIGRATION BCF5MIGRATION % $ 	  ' CHKREGISTRY CHKREGISTRY * ) 	  , ADMINOBJ ADMINOBJ / . 	  1 THISSTEP THISSTEP 4 3 	  6 	DOC_TITLE 	DOC_TITLE 9 8 	  ; com.macromedia.SourceModTime   ��W@� pageContext #Lcoldfusion/runtime/NeoPageContext; @ A	  B getOut ()Ljavax/servlet/jsp/JspWriter; D E javax/servlet/jsp/PageContext G
 H F parent Ljavax/servlet/jsp/tagext/Tag; J K	  L 

 N _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V P Q
  R SKIP T 	FORM.SKIP V  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z X Y
  Z 
	 \ java/lang/String ^ MIGRATIONSTATUS ` skipped b _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V d e
  f 
ISCOMPLETE h 1 j ADVANCE l NEXTSTEP n migrationfinish p 
	
 r PREV t 	FORM.PREV v setupmessage x 
 z NEXT | 	FORM.NEXT ~ started � 



 � *coldfusion/runtime/TransientVariableHolder � &(Lcoldfusion/runtime/NeoPageContext;)V  �
 � � (class$coldfusion$tagext$lang$RegistryTag Ljava/lang/Class; "coldfusion.tagext.lang.RegistryTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/RegistryTag � 
cfregistry � action � GET � _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 	setAction (Ljava/lang/String;)V � �
 � � branch � =hkey_local_machine\software\allaire\coldfusion\currentversion � 	setBranch � �
 � � type � String � setType � �
 � � entry � RootDirectory � setEntry � �
 � � variable � chkRegistry � setVariable � �
 � � 	_emptyTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t7 [Ljava/lang/String; Any � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � CFCATCH � bind '(Ljava/lang/String;Ljava/lang/Object;)V � �
 � � unbind � 
 � � 	component � CFIDE.adminapi.administrator � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
  � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � getAdminProperty � java/lang/Object � 
migrateCF5 � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag � � �	  "coldfusion/tagext/lang/ImportedTag l10n 	../cftags admin	 setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
 &coldfusion/runtime/AttributeCollection id 	doc_title var ([Ljava/lang/Object;)V 
 setAttributecollection (Ljava/util/Map;)V  coldfusion/tagext/lang/ModuleTag
 	hasEndTag (Z)V !
" 
doStartTag ()I$%
& 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;()
 * CFMX Migration, write. � java/io/Writer0
1/ doAfterBody3%
4 _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;67
 8 doEndTag:% #javax/servlet/jsp/tagext/TagSupport<
=; doCatch (Ljava/lang/Throwable;)V?@
A 	doFinallyC 
D export_appletsF Exporting AppletsH mig_skipJ SkipL mig_backN BackP mig_continueR NextT mig_skip_warnV (Are you sure you want to skip migration?X &class$coldfusion$tagext$lang$CustomTag  coldfusion.tagext.lang.CustomTag[Z �	 ]  coldfusion/tagext/lang/CustomTag_ wrappera '(Ljava/lang/String;Ljava/lang/String;)Vc
`d titlef _autoscalarizeh �
 i _arrayAssign &(Ljava/lang/Object;)Ljava/lang/Object;kl
 m texto  q panels 	migrationu $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTagxw �	 z coldfusion/tagext/io/OutputTag|
}& �
  		<table border="0" cellpadding="0" cellspacing="0">
  		<tr>
  			<td width="20">&nbsp;</td>
  			<td colspan="3">
			<font class="sentance">
  			 	mig_intro�V
				ColdFusion MX will now migrate existing settings and resources, 
				including data sources, custom tags, and Verity collections. 
				NOTE: If you skip this step, applications that require 
				these resources will not run correctly until you have defined 
				them in the ColdFusion MX Administrator.
				<br /><br /> 
				If you require additional data before continuing, you can stop the 
				Migration Wizard at any time. When you are ready to continue, restart 
				the ColdFusion MX Administrator and the wizard will continue from where you stopped.				
				<br /><br /> 
			� 	</font>
� _boolean (Ljava/lang/Object;)Z�� coldfusion/runtime/Cast�
�� isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z��
 � _Object (Z)Ljava/lang/Object;��
�� windows� SERVER� OS� NAME� _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;��
 � _String &(Ljava/lang/Object;)Ljava/lang/String;��
�� REFindNoCase 9(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;��
 � !
<font class="sentance">
<b>
	� �
		Note: please copy the file odbc.ini and cf.registry from the registry folder in your ColdFusion 5 install directory 
		(i.e.  /opt/coldfusion/registry) to � 
COLDFUSION� ROOTDIR� 5/registry. Then restart ColdFusion MX to continue.
	� 
</b>
</font>
� V			
  			</td>
  		</tr>
  		<tr><td>&nbsp;</td>
  		</tr>
  		</table>
  		
		� REQUEST� PREVBTN� true� :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V d�
 � 
		� SKIPBTN� NEXTBTN� 

	�
}4 coldfusion/tagext/QueryLoop�
�;
�A
}D metaData Ljava/lang/Object;��	 � varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage ()Ljava/lang/Object; out Ljavax/servlet/jsp/JspWriter; value t4 ,Lcoldfusion/runtime/TransientVariableHolder; 	registry0 $Lcoldfusion/tagext/lang/RegistryTag; t6 #Lcoldfusion/runtime/AbortException; t8 Ljava/lang/Exception; __cfcatchThrowable0 Ljava/lang/Throwable; t10 t11 module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 I t14 t15 t16 t17 t18 t19 module2 mode2 t22 t23 t24 t25 t26 t27 module3 mode3 t30 t31 t32 t33 t34 t35 module4 mode4 t38 t39 t40 t41 t42 t43 module5 mode5 t46 t47 t48 t49 t50 t51 module6 mode6 t54 t55 t56 t57 t58 t59 module10 "Lcoldfusion/tagext/lang/CustomTag; mode10 output9  Lcoldfusion/tagext/io/OutputTag; mode9 module7 mode7 t66 t67 t68 t69 t70 t71 module8 mode8 t74 t75 t76 t77 t78 t79 t80 t81 t82 t83 t84 t85 t86 t87 t88 t89 LineNumberTable !coldfusion/runtime/AbortException: java/lang/Exception< java/lang/Throwable> <clinit> getMetadata 1                 $     )     .     3     8     � �    � �    � �   Z �   w �   ��           #     *� 
�                       �     [*+,� **+,� � **!+,� � #**&+,� � (**++,� � -**0+,� � 2**5+,� � 7**:+,� � <�            [       [��    [��  ��    i  Z  
�*� C� IL*� MN*+O� S**� UW� [� u*+]� S**� #� _YaSc� g*+]� S**� 7� _YiSk� g*+]� S**� 7� _YmSk� g*+]� S**� 7� _YoSq� g*+s� S� �**� uw� [� [*+]� S**� 7� _YiSk� g*+]� S**� 7� _YmSk� g*+]� S**� 7� _YoSy� g*+{� S� g**� }� [� X*+]� S**� #� _YaS�� g*+]� S**� 7� _YiSk� g*+]� S**� 7� _YmSk� g*+{� S*+�� S� �Y*� C� �:*+{� S*� �-� �� �:���� �� ����� �� ����� �� ����� �� ����� �� �� ș :� ^�*+]� S� Q� @:�:� �:		� Ը ت   $           �	� �*+]� S� �� � :
� 
�:� �*+O� S*� 2*�� � �*� (***� 2� ��� �Y�S� �� �*+O� S*�-� ��:
��Y� �YSYSYSYS���#�'Y6� 6*+�+L+-�2�5���� � :� �:*+�9L��>� :� #�� � #:�B� � :� �:�E�*+{� S*�-� ��:
��Y� �YSYGSYSYGS���#�'Y6� 6*+�+L+I�2�5���� � :� �:*+�9L��>� :� #�� � #:�B� � :� �:�E�*+{� S*�-� ��:
��Y� �YSYKSYSYKS���#�'Y6� 6*+�+L+M�2�5���� � :� �:*+�9L��>� : � # �� � #:!!�B� � :"� "�:#�E�#*+{� S*�-� ��:$$
�$�Y� �YSYOSYSYOS��$�#$�'Y6%� 6*$%+�+L+Q�2$�5���� � :&� &�:'*%+�9L�'$�>� :(� #(�� � #:)$)�B� � :*� *�:+$�E�+*+{� S*�-� ��:,,
�,�Y� �YSYSSYSYSS��,�#,�'Y6-� 6*,-+�+L+U�2,�5���� � :.� .�:/*-+�9L�/,�>� :0� #0�� � #:1,1�B� � :2� 2�:3,�E�3*+{� S*�-� ��:44
�4�Y� �YSYWSYSYWS��4�#4�'Y65� 6*45+�+L+Y�24�5���� � :6� 6�:7*5+�9L�74�>� :8� #8�� � #:949�B� � ::� :�:;4�E�;*+{� S*�^
-� ��`:<<b�e<�Y� �YgSY**� <�j�nSYpSYr�nSYtSYv�nS��<�#<�'Y6=�*<=+�+L*+]� S*�{	<� ��}:>>�~Y6?�z+��2*�>� ��:@@
�@�Y� �YSY�S��@�#@�'Y6A� 6*@A+�+L+��2@�5���� � :B� B�:C*A+�9L�C@�>� :D� ,��:�rD�� � #:E@E�B� � :F� F�:G@�E�G+��2**� (�jY��� W**� -�����Y��� ,W�*�� _Y�SY�S�������������� �+��2*�>� ��:HH
�H�Y� �YSY�S��H�#H�'Y6I� [*HI+�+L+��2+*�� _Y�SY�S�����2+��2H�5��Ϩ � :J� J�:K*I+�9L�KH�>� :L� ,� Ѩ ��,L�� � #:MHM�B� � :N� N�:OH�E�O+��2+��2*�� _Y�S���*+�� S*�� _Y�S���*+�� S*�� _Y�S���*+Ƕ S>�Ț��>��� :P� )� L� �P�� � #:Q>Q�̨ � :R� R�:S>�ͩS*+{� S<�5��� � :T� T�:U*=+�9L�U<�>� :V� #V�� � #:W<W�B� � :X� X�:Y<�E�Y�  t��;t��=t-0  ���  �?�&,  ���  ���?���  b{�  W��?W��  *CI  ou?~�  �  �7=?�FL  ���  � ?�  17  fl?u{  	9	w	}  	.	�	�?	.	�	�  �
T
Z?�
c
i  �
�
�  �
�
�?�
�
�      � Z  
�      
���   
���   
� J K   
���   
���   
���   
� ��   
���   
��� 	  
��� 
  
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���   
���    
��� !  
��� "  
� � #  
�� $  
�� %  
�� &  
�� '  
�� (  
�� )  
�� *  
�� +  
�	� ,  
�
� -  
�� .  
�� /  
�� 0  
�� 1  
�� 2  
�� 3  
�� 4  
�� 5  
�� 6  
�� 7  
�� 8  
�� 9  
�� :  
�� ;  
� <  
�� =  
� >  
�� ?  
�� @  
� � A  
�!� B  
�"� C  
�#� D  
�$� E  
�%� F  
�&� G  
�'� H  
�(� I  
�)� J  
�*� K  
�+� L  
�,� M  
�-� N  
�.� O  
�/� P  
�0� Q  
�1� R  
�2� S  
�3� T  
�4� U  
�5� V  
�6� W  
�7� X  
�8� Y9  � �             #  8  8  *  *  =  R  R  D  D  W  l  l  ^  ^  q  �  �  x  x  �  � 	 � 	 � 	 � 	 � 	 � 	 � 
 � 
 � 
 � 
 � 
 �  �  �  �  �  �  �  �  �  �  �  �    �        % : : , , ? T T F F Y  �  � 	  ` t � � � � � { �  g A M  O  L  L  H \ !l ![ ![ !W  H u "� $� $� $| $= $s % %� %D % %; &G &l & &� & ' '4 '� '� '� (� (� (� (] (� )� )� )d )& )X *X *X *l *l *{ *{ *� *� +� 1" 1� 1� <� =� =� =� =� =� =� =� =� =� =� =� =� =� =� =� =� =� =� =	 @	C @	K B	K B	J @	h B� @	� C� =	� F	� V	� V	� V	� V	� V

 W

 W	� W	� W
 W
& X
& X
 X
 X
, X� +
z Z- *    @      \     >�� �� �� _Y�S� � � ��\� ��^y� ��{�Y� ���ѱ           >     A�     "     �Ѱ                      =    >