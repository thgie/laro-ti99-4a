    1 CALL CLEAR 
    2 A$ = "3C4299A1A199423C"  :: CALL CHAR ( 64 , A$ ) 
    3 CALL CHAR ( 128 , "FF8083838383BFBFFF01C1C1C1C1FDFDBFBF8383838380FFFDFDC1C1C1C101FF" ) 
    4 CALL CLEAR  :: CALL SCREEN ( 5 )  :: CALL COLOR ( 0 , 16 , 5 , 1 , 16 , 5 , 2 , 16 , 5 , 3 , 16 , 5 , 4 , 16 , 5 , 5 , 16 , 5 , 6 , 16 , 5 , 7 , 16 , 5 , 8 , 16 , 5 ) 
    5 CALL COLOR ( 13 , 16 , 9 )  :: DISPLAY AT ( 1 , 11 )  : "19" 
    6 CALL HCHAR ( 1 , 16 , 128 )  :: CALL HCHAR ( 1 , 17 , 129 )  :: CALL HCHAR ( 2 , 16 , 130 )  :: CALL HCHAR ( 2 , 17 , 131 )  :: DISPLAY AT ( 1 , 17 )  : "84" 
    7 DISPLAY AT ( 5 , 8 )  : "MARTIN VOGLER"  :  : "   HOMECOMPUTER TI-99/4A" 
    8  ! DISPLAY AT(10,9):"PRAESENTIERT:"
    9 DISPLAY AT ( 15 , 1 )  : "          car race" 
   10 DISPLAY AT ( 24 , 6 )  : "** MOMENT BITTE **" 
   11 FOR VERZOEG = 1 TO 1000  :: NEXT VERZOEG  :: CALL CLEAR  :: CALL CHARSET 
   12 CALL SCREEN ( 4 ) 
   13 CALL COLOR ( 2 , 1 , 1 )  :: CALL COLOR ( 2 , 1 , 2 )  :: CALL COLOR ( 2 , 1 , 3 )  :: CALL COLOR ( 2 , 1 , 4 )  :: CALL COLOR ( 2 , 1 , 5 ) 
   14 CALL COLOR ( 2 , 1 , 6 )  :: CALL COLOR ( 2 , 1 , 7 )  :: CALL COLOR ( 2 , 1 , 8 )  :: CALL COLOR ( 2 , 1 , 9 )  :: CALL COLOR ( 2 , 1 , 10 )  :: CALL COLOR ( 2 , 1 , 11 ) 
  140 CALL SCREEN ( 2 ) 
  150 CALL CLEAR 
  160 PRINT "       oooo  ooo  oooo"  : "      o     o   o o   o"  : "      o     o   o o   o"  : "      o     ooooo oooo" 
  170 PRINT "       oooo o   o o   o"  :  :  : 
  180 PRINT "   oooo   ooo   oooo ooooo"  : "   o   o o   o o     o"  : "   o   o o   o o     ooo" 
  190 PRINT "   oooo  ooooo o     o"  : "   o   o o   o  oooo ooooo"  :  :  :  :  : 
  200 FOR I = 1 TO 5 
  210 CALL SOUND ( 250 , 880 , 0 ) 
  220 CALL COLOR ( 10 , 9 , 1 ) 
  230 CALL SOUND ( 200 , 880 , 30 ) 
  240 CALL COLOR ( 10 , 1 , 1 ) 
  250 NEXT I 
  260 CALL CLEAR 
  270 CALL COLOR ( 10 , 2 , 1 ) 
  280 PRINT "  you are the driver of a     sport-car in montreal"  :  : 
  290 PRINT "you can drive your car with '<' , '>' , 'space' and 'B' left,right,drive and brake"  :  :  :  : 
  300 PRINT TAB ( 8 )  ; "attentiion !" 
  310 PRINT TAB ( 8 )  ; "============"  :  : 
  320 PRINT "if your speed becomes higherthan 300 KM/H your engine   will collapse !"  :  :  : 
  330 FOR GROUP = 1 TO 12 
  340 CALL COLOR ( GROUP , 12 , 1 ) 
  350 NEXT GROUP 
  360 CALL KEY ( 0 , KEY , STATUS ) 
  370 IF STATUS = 0 THEN 360
  380 CALL CLEAR 
  390 CALL COLOR ( 1 , 16 , 1 ) 
  400 REM  ERSTE LEITPLANKE
  410 CALL CHAR ( 33 , "3C24243C3C3C3C3C" ) 
  420 REM  ZWEITE LEITPLANKE
  430 CALL CHAR ( 34 , "000018181818" ) 
  440 REM  DRITTE LEITPLANKE
  450 CALL CHAR ( 35 , "0000001818" ) 
  460 REM  VIERTE LEITPLANKE
  470 CALL CHAR ( 36 , "000001" ) 
  480 REM  FUENFTE LEITPLANKE
  490 CALL CHAR ( 37 , "FFFFC3C3C3FFFFFF" ) 
  500 CALL CHAR ( 38 , "FFFFFFFFFFFFFFFF" ) 
  510 G = 1 
  520 L = 11 
  530 T = 0 
  540 Z = 0 
  550 GOSUB 1130
  560 GOSUB 1570
  570 READ A 
  580 CALL SOUND ( - 4000 , - 7 , 15 , 110 + ABS ( G / 5 ) , 10 ) 
  590 K = 3 
  600 IF G > 0 THEN 620
  610 G = 1 
  620 IF G < = 250 THEN 640
  630 CALL COLOR ( 12 , 9 , 1 ) 
  640 IF G > = 277 THEN 660
  650 CALL COLOR ( 12 , 15 , 1 ) 
  660 IF G < = 305 THEN 680
  670 GOSUB 1620
  680 T1 = L / ( 10 * G / 36 ) 
  690 IF A = 0 THEN 1710
  700 FOR I = 0 TO 300 STEP G 
  710 NEXT I 
  720 ON A GOSUB 1480, 1320, 1130, 1250, 1390
  730 CALL KEY ( 0 , KEY , STATUS ) 
  740 IF STATUS < > 0 THEN 770
  750 G = G - 2.5 
  760 GOTO 810
  770 IF KEY < > 44 THEN 850
  780 K = K - 1 
  790 IF G < = 150 THEN 800
  800 G = G - 5 
  810 IF K > = A - 1 THEN 830
  820 GOSUB 1620
  830 IF K < = A + 1 THEN 850
  840 GOSUB 1620
  850 IF KEY < > 46 THEN 930
  860 K = K + 1 
  870 IF G < = 150 THEN 890
  880 G = G - 5 
  890 IF K > = A - 1 THEN 910
  900 GOSUB 1620
  910 IF K < = A + 1 THEN 930
  920 GOSUB 1620
  930 IF KEY < > 32 THEN 990
  940 G = G + 25 
  950 IF K > = A - 1 THEN 970
  960 GOSUB 1620
  970 IF K < = A + 1 THEN 990
  980 GOSUB 1620
  990 IF KEY < > 66 THEN 1010
 1000 G = .75 * G 
 1010 G$ = STR$ ( INT ( G ) ) 
 1020 CALL HCHAR ( 1 , 28 , 32 , 4 ) 
 1030 FOR LTR = 1 TO LEN ( G$ ) 
 1040 CALL HCHAR ( 1 , 28 + LTR , ASC ( SEG$ ( G$ , LTR , 1 ) ) ) 
 1050 NEXT LTR 
 1060 T = T + T1 
 1070 GOTO 570
 1080 DATA 3 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 4 , 5 , 5 , 5 , 4 , 3 , 2 , 1 , 1 , 1 , 1 , 2 , 3 , 3 , 3 , 3 , 3 , 3 
 1090 DATA 4 , 5 , 5 , 4 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 2 , 1 , 1 , 2 , 3 , 4 , 5 , 5 , 4 , 3 , 3 , 3 , 3 , 3 , 3 , 2 , 1 , 1 , 2 , 3 , 4 , 5 , 5 , 4 , 3 , 3 
 1100 DATA 4 , 5 , 5 , 5 , 5 , 4 , 3 , 3 , 3 , 3 , 3 , 4 , 5 , 4 , 3 , 2 , 1 , 2 , 3 , 3 , 4 , 5 , 4 , 3 , 3 , 3 , 3 , 3 , 2 , 1 , 2 , 3 , 4 , 5 , 5 , 4 
 1110 DATA 3 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 4 , 5 , 4 , 3 , 2 , 1 , 1 , 2 , 3 , 3 , 3 , 4 , 4 , 5 , 4 , 4 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 3 
 1120 DATA 4 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 4 , 3 , 3 , 3 , 3 , 3 , 3 , 3 , 2 , 3 , 4 , 3 , 3 , 3 , 3 , 3 , 2 , 1 , 1 , 2 , 3 , 3 , 4 , 5 , 5 , 4 , 3 , 3 , 3 , 3 , 3 
 1121 DATA 2 , 1 , 1 , 1 , 2 , 3 , 4 , 5 , 5 , 5 , 4 , 3 , 3 , 3 , 3 , 3 , 2 , 1 , 1 , 2 , 3 , 3 , 4 , 3 , 2 , 1 , 2 , 3 , 4 , 5 , 4 , 3 , 2 , 1 , 2 , 3 , 3 , 3 , 0 
 1130 REM  *** GERADE ***
 1140 CALL HCHAR ( 7 , 10 , 32 , 12 ) 
 1150 CALL HCHAR ( 7 , 15 , 36 , 2 ) 
 1160 CALL HCHAR ( 8 , 11 , 32 , 10 ) 
 1170 CALL HCHAR ( 8 , 14 , 35 ) 
 1180 CALL HCHAR ( 8 , 17 , 35 ) 
 1190 CALL HCHAR ( 10 , 12 , 32 , 8 ) 
 1200 CALL HCHAR ( 10 , 12 , 34 ) 
 1210 CALL HCHAR ( 10 , 19 , 34 ) 
 1220 CALL HCHAR ( 12 , 10 , 33 ) 
 1230 CALL HCHAR ( 12 , 21 , 33 ) 
 1240 RETURN 
 1250 REM  *** HALBRECHTS ***
 1260 CALL HCHAR ( 7 , 10 , 32 , 12 ) 
 1270 CALL HCHAR ( 7 , 18 , 36 , 2 ) 
 1280 CALL HCHAR ( 8 , 11 , 32 , 12 ) 
 1290 CALL HCHAR ( 8 , 15 , 35 ) 
 1300 CALL HCHAR ( 8 , 18 , 35 ) 
 1310 RETURN 
 1320 REM  *** HALBLINKS ***
 1330 CALL HCHAR ( 7 , 10 , 32 , 12 ) 
 1340 CALL HCHAR ( 7 , 12 , 36 , 2 ) 
 1350 CALL HCHAR ( 8 , 11 , 32 , 12 ) 
 1360 CALL HCHAR ( 8 , 13 , 35 ) 
 1370 CALL HCHAR ( 8 , 16 , 35 ) 
 1380 RETURN 
 1390 REM  *** RECHTS ***
 1400 CALL HCHAR ( 7 , 10 , 32 , 12 ) 
 1410 CALL HCHAR ( 7 , 20 , 36 , 2 ) 
 1420 CALL HCHAR ( 8 , 11 , 32 , 12 ) 
 1430 CALL HCHAR ( 8 , 16 , 35 ) 
 1440 CALL HCHAR ( 8 , 19 , 35 ) 
 1450 CALL HCHAR ( 10 , 12 , 32 ) 
 1460 CALL HCHAR ( 10 , 13 , 34 ) 
 1470 RETURN 
 1480 REM  *** LINKS ***
 1490 CALL HCHAR ( 7 , 10 , 32 , 12 ) 
 1500 CALL HCHAR ( 7 , 10 , 36 , 2 ) 
 1510 CALL HCHAR ( 8 , 11 , 32 , 12 ) 
 1520 CALL HCHAR ( 8 , 12 , 35 ) 
 1530 CALL HCHAR ( 8 , 15 , 35 ) 
 1540 CALL HCHAR ( 10 , 19 , 32 ) 
 1550 CALL HCHAR ( 10 , 18 , 34 ) 
 1560 RETURN 
 1570 CALL HCHAR ( 15 , 8 , 37 ) 
 1580 CALL HCHAR ( 16 , 8 , 38 ) 
 1590 CALL HCHAR ( 15 , 23 , 37 ) 
 1600 CALL HCHAR ( 16 , 23 , 38 ) 
 1610 RETURN 
 1620 FOR S = 0 TO 30 
 1630 CALL SOUND ( - 500 , - 6 , 30 - S , 170 - 2 * S , 30 - S ) 
 1640 NEXT S 
 1650 FOR S = 0 TO 30 
 1660 CALL SOUND ( - 500 , - 5 , S ) 
 1670 NEXT S 
 1680 G = 1 
 1690 Z = Z + 1 
 1700 RETURN 
 1710 S$ = "FINISH" 
 1720 FOR LTR = 1 TO LEN ( S$ ) 
 1730 CALL HCHAR ( 17 , 12 + LTR , ASC ( SEG$ ( S$ , LTR , 1 ) ) ) 
 1740 NEXT LTR 
 1750 CALL SOUND ( 100 , 880 , 5 ) 
 1760 D = INT ( ( 4410 / T ) * 3.6 ) 
 1770 TA = INT ( T / 60 ) 
 1780 TI = TA + INT ( ( ( T / 60 ) - TA ) * 60 ) / 100 
 1790 CALL COLOR ( 12 , 12 , 1 ) 
 1800 PRINT "ZEIT : "  ; STR$ ( TI )  ; 
 1810 PRINT "DURCHSCHNITTGESCHW.: "  ; STR$ ( D )  ; 
 1820 PRINT "FAHRT "  ; STR$ ( Z )  ; " x UNTERBROCHEN" 
 1830 CALL KEY ( 0 , KEY , STATUS ) 
 1840 IF STATUS = 0 THEN 1830
 1850 IF KEY = 32 THEN 1860ELSE 1890
 1860 RESTORE 
 1870 CALL CLEAR 
 1880 GOTO 510
 1890 CALL CLEAR 
 1900 END 
