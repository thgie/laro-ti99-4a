  100 CALL CLEAR 
  110 RANDOMIZE 
  120 CALL CHAR ( 43 , "3C7EFFFFFFFF7E3C" ) 
  130 CALL CHAR ( 42 , "3C7E818181817E3C" ) 
  140 CALL CHAR ( 44 , "00FFFF" ) 
  150 CALL CHAR ( 45 , "8142241818244281" ) 
  160 CALL CHAR ( 46 , "2442811818814224" ) 
  170 CALL CHAR ( 47 , "2040800000804020" ) 
  180 CALL CHAR ( 41 , "0402010000010204" ) 
  190 CALL COLOR ( 2 , 2 , 12 ) 
  200 A$ = "BALLSPIEL" 
  210 FOR I = 1 TO LEN ( A$ ) 
  220 Z = ASC ( SEG$ ( A$ , I , 1 ) ) 
  230 CALL HCHAR ( 2 , 11 + I , Z ) 
  240 NEXT I 
  250 CALL COLOR ( 12 , 12 , 12 ) 
  260 CALL HCHAR ( 4 , 1 , 127 , 576 ) 
  270 CALL HCHAR ( 7 , 12 , 43 ) 
  280 CALL HCHAR ( 18 , 16 , 42 ) 
  290 CALL HCHAR ( 18 , 6 , 45 ) 
  300 B$ = "FUER WEITER W DRUECKEN" 
  310 FOR I = 1 TO LEN ( B$ ) 
  320 M = ASC ( SEG$ ( B$ , I , 1 ) ) 
  330 CALL HCHAR ( 24 , 5 + I , M ) 
  340 NEXT I 
  350 CALL KEY ( 0 , K , S ) 
  360 IF S = 0 THEN 350
  370 IF K < > 87 THEN 350
  380 CALL CLEAR 
  390 GOTO 1650
  400 INPUT "BALLFARBE?: "  : F 
  410 INPUT "HINTERGRUND?: "  : H 
  420 GOTO 2260
  430 X = 16 
  440 Y = 12 
  450 A = 16 
  460 B = 19 
  470 XDIR = 1 
  480 YDIR = 1 
  490 Q = 3 
  500 ZUFALL = 5 
  510 LEBEN = 10 
  520 CALL SCREEN ( Q ) 
  530 CALL KEY ( 0 , KEY , STATUS ) 
  540 IF KEY = 83 THEN 850
  550 IF KEY = 68 THEN 900
  560 IF KEY = 65 THEN 1360
  570 IF KEY = 70 THEN 1400
  580 IF KEY = 88 THEN 950
  590 IF KEY = 48 THEN 1440
  600 IF KEY = 69 THEN 2260
  610 X = X + XDIR 
  620 Y = Y + YDIR 
  630 IF X < 1 THEN 750
  640 IF X > 32 THEN 750
  650 IF Y < 1 THEN 810
  660 IF Y > 24 THEN 810
  670 IF A = X THEN 680ELSE 690
  680 IF B = Y THEN 1090ELSE 690
  690 CALL CLEAR 
  700 CALL HCHAR ( Y , X , 43 ) 
  710 CALL HCHAR ( B , A , 42 ) 
  720 CALL HCHAR ( B , ZUFALL , 45 ) 
  730 IF ZUFALL = A THEN 2840
  740 GOTO 530
  750 XDIR = - XDIR 
  760 CALL SOUND ( 30 , 380 , 2 ) 
  770 IF Y < 1 THEN 810
  780 IF Y > 24 THEN 810
  790 IF A = X THEN 800ELSE 610
  800 IF B = Y THEN 1090ELSE 610
  810 YDIR = - YDIR 
  820 CALL SOUND ( 30 , 380 , 2 ) 
  830 IF A = X THEN 840ELSE 610
  840 IF B = Y THEN 1090ELSE 610
  850 A = A - 1 
  860 IF A < 1 THEN 870ELSE 880
  870 LET A = 32 
  880 IF A = X THEN 890ELSE 610
  890 IF B = Y THEN 1090ELSE 610
  900 A = A + 1 
  910 IF A > 32 THEN 920ELSE 930
  920 LET A = 1 
  930 IF A = X THEN 940ELSE 610
  940 IF B = Y THEN 1090ELSE 610
  950 CALL CLEAR 
  960 CALL COLOR ( 1 , 4 , 4 ) 
  970 CALL SCREEN ( 4 ) 
  980 D$ = "SIE HABEN " & STR$ ( L ) & " PUNKTE" 
  990 FOR I = 1 TO LEN ( D$ ) 
 1000 FG = ASC ( SEG$ ( D$ , I , 1 ) ) 
 1010 CALL HCHAR ( 12 , 5 + I , FG ) 
 1020 NEXT I 
 1030 FOR J = 1 TO 500 
 1040 NEXT J 
 1050 CALL CLEAR 
 1060 CALL COLOR ( 1 , H , H ) 
 1070 CALL SCREEN ( Q ) 
 1080 GOTO 530
 1090 YDIR = - YDIR 
 1100 ZUFALL = INT ( 30 * RND ) + 2 
 1110 L = L + 1 
 1120 IF ( L / 10 ) = INT ( L / 10 ) THEN 1150
 1130 CALL SOUND ( 60 , 760 , 3 ) 
 1140 GOTO 610
 1150 CALL SOUND ( 100 , 440 , 2 ) 
 1160 CALL SOUND ( 100 , 660 , 2 ) 
 1170 CALL SOUND ( 100 , 880 , 2 ) 
 1180 CALL SOUND ( 200 , 1760 , 2 ) 
 1190 CALL SCREEN ( 12 ) 
 1200 FOR J = 1 TO 1000 
 1210 NEXT J 
 1220 Q = Q + 1 
 1230 IF Q = H THEN 1240ELSE 1250
 1240 LET Q = H + 1 
 1250 IF Q > 16 THEN 1290
 1260 CALL SCREEN ( Q ) 
 1270 L = L + 40 
 1280 GOTO 610
 1290 L = L + 1000 
 1300 CALL SOUND ( 200 , 440 , 1 ) 
 1310 CALL SOUND ( 200 , 880 , 1 ) 
 1320 CALL SOUND ( 200 , 1320 , 1 ) 
 1330 CALL SOUND ( 300 , 1760 , 0 ) 
 1340 LET Q = 3 
 1350 GOTO 1260
 1360 A = A - 2 
 1370 IF A < 1 THEN 1380ELSE 610
 1380 LET A = 32 
 1390 GOTO 610
 1400 A = A + 2 
 1410 IF A > 32 THEN 1420ELSE 610
 1420 LET A = 1 
 1430 GOTO 610
 1440 CALL SCREEN ( 4 ) 
 1450 CALL COLOR ( 1 , 4 , 4 ) 
 1460 CALL CLEAR 
 1470 C$ = "ENDE DES SPIELS!" 
 1480 FOR I = 1 TO LEN ( C$ ) 
 1490 PQ = ASC ( SEG$ ( C$ , I , 1 ) ) 
 1500 CALL HCHAR ( 12 , 8 + I , PQ ) 
 1510 NEXT I 
 1520 CALL SOUND ( 200 , 440 , 2 ) 
 1530 CALL SOUND ( 200 , 660 , 2 ) 
 1540 CALL SOUND ( 200 , 880 , 2 ) 
 1550 CALL SOUND ( 300 , 440 , 2 , 880 , 2 ) 
 1560 E$ = "SIE ERREICHTEN " & STR$ ( L ) & " PUNKTE" 
 1570 FOR I = 1 TO LEN ( E$ ) 
 1580 LA = ASC ( SEG$ ( E$ , I , 1 ) ) 
 1590 CALL HCHAR ( 14 , 4 + I , LA ) 
 1600 NEXT I 
 1610 FOR CX = 1 TO 2000 
 1620 NEXT CX 
 1630 CALL CLEAR 
 1640 END 
 1650 F$ = "FARBENWAHL" 
 1660 WA = 5 
 1670 SE = 11 
 1680 GOSUB 2210
 1690 CALL COLOR ( 2 , 2 , 4 ) 
 1700 CALL HCHAR ( 6 , 12 , 44 , 10 ) 
 1710 F$ = "1=TRANSPARENT" 
 1720 WA = 8 
 1730 SE = 3 
 1740 GOSUB 2210
 1750 F$ = "2=SCHWARZ" 
 1760 WA = 9 
 1770 GOSUB 2210
 1780 F$ = "3=MITTELGRUEN" 
 1790 WA = 10 
 1800 GOSUB 2210
 1810 F$ = "4=HELLGRUEN" 
 1820 WA = 11 
 1830 GOSUB 2210
 1840 F$ = "5=DUNKELBLAU" 
 1850 WA = 12 
 1860 GOSUB 2210
 1870 F$ = "6=MITTELBLAU" 
 1880 WA = 13 
 1890 GOSUB 2210
 1900 F$ = "7=DUNKELROT" 
 1910 WA = 14 
 1920 GOSUB 2210
 1930 F$ = "8=HELLBLAU" 
 1940 WA = 15 
 1950 GOSUB 2210
 1960 F$ = "9=MITTELROT" 
 1970 WA = 16 
 1980 GOSUB 2210
 1990 F$ = "10=HELLROT" 
 2000 WA = 17 
 2010 GOSUB 2210
 2020 F$ = "11=DUNKELGELB" 
 2030 WA = 18 
 2040 GOSUB 2210
 2050 F$ = "12=HELLGELB" 
 2060 WA = 19 
 2070 GOSUB 2210
 2080 F$ = "13=DUNKELGRUEN" 
 2090 WA = 20 
 2100 GOSUB 2210
 2110 F$ = "14=LILA" 
 2120 WA = 21 
 2130 GOSUB 2210
 2140 F$ = "15=GRAU" 
 2150 WA = 22 
 2160 GOSUB 2210
 2170 F$ = "16=WEISS" 
 2180 WA = 23 
 2190 GOSUB 2210
 2200 GOTO 400
 2210 FOR I = 1 TO LEN ( F$ ) 
 2220 ZE = ASC ( SEG$ ( F$ , I , 1 ) ) 
 2230 CALL HCHAR ( WA , SE + I , ZE ) 
 2240 NEXT I 
 2250 RETURN 
 2260 CALL CLEAR 
 2270 CALL SCREEN ( 4 ) 
 2280 CALL COLOR ( 1 , 2 , 4 ) 
 2290 F$ = "TASTENERKLAERUNG" 
 2300 WA = 3 
 2310 SE = 8 
 2320 GOSUB 2210
 2330 CALL COLOR ( 2 , 2 , 4 ) 
 2340 CALL HCHAR ( 4 , 9 , 44 , 16 ) 
 2350 F$ = "TASTE" 
 2360 WA = 5 
 2370 SE = 3 
 2380 GOSUB 2210
 2390 F$ = "E=TASTENERKLAERUNG" 
 2400 WA = 6 
 2410 SE = 6 
 2420 GOSUB 2210
 2430 F$ = "X=PUNKTEANZEIGE" 
 2440 WA = 7 
 2450 GOSUB 2210
 2460 F$ = "A=2 NACH LINKS" 
 2470 WA = 8 
 2480 GOSUB 2210
 2490 F$ = "S=1 NACH LINKS" 
 2500 WA = 9 
 2510 GOSUB 2210
 2520 F$ = "D=1 NACH RECHTS" 
 2530 WA = 10 
 2540 GOSUB 2210
 2550 F$ = "F=2 NACH RECHTS" 
 2560 WA = 11 
 2570 GOSUB 2210
 2580 F$ = "0=ENDE" 
 2590 WA = 12 
 2600 GOSUB 2210
 2610 F$ = CHR$ ( 42 ) & " =SCHLAEGER" 
 2620 WA = 14 
 2630 SE = 4 
 2640 GOSUB 2210
 2650 F$ = CHR$ ( 43 ) & " =BALL" 
 2660 WA = 16 
 2670 GOSUB 2210
 2680 F$ = CHR$ ( 45 ) & " =HINDERNIS" 
 2690 WA = 18 
 2700 GOSUB 2210
 2710 F$ = "FUER WEITER W DRUECKEN" 
 2720 WA = 21 
 2730 GOSUB 2210
 2740 CALL KEY ( 0 , KEY , STATUS ) 
 2750 IF STATUS = 0 THEN 2740
 2760 IF KEY < > 87 THEN 2740
 2770 CALL CLEAR 
 2780 CALL COLOR ( 1 , H , H ) 
 2790 CALL SCREEN ( 4 ) 
 2800 CALL COLOR ( 2 , F , H ) 
 2810 T = T + 1 
 2820 IF T > 1 THEN 610
 2830 GOTO 430
 2840 CALL SOUND ( 500 , - 5 , 3 ) 
 2850 CALL HCHAR ( B , A , 46 ) 
 2860 CALL HCHAR ( B , A + 1 , 47 ) 
 2870 CALL HCHAR ( B , A - 1 , 41 ) 
 2880 LEBEN = LEBEN - 1 
 2890 FOR I = 1 TO 500 
 2900 NEXT I 
 2910 IF LEBEN = 0 THEN 1440
 2920 CALL CLEAR 
 2930 CALL COLOR ( 1 , 2 , 4 ) 
 2940 CALL SCREEN ( 4 ) 
 2950 F$ = "SIE HABEN NOCH " & STR$ ( LEBEN ) & " SCHLAEGER" 
 2960 FOR I = 1 TO LEN ( F$ ) 
 2970 ZE = ASC ( SEG$ ( F$ , I , 1 ) ) 
 2980 CALL HCHAR ( 12 , 3 + I , ZE ) 
 2990 NEXT I 
 3000 FOR I = 1 TO 300 
 3010 NEXT I 
 3020 CALL CLEAR 
 3030 CALL SCREEN ( Q ) 
 3040 CALL COLOR ( 1 , H , H ) 
 3050 ZUFALL = INT ( 30 * RND ) + 2 
 3060 GOTO 530
