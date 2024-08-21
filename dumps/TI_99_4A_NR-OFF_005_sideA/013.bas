  100  !  JAHTZEE XBASIC
  110  !  AUTHOR: RD
  120  !  DATE  : 26.12.83
  130  ! 
  140 OPTION BASE 1 
  150 DIM TS ( 4 ) , COL ( 7 ) , WUE ( 5 ) , ANZW ( 6 ) , NAM$ ( 4 ) , TP ( 18 , 4 ) 
  160 DATA 2 , 5 , 6 , 7 , 9 , 13 , 14 
  170 FOR X = 1 TO 7  :: READ COL ( X )  :: NEXT X 
  180 IMAGE ###.# 
  190 CALL CHAR ( 136 , "0000FFFFFFFF0000" ) 
  200 CALL COLOR ( 14 , 7 , 1 ) 
  210  ! 
  220  !  TITEL/ANZ PERSONEN
  230 CALL CLEAR  :: CALL SCREEN ( 12 )  :: CALL MAGNIFY ( 2 ) 
  240 CALL SPRITE ( # 7 , 89 , 5 , 2 , 256 , 0 , - 40 ) 
  250 CALL COINC ( # 7 , 2 , 84 , 10 , A ) 
  260 IF A = 0 THEN 250
  270 CALL DELSPRITE ( # 7 ) 
  280 CALL SPRITE ( # 7 , 89 , 13 , 2 , 84 , 0 , 0 ) 
  290 CALL SPRITE ( # 6 , 65 , 5 , 10 , 256 , 0 , - 40 ) 
  300 CALL COINC ( # 6 , 10 , 95 , 10 , A ) 
  310 IF A = 0 THEN 300
  320 CALL DELSPRITE ( # 6 ) 
  330 CALL SPRITE ( # 6 , 65 , 13 , 10 , 95 , 0 , 0 ) 
  340 CALL SPRITE ( # 5 , 72 , 5 , 18 , 256 , 0 , - 40 ) 
  350 CALL COINC ( # 5 , 18 , 110 , 10 , A ) 
  360 IF A = 0 THEN 350
  370 CALL DELSPRITE ( # 5 ) 
  380 CALL SPRITE ( # 5 , 72 , 13 , 18 , 110 , 0 , 0 ) 
  390 CALL SPRITE ( # 4 , 84 , 5 , 26 , 256 , 0 , - 40 ) 
  400 CALL COINC ( # 4 , 26 , 125 , 10 , A ) 
  410 IF A = 0 THEN 400
  420 CALL DELSPRITE ( # 4 ) 
  430 CALL SPRITE ( # 4 , 84 , 13 , 26 , 125 , 0 , 0 ) 
  440 CALL SPRITE ( # 3 , 90 , 5 , 34 , 256 , 0 , - 40 ) 
  450 CALL COINC ( # 3 , 34 , 138 , 10 , A ) 
  460 IF A = 0 THEN 450
  470 CALL DELSPRITE ( # 3 ) 
  480 CALL SPRITE ( # 3 , 90 , 13 , 34 , 138 , 0 , 0 ) 
  490 CALL SPRITE ( # 2 , 69 , 5 , 42 , 256 , 0 , - 40 ) 
  500 CALL COINC ( # 2 , 42 , 155 , 10 , A ) 
  510 IF A = 0 THEN 500
  520 CALL DELSPRITE ( # 2 ) 
  530 CALL SPRITE ( # 2 , 69 , 13 , 42 , 155 , 0 , 0 ) 
  540 CALL SPRITE ( # 1 , 69 , 5 , 50 , 256 , 0 , - 40 ) 
  550 CALL COINC ( # 1 , 50 , 170 , 10 , A ) 
  560 IF A = 0 THEN 550
  570 CALL DELSPRITE ( # 1 ) 
  580 CALL SPRITE ( # 1 , 69 , 13 , 50 , 170 , 0 , 0 ) 
  590 DISPLAY AT ( 16 , 03 )  : "Name Spieler 1     #" 
  600 ACCEPT AT ( 16 , 19 ) SIZE ( 3 )  : NAM$ ( 1 ) 
  610 IF LEN ( NAM$ ( 1 ) ) < > 0 THEN 640
  620 DISPLAY AT ( 01 , 01 ) BEEP  : "" 
  630 GOTO 600
  640 ANZ = ANZ + 1 
  650 DISPLAY AT ( 18 , 03 )  : "Name Spieler 2     #" 
  660 ACCEPT AT ( 18 , 19 ) SIZE ( 3 )  : NAM$ ( 2 ) 
  670 IF LEN ( NAM$ ( 2 ) ) = 0 THEN 790
  680 ANZ = ANZ + 1 
  690 DISPLAY AT ( 20 , 03 )  : "Name Spieler 3     #" 
  700 ACCEPT AT ( 20 , 19 ) SIZE ( 3 )  : NAM$ ( 3 ) 
  710 IF LEN ( NAM$ ( 3 ) ) = 0 THEN 790
  720 ANZ = ANZ + 1 
  730 DISPLAY AT ( 22 , 03 )  : "Name Spieler 4     #" 
  740 ACCEPT AT ( 22 , 19 ) SIZE ( 3 )  : NAM$ ( 4 ) 
  750 IF LEN ( NAM$ ( 4 ) ) = 0 THEN 790
  760 ANZ = ANZ + 1 
  770  ! 
  780  !  AUSGABE SPIEL-SCHIRM
  790 CALL CLEAR  :: CALL DELSPRITE ( ALL ) 
  800 FOR X = 1 TO 17 
  810 FOR Y = 1 TO 4  :: TP ( X , Y ) = 0  :: NEXT Y 
  820 NEXT X 
  830 FOR X = 1 TO ANZ 
  840 DISPLAY AT ( 1 , 12 + ( X - 1 ) * 4 )  : NAM$ ( X ) 
  850 NEXT X 
  860 DISPLAY AT ( 5 , 2 )  : "1 1-er" 
  870 DISPLAY AT ( 6 , 2 )  : "2 2-er" 
  880 DISPLAY AT ( 6 , 28 )  : "1" 
  890 DISPLAY AT ( 7 , 2 )  : "3 3-er" 
  900 DISPLAY AT ( 8 , 2 )  : "4 4-er" 
  910 DISPLAY AT ( 9 , 2 )  : "5 5-er" 
  920 DISPLAY AT ( 9 , 28 )  : "2" 
  930 DISPLAY AT ( 10 , 2 )  : "6 6-er" 
  940 DISPLAY AT ( 11 , 4 )  : "Subtot" 
  950 DISPLAY AT ( 12 , 4 )  : "Bonus" 
  960 DISPLAY AT ( 12 , 28 )  : "3" 
  970 DISPLAY AT ( 14 , 2 )  : "7 3+1" 
  980 DISPLAY AT ( 15 , 2 )  : "8 4+1" 
  990 DISPLAY AT ( 15 , 28 )  : "4" 
 1000 DISPLAY AT ( 16 , 2 )  : "9 Full" 
 1010 DISPLAY AT ( 17 , 1 )  : "10 kl Str" 
 1020 DISPLAY AT ( 18 , 1 )  : "11 gr Str" 
 1030 DISPLAY AT ( 18 , 28 )  : "5" 
 1040 DISPLAY AT ( 19 , 1 )  : "12 Yahtzee" 
 1050 DISPLAY AT ( 20 , 1 )  : "13 Chance" 
 1060 DISPLAY AT ( 21 , 4 )  : "Subtot" 
 1070 DISPLAY AT ( 22 , 4 )  : "Total" 
 1080 IF TOP = 0 THEN 1130
 1090 DISPLAY AT ( 24 , 2 )  : "Top Score" 
 1100 DISPLAY AT ( 24 , 12 + ( TI - 1 ) * 4 ) SIZE ( 3 )  : USING 180 : TOP 
 1110  ! 
 1120  !  START SPIEL
 1130 PLAY = 1 
 1140 DISPLAY AT ( 2 , 1 ) BEEP  : "" 
 1150 CALL HCHAR ( 2 , 14 + ( PLAY - 1 ) * 4 , 136 , LEN ( NAM$ ( PLAY ) ) ) 
 1160 RANDOMIZE 
 1170 FOR X = 1 TO 5 
 1180 WUE ( X ) = INT ( RND * 6 ) + 1 
 1190 CALL DICE ( WUE ( X ) , X ) 
 1200 NEXT X 
 1210  ! 
 1220  !  ERSTE WAHL
 1230 DISPLAY AT ( 3 , 2 )  : "Wuerfeln" 
 1240 IF PLAY < > 4 THEN DISPLAY AT ( 3 , 17 + ( PLAY - 1 ) * 4 )  : "#" ELSE CALL HCHAR ( 3 , 31 , 35 ) 
 1250 ACCEPT AT ( 3 , 12 + ( PLAY - 1 ) * 4 ) SIZE ( - 5 )  : WNR$ 
 1260 IF LEN ( WNR$ ) = 0 THEN 1530
 1270 CALL TEST ( WNR$ , S ) 
 1280 IF S = 0 THEN 1310
 1290 DISPLAY AT ( 1 , 1 ) BEEP SIZE ( 1 )  : "" 
 1300 GOTO 1250
 1310 RANDOMIZE 
 1320 FOR X = 1 TO LEN ( WNR$ ) 
 1330 WUE ( VAL ( SEG$ ( WNR$ , X , 1 ) ) ) = INT ( RND * 6 ) + 1 
 1340 CALL DICE ( WUE ( VAL ( SEG$ ( WNR$ , X , 1 ) ) ) , VAL ( SEG$ ( WNR$ , X , 1 ) ) ) 
 1350 NEXT X 
 1360  ! 
 1370  !  ZWEITE WAHL
 1380 DISPLAY AT ( 3 , 2 )  : "Wuerfeln" 
 1390 IF PLAY < > 4 THEN DISPLAY AT ( 3 , 17 + ( PLAY - 1 ) * 4 )  : "#" ELSE CALL HCHAR ( 3 , 31 , 35 ) 
 1400 ACCEPT AT ( 3 , 12 + ( PLAY - 1 ) * 4 ) SIZE ( - 5 )  : WNR$ 
 1410 IF LEN ( WNR$ ) = 0 THEN 1530
 1420 CALL TEST ( WNR$ , S ) 
 1430 IF S = 0 THEN 1460
 1440 DISPLAY AT ( 1 , 1 ) BEEP SIZE ( 1 )  : "" 
 1450 GOTO 1400
 1460 RANDOMIZE 
 1470 FOR X = 1 TO LEN ( WNR$ ) 
 1480 WUE ( VAL ( SEG$ ( WNR$ , X , 1 ) ) ) = INT ( RND * 6 ) + 1 
 1490 CALL DICE ( WUE ( VAL ( SEG$ ( WNR$ , X , 1 ) ) ) , VAL ( SEG$ ( WNR$ , X , 1 ) ) ) 
 1500 NEXT X 
 1510  ! 
 1520  !  BUCHEN (PROMPT)
 1530 CALL SOUND ( 50 , 440 , 7 , 550 , 7 ) 
 1540 CALL HCHAR ( 3 , 31 , 32 ) 
 1550 DISPLAY AT ( 3 , 2 )  : "Buchen" 
 1560 DISPLAY AT ( 3 , 14 + ( PLAY - 1 ) * 4 )  : "#" 
 1570 ACCEPT AT ( 3 , 12 + ( PLAY - 1 ) * 4 ) SIZE ( 2 )  : BU$ 
 1580 IF LEN ( BU$ ) = 0 THEN 1690
 1590 IF SEG$ ( BU$ , 1 , 1 ) = " " THEN 1620
 1600 IF SEG$ ( BU$ , 1 , 1 ) < "0" OR SEG$ ( BU$ , 1 , 1 ) > "9" THEN 1690
 1610 IF LEN ( BU$ ) = 1 THEN 1630
 1620 IF SEG$ ( BU$ , 2 , 1 ) < "0" OR SEG$ ( BU$ , 2 , 1 ) > "9" THEN 1690
 1630 BU = VAL ( BU$ ) 
 1640 IF BU < 1 OR BU > 13 THEN 1690
 1650 IF BU = 12 AND TP ( BU , PLAY ) = - 1 THEN 1690
 1660 IF BU = 12 AND WUE ( 1 ) = WUE ( 2 ) AND WUE ( 2 ) = WUE ( 3 ) AND WUE ( 3 ) = WUE ( 4 ) AND WUE ( 4 ) = WUE ( 5 ) THEN 1710
 1670 IF TP ( BU , PLAY ) < > 0 THEN 1690
 1680 GOTO 1710
 1690 DISPLAY AT ( 1 , 1 ) BEEP SIZE ( 1 )  : "" 
 1700 GOTO 1570
 1710 GOSUB 1860 :: GOSUB 2720 :: GOSUB 2910
 1720 IF SYAH = 0 THEN 1740
 1730 SYAH = 0  :: GOTO 1140
 1740 PLAY = PLAY + 1 
 1750 IF PLAY > ANZ THEN PLAY = 1 
 1760 IF PLAY = 1 AND SW13 = 1 THEN 1800
 1770 GOTO 1140
 1780  ! 
 1790  !  SIEGER-BILD AUSGEBEN
 1800 FOR X = 1 TO 500  :: NEXT X 
 1810 GOSUB 3130
 1820 IF KEY = 74 OR KEY = 106 THEN 790
 1830 CALL CLEAR  :: STOP 
 1840  ! 
 1850  !  BUCHEN
 1860 FOR X = 1 TO 6  :: ANZW ( X ) = 0  :: NEXT X 
 1870 FOR X = 1 TO 5 
 1880 ANZW ( WUE ( X ) ) = ANZW ( WUE ( X ) ) + 1 
 1890 NEXT X 
 1900 ON BU GOTO 1910, 1940, 1970, 2000, 2030, 2060, 2090, 2200, 2310, 2440, 2510, 2580, 2660
 1910 TP ( 1 , PLAY ) = ANZW ( 1 ) 
 1920 IF TP ( 1 , PLAY ) < 3 THEN TP ( 1 , PLAY ) = - 1 
 1930 GOTO 2690
 1940 TP ( 2 , PLAY ) = 2 * ANZW ( 2 ) 
 1950 IF TP ( 2 , PLAY ) < 6 THEN TP ( 2 , PLAY ) = - 1 
 1960 GOTO 2690
 1970 TP ( 3 , PLAY ) = 3 * ANZW ( 3 ) 
 1980 IF TP ( 3 , PLAY ) < 9 THEN TP ( 3 , PLAY ) = - 1 
 1990 GOTO 2690
 2000 TP ( 4 , PLAY ) = 4 * ANZW ( 4 ) 
 2010 IF TP ( 4 , PLAY ) < 12 THEN TP ( 4 , PLAY ) = - 1 
 2020 GOTO 2690
 2030 TP ( 5 , PLAY ) = 5 * ANZW ( 5 ) 
 2040 IF TP ( 5 , PLAY ) < 15 THEN TP ( 5 , PLAY ) = - 1 
 2050 GOTO 2690
 2060 TP ( 6 , PLAY ) = 6 * ANZW ( 6 ) 
 2070 IF TP ( 6 , PLAY ) < 18 THEN TP ( 6 , PLAY ) = - 1 
 2080 GOTO 2690
 2090 FOR X = 1 TO 6 
 2100 IF ANZW ( X ) > 2 THEN 2140
 2110 NEXT X 
 2120 TP ( 7 , PLAY ) = - 1 
 2130 GOTO 2690
 2140 TP ( 7 , PLAY ) = 3 * X 
 2150 FOR X = 6 TO 1 STEP - 1 
 2160 IF ANZW ( X ) < > 0 AND ANZW ( X ) < > 3 THEN 2180
 2170 NEXT X 
 2180 TP ( 7 , PLAY ) = TP ( 7 , PLAY ) + X 
 2190 GOTO 2690
 2200 FOR X = 1 TO 6 
 2210 IF ANZW ( X ) > 3 THEN 2250
 2220 NEXT X 
 2230 TP ( 8 , PLAY ) = - 1 
 2240 GOTO 2690
 2250 TP ( 8 , PLAY ) = 4 * X 
 2260 FOR X = 6 TO 1 STEP - 1 
 2270 IF ANZW ( X ) < > 0 AND ANZW ( X ) < > 4 THEN 2290
 2280 NEXT X 
 2290 TP ( 8 , PLAY ) = TP ( 8 , PLAY ) + X 
 2300 GOTO 2690
 2310 FOR X = 1 TO 6 
 2320 IF ANZW ( X ) = 3 THEN 2390
 2330 IF ANZW ( X ) = 5 THEN 2370
 2340 NEXT X 
 2350 TP ( 9 , PLAY ) = - 1 
 2360 GOTO 2690
 2370 TP ( 9 , PLAY ) = 25 
 2380 GOTO 2690
 2390 FOR X = 1 TO 6 
 2400 IF ANZW ( X ) = 2 THEN 2370
 2410 NEXT X 
 2420 TP ( 9 , PLAY ) = - 1 
 2430 GOTO 2690
 2440 FOR X = 1 TO 5 
 2450 IF ANZW ( X ) < > 1 THEN 2490
 2460 NEXT X 
 2470 TP ( 10 , PLAY ) = 30 
 2480 GOTO 2690
 2490 TP ( 10 , PLAY ) = - 1 
 2500 GOTO 2690
 2510 FOR X = 2 TO 6 
 2520 IF ANZW ( X ) < > 1 THEN 2560
 2530 NEXT X 
 2540 TP ( 11 , PLAY ) = 40 
 2550 GOTO 2690
 2560 TP ( 11 , PLAY ) = - 1 
 2570 GOTO 2690
 2580 FOR X = 1 TO 6 
 2590 IF ANZW ( X ) = 5 THEN 2630
 2600 NEXT X 
 2610 TP ( 12 , PLAY ) = - 1 
 2620 GOTO 2690
 2630 IF TP ( 12 , PLAY ) < > 0 THEN SYAH = 1 
 2640 TP ( 12 , PLAY ) = TP ( 12 , PLAY ) + 50 
 2650 GOTO 2690
 2660 FOR X = 1 TO 6 
 2670 TP ( 13 , PLAY ) = TP ( 13 , PLAY ) + X * ANZW ( X ) 
 2680 NEXT X 
 2690 RETURN 
 2700  ! 
 2710  !  TP-TAB KUMULIEREN
 2720 SW13 = 1  :: W = 0 
 2730 FOR X = 1 TO 6 
 2740 IF TP ( X , PLAY ) < > - 1 THEN W = W + TP ( X , PLAY ) 
 2750 IF TP ( X , PLAY ) = 0 THEN SW13 = 0 
 2760 NEXT X 
 2770 TP ( 14 , PLAY ) = W  :: W = 0 
 2780 FOR X = 7 TO 13 
 2790 IF TP ( X , PLAY ) < > - 1 THEN W = W + TP ( X , PLAY ) 
 2800 IF TP ( X , PLAY ) = 0 THEN SW13 = 0 
 2810 NEXT X 
 2820 TP ( 16 , PLAY ) = W 
 2830 IF TP ( 14 , PLAY ) < 63 THEN 2870
 2840 IF TP ( 15 , PLAY ) < > 0 THEN 2870
 2850 CALL SOUND ( 190 , 262 , 12 )  :: CALL SOUND ( 190 , 330 , 9 )  :: CALL SOUND ( 190 , 392 , 6 )  :: CALL SOUND ( 450 , 523 , 5 , 392 , 5 , 330 , 5 ) 
 2860 TP ( 15 , PLAY ) = 35 
 2870 TP ( 17 , PLAY ) = TP ( 14 , PLAY ) + TP ( 15 , PLAY ) + TP ( 16 , PLAY ) 
 2880 RETURN 
 2890  ! 
 2900  !  TP-TAB AUSGEBEN
 2910 DISPLAY AT ( 3 , 1 )  : "" 
 2920 Y = 12 + ( PLAY - 1 ) * 4 
 2930 IF BU > 6 THEN 3030
 2940 IF TP ( BU , PLAY ) = - 1 THEN DISPLAY AT ( BU + 4 , Y ) SIZE ( 3 )  : " --" 
 2950 IF TP ( BU , PLAY ) = - 1 THEN 2980
 2960 DISPLAY AT ( BU + 4 , Y ) SIZE ( 3 )  : USING 180 : TP ( BU , PLAY ) 
 2970 IF TP ( BU , PLAY ) > 3 * BU THEN DISPLAY AT ( BU + 4 , Y + 3 ) SIZE ( 1 )  : "+" 
 2980 DISPLAY AT ( 11 , Y ) SIZE ( 3 )  : USING 180 : TP ( 14 , PLAY ) 
 2990 DISPLAY AT ( 12 , Y ) SIZE ( 3 )  : USING 180 : TP ( 15 , PLAY ) 
 3000 DISPLAY AT ( 21 , Y ) SIZE ( 3 )  : USING 180 : TP ( 16 , PLAY ) 
 3010 DISPLAY AT ( 22 , Y ) SIZE ( 3 )  : USING 180 : TP ( 17 , PLAY ) 
 3020 GOTO 3100
 3030 DISPLAY AT ( 11 , Y ) SIZE ( 3 )  : USING 180 : TP ( 14 , PLAY ) 
 3040 DISPLAY AT ( 12 , Y ) SIZE ( 3 )  : USING 180 : TP ( 15 , PLAY ) 
 3050 IF TP ( BU , PLAY ) = - 1 THEN DISPLAY AT ( BU + 7 , Y ) SIZE ( 3 )  : " --" 
 3060 IF TP ( BU , PLAY ) = - 1 THEN 3100
 3070 DISPLAY AT ( BU + 7 , Y ) SIZE ( 3 )  : USING 180 : TP ( BU , PLAY ) 
 3080 DISPLAY AT ( 21 , Y ) SIZE ( 3 )  : USING 180 : TP ( 16 , PLAY ) 
 3090 DISPLAY AT ( 22 , Y ) SIZE ( 3 )  : USING 180 : TP ( 17 , PLAY ) 
 3100 RETURN 
 3110  ! 
 3120  !  SIEGERBILD AUSGEBEN
 3130 IF ANZ < 2 THEN CALL CLEAR 
 3140 IF ANZ < 2 THEN CALL DELSPRITE ( ALL ) 
 3150 IF ANZ < 2 THEN 3770
 3160  ! 
 3170  !  SIEGER-TAB FUELLEN
 3180 FOR Y = 1 TO 4 
 3190 W1 = MAX ( TP ( 17 , 1 ) , TP ( 17 , 2 ) ) 
 3200 W2 = MAX ( TP ( 17 , 3 ) , TP ( 17 , 4 ) ) 
 3210 W3 = MAX ( W1 , W2 ) 
 3220 FOR X = 1 TO 4 
 3230 IF TP ( 17 , X ) < > W3 THEN 3270
 3240 TS ( Y ) = X 
 3250 TP ( 17 , X ) = TP ( 17 , X ) * ( - 1 ) 
 3260 GOTO 3280
 3270 NEXT X 
 3280 NEXT Y 
 3290 FOR X = 1 TO 4  :: TP ( 17 , X ) = TP ( 17 , X ) * ( - 1 )  :: NEXT X 
 3300 IF TP ( 17 , TS ( 1 ) ) < = TOP THEN 3330
 3310 TOP = TP ( 17 , TS ( 1 ) ) 
 3320 TI = TS ( 1 ) 
 3330 CALL CLEAR  :: CALL DELSPRITE ( ALL )  :: CALL SCREEN ( 16 ) 
 3340 DISPLAY AT ( 2 , 5 )  : "T H E   K I N G S" 
 3350 DISPLAY AT ( 4 , 7 )  : "O F   D I C E" 
 3360 CALL HCHAR ( 6 , 7 , 136 , 17 ) 
 3370  ! 
 3380  !  MUSIC
 3390 FOR X = 1 TO 3 
 3400 CALL SOUND ( 150 , 330 , 10 , 277 , 10 ) 
 3410 CALL SOUND ( 450 , 440 , 10 , 330 , 10 ) 
 3420 NEXT X 
 3430 CALL SOUND ( 150 , 330 , 10 , 277 , 10 ) 
 3440 CALL SOUND ( 150 , 330 , 10 , 277 , 10 ) 
 3450 CALL SOUND ( 150 , 277 , 10 , 220 , 10 ) 
 3460 CALL SOUND ( 150 , 330 , 10 , 277 , 10 ) 
 3470 CALL SOUND ( 500 , 440 , 10 , 330 , 10 ) 
 3480 FOR X = 1 TO 5 
 3490 CALL SCREEN ( 16 ) 
 3500 FOR Y = X * 2 TO 90  :: NEXT Y 
 3510 CALL SCREEN ( 6 ) 
 3520 FOR Y = X * 2 TO 90  :: NEXT Y 
 3530 NEXT X 
 3540 CALL SCREEN ( 12 ) 
 3550 FOR X = 1 TO 150  :: NEXT X 
 3560 FOR Y = 4 TO 2 STEP - 1 
 3570 W$ = STR$ ( Y ) 
 3580 IF TP ( 17 , TS ( Y ) ) = TP ( 17 , TS ( Y - 1 ) ) THEN W$ = " " 
 3590 IF Y < = ANZ THEN DISPLAY AT ( 12 + ( Y - 1 ) * 2 , 5 )  : W$ & "   " & NAM$ ( TS ( Y ) ) 
 3600 IF Y < = ANZ THEN DISPLAY AT ( 12 + ( Y - 1 ) * 2 , 17 )  : "(" & STR$ ( TP ( 17 , TS ( Y ) ) ) & ")" 
 3610 IF TP ( 18 , TS ( Y ) ) < > 0 THEN DISPLAY AT ( 12 + ( Y - 1 ) * 2 , 24 ) SIZE ( 3 )  : USING 180 : TP ( 18 , TS ( Y ) )  :: DISPLAY AT ( 12 + ( Y - 1 ) * 2 , 27 )  : "x" 
 3620 FOR X = 1 TO 200  :: NEXT X 
 3630 NEXT Y 
 3640 FOR X = 1 TO 200  :: NEXT X 
 3650 FOR Z = 1 TO 3 
 3660 FOR Y = 1 TO 7 
 3670 CALL SPRITE ( # 1 , 49 , COL ( Y ) , 72 , 46 ) 
 3680 W = TS ( 1 ) 
 3690 FOR X = 1 TO LEN ( NAM$ ( W ) ) 
 3700 CALL SPRITE ( # X + 1 , ASC ( SEG$ ( NAM$ ( W ) , X , 1 ) ) , COL ( Y ) , 72 , 79 + ( X - 1 ) * 15 ) 
 3710 NEXT X 
 3720 NEXT Y 
 3730 NEXT Z 
 3740 DISPLAY AT ( 11 , 17 )  : "(" & STR$ ( TP ( 17 , TS ( 1 ) ) ) & ")" 
 3750 TP ( 18 , TS ( 1 ) ) = TP ( 18 , TS ( 1 ) ) + 1 
 3760 DISPLAY AT ( 11 , 24 ) SIZE ( 3 )  : USING 180 : TP ( 18 , TS ( 1 ) )  :: DISPLAY AT ( 11 , 27 )  : "x" 
 3770 CALL SOUND ( 160 , 440 , 12 , 550 , 12 ) 
 3780 CALL SOUND ( 350 , 440 , 12 , 550 , 12 ) 
 3790 DISPLAY AT ( 22 , 3 )  : "Ein neues Spiel? (J/N)" 
 3800 CALL KEY ( 0 , KEY , X ) 
 3810 IF X < > 1 THEN 3800
 3820 IF KEY = 74 OR KEY = 106 OR KEY = 78 OR KEY = 110 THEN 3850
 3830 DISPLAY AT ( 1 , 1 ) SIZE ( 1 ) BEEP  : "" 
 3840 GOTO 3800
 3850 RETURN 
 3860  ! 
 3870  !  WUERFEL ZEICHNEN
 3880 SUB DICE ( AUG , S ) 
 3890 IF SWD = 1 THEN 3980
 3900 WU1$ = "FEFEFEEEFEFEFE00" 
 3910 WU2$ = "FEFAFEFEFEBEFE00" 
 3920 WU3$ = "FEFAFEEEFEBEFE00" 
 3930 WU4$ = "FEBAFEFEFEBAFE00" 
 3940 WU5$ = "FEBAFEEEFEBAFE00" 
 3950 WU6$ = "FEBAFEBAFEBAFE00" 
 3960 CALL CHAR ( 128 , WU1$ )  :: CALL CHAR ( 129 , WU2$ )  :: CALL CHAR ( 130 , WU3$ )  :: CALL CHAR ( 131 , WU4$ )  :: CALL CHAR ( 132 , WU5$ )  :: CALL CHAR ( 133 , WU6$ ) 
 3970 CALL MAGNIFY ( 2 )  :: SWD = 1 
 3980 CALL SPRITE ( # S , AUG + 127 , 5 , 40 + ( S - 1 ) * 24 , 241 ) 
 3990 SUBEND 
 4000  ! 
 4010  !  WUERFEL-EING. TESTEN
 4020 SUB TEST ( WNR$ , S ) 
 4030 S = 0 
 4040 FOR X = 1 TO LEN ( WNR$ ) 
 4050 IF SEG$ ( WNR$ , X , 1 ) = " " THEN 4070
 4060 IF SEG$ ( WNR$ , X , 1 ) < "1" OR SEG$ ( WNR$ , X , 1 ) > "5" THEN S = 1 
 4070 NEXT X 
 4080 FOR X = 1 TO LEN ( WNR$ ) - 1 
 4090 FOR Y = X + 1 TO LEN ( WNR$ ) 
 4100 IF SEG$ ( WNR$ , X , 1 ) < > " " AND SEG$ ( WNR$ , X , 1 ) = SEG$ ( WNR$ , Y , 1 ) THEN S = 1 
 4110 NEXT Y 
 4120 NEXT X 
 4130 SUBEND 
