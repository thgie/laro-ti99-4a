  100 CALL CLEAR 
  110 RANDOMIZE 
  120 INPUT "SPIELER?(1-2): "  : SPI 
  130 INPUT "SCHWIERIGKEITSGRAD?(1-8):   "  : SCW 
  140 C1 = 2.5 + ( LOG ( SCW ) / 1.4 ) 
  150 C2 = 4 - ( SCW / 3 ) 
  160 INPUT "HINTERGRUNDFARBE SPIELER 1? (2-14):"  : FARBE ( 1 ) 
  170 IF SPI < 2 THEN 190
  180 INPUT "HINTERGRUNDFARBE SPIELER 2? (2-14):"  : FARBE ( 2 ) 
  190 CALL CLEAR 
  200 CALL SCREEN ( FARBE ( 1 ) ) 
  210 CALL COLOR ( 2 , 16 , 1 ) 
  220 CALL COLOR ( 3 , 16 , 1 ) 
  230 CALL COLOR ( 4 , 16 , 1 ) 
  240 CALL COLOR ( 9 , 15 , 16 ) 
  250 CALL COLOR ( 10 , 12 , 1 ) 
  260 CALL COLOR ( 6 , 12 , 10 ) 
  270 CALL COLOR ( 7 , 8 , 1 ) 
  280 CALL COLOR ( 8 , 16 , 1 ) 
  290 CALL COLOR ( 13 , 16 , 1 ) 
  300 CALL CHAR ( 42 , "3C7EFFE7E7FF4242" ) 
  310 CALL CHAR ( 96 , "FF65652351244544" ) 
  320 CALL CHAR ( 104 , "FFFF7E7E3C3C1818" ) 
  330 CALL CHAR ( 105 , "00542ED166DB345D" ) 
  340 CALL CHAR ( 106 , "3C7EFFFFFFFF7E3C" ) 
  350 CALL CHAR ( 107 , "804040A040804080" ) 
  360 CALL CHAR ( 108 , "0000000000106A95" ) 
  370 CALL CHAR ( 109 , "0102010205020201" ) 
  380 CALL CHAR ( 110 , "A95608" ) 
  390 CALL CHAR ( 111 , "0000FFFFFFFF" ) 
  400 CALL CHAR ( 74 , "5565765657656535" ) 
  410 CALL CHAR ( 80 , "FFFFC3A599A5C3FF" ) 
  420 CALL CHAR ( 88 , "FFFFC3A599A5C3FF" ) 
  430 CALL CHAR ( 72 , "A55AA54242A55AA5" ) 
  440 CALL CHAR ( 132 , "0000001" ) 
  450 CALL CHAR ( 133 , "0000001818" ) 
  460 CALL CHAR ( 134 , "0000183C3C18" ) 
  461 READ SC1$ , SC2$ , SC3$ , SC4$ , SC5$ 
  462 DATA "                                                                                                                         " 
  463 DATA "                                                                                                                         " 
  464 DATA "                                                                                                                        " 
  465 DATA "                                                                                                                  " 
  466 DATA "                                                                                             " 
  470 FOR SPIELER = 1 TO SPI 
  510 DISPLAY AT ( 1 , 1 ) ERASE ALL  : SC1$  ; SC2$  ; SC3$  ; SC4$  ; SC5$  ; 
  530 CALL SCREEN ( FARBE ( SPIELER ) ) 
  650 SE = 20 
  660 SEO = 20 
  670 WA = 3 
  680 WAO = 3 
  690 S = - 2 
  700 EG = 30 
  710 CALL HCHAR ( 23 , 2 , 96 , 30 ) 
  720 CALL VCHAR ( 21 , 3 , 80 , 2 ) 
  730 CALL HCHAR ( 20 , 3 , 42 ) 
  740 CALL HCHAR ( 23 , 29 , 88 ) 
  750 CALL HCHAR ( 22 , 29 , 88 ) 
  760 CALL HCHAR ( 3 , 16 , 106 ) 
  770 CALL HCHAR ( 24 , 2 , 111 , 30 ) 
  780 CALL KEY ( SPIELER , SL , ST ) 
  790 IF ST = 0 THEN 780
  800 IF SL < > 18 THEN 780
  810 CALL HCHAR ( 21 , 3 , 104 ) 
  820 CALL SOUND ( - 450 , - 5 , 10 ) 
  830 CALL JOYST ( SPIELER , X , Y ) 
  840 IF EG > 0 THEN 890
  850 Y = 0 
  860 CALL HCHAR ( 24 , 31 , 32 ) 
  870 S = S + .8 
  880 GOTO 920
  890 S = S - ( Y / C1 ) + .8 
  900 CALL HCHAR ( 24 , 30 - EG + 1 , 32 ) 
  910 EG = EG - ABS ( Y / 4 ) 
  920 SE = SE + S 
  930 WA = WA + ( X / 4 ) 
  940 CALL HCHAR ( SEO , WAO , ZE1 ) 
  950 CALL HCHAR ( SEO + 1 , WAO , ZE2 ) 
  960 IF WA = 29 THEN 1800
  970 IF WA = 16 THEN 1580
  980 IF WA < 1 THEN 1280
  990 IF WA > 32 THEN 1380
 1000 IF SE < 1 THEN 1120
 1010 IF SE > 21 THEN 1150
 1020 CALL GCHAR ( SE + 1 , WA , ZE2 ) 
 1030 IF Y THEN 1090
 1040 CALL GCHAR ( SE , WA , ZE1 ) 
 1050 CALL HCHAR ( SE , WA , 42 ) 
 1060 WAO = WA 
 1070 SEO = SE 
 1080 GOTO 830
 1090 CALL SOUND ( - 525 , - 5 , 10 ) 
 1100 CALL VCHAR ( SE + 1 , WA , 104 ) 
 1110 GOTO 1040
 1120 CALL HCHAR ( 1 , 1 , 32 , 32 ) 
 1130 SE = 1 
 1140 GOTO 830
 1150 IF S > C2 THEN 1230
 1160 IF WA < > 29 THEN 1230
 1170 CALL HCHAR ( 22 , WA , 88 ) 
 1180 CALL HCHAR ( 21 , WA , 42 ) 
 1190 GOSUB 1450
 1200 FOR T = 1 TO 1000 
 1210 NEXT T 
 1220 GOTO 1430
 1230 CALL SOUND ( 1000 , - 7 , 9 ) 
 1240 CALL HCHAR ( 23 , WA , 74 ) 
 1250 CALL HCHAR ( 22 , WA , 105 ) 
 1260 GOSUB 1470
 1270 GOTO 1200
 1280 CALL VCHAR ( 1 , 1 , 32 , 20 ) 
 1290 WA = 1 
 1300 IF SE < 1 THEN 1120
 1310 IF SE > 21 THEN 1330
 1320 GOTO 830
 1330 CALL SOUND ( 1000 , - 7 , 9 ) 
 1340 GOSUB 1470
 1350 FOR T = 1 TO 1000 
 1360 NEXT T 
 1370 GOTO 1430
 1380 CALL VCHAR ( 1 , 32 , 32 , 22 ) 
 1390 WA = 32 
 1400 IF SE < 1 THEN 1120
 1410 IF SE > 21 THEN 1330
 1420 GOTO 830
 1430 NEXT SPIELER 
 1440 GOTO 470
 1450 IF EG < = 0 THEN 1470
 1460 PUNKTE ( SPIELER ) = PUNKTE ( SPIELER ) + EG 
 1470 A$ = STR$ ( PUNKTE ( 1 ) ) 
 1480 FOR I = 1 TO LEN ( A$ ) 
 1490 KODE = ASC ( SEG$ ( A$ , I , 1 ) ) 
 1500 CALL HCHAR ( 1 , 3 + I , KODE ) 
 1510 NEXT I 
 1520 A$ = STR$ ( PUNKTE ( 2 ) ) 
 1530 FOR I = 1 TO LEN ( A$ ) 
 1540 KODE = ASC ( SEG$ ( A$ , I , 1 ) ) 
 1550 CALL HCHAR ( 1 , 25 + I , KODE ) 
 1560 NEXT I 
 1570 RETURN 
 1580 IF SE < = 1 THEN 1760
 1590 IF INT ( SE + .5 ) = 3 THEN 1640
 1600 IF INT ( SE + .5 ) = 2 THEN 1640
 1610 IF SE - S > 3 THEN 1740
 1620 IF SE + S > 3 THEN 1780
 1630 GOTO 980
 1640 CALL SOUND ( 1000 , - 7 , 9 ) 
 1650 CALL HCHAR ( 3 , 16 , 72 ) 
 1660 CALL HCHAR ( 4 , 16 , 110 ) 
 1670 CALL HCHAR ( 3 , 17 , 107 ) 
 1680 CALL HCHAR ( 3 , 15 , 109 ) 
 1690 CALL HCHAR ( 2 , 16 , 108 ) 
 1700 GOSUB 1470
 1710 FOR T = 1 TO 1000 
 1720 NEXT T 
 1730 GOTO 1430
 1740 IF SE < 3 THEN 1640
 1750 GOTO 980
 1760 IF S > 0 THEN 1640
 1770 GOTO 980
 1780 IF SE - S < 3 THEN 1640
 1790 GOTO 980
 1800 IF SE > 20 THEN 1150
 1810 GOTO 970
