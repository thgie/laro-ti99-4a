  100 CALL CLEAR 
  110 CALL SCREEN ( 2 ) 
  120 CALL CHAR ( 104 , "00183C24243C18" ) 
  130 CALL CHAR ( 112 , "0000001" ) 
  140 CALL CHAR ( 120 , "FFFFFFFFFFFFFFFF" ) 
  150 CALL CHAR ( 128 , "00003C3C3C3C" ) 
  160 CALL CHAR ( 129 , "00003C3C3C3C" ) 
  170 CALL CHAR ( 130 , "00003C3C3C3C" ) 
  180 CALL CHAR ( 136 , "0018245A5A2418" ) 
  190 CALL CHAR ( 137 , "0018245A5A2418" ) 
  200 FOR I = 2 TO 9 
  210 CALL COLOR ( I , 16 , 2 ) 
  220 NEXT I 
  230 CALL COLOR ( 10 , 7 , 16 ) 
  240 CALL COLOR ( 11 , 2 , 16 ) 
  250 CALL COLOR ( 12 , 16 , 16 ) 
  260 CALL COLOR ( 13 , 13 , 16 ) 
  270 CALL COLOR ( 14 , 5 , 16 ) 
  280 PRINT TAB ( 1 )  ; "WANDERUNG"  :  :  :  :  :  :  :  :  :  :  :  : 
  290 CALL SOUND ( 500 , 294 , 0 , 392 , 0 , 494 , 0 ) 
  300 CALL SOUND ( 250 , 294 , 0 , 392 , 0 , 494 , 0 ) 
  310 CALL SOUND ( 250 , 392 , 0 , 494 , 0 , 587 , 0 ) 
  320 CALL SOUND ( 1000 , 294 , 0 , 349 , 0 , 440 , 0 ) 
  330 PRINT  :  :  :  :  :  :  :  :  :  :  :  : 
  340 FOR I = 1 TO 100 
  350 NEXT I 
  360 CALL CLEAR 
  364 E = 0 
  370 IF C < > 130 THEN 390
  380 E = E + 500 
  390 Z = 13 
  400 S = 17 
  410 D = 120 
  420 M = 2 
  430 A = 3 
  440 F = 3 
  450 G = 3 
  460 P = 0 
  470 Q = 250 
  480 FOR I = 3 TO 23 STEP 2 
  490 CALL HCHAR ( I , 3 , 112 , 29 ) 
  500 NEXT I 
  510 FOR I = 3 TO 31 STEP 2 
  520 CALL VCHAR ( 4 , I , 112 , 19 ) 
  530 NEXT I 
  540 CALL HCHAR ( 23 , 2 , 128 ) 
  550 CALL HCHAR ( 22 , 3 , 32 ) 
  560 CALL HCHAR ( 23 , 4 , 32 ) 
  570 CALL HCHAR ( 13 , 17 , 136 ) 
  580 GOSUB 1110
  590 GOSUB 1370
  600 GOTO 580
  610 CALL CLEAR 
  620 E = E + P 
  630 P = 0 
  640 Q = 150 
  650 M = 2 
  660 F = 3 
  670 G = 3 
  680 A = 3 
  690 Z = 3 
  700 S = 32 
  710 FOR I = 3 TO 23 STEP 10 
  720 CALL HCHAR ( I , 3 , 112 , 29 ) 
  730 NEXT I 
  740 FOR I = 3 TO 31 STEP 7 
  750 CALL VCHAR ( 4 , I , 112 , 19 ) 
  760 NEXT I 
  770 FOR I = 4 TO 30 STEP 2 
  780 FOR R = 4 TO 22 STEP 2 
  790 CALL HCHAR ( R , I , 112 ) 
  800 NEXT R 
  810 NEXT I 
  820 FOR I = 5 TO 29 STEP 2 
  830 FOR R = 5 TO 21 STEP 2 
  840 CALL HCHAR ( R , I , 112 ) 
  850 NEXT R 
  860 NEXT I 
  870 CALL HCHAR ( 23 , 2 , 129 ) 
  880 CALL HCHAR ( 22 , 3 , 32 ) 
  890 CALL HCHAR ( 23 , 4 , 32 ) 
  900 CALL HCHAR ( 3 , 32 , 137 ) 
  910 GOSUB 1110
  920 GOSUB 1370
  930 GOTO 910
  940 CALL CLEAR 
  950 D = 32 
  960 E = E + P + 250 
  970 M = 2 
  980 F = 3 
  990 G = 3 
 1000 A = 3 
 1010 Z = 3 
 1020 S = 32 
 1030 FOR I = 3 TO 23 
 1040 CALL HCHAR ( I , 3 , 120 , 29 ) 
 1050 NEXT I 
 1060 CALL HCHAR ( 23 , 2 , 130 ) 
 1070 CALL HCHAR ( 3 , 32 , 137 ) 
 1080 GOSUB 1110
 1090 GOSUB 1370
 1100 GOTO 1080
 1110 CALL JOYST ( 1 , X , Y ) 
 1120 IF ( X + Y = 0 ) + ( X + Y = 8 ) + ( X + Y = - 8 ) THEN 1360
 1130 CALL GCHAR ( Z - Y / 4 , S + X / 4 , C ) 
 1140 IF C = 32 THEN 1360
 1150 IF C = 120 THEN 1190
 1160 B = 136 
 1170 P = P + 1 
 1180 GOTO 1200
 1190 B = 137 
 1200 CALL GCHAR ( Z , S , V ) 
 1210 IF V = 137 THEN 1240
 1220 N = 120 
 1230 GOTO 1250
 1240 N = 32 
 1250 CALL HCHAR ( Z , S , N ) 
 1260 Z = Z - Y / 4 
 1270 S = S + X / 4 
 1280 CALL HCHAR ( Z , S , B ) 
 1290 IF C = 104 THEN 1570
 1300 IF P < Q THEN 1360
 1310 IF P > Q THEN 1330
 1320 CALL HCHAR ( 23 , 4 , 120 ) 
 1330 IF C = 128 THEN 610
 1340 IF C = 129 THEN 940
 1350 IF C = 130 THEN 360
 1360 RETURN 
 1370 IF M > Z THEN 1410
 1380 IF M = Z THEN 1420
 1390 M = M + 1 
 1400 GOTO 1420
 1410 M = M - 1 
 1420 IF A > S THEN 1460
 1430 IF A = S THEN 1470
 1440 A = A + 1 
 1450 GOTO 1470
 1460 A = A - 1 
 1470 CALL GCHAR ( M , A , H ) 
 1480 IF H = 32 THEN 1540
 1490 CALL HCHAR ( F , G , D ) 
 1500 CALL HCHAR ( M , A , 104 ) 
 1510 IF ( H = 136 ) + ( H = 137 ) THEN 1570
 1520 F = M 
 1530 G = A 
 1540 M = F 
 1550 A = G 
 1560 RETURN 
 1570 FOR I = 1 TO 15 
 1580 CALL HCHAR ( Z , S , 120 ) 
 1590 FOR L = I * 220 TO ( I + 3 ) * 220 STEP 110 
 1600 CALL SOUND ( - 500 , L , 15 - I , 4180 - L , I ) 
 1610 NEXT L 
 1620 CALL HCHAR ( Z , S , 104 ) 
 1630 NEXT I 
 1640 CALL CLEAR 
 1650 E = E + P 
 1660 PRINT "     DEINE PUNKTZAHL :"  ; E  :  : 
 1670 PRINT "DER BISHERIGE REKORD :"  ; U  :  :  :  :  :  :  :  :  : 
 1680 IF E < U THEN 1700
 1690 U = E 
 1700 PRINT "WILLST DU NOCH EINMAL"  :  : 
 1710 PRINT "             SPIELEN (J)"  :  :  :  : 
 1720 CALL KEY ( 0 , K , ST ) 
 1730 IF ST = 0 THEN 1720
 1740 IF K = 106 THEN 360
 1750 CALL CLEAR 
 1760 FOR I = 2 TO 9 
 1770 CALL COLOR ( I , 2 , 2 ) 
 1780 NEXT I 
 1790 PRINT "GESCHRIEBEN VON ROLF HEIKAMP" 
 1800 END 
