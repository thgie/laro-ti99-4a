   10  !  ********
   20  !  *DIGGER*
   30  !  ********
   40  ! 
   50  !  *****************
   60  !  *GUENTER LIESNER*
   70  !  *****************
  100 DIM C ( 3 ) , D ( 3 ) 
  110 CALL MAGNIFY ( 2 )  :: CALL SCREEN ( 2 ) 
  120 CALL CLEAR 
  130 CALL CHAR ( 137 , "183C7E99997E427E" ) 
  140 CALL CHAR ( 129 , "3C7EDBDBDBFFC3BD" ) 
  150 CALL CHAR ( 120 , "DFDFA7008100E700" ) 
  160 S$ = "003C5A66665A3C00" 
  170 CALL CHAR ( 33 , S$ ) 
  180 CALL CHAR ( 40 , S$ ) 
  190 CALL CHAR ( 112 , S$ ) 
  200 CALL CHAR ( 104 , "00E7998142241818" ) 
  210 CALL CHAR ( 96 , "AA55AA55AA55AA55" ) 
  220 CALL COLOR ( 9 , 7 , 2 , 10 , 9 , 1 , 11 , 15 , 1 , 12 , 3 , 1 , 13 , 5 , 1 , 14 , 11 , 1 , 1 , 3 , 1 , 2 , 9 , 1 ) 
  230 CALL COLOR ( 3 , 13 , 1 , 4 , 13 , 1 )  :: FOR Z1 = 5 TO 8  :: CALL COLOR ( Z1 , 16 , 1 )  :: NEXT Z1 
  231  !  *************
  232  !  *1.TITELBILD*
  233  !  *************
  240 CALL SPRITE ( # 1 , 68 , INT ( 13 * RND ) + 3 , 1 , 64 , 1 , 0 ) 
  250 CALL SPRITE ( # 2 , 73 , INT ( 13 * RND ) + 3 , 30 , 80 , 1 , 0 ) 
  260 CALL SPRITE ( # 3 , 71 , INT ( 13 * RND ) + 3 , 60 , 96 , 1 , 0 ) 
  270 CALL SPRITE ( # 4 , 71 , INT ( 13 * RND ) + 3 , 90 , 112 , 1 , 0 ) 
  280 CALL SPRITE ( # 5 , 69 , INT ( 13 * RND ) + 3 , 120 , 128 , 1 , 0 ) 
  290 CALL SPRITE ( # 6 , 82 , INT ( 13 * RND ) + 3 , 150 , 144 , 1 , 0 ) 
  300 FOR Z1 = 7 TO 12  :: CALL SPRITE ( # Z1 , 104 , 9 , 1 , 1 , INT ( 100 * RND ) - 50 , INT ( 100 * RND ) - 50 )  :: NEXT Z1 
  310 FOR Z1 = 13 TO 18  :: CALL SPRITE ( # Z1 , 112 , 15 , 1 , 1 , INT ( 100 * RND ) - 50 , INT ( 100 * RND ) - 50 )  :: NEXT Z1 
  320 FOR Z1 = 19 TO 23  :: CALL SPRITE ( # Z1 , 137 , 11 , 1 , 1 , INT ( 100 * RND ) - 50 , INT ( 100 * RND ) - 50 )  :: NEXT Z1 
  330 FOR Z1 = 24 TO 28  :: CALL SPRITE ( # Z1 , 129 , 5 , 1 , 1 , INT ( 100 * RND ) - 50 , INT ( 100 * RND ) - 50 )  :: NEXT Z1 
  340 FOR Z1 = 5 TO 125 STEP 5  :: CALL MOTION ( # 1 , Z1 , 0 , # 2 , Z1 , 0 , # 3 , Z1 , 0 , # 4 , Z1 , 0 , # 5 , Z1 , 0 , # 6 , Z1 , 0 ) 
  360 NEXT Z1 
  370 CALL DELSPRITE ( ALL ) 
  371  !  *************
  372  !  *2.TITELBILD*
  373  !  *************
  380 DISPLAY AT ( 5 , 3 )  : "PRESS ANY KEY TO BEGIN"  :: DISPLAY AT ( 7 , 7 )  : "GUEMTER LIESNER"  :: DISPLAY AT ( 9 , 7 )  : "SOFTWARE 1984" 
  390 DISPLAY AT ( 24 , 13 )  : "DIGGER" 
  400 CALL SPRITE ( # 1 , 137 , 11 , 96 , 128 )  :: FOR Z1 = 1 TO 200  :: NEXT Z1  :: FOR Z1 = 1 TO 8  :: CALL SOUND ( 250 , - Z1 , 10 )  :: CALL KEY ( 0 , AS , AD )  :: IF AD < > 0 THEN 420
  410 NEXT Z1  :: GOTO 400
  420 CALL DELSPRITE ( # 1 ) 
  421  !  *****************
  422  !  *LABYRINTHAUFBAU*
  423  !  *****************
  430 FOR Z1 = 1 TO 14  :: CALL COLOR ( Z1 , 1 , 1 )  :: NEXT Z1  :: CALL CLEAR  :: RESTORE  :: FOR Z1 = 1 TO 22  :: READ A$  :: PRINT A$  ;  :: NEXT Z1 
  440 CALL COLOR ( 9 , 7 , 2 , 10 , 9 , 1 , 11 , 15 , 1 , 12 , 3 , 1 , 13 , 5 , 1 , 14 , 11 , 1 , 1 , 3 , 1 , 2 , 9 , 1 ) 
  450 CALL COLOR ( 3 , 13 , 1 , 4 , 13 , 1 )  :: FOR Z1 = 1 TO 8  :: CALL COLOR ( Z1 , 16 , 1 )  :: NEXT Z1 
  460 DISPLAY AT ( 1 , 1 )  : "SCORE: 0" 
  470 DISPLAY AT ( 1 , 14 )  : "HI=SCORE:"  ; HISCORE 
  471  !  ********************
  472  !  *PILLEN UND MONSTER*
  473  !  ********************
  480 RANDOMIZE 
  490 FOR Z1 = 1 TO 10 
  500 Z2 = INT ( 22 * RND ) + 3  :: Z3 = INT ( 28 * RND ) + 3 
  510 CALL GCHAR ( Z2 , Z3 , Z4 )  :: IF Z4 < > 96 THEN 500
  520 CALL HCHAR ( Z2 , Z3 , 104 )  :: NEXT Z1 
  530 FOR Z1 = 1 TO 3 
  540 Z2 = INT ( 22 * RND ) + 3  :: Z3 = INT ( 28 * RND ) + 3  :: CALL GCHAR ( Z2 , Z3 , Z4 )  :: IF Z4 < > 96 THEN 540ELSE CALL HCHAR ( Z2 , Z3 , 33 ) 
  550 NEXT Z1 
  560 FOR Z1 = 1 TO 3 
  570 Z2 = INT ( 22 * RND ) + 3  :: Z3 = INT ( 28 * RND ) + 3  :: CALL GCHAR ( Z2 , Z3 , Z4 )  :: IF Z4 < > 96 THEN 570ELSE CALL HCHAR ( Z2 , Z3 , 40 ) 
  580 NEXT Z1 
  590 Z1 = INT ( 22 * RND ) + 3  :: Z2 = INT ( 28 * RND ) + 3  :: CALL GCHAR ( Z1 , Z2 , Z3 )  :: IF Z3 < > 96 THEN 590ELSE CALL HCHAR ( Z1 , Z2 , 112 ) 
  600 A = INT ( 22 * RND ) + 3  :: B = INT ( 28 * RND ) + 3 
  610 CALL GCHAR ( A , B , Z1 )  :: IF Z1 < > 96 THEN 600ELSE CALL HCHAR ( A , B , 137 ) 
  620 FOR Z1 = 1 TO 3 
  630 Z2 = INT ( 22 * RND ) + 3  :: Z3 = INT ( 28 * RND ) + 3 
  640 CALL GCHAR ( Z2 , Z3 , Z4 )  :: IF Z4 < > 96 THEN 630
  650 C ( Z1 ) = Z2  :: D ( Z1 ) = Z3  :: CALL HCHAR ( C ( Z1 ) , D ( Z1 ) , 129 ) 
  660 NEXT Z1 
  661  !  *****
  662  !  *KEY*
  663  !  *****
  670 CALL KEY ( 0 , K , S ) 
  680 E = A  :: F = B 
  690 GLUECK = ( 100 * RND ) + 1  :: IF GLUECK < 99 THEN 740
  700 GLUECK = INT ( GLUECK ) 
  710 PILLEN = INT ( 2 * RND )  :: ZEICHEN = 33 + ( PILLEN * 7 )  :: XPOSITION = INT ( 22 * RND ) + 3  :: YPOSITION = INT ( 28 * RND ) + 3  :: CALL GCHAR ( XPOSITION , YPOSITION , AZ ) 
  720 IF AZ < > 96 THEN 710
  730 CALL HCHAR ( XPOSITION , YPOSITION , ZEICHEN )  :: CALL SOUND ( 1000 , 3000 + ( PILLEN * 1000 ) , 10 , 2000 + ( PILLEN * 1000 ) , 12 , 1000 + ( PILLEN * 1000 ) , 13 ) 
  740 A = A - ( K = 88 ) + ( K = 69 ) 
  750 B = B - ( K = 68 ) + ( K = 83 ) 
  760 IF A = E AND B = F THEN 770ELSE 810
  770 SCORE = SCORE - 30 
  780 IF K < > 84 THEN 800ELSE DISPLAY AT ( 2 , 4 ) BEEP  : "PRESS R TO RETURN" 
  790 CALL KEY ( 0 , K9 , S9 )  :: IF K9 < > 82 THEN 790ELSE CALL HCHAR ( 2 , 1 , 32 , 32 ) 
  800 IF K = 13 THEN 1080
  810 CALL GCHAR ( A , B , M ) 
  820 DISPLAY AT ( 1 , 7 )  : SCORE  ; 
  830 IF M = 137 THEN M = 96 
  840 GOSUB 1270
  850 GOTO 860
  851  !  ******************
  852  !  *MONSTERSTEUERUNG*
  853  !  ******************
  860 Z1 = INT ( 3 * RND ) + 1 
  870 X = C ( Z1 )  :: Y = D ( Z1 ) 
  880 P ( 1 ) = MAX ( A , C ( Z1 ) )  :: P ( 2 ) = MIN ( B , D ( Z1 ) )  :: P ( 3 ) = MAX ( B , D ( Z1 ) )  :: P ( 4 ) = MIN ( A , C ( Z1 ) ) 
  890 O ( 1 ) = P ( 1 ) - P ( 4 ) 
  900 O ( 2 ) = P ( 3 ) - P ( 2 ) 
  910 IF O ( 1 ) = 0 AND O ( 2 ) = 0 THEN 1080
  920 IF O ( 1 ) > O ( 2 ) THEN 960
  930 IF O ( 1 ) = 0 THEN 960
  940 IF A > C ( Z1 ) THEN C ( Z1 ) = C ( Z1 ) + 1 ELSE C ( Z1 ) = C ( Z1 ) - 1 
  950 GOTO 980
  960 IF O ( 2 ) = 0 THEN 930
  970 IF B > D ( Z1 ) THEN D ( Z1 ) = D ( Z1 ) + 1 ELSE D ( Z1 ) = D ( Z1 ) - 1 
  980 CALL GCHAR ( C ( Z1 ) , D ( Z1 ) , G ) 
  990 IF G = 96 OR G = 32 THEN 1050
 1000 IF G = 137 AND COLOR = 0 THEN 1090
 1010 IF G < > 120 THEN 1030
 1020 C ( Z1 ) = X  :: D ( Z1 ) = Y  :: GOTO 1050
 1030 IF G = 137 AND COLOR = 1 THEN 1090
 1040 GOTO 1020
 1050 CALL HCHAR ( X , Y , 96 ) 
 1060 CALL HCHAR ( C ( Z1 ) , D ( Z1 ) , 129 ) 
 1070 GOTO 670
 1071  !  ******
 1072  !  *ENDE*
 1073  !  ******
 1080 CALL SOUND ( 4000 , - 8 , 0 ) 
 1090 CALL SOUND ( 100 , 20000 , 0 )  :: CALL CLEAR 
 1100 HISCORE = MAX ( SCORE , HISCORE )  :: IF HISCORE = SCORE THEN DISPLAY AT ( 12 , 2 )  : "NEUER HIGHSCORE:"  ; HISCORE ELSE DISPLAY AT ( 12 , 2 )  : "IHRE PUNKTZAHL:"  ; SCORE 
 1110 DISPLAY AT ( 24 , 3 )  : "NEUES SPIEL <J> ODER <N>?" 
 1120 CALL SPRITE ( # 18 , 129 , 5 , 50 , 70 , INT ( 250 * RND ) - 127 , INT ( 250 * RND ) - 127 ) 
 1130 CALL SPRITE ( # 19 , 137 , 11 , 100 , 130 , INT ( 250 * RND ) - 127 , INT ( 250 * RND ) - 127 ) 
 1140 FOR Z1 = 1 TO 3  :: CALL SPRITE ( # Z1 + 19 , 112 , 11 , INT ( 196 * RND ) + 1 , INT ( 250 * RND ) + 1 , INT ( 100 * RND ) - 50 , INT ( 100 * RND ) - 50 ) 
 1150 CALL SPRITE ( # Z1 + 23 , 104 , 9 , INT ( 196 * RND ) + 1 , INT ( 250 * RND ) + 1 , INT ( 100 * RND ) - 50 , INT ( 100 * RND ) - 50 )  :: NEXT Z1 
 1160 CALL KEY ( 0 , K6 , S6 )  :: IF S6 = 0 THEN 1160ELSE IF K6 = 74 THEN 1170ELSE 1180
 1170 CALL DELSPRITE ( ALL )  :: CALL CLEAR  :: COLOR , HERZ , SCORE = 0  :: GOTO 100
 1180 IF K6 = 78 THEN STOP 
 1190 GOTO 1160
 1191  !  ******
 1192  !  *DATA*
 1193  !  ******
 1200 DATA xxxxxxxxxxxxxxxxxxxxxxxxxxxx , x`x``````xxxxxxxxxx``````x`x , x`x`x``````````````````x`x`x , x```x```xxxx````xxxx```x```x 
 1210 DATA x```x`x`x``````````x`x`x```x 
 1220 DATA x```x`x`x```xxxx```x`x`x```x , x`x`x`x`x``````````x`x`x`x`x , x`x```x```xxx``xxx```x```x`x 
 1230 DATA x`x`x`x``````````````x`x`x`x , x```x`x```x`xxxx`x```x`x```x , x```x`````x`xxxx`x`````x```x 
 1240 DATA x```x`````x`xxxx`x`````x```x , x```x`x```x`xxxx`x```x`x```x , x`x`x`x``````````````x`x`x`x , x`x```x```xxx``xxx```x```x`x 
 1250 DATA x`x`x`x`x``````````x`x`x`x`x , x```x`x`x```xxxx```x`x`x```x , x```x`x`x``````````x`x`x```x , x```x```xxxx````xxxx```x```x 
 1260 DATA x`x`x``````````````````x`x`x , x`x``````xxxxxxxxxx``````x`x , xxxxxxxxxxxxxxxxxxxxxxxxxxxx 
 1261  !  ************
 1262  !  *GCHAR(SUB)*
 1263  !  ************
 1270 IF COLOR THEN 1430ELSE Q = 32 
 1280 IF M < > 96 THEN 1300
 1290 SCORE = SCORE + 5  :: GOTO 2150
 1300 IF M < > 120 THEN 1320
 1310 A = E  :: B = E  :: CALL SCREEN ( 9 )  :: CALL SOUND ( 250 , - 3 , 10 )  :: CALL SCREEN ( 2 )  :: GOTO 2150
 1320 IF M < > 32 THEN 1340
 1330 A = E  :: B = F  :: CALL SOUND ( 250 , - 1 , 10 )  :: GOTO 2150
 1340 IF M = 129 THEN 1090
 1350 IF M < > 33 THEN 1370
 1360 COLOR = 1  :: CALL COLOR ( 14 , 3 , 1 )  :: SCH1 = 20  :: GOTO 2150
 1370 IF M < > 40 THEN 1390
 1380 COLOR = 2  :: CALL COLOR ( 14 , 9 , 1 )  :: SCH2 = 20  :: GOTO 2150
 1390 IF M < > 104 THEN 1420
 1400 HERZ = HERZ + 1  :: SCORE = SCORE + 100  :: CALL SOUND ( 500 , 262 , 10 , 330 , 10 , 392 , 10 ) 
 1410 IF HERZ = 10 THEN 2170ELSE 2150
 1420 COLOR = 11  :: CALL COLOR ( 14 , 16 , 1 )  :: SCH3 = 20  :: GOTO 2150
 1430 IF COLOR < > 1 THEN 1650ELSE Q = 96 
 1440 SCH1 = SCH1 - 1  :: IF SCH1 < 6 THEN CALL COLOR ( 14 , 8 , 1 ) 
 1450 IF SCH1 < > 0 THEN 1470
 1460 COLOR = 0  :: CALL COLOR ( 14 , 11 , 1 ) 
 1470 IF M < > 96 THEN 1490
 1480 SCORE = SCORE + 5  :: GOTO 2150
 1490 IF M < > 120 THEN 1510
 1500 CALL SOUND ( 250 , - 3 , 10 )  :: CORE = SCORE + 25  :: GOTO 2150
 1510 IF M = 129 THEN 1090
 1520 IF M < > 32 THEN 1540
 1530 SCORE = SCORE + 10  :: CALL SOUND ( 250 , - 3 , 10 )  :: GOTO 2150
 1540 IF M < > 104 THEN 1570
 1550 HERZ = HERZ + 1  :: SCORE = SCORE + 100  :: CALL SOUND ( 500 , 262 , 10 , 330 , 10 , 392 , 10 ) 
 1560 IF HERZ = 10 THEN 2170ELSE 2150
 1570 IF M < > 33 THEN 1590
 1580 A = E  :: B = F  :: CALL SOUND ( 100 , 1000 , 10 )  :: GOTO 2150
 1590 IF M < > 40 THEN 1640
 1600 COLOR = 2  :: CALL COLOR ( 14 , 9 , 1 )  :: SCH2 = 20  :: GOTO 2150
 1610 IF M < > 104 THEN 1640
 1620 HERZ = HERZ + 1  :: SCORE = SCORE + 100  :: CALL SOUND ( 500 , 262 , 10 , 330 , 10 , 392 , 10 ) 
 1630 IF HERZ = 10 THEN 2170
 1640 COLOR = 11  :: CALL COLOR ( 14 , 16 , 1 )  :: SCH3 = 20  :: GOTO 2150
 1650 IF COLOR < > 2 THEN 1900ELSE Q = 96 
 1660 SCH2 = SCH2 - 1  :: IF SCH2 < 6 THEN CALL COLOR ( 14 , 8 , 1 ) 
 1670 IF SCH2 < > 0 THEN 1690
 1680 COLOR = 0  :: CALL COLOR ( 14 , 11 , 1 ) 
 1690 IF M < > 96 THEN 1710
 1700 SCORE = SCORE + 5  :: GOTO 2150
 1710 IF M < > 120 THEN 1730
 1720 A = E  :: B = F  :: CALL SCREEN ( 9 )  :: CALL SOUND ( 250 , - 3 , 10 )  :: CALL SCREEN ( 2 )  :: GOTO 2150
 1730 IF M < > 32 THEN 1750
 1740 CALL SOUND ( 250 , - 1 , 10 )  :: GOTO 2150
 1750 IF M < > 129 THEN 1820
 1760 FOR Z1 = 1 TO 8  :: CALL SOUND ( - 90 , - Z1 , 10 )  :: NEXT Z1 
 1770 SCORE = SCORE + 50  :: FOR Z1 = 1 TO 3 
 1780 IF A = C ( Z1 ) AND B = D ( Z1 ) THEN 1810
 1790 NEXT Z1 
 1800 CALL HCHAR ( C ( Z1 ) , D ( Z1 ) , 96 ) 
 1810 C ( Z1 ) = INT ( 22 * RND ) + 3  :: D ( Z1 ) = INT ( 28 * RND ) + 3  :: CALL GCHAR ( C ( Z1 ) , D ( Z1 ) , Z4 )  :: IF Z4 < > 96 THEN 1810ELSE CALL HCHAR ( C ( Z1 ) , D ( Z1 ) , 129 )  :: GOTO 2150
 1820 IF M < > 33 THEN 1840
 1830 COLOR = 1  :: CALL COLOR ( 14 , 3 , 1 )  :: SCH1 = 20  :: GOTO 2150
 1840 IF M < > 40 THEN 1860
 1850 A = E  :: B = F  :: CALL SOUND ( 100 , 1000 , 10 )  :: GOTO 2150
 1860 IF M < > 104 THEN 1890
 1870 HERZ = HERZ + 1  :: SCORE = SCORE + 100  :: CALL SOUND ( 500 , 262 , 10 , 330 , 10 , 392 , 10 ) 
 1880 IF HERZ = 10 THEN 2170ELSE 2150
 1890 COLOR = 11  :: CALL COLOR ( 14 , 16 , 1 )  :: SCH3 = 20  :: GOTO 2150
 1900 Q = 96 
 1910 SCH3 = SCH3 - 1  :: IF SCH3 < 6 THEN CALL COLOR ( 14 , 8 , 1 ) 
 1920 IF SCH3 < > 0 THEN 1940
 1930 COLOR = 0  :: CALL COLOR ( 14 , 11 , 1 ) 
 1940 IF M < > 96 THEN 1960
 1950 SCORE = SCORE + 5  :: GOTO 2150
 1960 IF M < > 120 THEN 1980
 1970 CALL SOUND ( 250 , - 3 , 10 )  :: GOTO 2150
 1980 IF M < > 32 THEN 2000
 1990 CALL SOUND ( 250 , - 1 , 10 )  :: GOTO 2150
 2000 IF M < > 129 THEN 2070
 2010 FOR Z1 = 1 TO 8  :: CALL SOUND ( - 90 , - Z1 , 10 )  :: NEXT Z1 
 2020 SCORE = SCORE + 50  :: FOR Z1 = 1 TO 3 
 2030 IF A = C ( Z1 ) AND B = D ( Z1 ) THEN 2060
 2040 NEXT Z1 
 2050 CALL HCHAR ( C ( Z1 ) , D ( Z1 ) , 96 ) 
 2060 C ( Z1 ) = INT ( 22 * RND ) + 3  :: D ( Z1 ) = INT ( 28 * RND ) + 3  :: CALL GCHAR ( C ( Z1 ) , D ( Z1 ) , Z4 )  :: IF Z4 < > 96 THEN 1810ELSE CALL HCHAR ( C ( Z1 ) , D ( Z1 ) , 129 )  :: GOTO 2150
 2070 IF M < > 33 THEN 2090
 2080 COLOR = 1  :: CALL COLOR ( 14 , 3 , 1 )  :: SCH1 = 20  :: GOTO 2150
 2090 IF M < > 40 THEN 2110
 2100 A = E  :: B = F  :: CALL SOUND ( 100 , 1000 , 10 )  :: GOTO 2150
 2110 IF M < > 104 THEN 2140
 2120 HERZ = HERZ + 1  :: SCORE = SCORE + 100  :: CALL SOUND ( 500 , 262 , 10 , 330 , 10 , 392 , 10 ) 
 2130 IF HERZ = 10 THEN 2170ELSE 2150
 2140 CALL SOUND ( 100 , 1000 , 10 )  :: A = E  :: B = F 
 2150 CALL HCHAR ( E , F , Q )  :: CALL HCHAR ( A , B , 137 ) 
 2160 RETURN 
 2161  !  ***********
 2162  !  *HERZ(SUB)*
 2163  !  ***********
 2170 FOR Z1 = 1 TO 10  :: CALL SOUND ( 100 , Z1 * 100 + 220 , 10 )  :: CALL SOUND ( 100 , Z1 * 200 + 330 , 10 ) 
 2180 Z2 = INT ( 22 * RND ) + 3  :: Z3 = INT ( 28 * RND ) + 3  :: CALL GCHAR ( Z2 , Z3 , Z4 )  :: IF Z4 < > 96 THEN 2180ELSE CALL HCHAR ( Z2 , Z3 , 104 ) 
 2190 NEXT Z1  :: HERZ = 0  :: GOTO 2150
