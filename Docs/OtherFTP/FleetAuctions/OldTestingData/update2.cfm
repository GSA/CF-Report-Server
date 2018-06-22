<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

	



	
	
	
	

<STYLE TYPE="text/css">
            <!--
            BODY,P,TH,TD {
               font-family: Arial,sans-serif;
               font-size: 10pt;
               }
            BODY {
               background-color: FFFFFF;
               
            
               margin: 0px 0px 0px 10px;
               padding: 0px 0px 0px 0px;
            
               border: 0;
               }
            A {
               color: 003399;
               }
            A:hover {
               color: #990000;
               text-decoration: underline;
               }
            A:active {
               color: #004880;
               text-decoration: underline;
               }
            .status_bar, .nav_section, .nav_section_title {
               font-size: 8pt;
			   color : #004880;
               }
            .nav_section_title {
               border: 1px solid #004880;
			   font-size : 10pt;
			   font-weight : 700;
               }
            .banner_links_bar_1 {
               font-size: 8pt;
               }
			 .banner_links_bar_1:hover {
			 	color: yellow;
				}
             A.top_nav_bar {
                color: white;
                font-weight: bold;
                font-size: 8pt;
                font-family: Helvetica;
                text-decoration: none;
             } 
            A:Hover.top_nav_bar {
                color: #3399ff;
                text-decoration: none;
                }
            A:Active.top_nav_bar {
                color: #0066FF;
                }
            A:Visited.tip_nav_bar {
                text-decoration: none;
                }
            A:link.top_nav_bar {
                color: white;
                text-decoration: none;
                } 
                
            -->
         </STYLE>


   

         <STYLE TYPE="text/css">
            <!--
            A.section {
               font-weight: bold;
               font-size: 11pt;
               color: 003399;
               text-decoration: none;
               }
            A.subSection {
               color: 000000;
               text-decoration: none;
               }
            -->
         </STYLE>
</STYLE> 




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Populate Auto Schedule Input (testing)</title>
</head>

<body>
<h3>Environment Info</h3>

Cold Fusion Version in use: 4, 5, 1, SP2<br>
currenttemplatepath = D:\reports\docs\otherftp\fleetauctions\processAutoScheduleInput.cfm<br>
basetemplatepath = D:\reports\docs\otherftp\fleetauctions\processAutoScheduleInput.cfm<br>
current directory = D:\reports\docs\otherftp\fleetauctions\<br>


<h3>This is being run on July, 06 2004 at 03:26:19 </h3>


  
<h3>The ADD* files in directory D:\reports\docs\otherftp\FleetAuctions\</h3>

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

  
<h3>The CHG* files in directory D:\reports\docs\otherftp\FleetAuctions\</h3>






		name = CHG200407060821173261FFFF04742.CSV<br>
		
		
		Current line =     ,166207,06/26/2004 10:00 AM,06/21/2004 12:05 AM,06/24/2004 07:30 PM,44/44/8888 88:44 AM,44/44/8888 88:44 PM,    ,*M6002,06/26/2004 10:00 AM,06/22/2004 12:05 PM,06/25/2004 07:30 PM,00/00/0000 00:00   ,00/00/0000 00:00   ,Sale of sedans, trucks, vans and ambulances.                                                                                                                                                                                                                   <br>
		listlen of Curent line = 17<br><br>
		
			
		 	
			
				
			
				
			
				
			
				
			
				
			
				
			
				
			
				
			
				
			
				
			
				
			
				
			
				
			
				
			
				
			
		
			
		 	
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
			
				
					
				
					
			
		
		
			
			
			***** 0 record was found.<BR><BR>
			
			</TD></TD></TD></TH></TH></TH></TR></TR></TR></TABLE></TABLE></TABLE></A></ABBREV></ACRONYM></ADDRESS></APPLET></AU></B></BANNER></BIG></BLINK></BLOCKQUOTE></BQ></CAPTION></CENTER></CITE></CODE></COMMENT></DEL></DFN></DIR></DIV></DL></EM></FIG></FN></FONT></FORM></FRAME></FRAMESET></H1></H2></H3></H4></H5></H6></HEAD></I></INS></KBD></LISTING></MAP></MARQUEE></MENU></MULTICOL></NOBR></NOFRAMES></NOSCRIPT></NOTE></OL></P></PARAM></PERSON></PLAINTEXT></PRE></Q></S></SAMP></SCRIPT></SELECT></SMALL></STRIKE></STRONG></SUB></SUP></TABLE></TD></TEXTAREA></TH></TITLE></TR></TT></U></UL></VAR></WBR></XMP><HTML><HEAD><TITLE>Error Occurred While Processing Request</TITLE></HEAD><BODY><HR><H3>Error Occurred While Processing Request</H3><P> <TABLE BORDER><TR><TD><H4>Error Diagnostic Information</H4><P>ODBC Error Code = 37000 (Syntax error or access violation)<P><P> [Microsoft][ODBC SQL Server Driver][SQL Server]Line 43: Incorrect syntax near '='.<P><P>SQL = "UPDATE 
				AuctionSchedule
				SET

					AddressCode = 
							'*M6002',

					AuctionStart = 
							
								{ts '2004-06-26 10:00:00'},
							

					ViewStart = 
							
								{ts '2004-06-22 12:05:00'},
							

					ViewEnd = 
							
								{ts '2004-06-25 19:30:00'},
							

					ViewStartb = 
							
								
									{ts '2004-06-22 12:05:00'},
								
							

					ViewEndb = 
							
								
									{ts '2004-06-25 19:30:00'},
								
							

					Promo = 
							
							'Sale of sedans, trucks, vans and ambulances.                                                                                                                                                                                                                   '

				
				WHERE 
					ScheduleID ="<P>Data Source = "REMARKETING"<P><p>The error occurred while processing an element with a general identifier of (CFQUERY), occupying document position (213:4) to (213:55) in the template file D:\reports\docs\otherftp\fleetauctions\processAutoScheduleInput.cfm.</p><P><P>Date/Time: 07/06/04 15:26:22<BR>Browser: CFSCHEDULE<BR>Remote Address: 159.142.4.53<BR>HTTP Referer: http://159.142.4.53/<BR>Query String: RequestTimeout=<P></TD></TR></TABLE><P>Please inform the <a href="mailto:webpage.errors@gsa.gov">site administrator</a> that this error has occurred (be sure to include the contents of this page in your message to the administrator).<P><HR>
</BODY></HTML>