����  -� 
SourceFile LC:\blackstone_final\cfusion\wwwroot\CFIDE\administrator\entman\addserver.cfm cfaddserver2ecfm174490279  coldfusion/runtime/CFPage  <init> ()V  
  	 this Lcfaddserver2ecfm174490279; LocalVariableTable Code bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   
ADD_BUTTON Lcoldfusion/runtime/Variable; 
ADD_BUTTON  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   REMOTESERVERNAME REMOTESERVERNAME    	  " SVROBJ SVROBJ % $ 	  ' URL URL * ) 	  , IPADD IPADD / . 	  1 JRUN JRUN 4 3 	  6 RPRT RPRT 9 8 	  ; REQUEST REQUEST > = 	  @ LOCALE LOCALE C B 	  E CANCELX CANCELX H G 	  J JRUNROOTDIR JRUNROOTDIR M L 	  O com.macromedia.SourceModTime  ��� pageContext #Lcoldfusion/runtime/NeoPageContext; T U	  V getOut ()Ljavax/servlet/jsp/JspWriter; X Y javax/servlet/jsp/PageContext [
 \ Z parent Ljavax/servlet/jsp/tagext/Tag; ^ _	  ` 

 b _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V d e
  f 
 h _checkCFImport j 
  k 


 m REQUEST.LOCALE o en q checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V s t
  u isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z w x
  y java/lang/String { _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; } ~
   _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
  � LCase � �
  � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � 
LOCALEFILE � java/lang/StringBuffer � resources/entman_ � (Ljava/lang/String;)V  �
 � � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � .xml � toString ()Ljava/lang/String; � � java/lang/Object �
 � � $class$coldfusion$tagext$io$OutputTag Ljava/lang/Class; coldfusion.tagext.io.OutputTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/io/OutputTag � 
doStartTag ()I � �
 � � 
	 � 
SERVERNAME � URL.SERVERNAME �  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z � �
  � 
		 � (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag � � �	  � "coldfusion/tagext/lang/ImportedTag � l10n � 
../cftags/ � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � entman_pagename_editserver � var � pagename � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � �
 � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � Edit Server:  � write � � java/io/Writer �
 � � doAfterBody �
 � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;
  doEndTag � #javax/servlet/jsp/tagext/TagSupport

	 doCatch (Ljava/lang/Throwable;)V
 � 	doFinally 
 � entman_pagename_addserver 
Add Server
 � coldfusion/tagext/QueryLoop
	

 � 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag �	 ! !coldfusion/tagext/lang/IncludeTag# 	cfinclude% template' ../header.cfm) _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;+,
 - setTemplate/ �
$0 	_emptyTag !(Ljavax/servlet/jsp/tagext/Tag;)Z23
 4 ../include/margintop.cfm6 %class$coldfusion$tagext$lang$ParamTag coldfusion.tagext.lang.ParamTag98 �	 ; coldfusion/tagext/lang/ParamTag= cfparam? typeA stringC setTypeE �
>F nameH url.servertypeJ � �
>L defaultN addlocalP J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;+R
 S 
setDefault (Ljava/lang/Object;)VUV
>W 
SERVERTYPEY _compare '(Ljava/lang/Object;Ljava/lang/String;)D[\
 ]  
	<p><font class="sentance">
	_ entman_welcomea h
		ColdFusion Enterprise lets you create and manage multiple ColdFusion servers on the same computer
	c 
	</font></p>
	
	
	
	e javag jrunx.kernel.JRuni CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;kl
 m setoV coldfusion/runtime/Variableq
rp _gett ~
 u getRootDirectoryw _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;yz
 { _serverexists} $The following server name is in use: &	
	<script>
		var jrunserverroot = "� JSStringFormat� �
 �{/servers";
	
		var keepDefault = true;
		function writeToServerDir(name) {
			if (keepDefault) {
				var dir = document.forms[0].elements.directory.value;
				dir = jrunserverroot + "/" + name;
				document.forms[0].elements.directory.value = dir;
			}
		}
		
		function yourjobnow() {
			keepDefault = false;
		}
	
		function wopen(formelem) {
			window.open("../filedialog/index.cfm?fromjscript=true&formelem=" + formelem, "NewWindow","height=500,width=450,dependent=true");
		}

	</script>
	
	<form action="processaddserver.cfm" method="post" onsubmit="writeToServerDir(forms[0].elements.serverName.value);">
	� _addserver.cfm� 
	</form>
	� 	editlocal� :
	<form action="processeditserver.cfm" method="post">
		� _editserver.cfm� 
	</form>
� 	addremote� _Object (Z)Ljava/lang/Object;��
 �� _boolean (Ljava/lang/Object;)Z��
 �� 
editremote�  � ,class$jrunx$jmc$management$tags$GetServerTag &jrunx.jmc.management.tags.GetServerTag�� �	 � &jrunx/jmc/management/tags/GetServerTag�
�L svrObj� setId� �
�� getPort� getHost� getServerName� 
	
	� �
		ColdFusion Enterprise lets you add remote servers that can participate in clusters 
		with servers located on the local machine. The Instance Name must match an instance name on the remote host.
	� K
	</font></p>	
	<form action="index.cfm?addremote=true" method="post">
	� $
		Edit Remote Server Properties
	� ?
	</font></p>	
	<form action="index.cfm?action=delete&server=� getName� "&addremote=true" method="post">
	� g
	<table border="0" cellpadding="2" cellspacing="1" width="100%">
	<tr>
		<td height="20" bgcolor="#� 	GRAYLIGHT� :" class="cellBlueTopAndBottom">
			<b class="form-title">� addremoteserver� Add Remote ColdFusion Instance� �</b>
		</td>
	</tr>
	<tr>
		<td>
			<table border="0" cellpadding="0" cellspacing="0">
			<tr><td height="2"></td></tr>
			<tr>
				<td nowrap>
					<font class="label">&nbsp; <label for="name">� remote_server_name� ColdFusion Instance Name� �</label> &nbsp;</font>
				</td>
				<td colspan="4">
					<input type="text" maxlength="300" class="label" name="remoteservername" size="20" style="width:15em;" value="� �">
				</td>
			</tr>
			<tr><td height="2"></td></tr>
			<tr>
				<td nowrap>
					<font class="label">&nbsp; <label for="name">� remote_server_ip� $Remote Host (IP Address or DNS Name)� �</label> &nbsp;</font>
				</td>
				<td colspan="4">
					<input type="text" maxlength="300" class="label" name="host" size="15" style="width:15em;" value="� �">
				</td>
			</tr>		
			<tr><td height="2"></td></tr>		
			<tr>
				<td nowrap><font class="label">&nbsp; <label for="new">� remote_server_port� Remote Port� �</label> &nbsp;</font></td>
				<td colspan="2">
					<input type="text" maxlength="300" class="label" name="remoteport" size="15" style="width:15em;" value="� �">
				</td>			
			</tr>		
			</table>
		</td>
	</tr>
	<script>
		function opn() {
			window.open("index.cfm", "_self");
			return false;
		}
	</script>
	
		<td align="right" class="cellBlueTopAndBottom" bgcolor="#� 	BLUELIGHT� ">
			<table>
			<tr>
				� button_gatewaty_addz� 
add_button� Submit� 
				� button_gatewaty_addx� cancelx� Cancel� 7
				<td><input type="submit" name="addsubmit" value="� M" class="buttn" ></td>
				<td><input type="submit" name="addsubmit" value="� s" class="buttn"  onclick="return opn();"></td>
			</tr>
			</table>
		</td>
	</tr>
	
	</table>

	</form>
	� ../include/marginbottom.cfm� ../footer.cfm metaData Ljava/lang/Object;	  varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage ()Ljava/lang/Object; out Ljavax/servlet/jsp/JspWriter; value output3  Lcoldfusion/tagext/io/OutputTag; mode3 I module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 module2 mode2 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 include4 #Lcoldfusion/tagext/lang/IncludeTag; include5 param6 !Lcoldfusion/tagext/lang/ParamTag; output10 mode10 module7 mode7 t33 t34 t35 t36 t37 t38 module8 mode8 t41 t42 t43 t44 t45 t46 include9 t48 t49 t50 t51 t52 	include11 output21 mode21 getServer12 (Ljrunx/jmc/management/tags/GetServerTag; t57 module13 mode13 t60 t61 t62 t63 t64 t65 module14 mode14 t68 t69 t70 t71 t72 t73 module15 mode15 t76 t77 t78 t79 t80 t81 module16 mode16 t84 t85 t86 t87 t88 t89 module17 mode17 t92 t93 t94 t95 t96 t97 module18 mode18 t100 t101 t102 t103 t104 t105 module19 mode19 t108 t109 t110 t111 t112 t113 module20 mode20 t116 t117 t118 t119 t120 t121 t122 t123 t124 t125 	include22 	include23 LineNumberTable java/lang/Throwable� <clinit> getMetadata 1                 $     )     .     3     8     =     B     G     L     � �    � �    �   8 �   � �              #     *� 
�                       �     �*+,� **+,� � **!+,� � #**&+,� � (**++,� � -**0+,� � 2**5+,� � 7**:+,� � <**?+,� � A**D+,� � F**I+,� � K**N+,� � P�            �       �    �	
      � 
 �  �*� W� ]L*� aN*+c� g*+i� g*� l*+n� g**� ADpr� v*+i� g**� F� z� #*?� |YDS**� F� �� �� �� �� �*?� |Y�S� �Y�� �*?� |YDS� �� �� ��� �� �� �*+n� g*� �-� �� �:� �Y6��*+¶ g**� -�ƶ ʙ �*+̶ g*� �� �� �:���� �� �Y� �Y�SY�SY�SY�S� � �� �� �Y6� K*+� �L+�� +*+� |Y�S� �� �� ���ߨ � :� �:	*+�L�	�� :
� &�A
�� � #:�� � :� �:��*+¶ g� �*+̶ g*� �� �� �:���� �� �Y� �Y�SYSY�SY�S� � �� �� �Y6� 6*+� �L+� ����� � :� �:*+�L��� :� &� q�� � #:�� � :� �:��*+¶ g*+i� g���-�� :� #�� � #:�� � :� �:��*+i� g*�"-� ��$:&(*�.�1�5� �*+i� g*�"-� ��$:&(7�.�1�5� �*+c� g*�<-� ��>:@BD�.�G@IK�.�M@OQ�T�X�5� �*+n� g*+� |YZS� �Q�^��~*+i� g*� �
-� �� �:� �Y6�+`� *� �� �� �:���� �� �Y� �Y�SYbS� � �� �� �Y6 � 6* +� �L+d� ����� � :!� !�:"* +�L�"�� :#� &��#�� � #:$$�� � :%� %�:&��&+f� *� 7*hj�n�s*� P***� 7�vx� ��|�s*+¶ g*� �� �� �:''���� �'� �Y� �Y�SY~SY�SY~S� � �'� �'� �Y6(� 6*'(+� �L+�� '����� � :)� )�:**(+�L�*'�� :+� &� �+�� � #:,',�� � :-� -�:.'��.+�� +**� P� �� ���� +�� *�"	� ��$://&(��.�1/�5� :0� D0�+�� ������ :1� #1�� � #:22�� � :3� 3�:4��4*+c� g�	
*+� |YZS� ���^�� >+�� *�"-� ��$:55&(��.�15�5� �+�� ��*+� |YZS� ���^�~���Y��� #W*+� |YZS� ���^�~������h*+¶ g*� �-� �� �:66� �Y67�*+¶ g*� #��s*+¶ g*� 2��s*+¶ g*� <��s*+¶ g*+� |YZS� ���^�� �*+̶ g*��6� ���:88*+� |Y�S� �� ���8���8�5� :9��9�*+̶ g*� <***� (�v�� ��|�s*� 2***� (�v�� ��|�s*� #***� (�v�� ��|�s*+¶ g*+�� g*+� |YZS� ���^�� �+`� *� �6� �� �:::���� �:� �Y� �Y�SYbS� � �:� �:� �Y6;� 6*:;+� �L+�� :����� � :<� <�:=*;+�L�=:�� :>� &��>�� � #:?:?�� � :@� @�:A:��A+�� � �+`� *� �6� �� �:BB���� �B� �Y� �Y�SYbS� � �B� �B� �Y6C� 6*BC+� �L+�� B����� � :D� D�:E*C+�L�EB�� :F� &��F�� � #:GBG�� � :H� H�:IB��I+�� +***� (�v�� ��|� �� +¶ +Ķ +*?� |Y�S� �� �� +ȶ *� �6� �� �:JJ���� �J� �Y� �Y�SY�S� � �J� �J� �Y6K� 6*JK+� �L+̶ J����� � :L� L�:M*K+�L�MJ�� :N� &��N�� � #:OJO�� � :P� P�:QJ��Q+ζ *� �6� �� �:RR���� �R� �Y� �Y�SY�S� � �R� �R� �Y6S� 6*RS+� �L+Ҷ R����� � :T� T�:U*S+�L�UR�� :V� &�V�� � #:WRW�� � :X� X�:YR��Y+Զ +**� #� �� �� +ֶ *� �6� �� �:ZZ���� �Z� �Y� �Y�SY�S� � �Z� �Z� �Y6[� 6*Z[+� �L+ڶ Z����� � :\� \�:]*[+�L�]Z�� :^� &�.^�� � #:_Z_�� � :`� `�:aZ��a+ܶ +**� 2� �� �� +޶ *� �6� �� �:bb���� �b� �Y� �Y�SY�S� � �b� �b� �Y6c� 6*bc+� �L+� b����� � :d� d�:e*c+�L�eb�� :f� &�[f�� � #:gbg�� � :h� h�:ib��i+� +**� <� �� �� +� +*?� |Y�S� �� �� +� *� �6� �� �:jj���� �j� �Y� �Y�SY�SY�SY�S� � �j� �j� �Y6k� 6*jk+� �L+� j����� � :l� l�:m*k+�L�mj�� :n� &�_n�� � #:ojo�� � :p� p�:qj��q*+� g*� �6� �� �:rr���� �r� �Y� �Y�SY�SY�SY�S� � �r� �r� �Y6s� 6*rs+� �L+�� r����� � :t� t�:u*s+�L�ur�� :v� &� �v�� � #:wrw�� � :x� x�:yr��y+�� +**� � �� �� +�� +**� K� �� �� +�� 6����6�� :z� #z�� � #:{6{�� � :|� |�:}6��}*+i� g*+i� g*�"-� ��$:~~&( �.�1~�5� �*+i� g*�"-� ��$:&(�.�1�5� �*+i� g� *(V\  �����  &,  U[�dj   ���� ���  '-  V\�ek  !'  �PV��_e  �������  F_e  ;���;��  		&	,  		U	[�		d	j  

)
/  

