   10 REM  *******PACMAN********
   20 CALL CLEAR 
   30 FOR I = 1 TO 14 
   40 CALL COLOR ( I , 2 , 8 ) 
   50 NEXT I 
   60 CALL SCREEN ( 5 ) 
   70 CALL VCHAR ( 1 , 1 , 150 , 48 ) 
   80 CALL VCHAR ( 1 , 31 , 150 , 48 ) 
   90 PRINT TAB ( 12 )  ; "PACMAN"  : TAB ( 12 )  ; "------"  :  :  :  :  :  :  : TAB ( 5 )  ; "@ 1983 BY LARO SACER"  :  :  :  :  :  : " IRGENDEINE TASTE DRUECKEN" 
  100 CALL KEY ( 0 , K , S ) 
  110 IF K < = 0 THEN 100
  120 CALL CLEAR 
  130 CALL VCHAR ( 1 , 1 , 150 , 48 ) 
  140 CALL VCHAR ( 1 , 31 , 150 , 48 ) 
  150 PRINT TAB ( 5 )  ; "BITTE WAEHLEN SIE:"  :  : TAB ( 6 )  ; "1 NEUES SPIEL"  :  : TAB ( 6 )  ; "2 ENDE"  :  :  :  :  :  :  :  :  :  :  :  : 
  160 CALL KEY ( 0 , K , S ) 
  170 IF K < 49 THEN 160
  180 IF K > 51 THEN 160
  190 ON K - 48 GOTO 220, 200
  200 CALL CLEAR 
  210 STOP 
  220 CALL CLEAR 
  230 CALL SCREEN ( 2 ) 
  240 CALL COLOR ( 1 , 2 , 2 ) 
  250 CALL CHAR ( 96 , "3C76FFFFFFFF7E3C" ) 
  260 CALL CHAR ( 97 , "3C76FFF0F0FF7E3C" ) 
  270 CALL CHAR ( 98 , "3C6EFFFFFFFF7E3C" ) 
  280 CALL CHAR ( 99 , "3C6EFF0F0FFF7E3C" ) 
  290 CALL CHAR ( 104 , "3C7E5A7E7E7E7EDB" ) 
  300 CALL CHAR ( 105 , "0000001818" ) 
  310 CALL CHAR ( 112 , "FFFFFFFFFFFFFFFF" ) 
  320 CALL COLOR ( 3 , 16 , 1 ) 
  330 CALL COLOR ( 4 , 16 , 1 ) 
  340 CALL COLOR ( 9 , 12 , 1 ) 
  350 CALL COLOR ( 10 , 16 , 1 ) 
  360 CALL COLOR ( 11 , 6 , 1 ) 
  370 RESTORE 
  380 FOR I = 1 TO 24 
  390 READ A$ 
  400 PRINT  : A$  ; 
  410 NEXT I 
  420 DATA , , pppppppppppppppppppppppppppp , piiipiiiiiiiiiiiiiiiiipiiiip , pipiiipipppppppppppppipippip , pipppppipiiipiiipiiiiiiiiiip 
  430 DATA piiiiiiipipipipipippppppippp , pppppppipipipipiiipiiiiiiiip , iiiiiiiipipiiiiipppippppipip , pipppppipipppipiiipippppipip 
  440 DATA piiiiiiipiiiiipipipiiiiiipip , pppppppipipppipipippppppipip , piiiiipiiipipipipiiiiiipipip , pipppipipipipipippppppipipip 
  450 DATA pipiiipipiiiiiiipiiiiiipipip , pipipppipipppipipippppppipip , pipiiiiipiiiiipipiiiiiiiipip , pipppppppipppppippppppppipii 
  460 DATA piiiiiiiiiiiiiiiiiiiiiipipip , pippppppppipippppipippppipip , piiiiiiiipipipiiiipiiiiiipip , pippppipipipipipppppppipppip 
  470 DATA piiiiiipiiiiipiiiiiiiiiiiiip , pppppppppppppppppppppppppppp , 
  480 CALL HCHAR ( 17 , 31 , 112 , 2 ) 
  490 CALL HCHAR ( 19 , 31 , 112 , 2 ) 
  500 CALL HCHAR ( 8 , 1 , 112 , 2 ) 
  510 CALL HCHAR ( 10 , 1 , 112 , 2 ) 
  520 A = 13 
  530 A1 = 13 
  540 B = 14 
  550 B1 = 14 
  560 Q = 4 
  570 P = 4 
  580 Q1 = 4 
  590 P1 = 4 
  595 PU = 0 
  600 CALL JOYST ( 1 , X , Y ) 
  610 IF X < > 0 THEN 630
  620 IF Y = 0 THEN 980
  630 X = X / 4 
  640 Y = - Y / 4 
  650 A = A + Y 
  660 B = B + X 
  670 IF B < 33 THEN 710
  680 B = 1 
  690 A = 9 
  700 GOTO 880
  710 IF B > 0 THEN 750
  720 B = 32 
  730 A = 18 
  740 GOTO 880
  750 GOSUB 860
  760 IF Z < > 112 THEN 880
  770 A = A - Y 
  780 GOSUB 860
  790 IF Z < > 112 THEN 880
  800 A = A + Y 
  810 B = B - X 
  820 GOSUB 860
  830 IF Z < > 112 THEN 880
  840 A = A - Y 
  850 GOTO 980
  860 CALL GCHAR ( A , B , Z ) 
  870 RETURN 
  880 CALL HCHAR ( A1 , B1 , 32 ) 
  890 IF Z < > 105 THEN 920
  900 CALL SOUND ( - 100 , 880 , 5 ) 
  910 PU = PU + 1 
  920 IF X < 0 THEN 950
  930 CALL HCHAR ( A , B , 96 ) 
  940 GOTO 960
  950 CALL HCHAR ( A , B , 98 ) 
  960 A1 = A 
  970 B1 = B 
  980 M1 = SGN ( A - P ) 
  990 N1 = SGN ( B - Q ) 
 1000 M = M1 
 1010 N = N1 
 1020 IF M1 < > 0 THEN 1040
 1030 M1 = SGN ( 16 - P ) 
 1040 IF N1 < > 0 THEN 1060
 1050 N1 = SGN ( Q - 16 ) 
 1060 GOSUB 1320
 1070 IF Z1 < > 112 THEN 1360
 1080 N = 0 
 1090 GOSUB 1320
 1100 IF Z1 < > 112 THEN 1360
 1110 N = N1 
 1120 GOSUB 1320
 1130 IF Z1 < > 112 THEN 1360
 1140 M = 0 
 1150 GOSUB 1320
 1160 IF Z1 < > 112 THEN 1360
 1170 M = - M1 
 1180 GOSUB 1320
 1190 IF Z1 < > 112 THEN 1360
 1200 N = 0 
 1210 GOSUB 1320
 1220 IF Z1 < > 112 THEN 1360
 1230 N = - N1 
 1240 GOSUB 1320
 1250 IF Z1 < > 112 THEN 1360
 1260 M = 0 
 1270 GOSUB 1320
 1280 IF Z1 < > 112 THEN 1360
 1290 M = 0 
 1300 N = 0 
 1310 GOTO 1360
 1320 CALL GCHAR ( P + M , Q + N , Z1 ) 
 1330 IF Z1 < > 104 THEN 1350
 1340 Z1 = 112 
 1350 RETURN 
 1360 P = P + M 
 1370 Q = Q + N 
 1380 IF X < 0 THEN 1410
 1390 CALL HCHAR ( A , B , 97 ) 
 1400 GOTO 1420
 1410 CALL HCHAR ( A , B , 99 ) 
 1420 CALL HCHAR ( P1 , Q1 , Z2 ) 
 1430 IF Z1 < > 104 THEN 1460
 1440 Z2 = 105 
 1450 GOTO 1470
 1460 Z2 = Z1 
 1470 IF Z1 > 99 THEN 1490
 1480 IF Z1 > 95 THEN 1530
 1490 CALL HCHAR ( P , Q , 104 ) 
 1500 P1 = P 
 1510 Q1 = Q 
 1520 GOTO 600
 1530 CALL COLOR ( 9 , 10 , 1 ) 
 1540 CALL SOUND ( 200 , - 6 , 5 ) 
 1550 P = 4 
 1560 Q = 4 
 1570 A1 = A 
 1580 B1 = B 
 1590 Z2 = 105 
 1600 FOR I = 1 TO 300 
 1610 NEXT I 
 1620 CALL HCHAR ( P , Q , 32 ) 
 1630 CALL HCHAR ( A , B , 32 ) 
 1640 CALL COLOR ( 9 , 12 , 1 ) 
 1650 CALL CLEAR 
 1660 CALL SCREEN ( 8 ) 
 1670 FOR I = 1 TO 14 
 1680 CALL COLOR ( I , 2 , 8 ) 
 1690 NEXT I 
 1700 CALL SCREEN ( 5 ) 
 1710 CALL VCHAR ( 1 , 1 , 150 , 48 ) 
 1720 CALL VCHAR ( 1 , 31 , 150 , 48 ) 
 1730 PRINT " SIE ERREICHTEN"  ; PU  ; "PUNKTE"  :  :  :  :  :  :  :  :  :  :  :  : 
 1740 PRINT " IRGENDEINE TASTE DRUECKEN" 
 1750 CALL KEY ( 0 , K , S ) 
 1760 IF S < = 0 THEN 1750
 1770 GOTO 120
 2000 REM  ******************
 2010 REM  DIESE ZEILEN
 2020 REM  EINSETZEN FUER
 2030 REM  EXTENDED BASIC:
 2040 REM  400 DISPLAY AT(I,1):A$
 2050 REM  610 (LOESCHEN)
 2060 REM  620 IF X=0 AND Y=0 THEN 980
 2070 REM  915 DISPLAY AT(1,10):PU
 2100 END 
