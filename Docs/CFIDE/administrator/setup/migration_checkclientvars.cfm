����  -� 
SourceFile [C:\blackstone_final\cfusion\wwwroot\CFIDE\administrator\setup\migration_checkclientvars.cfm *cfmigration_checkclientvars2ecfm1352408731  coldfusion/runtime/CFPage  <init> ()V  
  	 this ,Lcfmigration_checkclientvars2ecfm1352408731; LocalVariableTable Code bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   FORM Lcoldfusion/runtime/Variable; FORM  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   	DOC_TITLE 	DOC_TITLE    	  " OUTPUT OUTPUT % $ 	  ' THISSTEP THISSTEP * ) 	  , CONFIRMCLIENTMIGRATION CONFIRMCLIENTMIGRATION / . 	  1 com.macromedia.SourceModTime   ����p pageContext #Lcoldfusion/runtime/NeoPageContext; 6 7	  8 getOut ()Ljavax/servlet/jsp/JspWriter; : ; javax/servlet/jsp/PageContext =
 > < parent Ljavax/servlet/jsp/tagext/Tag; @ A	  B 

 D _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V F G
  H BACK J 	FORM.BACK L  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z N O
  P 
	 R java/lang/String T 
ISCOMPLETE V 1 X _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V Z [
  \ ADVANCE ^ NEXTSTEP ` 	migration b 
 d SKIP f 	FORM.SKIP h EXPORT j CLIENTVARSETTINGS l MIGRATECLIENTVARS n false p NEXT r 	FORM.NEXT t _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; v w
  x set (Ljava/lang/Object;)V z { coldfusion/runtime/Variable }
 ~ | -OUTPUT.EXPORT.CLIENTVARSETTINGS.CLIENTSTORAGE � isDefinedCanonicalName (Ljava/lang/String;)Z � �
  � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � CLIENTSTORAGE � D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; v �
  � Registry � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � true � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � 	../cftags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � java/lang/Object � id � checkClientVarmigration_title � var � 	doc_title � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � 1CFMX Migration: Confirm Client Variable Migration � write (Ljava/lang/String;)V � � java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � 
back_title � back � Back � 
skip_title � skip Don't Migrate continue_title Continue Next	 $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag �	  coldfusion/tagext/io/OutputTag
 � &class$coldfusion$tagext$lang$CustomTag  coldfusion.tagext.lang.CustomTag �	   coldfusion/tagext/lang/CustomTag wrapper '(Ljava/lang/String;Ljava/lang/String;)V �
 title _arrayAssign &(Ljava/lang/Object;)Ljava/lang/Object;!"
 # panel% 

<p class="sentance">
' 
corba_desc).
	ColdFusion has detected that client variables are being stored in the registry. 
	This migration may take a long time. Unless you are storing client data that must 
	be preserved, Macromedia recommends that you do not migrate these variables.	
	<br />
	Do you want to migrate client variables?
+ �
</p>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td colspan="2">
	<font class="sentance">
		- MigrateClientVariables/ Migrate Client Variables1 �
	</font>
	</td>
</tr>
<tr>
	<td colspan="2">
	<font class="sentance">
		<input type="Radio" id="trueClient" name="migrateClientVars" value="true"> 
		<label for="trueClient">
		3 yes_migrateClientVars5 $<b>Yes</b>: Migrate client variables7 �
		</label>
		<br />
		<input type="Radio" id="falseClient" name="migrateClientVars" value="false" checked> 
		<label for="falseClient">
		9 no_migrateClientVars; *<b>No</b>: Do not migrate client variables= 5
		</label>
	</font>
	</td>
</tr>

 </table>	
? REQUESTA PREVBTNC :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V ZE
 F NEXTBTNH �

<br clear="left">
<script>
	if(document.forms['wzrd'].clientvars_continue != null && document.forms['wzrd'].clientvars_continue != "undefined")
	{  document.forms['wzrd'].clientvars_continue.focus(); }	
</script>
J
 � coldfusion/tagext/QueryLoopM
N �
N �
 � 


R metaData Ljava/lang/Object;TU	 V varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage ()Ljava/lang/Object; out Ljavax/servlet/jsp/JspWriter; value module0 $Lcoldfusion/tagext/lang/ImportedTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module1 mode1 t14 t15 t16 t17 t18 t19 module2 mode2 t22 t23 t24 t25 t26 t27 module3 mode3 t30 t31 t32 t33 t34 t35 output9  Lcoldfusion/tagext/io/OutputTag; mode9 module8 "Lcoldfusion/tagext/lang/CustomTag; mode8 module4 mode4 t42 t43 t44 t45 t46 t47 module5 mode5 t50 t51 t52 t53 t54 t55 module6 mode6 t58 t59 t60 t61 t62 t63 module7 mode7 t66 t67 t68 t69 t70 t71 t72 t73 t74 t75 t76 t77 t78 t79 t80 t81 LineNumberTable java/lang/Throwable� <clinit> getMetadata 1     	            $     )     .     � �    �    �   TU           #     *� 
�                       u     C*+,� **+,� � **!+,� � #**&+,� � (**++,� � -**0+,� � 2�            C       CXY    CZ[  \]    
 	 R  	v*� 9� ?L*� CN*+E� I**� KM� Q� [*+S� I**� -� UYWSY� ]*+S� I**� -� UY_SY� ]*+S� I**� -� UYaSc� ]*+e� I� �**� gi� Q� 1*+S� I**� (� UYkSYmSYoSq� ]*+e� I� p**� su� Q� a*+S� I**� (� UYkSYmSYoS*� UYoS� y� ]**� -� UYWSY� ]**� -� UY_SY� ]*+e� I*+E� I*� 2q� *+e� I*�� �� �Y� �� -W**� (� UYkSYmSY�S� ��� ��~�� �� �� *+S� I*� 2�� *+e� I*+E� I**� 2� �� ��� A*+S� I**� -� UYWSY� ]*+S� I**� -� UY_SY� ]*+e� I��*+E� I*� �-� �� �:���� �� �Y� �Y�SY�SY�SY�S� ˶ �� �� �Y6� 5*+� �L+߶ �� ���� � :� �:*+� �L�� �� :� #�� � #:		� �� � :
� 
�:� ��*+e� I*� �-� �� �:���� �� �Y� �Y�SY�SY�SY�S� ˶ �� �� �Y6� 5*+� �L+�� �� ���� � :� �:*+� �L�� �� :� #�� � #:� �� � :� �:� ��*+e� I*� �-� �� �:���� �� �Y� �Y�SY SY�SYS� ˶ �� �� �Y6� 6*+� �L+� �� ���� � :� �:*+� �L�� �� :� #�� � #:� �� � :� �:� ��*+e� I*� �-� �� �:���� �� �Y� �Y�SYSY�SYS� ˶ �� �� �Y6� 6*+� �L+
� �� ���� � :� �:*+� �L�� �� : � # �� � #:!!� �� � :"� "�:#� ��#*+e� I*�	-� ��:$$�Y6%�!*+e� I*�$� ��:&&�&� �Y� �Y SY**� #� ��$SY&SYc�$S� ˶ �&� �&� �Y6'�t*&'+� �L+(� �*� �&� �� �:((���� �(� �Y� �Y�SY*S� ˶ �(� �(� �Y6)� 6*()+� �L+,� �(� ���� � :*� *�:+*)+� �L�+(� �� :,� ,�˨�J,�� � #:-(-� �� � :.� .�:/(� ��/+.� �*� �&� �� �:00���� �0� �Y� �Y�SY0S� ˶ �0� �0� �Y61� 6*01+� �L+2� �0� ���� � :2� 2�:3*1+� �L�30� �� :4� ,�	�D��4�� � #:505� �� � :6� 6�:70� ��7+4� �*� �&� �� �:88���� �8� �Y� �Y�SY6S� ˶ �8� �8� �Y69� 6*89+� �L+8� �8� ���� � ::� :�:;*9+� �L�;8� �� :<� ,�F����<�� � #:=8=� �� � :>� >�:?8� ��?+:� �*� �&� �� �:@@���� �@� �Y� �Y�SY<S� ˶ �@� �@� �Y6A� 6*@A+� �L+>� �@� ���� � :B� B�:C*A+� �L�C@� �� :D� ,� �� ��D�� � #:E@E� �� � :F� F�:G@� ��G+@� �*B� UYDS��G*+e� I*B� UYIS��G+K� �&� ���� � :H� H�:I*'+� �L�I&� �� :J� &� jJ�� � #:K&K� �� � :L� L�:M&� ��M*+e� I$�L���$�O� :N� #N�� � #:O$O�P� � :P� P�:Q$�Q�Q*+E� I*+S� I� >V\  3���3��  �  �BH��QW  ���  ���  ���  x���x��  ���  ���'-  ���  �������  Ohn  D���D��  +1  `f�ou  r��  g���g		  	?	E�	N	T      6 R  	v      	v^_   	v`U   	v @ A   	vab   	vcd   	vef   	vgU   	vhU   	vif 	  	vjf 
  	vkU   	vlb   	vmd   	vnf   	voU   	vpU   	vqf   	vrf   	vsU   	vtb   	vud   	vvf   	vwU   	vxU   	vyf   	vzf   	v{U   	v|b   	v}d   	v~f   	vU   	v�U    	v�f !  	v�f "  	v�U #  	v�� $  	v�d %  	v�� &  	v�d '  	v�b (  	v�d )  	v�f *  	v�U +  	v�U ,  	v�f -  	v�f .  	v�U /  	v�b 0  	v�d 1  	v�f 2  	v�U 3  	v�U 4  	v�f 5  	v�f 6  	v�U 7  	v�b 8  	v�d 9  	v�f :  	v�U ;  	v�U <  	v�f =  	v�f >  	v�U ?  	v�b @  	v�d A  	v�f B  	v�U C  	v�U D  	v�f E  	v�f F  	v�U G  	v�f H  	v�U I  	v�U J  	v�f K  	v�f L  	v�U M  	v�U N  	v�f O  	v�f P  	v�U Q�  ^ �             #  8  8  *  *  =  R  R  D  D  W  l  l  ^  ^  q  |  |  �  �  {  �  � 	 � 	 �  �  � 
 �  �  �  �  �  �  �  �  �    �     �   �  {   % 0 0 , , 5 = < < M h M M < | � � � � � < � � � � � � � � � � � � � � � �  $ H � � � �  � h � � � o + ]  h  �  2  �   !A "A "A "U "U "| "� %� %� %> +q 2� 2E 2  24 ;Y ; ;� ;� @ @� @� @� N� N� N� N� N� O� O� O� O� O "	 V� !	e W� � 	l Y    �      G     )�� �� �� ��� ��� �Y� �� ˳W�           )     �]     "     �W�                      3    4