����  -� 
SourceFile GC:\blackstone_final\cfusion\wwwroot\CFIDE\administrator\Application.cfm cfApplication2ecfm105811000  coldfusion/runtime/CFPage  <init> ()V  
  	 this LcfApplication2ecfm105811000; LocalVariableTable Code bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   FORM Lcoldfusion/runtime/Variable; FORM  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   FACTORY FACTORY    	  " CFCATCH CFCATCH % $ 	  ' LOGINTEMPLATE LOGINTEMPLATE * ) 	  , INVALIDPASSWORDENTERED INVALIDPASSWORDENTERED / . 	  1 CFIDEFULLPATH CFIDEFULLPATH 4 3 	  6  APPLICATIONSOURCE_LOCK2IUNGEDSW9  APPLICATIONSOURCE_LOCK2IUNGEDSW9 9 8 	  ; POS POS > = 	  @ 	CFIDEPATH 	CFIDEPATH C B 	  E LOCALE LOCALE H G 	  J 	URLENCHAR 	URLENCHAR M L 	  O GOLOCALE GOLOCALE R Q 	  T 
BMIGRATION 
BMIGRATION W V 	  Y ROLEHASH ROLEHASH \ [ 	  ^ URL URL a ` 	  c BMXMIGRATION BMXMIGRATION f e 	  h ADMIN ADMIN k j 	  m SEQUELINKEXISTS SEQUELINKEXISTS p o 	  r ADMINOBJ ADMINOBJ u t 	  w BSETUP BSETUP z y 	  | com.macromedia.SourceModTime   �v�c� pageContext #Lcoldfusion/runtime/NeoPageContext; � �	  � getOut ()Ljavax/servlet/jsp/JspWriter; � � javax/servlet/jsp/PageContext �
 � � parent Ljavax/servlet/jsp/tagext/Tag; � �	  � 'class$coldfusion$tagext$lang$SettingTag Ljava/lang/Class; !coldfusion.tagext.lang.SettingTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � !coldfusion/tagext/lang/SettingTag � 	cfsetting � requesttimeout � 300 � _double (Ljava/lang/String;)D � � coldfusion/runtime/Cast �
 � � _validateTagAttrValue ((Ljava/lang/String;Ljava/lang/String;D)D � �
  � setRequestTimeout (D)V � �
 � � showdebugoutput � no � _boolean (Ljava/lang/String;)Z � �
 � � ((Ljava/lang/String;Ljava/lang/String;Z)Z � �
  � setShowdebugoutput (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 
 � _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V � �
  � $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag � � �	  � coldfusion/tagext/io/SilentTag � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � UTF-8 � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � setEncoding '(Ljava/lang/String;Ljava/lang/String;)V � �
  � Form � LOGIN � 	URL.LOGIN �   � checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V � �
  � &class$coldfusion$tagext$net$ContentTag  coldfusion.tagext.net.ContentTag � � �	  �  coldfusion/tagext/net/ContentTag � 	cfcontent � type � text/html; charset=UTF-8  J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; �
  setType (Ljava/lang/String;)V
 � 	_emptyTag	 �
 
 REQUEST java/lang/String THISURL GetContextRoot ()Ljava/lang/String;
  /CFIDE/administrator/ concat &(Ljava/lang/String;)Ljava/lang/String;
 _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
  	GRAYLIGHT  E2E6E7" 
GRAYMEDIUM$ C6CFD0& GRAYDARK( 6C7A83* 	BLUELIGHT, F3F7F7. 
BLUEMEDIUM0 E9F0F22 
BLUEBRIGHT4 0898DB6 BLUEDARK8 003399: GREENMEDIUM< 008A00> YELLOW@ FFFF99B javaD java.util.LocaleF CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;HI
 J 
getDefaultL java/lang/ObjectN _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;PQ
 R getLanguageT NATIVECFXENABLEDV coldfusion.server.SystemInfoX IsCFXEnabledZ (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag]\ �	 _ "coldfusion/tagext/lang/ImportedTaga inputfilterc cftags/e adming setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Vij
bk &coldfusion/runtime/AttributeCollectionm scopeso FORM,URLq ([Ljava/lang/Object;)V s
nt setAttributecollection (Ljava/util/Map;)Vvw  coldfusion/tagext/lang/ModuleTagy
zx 	hasEndTag| �
z}
z � doAfterBody� �
z� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � doEndTag� � #javax/servlet/jsp/tagext/TagSupport�
�� doCatch (Ljava/lang/Throwable;)V��
z� 	doFinally� 
z� *coldfusion/runtime/TransientVariableHolder� &(Lcoldfusion/runtime/NeoPageContext;)V �
�� +class$coldfusion$tagext$lang$ApplicationTag %coldfusion.tagext.lang.ApplicationTag�� �	 � %coldfusion/tagext/lang/ApplicationTag� cfapplication� sessiontimeout�@       CreateTimeSpan (DDDD)D��
 � setSessiontimeout� �
�� name� cfadmin�i
�� sessionmanagement� Yes� setSessionmanagement� �
�� unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;�� coldfusion/runtime/NeoException�
�� t20 [Ljava/lang/String; Any���	 � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I��
�� bind '(Ljava/lang/String;Ljava/lang/Object;)V��
�� unbind� 
�� isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z��
 � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;��
 � _String &(Ljava/lang/Object;)Ljava/lang/String;��
 �� Trim�
 � LCase�
 � 
LOCALEFILE� java/lang/StringBuffer� resources/cfadmin_� 
�� _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;��
 � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;��
�� .xml� toString�
O�  coldfusion.server.ServiceFactory� DEBUGGER� _get��
 � getDebuggingService� RUNTIME  getRuntimeService VERITY getVerityService 	MAILSPOOL getMailSpoolService
 SECURITY getSecurityService CLIENTSCOPE getClientScopeService 	SCHEDULER getCronService LOGGING getLoggingService GRAPHING getGraphingService SQLEXECUTIVE  getDataSourceService" XMLRPC$ getXMLRPCService& CAR( getArchiveDeployService* LICENSE, getLicenseService. GATEWAY0 getEventProcessorService2 METRICS4 getMetricsService6 t21 any98�	 ; ../= 
ExpandPath?
 @ CFIDEB 
FindNoCase '(Ljava/lang/String;Ljava/lang/String;)IDE
 F _Object (I)Ljava/lang/Object;HI
 �J (Ljava/lang/Object;)D �L
 �M _int (D)IOP
 �Q Mid ((Ljava/lang/String;II)Ljava/lang/String;ST
 U MAPPINGSW _Map #(Ljava/lang/Object;)Ljava/util/Map;YZ
 �[ /CFIDE] StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z_`
 a (Z)Ljava/lang/Object;Hc
 �d (Ljava/lang/Object;)Z �f
 �g _resolvei�
 j _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;lm
 n (D)Z �p
 �q _LhsResolves�
 t _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Vvw
 x 	componentz CFIDE.adminapi.administrator| getAdminProperty~ SetupWizardFlag� MigrationFlag� MXMigrationFlag� 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag�� �	 � !coldfusion/tagext/lang/IncludeTag� 	cfinclude� template� include/udflibrary.cfm� setTemplate�
�� coldfusion/tagext/GenericTag�
�� 



� CFAdmin� getAdminHash� IsUserInRole�f
 � 
	� isAdminSecurityEnabled� CFADMINPASSWORD� FORM.CFADMINPASSWORD�  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z��
 � 
		� login� %coldfusion/runtime/ArgumentCollection� adminPassword� salt� rdsPasswordAllowed� SALT� false� )([Ljava/lang/Object;[Ljava/lang/Object;)V �
�� G(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;P�
 � 
			� true� 
		
		� 

	� login_migration.cfm� 	login.cfm� 
	
		� t22 MissingInclude���	 � dump� /WEB-INF/cftags� cfdump� var� J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; ��
 � 
				� 
					� t23��	 � 
						� ../../� %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTag�� �	 � coldfusion/tagext/lang/AbortTag� 

� 	__HTSWT_0 Lcoldfusion/util/FastHashtable;��	 � __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I��
 � _� coldfusion/runtime/SwitchTable 
 	 JA addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;
 oidfb7980dfge4543lkj	 CGI SCRIPT_NAME setup 
		
			

			 MIGRATIONOBJ -CFIDE.administrator.components.migration.base 

			
			 			
			
			 setup/index.cfm 			
		 sequelinkExists Lcoldfusion/runtime/UDFMethod; /cfApplication2ecfm105811000$funcSEQUELINKEXISTS!
" 	 	 $ sequelinkExists& registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V()
 * metaData Ljava/lang/Object;,-	 . 	Functions0	". varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage ()Ljava/lang/Object; out Ljavax/servlet/jsp/JspWriter; value setting0 #Lcoldfusion/tagext/lang/SettingTag; silent7  Lcoldfusion/tagext/io/SilentTag; mode7 I content2 "Lcoldfusion/tagext/net/ContentTag; t8 module3 $Lcoldfusion/tagext/lang/ImportedTag; mode3 t11 Ljava/lang/Throwable; t12 t13 t14 t15 t16 t17 ,Lcoldfusion/runtime/TransientVariableHolder; application4 'Lcoldfusion/tagext/lang/ApplicationTag; t19 #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable0 application5 t24 t25 t26 t27 t28 t29 __cfcatchThrowable1 t31 t32 include6 #Lcoldfusion/tagext/lang/IncludeTag; t34 t35 t36 t37 include8 t39 t40 t41 __cfcatchThrowable3 module9 t44 t45 	include10 t47 t48 t49 __cfcatchThrowable2 	include11 t52 t53 t54 t55 t56 abort12 !Lcoldfusion/tagext/lang/AbortTag; 	include13 abort14 LineNumberTable java/lang/Throwable !coldfusion/runtime/AbortException� java/lang/Exception� <clinit> registerUDFs getMetadata 1     "            $     )     .     3     8     =     B     G     L     Q     V     [     `     e     j     o     t     y     � �    � �    � �   \ �   � �   ��   8�   � �   ��   ��   � �   ��       ,-           #     *� 
�                      )     �*+,� **+,� � **!+,� � #**&+,� � (**++,� � -**0+,� � 2**5+,� � 7**:+,� � <**?+,� � A**D+,� � F**I+,� � K**N+,� � P**S+,� � U**X+,� � Z**]+,� � _**b+,� � d**g+,� � i**l+,� � n**q+,� � s**v+,� � x**{+,� � }�            �       �34    �56  78    �  <  �*� �� �L*� �N*� �-� �� �:���� �� �� ����� �� �� �� Ǚ �*+ɶ �*+ɶ �*� �-� �� �:� �Y6��*+� �L*� P޶ �*b޶ �*�޶ �**� d��� �*� �� �� �:������ :�n�*�YS*���*�Y!S#�*�Y%S'�*�Y)S+�*�Y-S/�*�Y1S3�*�Y5S7�*�Y9S;�*�Y=S?�*�YASC�*�YIS***EG�KM�O�SU�O�S�*�YWS**EY�K[�O�S�*�`� ��b:		dfh�l	�nY�OYpSYrS�u�{	�~	�Y6
� /*	
+� �L	������ � :� �:*
+��L�	��� :� &���� � #:	��� � :� �:	�����Y*� ���:*��� ���:��*���� ������������� �� ����� :� ��*�� ~� m:�:��:�ĸȪ   Q           &��*��� ���:�������� :� ���� �� � :� �:�ϩ**� K�ә $*�YIS**� K�׸۸޸�*�Y�S��Y��*�YIS���۶�����*� #*E��K� �*�Y�S***� #����O�S�*�YS***� #���O�S�*�YS***� #���O�S�*�Y	S***� #���O�S�*�YS***� #���O�S�*�YS***� #���O�S�*�YS***� #���O�S�*�YS***� #���O�S�*�YS***� #���O�S�*�Y!S***� #��#�O�S�*�Y%S***� #��'�O�S�*�Y)S***� #��+�O�S�*�Y-S***� #��/�O�S�*�Y1S***� #��3�O�S���Y*� ���:*�Y5S***� #��7�O�S�� K� ::�:��:�<�Ȫ               &�̧ �� � :� �: �ϩ *� 7*>�A� �*� AC**� 7�׸۸G�K� �*� F**� 7�׸�**� A�׸Ng�R�V� �**�YSYXS���\^�b��eY�h� ;W**� F�׸�*�YSYXS�k^�o�۸G��r��e�h� 9**�YSYXS�u�OY^S**� F�׸�C��y*� x*{}�K� �*� }***� x���OY�S�S� �*� Z***� x���OY�S�S� �*� i***� x���OY�S�S� �*��� ���:!!������!�� :"� "�����S� � :#� #�:$*+��L�$��� �*+�� �*� _�**�YS�k��O�S�۶� �*+ɶ �***� _�׶���N*+�� �**�YS�k��O�SY�h� W**� �����e�h� �*+�� �*� n**{}�K���Y�Y�SY�SY�S�OY*�Y�S��SY*�Y�S��SY�S���ö �*+�� �**� n�׸h�� *+Ŷ �*� 2Ƕ �*+�� �*+�� ͧ u**�YS�k��O�S�h�� Q*+ɶ �*� n**{}�K���Y�Y�SY�S�OY�SY�S���ö �*+�� �*+˶ �***� _�׶����*+�� �**� }��Y�h� W**� Z��Y�h� W**� i�׸h�  *+Ŷ �*� -Ͷ �*+�� ͧ *+Ŷ �*� -϶ �*+�� �*+Ѷ ͻ�Y*� ���:%*+Ŷ �*��-� ���:&&��**� -�׸۸��&�� :'��'�*+Ŷ ͨϧ�:((�:))��:**�ָȪ    �           %&*��*+Ŷ �*�`	-� ��b:++���l��**� (�׸�W+�nY�OY�SY**� (��S�u�{+�~+� Ǚ :,�/,�*+� ͻ�Y*� ���:-*+� �*��
-� ���:..��>**� -�׸۶���.�� :/� �� �/�*+� ͨ �� �:00�:11��:22��Ȫ    p           -&2��*+� �*��-� ���:33���**� -�׸۶���3�� :4� %� G4�*+� ͧ 1�� � :5� 5�:6-�ϩ6*+Ŷ ͧ )�� � :7� 7�:8%�ϩ8*+�� �*��-� ���:99�� �*+�� �*+ɶ �*+�� Ͳ�*�YIS�����   D           *+�� �*� U�*�YIS���۶� �*+�� ͧ *+�� �*� U� �*+�� ͧ *+�� �*� <
� �*+˶ �**� }��Y�h� W**� Z��Y�h� W**� i�׸h� �*+�� �*�YS�����G��r�� �*+� �*�YS*{�K�*+� �*+Ŷ �*�YqS**� s�׶*+� �*��-� ���:::�����:�� �*+Ŷ �*��-� ���:;;�� �*+� �*+�� �*+�� �� ?QW  4���4��  �������  :@�:E�z}   o)/  
�
�
��
�
�
�����������|  
���      Z <  �      �9:   �;-   � � �   �<=   �>?   �@A   �BC   �D-   �EF 	  �GA 
  �HI   �J-   �K-   �LI   �MI   �N-   �OP   �QR   �S-   ��T   �8U   �VI   �WR   �X-   �YI   �Z-   �[P   �\T   �]U   �^I   �_I   �`-    �ab !  �c- "  �dI #  �e- $  �fP %  �gb &  �h- '  �iT (  �jU )  �kI *  �lF +  �m- ,  �nP -  �ob .  �p- /  �qT 0  �rU 1  �sI 2  �tb 3  �u- 4  �vI 5  �w- 6  �xI 7  �y- 8  �z{ 9  �|b :  �}{ ;~  
� !  2    G  N  N  }  }  y  y  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �    �        4 !4 !&  H "H ": !\ #\ #N "p $p $b #� %� %v $� &� &� % � � +� +� +� +� +� +� +� +� -� -� -� -� -� -� -$ 2� 2� 8� 8� 8� 8� 8� 8� 8� 8� 8` <I <� 7� @� @� @� B� B� B� B� B� B� B� A� @� C� C� C� C� C� C� B� @ G G G G  F  H H H GD IC IC I5 Hh Jg Jg JY I� K� K� K} J� L� L� L� K� M� M� M� L� N� N� N� M O O O N@ P? P? P1 Od Qc Qc QU P� R� R� Ry Q� S� S� S� R� T� T� T� S� U� U� U� T  F% Z$ Z$ Z Y Y	 X� d� d� d� a� e� e� e� e� e� d� f� f� f� f� f� f� f� f� f� f� e� h� h� h� h� h� h� h h h h- h h h h h h h� hI jf jj jj ju jj jj jH iH h� f� a� q� q� q� q~ p� r� r� r� r� q� s� s� s� s� r� t� t� t� t� s~ p y� y U N zZ �] �] �Z �Z �V �V �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �	 �	* �	= �� �� �� �� �	J �	R �	R �	R �	b �	n �	n �	j �	j �	t �	R �	| �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �� �	� �
 �
 �
 �
 �
 �
 �
 �
 �
* �
* �
 �
 �
: �
: �
 �
H �
T �
T �
P �
P �
Z �
e �
q �
q �
m �
m �
w �
e �
 �
 �
� �
� �
� �
� �
� � �? �? �] �] � �� �� �� �� �� �� �� �� �! �@ �C �C �@ �) �k �� �� �
� �� �� �� �
 �� �� �� �� � �  �# �# �  �  � � �< � �G �S �S �O �O �X �G �� �c �o �o �k �k �u �} �} �� �� �} �} �� �� �} �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �	 �	 �! �@ �) �S �[ �t �� �| �} �� �    �      � 	    ��� �� �и �� ��� �� �^� ��`�� ����Y�S���Y:S�<�� ����Y�S���Y�S��� ���Y�����"Y�#�%�nY�OY1SY�OY�2SS�u�/�           �    ~     � � �      )     *'�%�+�                �8     "     �/�                      ~    ����  - � 
SourceFile GC:\blackstone_final\cfusion\wwwroot\CFIDE\administrator\Application.cfm /cfApplication2ecfm105811000$funcSEQUELINKEXISTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 1LcfApplication2ecfm105811000$funcSEQUELINKEXISTS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter;    javax/servlet/jsp/PageContext "
 # ! parent Ljavax/servlet/jsp/tagext/Tag; % &	  ' 
				 ) _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V + ,
  - SERVER / java/lang/String 1 
COLDFUSION 3 ROOTDIR 5 _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; 7 8
  9 _String &(Ljava/lang/Object;)Ljava/lang/String; ; < coldfusion/runtime/Cast >
 ? = +\db\SequeLink Setup\CFServiceController.exe A concat &(Ljava/lang/String;)Ljava/lang/String; C D
 2 E 
FileExists (Ljava/lang/String;)Z G H coldfusion/runtime/CFPage J
 K I _Object (Z)Ljava/lang/Object; M N
 ? O 
			 Q sequelinkExists S metaData Ljava/lang/Object; U V	  W boolean Y &coldfusion/runtime/AttributeCollection [ java/lang/Object ] name _ 
returnType a 
Parameters c ([Ljava/lang/Object;)V  e
 \ f <clinit> runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value 	ARGUMENTS Lcoldfusion/runtime/Variable; THIS LineNumberTable getName ()Ljava/lang/String; getReturnType getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       U V           #     *� 
�                 h      N     0� \Y� ^Y`SYTSYbSYZSYdSY� ^S� g� X�           0      i j      
   X+� :+,� :	-� � $:-� (:-*� .--0� 2Y4SY6S� :� @B� F� L� P�-R� .�       f 
   X       X k l    X m V    X n o    X p q    X r s    X t V    X % &    X u v    X w v 	 x   2    � " � " � + � + � B � + � + � * � * � * � N �  y z     !     T�                 { z     !     Z�                 | }     #     � 2�                 ~      "     � X�                     