X
^�

g
m  
�
�
�  
��
�$*  ���  �������  s��  h���h��  o��  d���d��  8QW  -���-��  �����       �  �      �   �   � ^ _   �   �   �   �   �   � 	  � 
  �   �   �   �   �   �    �!   �"   �#   �$   �%   �&   �'   �(   �)   �*+   �,+   �-.   �/   �0   �1   �2    �3 !  �4 "  �5 #  �6 $  �7 %  �8 &  �9 '  �: (  �; )  �< *  �= +  �> ,  �? -  �@ .  �A+ /  �B 0  �C 1  �D 2  �E 3  �F 4  �G+ 5  �H 6  �I 7  �JK 8  �L 9  �M :  �N ;  �O <  �P =  �Q >  �R ?  �S @  �T A  �U B  �V C  �W D  �X E  �Y F  �Z G  �[ H  �\ I  �] J  �^ K  �_ L  �` M  �a N  �b O  �c P  �d Q  �e R  �f S  �g T  �h U  �i V  �j W  �k X  �l Y  �m Z  �n [  �o \  �p ]  �q ^  �r _  �s `  �t a  �u b  �v c  �w d  �x e  �y f  �z g  �{ h  �| i  �} j  �~ k  � l  �� m  �� n  �� o  �� p  �� q  �� r  �� s  �� t  �� u  �� v  �� w  �� x  �� y  �� z  �� {  �� |  �� }  ��+ ~  ��+ �  � �       /  /  4  <  <  ;  R 
 R 
 R 
 R 
 R 
 R 
 F 
 F 	 ;  v  {  {  �  r  r  f 
 ;  �  �  �  �  �  �  �  �   2 9 9 8  � � � � �  � { �  � �  � � � � �    ) G X i 0 | � � � � �  � | !� '� '� '� '� &� (� (� (� '� &� )� *� * *� *v *~ ,~ ,~ ,~ ,} +� ,� B� B� B�  D F) F4 FR H; He Ho J Jo Jo J� J� J� J� Jo J� J� K� L� L� L� L� L� M� M� M� M� M	 N	 N N N N O& O1 OJ PJ Pa P8 Px P� R� R� R Q� S� S� S� R� T� T� T� S Q� U O� V� X� X� X+ ZP Z� Z� ]� `� b	 b� b	{ d	� f	� f	� f	� f	� f� `� X	� g	� j	� j	� j	� j	� k
 k	� k
~ k
� t
� t
� t; tC wC wB wQ w� }� }X } } � � �$ �X �} �+ �� �� �� �� �� �� �� �� � �I �T �y � �� � � �B �� �� �� �� �� �� �� �� �� �� �� K �o J F�   �> �' �Q �o �X �� �    �      X     :�� �� �ϸ �� � � ��":� ��<�� ���� �Y� �� ��           :     �     "     ��                      Q    R