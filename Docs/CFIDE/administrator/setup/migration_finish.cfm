����  -R 
SourceFile RC:\blackstone_final\cfusion\wwwroot\CFIDE\administrator\setup\migration_finish.cfm !cfmigration_finish2ecfm1804707259  coldfusion/runtime/CFPage  <init> ()V  
  	 this #Lcfmigration_finish2ecfm1804707259; LocalVariableTable Code bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   FINISH_TITLE Lcoldfusion/runtime/Variable; FINISH_TITLE  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   MIGRATEFLAG MIGRATEFLAG    	  " OUTPUT OUTPUT % $ 	  ' ADMINOBJ ADMINOBJ * ) 	  , com.macromedia.SourceModTime   %� pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	  3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/PageContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	  = 
 ? _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V A B
  C 	component E CFIDE.adminapi.administrator G CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; I J
  K set (Ljava/lang/Object;)V M N coldfusion/runtime/Variable P
 Q O _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; S T
  U getAdminProperty W java/lang/Object Y MigrationFlag [ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; ] ^
  _ 

 a MIGRATIONSTATUS c OUTPUT.MIGRATIONSTATUS e  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z g h
  i _Object (Z)Ljava/lang/Object; k l coldfusion/runtime/Cast n
 o m _boolean (Ljava/lang/Object;)Z q r
 o s java/lang/String u _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; w x
  y skipped { _compare '(Ljava/lang/Object;Ljava/lang/String;)D } ~
   
	 � (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � 	../cftags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � finish_title1 � var � finish_title � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � Migration Complete � write (Ljava/lang/String;)V � � java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � finish_title2 � Setup Complete � &class$coldfusion$tagext$lang$CustomTag  coldfusion.tagext.lang.CustomTag � � �	  �  coldfusion/tagext/lang/CustomTag � wrapper � '(Ljava/lang/String;Ljava/lang/String;)V � �
 � � title � _autoscalarize � T
  � _arrayAssign &(Ljava/lang/Object;)Ljava/lang/Object; � �
  � panel � documentation � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag � � �	  � coldfusion/tagext/io/OutputTag �
 � � 
	<p class="sentance">	
	
	 � 
	<b>  finish_migration $</b><p>

	<p class="sentance">
		 mig_uninstallCF �
			The migration wizard has successfully completed the migration of your ColdFusion 
			settings. The previous version of ColdFusion has not been removed.  
			Please use the uninstaller to remove the older version.
		 
	</p>

	
 OUTPUT.EXPORT.RESTRICTEDTAGS isDefinedCanonicalName (Ljava/lang/String;)Z
  EXPORT RESTRICTEDTAGS ArrayLen (Ljava/lang/Object;)I
  (I)Ljava/lang/Object; k
 o /OUTPUT.EXPORT.VERITYCOLLECTIONS.K2SERVERADDRESS VERITYCOLLECTIONS K2SERVERADDRESS! _String &(Ljava/lang/Object;)Ljava/lang/String;#$
 o% Trim &(Ljava/lang/String;)Ljava/lang/String;'(
 ) Len+
 , 
	<p class="sentance">
		. mig_restart0 W
			Note: You must restart ColdFusion MX for the following changes to take effect:
		2 
	</p>	
	4 	
	<ul>
	
	6 
		8 mig_restartForSandbox: Y
			<li>ColdFusion MX has migrated your restricted tags into a default sandbox.</li>
		< 	
	> 
	</ul>

	@ OUTPUT.EXPORT.VERITYCOLLECTIONSB _Map #(Ljava/lang/Object;)Ljava/util/Map;DE
 oF StructIsEmpty (Ljava/util/Map;)ZHI
 J OUTPUT.CF6.VERITY.COLLECTIONSL CF6N VERITYP COLLECTIONSR mig_veritynoteT:
			The ColdFusion Migration Wizard has created Verity collections of the same name in the default 
			collection folder. These collections are empty and you will need to be re-index them. If you 
			wish to have these collections in a different location use the ColdFusion MX Administrator to 
			delete and recreate the collections in the appropriate location.
			<br />
			For more information on new Verity features, refer to the 
			<a href="http://www.macromedia.com/support/documentation/en/coldfusion/" target="_blank">ColdFusion MX documentation.</a>
		V 

	</p>
	X mig_filesnoteZ�
			Note: ColdFusion MX has updated the corresponding settings. However, any other data files under your old 
			directory (such as databases, Custom Tags and CFX Tags), have not been copied and the 
			corresponding settings still point to their original locations. If you have such files, 
			make sure that you move them and update the settings before deleting your old installation directory.
		\ /CFIDE^ 
ExpandPath`(
 a $/gettingstarted/experience/index.cfmc concate(
 vf 
FileExistsh
 i 
		<p class="sentance">
			k mig_clickokexperiencem {
				Click <a href="../gettingstarted/experience/index.cfm">ok</a> to open the ColdFusion Getting Started Experience.
			o %
		</p>
		<p class="sentance">
			q mig_clickoks V
				Click <a href="index.cfm">here</a> to open the ColdFusion MX Administrator.
			u 
		</p>
	w q
				Click <a href="../gettingstarted/experience/index.cfm">ok</a> to open the ColdFusion MX Administrator.
			y 
	
	{ 
		
		<b>} finish_setup </b><p>
		� 
			<p class="sentance">
				� }
					Click <a href="../gettingstarted/experience/index.cfm">ok</a> to open the ColdFusion Getting Started Experience.
				� (
			</p>
			<p class="sentance">
				� mig_clickokadmin� X
					Click <a href="index.cfm">here</a> to access the ColdFusion Administrator. 
				� 
			</p>
		� >
					Click OK to open the ColdFusion MX Administrator.
				� 		

	� 

	� REQUEST� MIGRATIONFINISHED� true� _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V��
 � 
			
�
 � � coldfusion/tagext/QueryLoop�
� �
� �
 � � setAdminProperty� SetupWizardFlag� false� migrationFlag� MXMigrationFlag� 
migrateCF5� 
migrateCF6� metaData Ljava/lang/Object;��	 � varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage ()Ljava/lang/Object; out Ljavax/servlet/jsp/JspWriter; value module0 $Lcoldfusion/tagext/lang/ImportedTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module1 mode1 t14 t15 t16 t17 t18 t19 module16 "Lcoldfusion/tagext/lang/CustomTag; mode16 output15  Lcoldfusion/tagext/io/OutputTag; mode15 module2 mode2 t26 t27 t28 t29 t30 t31 module3 mode3 t34 t35 t36 t37 t38 t39 module4 mode4 t42 t43 t44 t45 t46 t47 module5 mode5 t50 t51 t52 t53 t54 t55 module6 mode6 t58 t59 t60 t61 t62 t63 module7 mode7 t66 t67 t68 t69 t70 t71 module8 mode8 t74 t75 t76 t77 t78 t79 module9 mode9 t82 t83 t84 t85 t86 t87 module10 mode10 t90 t91 t92 t93 t94 t95 module11 mode11 t98 t99 t100 t101 t102 t103 module12 mode12 t106 t107 t108 t109 t110 t111 module13 mode13 t114 t115 t116 t117 t118 t119 module14 mode14 t122 t123 t124 t125 t126 t127 t128 t129 t130 t131 t132 t133 t134 t135 t136 t137 LineNumberTable java/lang/ThrowableN <clinit> getMetadata 1                 $     )     � �    � �    � �   ��           #     *� 
�                       i     7*+,� **+,� � **!+,� � #**&+,� � (**++,� � -�            7       7��    7��  ��    �  �  	*� 4� :L*� >N*+@� D*� -*FH� L� R*� #***� -� VX� ZY\S� `� R*+b� D**� (df� j� pY� t� !W**� (� vYdS� z|� ��~� p� t� �*+�� D*� �-� �� �:���� �� �Y� ZY�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+�� �� Ț��� � :� �:*+� �L�� �� :� #�� � #:		� ը � :
� 
�:� ة*+@� D� �*+�� D*� �-� �� �:���� �� �Y� ZY�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+ܶ �� Ț��� � :� �:*+� �L�� �� :� #�� � #:� ը � :� �:� ة*+@� D*+b� D*� �-� �� �:�� �� �Y� ZY�SY**� � �� �SY�SY�� �S� �� �� �� �Y6��*+� �L*+@� D*� �� �� �:� �Y6�+�� �**� (df� j� pY� t� !W**� (� vYdS� z|� ��~� p� t�l+� �*� �� �� �:���� �� �Y� ZY�SYS� �� �� �� �Y6� 5*+� �L+�� �� Ț��� � :� �:*+� �L�� �� :� ,�z������ � #:� ը � :� �:� ة+� �*� �� �� �:  ���� � � �Y� ZY�SYS� �� � � � � �Y6!� 6* !+� �L+	� � � Ț��� � :"� "�:#*!+� �L�# � �� :$� ,�
��
ۨ$�� � #:% %� ը � :&� &�:' � ة'+� �*�� pY� t� "W**� (� vYSYS� z��Y� t� @W*�� pY� t� .W**� (� vYSY SY"S� z�&�*�-�� t� �+/� �*� �� �� �:((���� �(� �Y� ZY�SY1S� �� �(� �(� �Y6)� 6*()+� �L+3� �(� Ț��� � :*� *�:+*)+� �L�+(� �� :,� ,�	u�	��	�,�� � #:-(-� ը � :.� .�:/(� ة/+5� �+7� �*�� pY� t� "W**� (� vYSYS� z��� t� �*+9� D*� �� �� �:00���� �0� �Y� ZY�SY;S� �� �0� �0� �Y61� 6*01+� �L+=� �0� Ț��� � :2� 2�:3*1+� �L�30� �� :4� ,�n����4�� � #:505� ը � :6� 6�:70� ة7*+?� D+A� �*C�� pY� t� (W***� (� vYSY S� z�G�K�� pY� t� @W*M�� pY� t� .W***� (� vYOSYQSYSS� z�G�K�� p� t� �+/� �*� �� �� �:88���� �8� �Y� ZY�SYUS� �� �8� �8� �Y69� 6*89+� �L+W� �8� Ț��� � ::� :�:;*9+� �L�;8� �� :<� ,��?�w<�� � #:=8=� ը � :>� >�:?8� ة?+Y� �+/� �*� �� �� �:@@���� �@� �Y� ZY�SY[S� �� �@� �@� �Y6A� 6*@A+� �L+]� �@� Ț��� � :B� B�:C*A+� �L�C@� �� :D� ,�R�u��D�� � #:E@E� ը � :F� F�:G@� ةG+� �**_�bd�g�j��+l� �*� �� �� �:HH���� �H� �Y� ZY�SYnS� �� �H� �H� �Y6I� 6*HI+� �L+p� �H� Ț��� � :J� J�:K*I+� �L�KH� �� :L� ,�t����L�� � #:MHM� ը � :N� N�:OH� ةO+r� �*� �	� �� �:PP���� �P� �Y� ZY�SYtS� �� �P� �P� �Y6Q� 6*PQ+� �L+v� �P� Ț��� � :R� R�:S*Q+� �L�SP� �� :T� ,���ԨT�� � #:UPU� ը � :V� V�:WP� ةW+x� ŧ �+l� �*� �
� �� �:XX���� �X� �Y� ZY�SYtS� �� �X� �X� �Y6Y� 6*XY+� �L+z� �X� Ț��� � :Z� Z�:[*Y+� �L�[X� �� :\� ,���?\�� � #:]X]� ը � :^� ^�:_X� ة_+x� �*+|� D�B+~� �*� �� �� �:``���� �`� �Y� ZY�SY�S� �� �`� �`� �Y6a� 5*`a+� �L+ܶ �`� Ț��� � :b� b�:c*a+� �L�c`� �� :d� ,��3�kd�� � #:e`e� ը � :f� f�:g`� ةg+�� �**_�bd�g�j��+�� �*� �� �� �:hh���� �h� �Y� ZY�SYnS� �� �h� �h� �Y6i� 6*hi+� �L+�� �h� Ț��� � :j� j�:k*i+� �L�kh� �� :l� ,�2�U��l�� � #:mhm� ը � :n� n�:oh� ةo+�� �*� �� �� �:pp���� �p� �Y� ZY�SY�S� �� �p� �p� �Y6q� 6*pq+� �L+�� �p� Ț��� � :r� r�:s*q+� �L�sp� �� :t� ,�o����t�� � #:upu� ը � :v� v�:wp� ةw+�� ŧ �+�� �*� �� �� �:xx���� �x� �Y� ZY�SYtS� �� �x� �x� �Y6y� 6*xy+� �L+�� �x� Ț��� � :z� z�:{*y+� �L�{x� �� :|� ,� �� Ũ �|�� � #:}x}� ը � :~� ~�:x� ة+�� �*+�� D*+�� D*�� vY�S���*+�� D�������� :�� )� L� ���� � #:����� � :�� ��:�����*+@� D� Ț� � :�� ��:�*+� �L��� �� :�� #��� � #:��� ը � :�� ��:�� ة�*+b� D*� -*FH� L� R***� -� V�� ZY�SY�S� `W***� -� V�� ZY�SY�S� `W***� -� V�� ZY�SY�S� `W***� -� V�� ZY�SY�S� `W***� -� V�� ZY�SY�S� `W� 2 � � �   �"O �+1  ���  ���O���  ,DJ  !yO!��  �  �;AO�JP  0IO  %~�O%��  7PV  ,��O,��  ���  ~��O~��  Slr  H��OH��  	1	J	P  	&		�O	&	�	�  	�

  	�
B
HO	�
Q
W  
�
�
�  
�O
�$  ���  ���O���  s��  h��Oh��  6OU  +��O+��  "  �QWO�`f  ���O���  r�  g+1Og:@      f �  	      	��   	��   	 ; <   	��   	��   	��   	��   	��   	�� 	  	�� 
  	��   	��   	��   	��   	��   	��   	��   	��   	��   	��   	��   	��   	��   	��   	��   	��   	��   	��   	��   	��   	��   	��    	�� !  	�� "  	�� #  	�� $  	�� %  	�� &  	�� '  	�� (  	�� )  	�� *  	�� +  	�� ,  	�� -  	�� .  	�� /  	�� 0  	�� 1  	�� 2  	�� 3  	�� 4  	�� 5  	�� 6  	�� 7  	�� 8  	�� 9  	�� :  	�� ;  	�� <  	 � =  	� >  	� ?  	� @  	� A  	� B  	� C  	� D  	� E  		� F  	
� G  	� H  	� I  	� J  	� K  	� L  	� M  	� N  	� O  	� P  	� Q  	� R  	� S  	� T  	� U  	� V  	� W  	� X  	� Y  	� Z  	� [  	� \  	 � ]  	!� ^  	"� _  	#� `  	$� a  	%� b  	&� c  	'� d  	(� e  	)� f  	*� g  	+� h  	,� i  	-� j  	.� k  	/� l  	0� m  	1� n  	2� o  	3� p  	4� q  	5� r  	6� s  	7� t  	8� u  	9� v  	:� w  	;� x  	<� y  	=� z  	>� {  	?� |  	@� }  	A� ~  	B�   	C� �  	D� �  	E� �  	F� �  	G� �  	H� �  	I� �  	J� �  	K� �  	L� �M  � �             (  8  '  '  #    A  I  I  M  O  H  H  _  p  _  _  H  �  �  �  �  � B L 	~ 
� 
� 
S 
 
L 	 H  B B B U U | � � � � � � � � � � � � �  6 � � � � � a i h h z z z z h h � � � � � � � � � � � h �  : � �  h � "� %� %� %� %� %� %� %� %� % &A &� &� (� %� )� ,� ,� ,� ,� ,� ,� ,� ,� ,� ,� ,� ,� ,� , , ,
 ,
 ,
 ,
 ,� ,� ,� ,: ,n .� .A .� 6� , 88 :] : :� ?� B� B� B� B� B� B� B� B	 D	; D� D	� F	� I	� I	� I
h K
r M
� O
� O
y O5 Q
r M� B< SG U{ W� WN W	 W X X X X X X X$ XX Z} Z+ Z� \ _@ _� _� a� c� e e� ew g� c X~ iG U� � k� u� u� u� u� u� � w Q x] {_ {\ {\ {X zh |y | |g |g {� }� }� }� }� |� ~� ~� ~� ~� }� � � � � ~� �� �� �� �� X z    P      E     '�� �� �߸ �� ��� �� �� �Y� Z� ����           '     Q�     "     ���                      .    /