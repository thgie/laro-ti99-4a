  100 DIM ZU ( 50 ) , FALL ( 50 ) 
  110 RANDOMIZE 
  120 CALL SCREEN ( 1 ) 
  130 GOSUB 2930
  140 CALL SCREEN ( 2 ) 
  150 PRINT "NAME DES SPIELERS:"  ; NAME$ 
  160 PRINT 
  170 PRINT " 01                      01 " 
  180 PRINT " 01                      01 " 
  190 PRINT " 01                      01 " 
  200 PRINT " 01                      01 " 
  210 PRINT " 01                      01 " 
  220 PRINT " 01                      01 " 
  230 PRINT " 01                      01 " 
  240 PRINT "aaaaaaaaaaaaaaaaaaaaaaaaaaaa" 
  250 PRINT "  h                      i  " 
  260 PRINT "  h                      i  " 
  270 PRINT "  h    PPPPPP  PPPPPP    i  " 
  280 PRINT "  h    P(,,*P  P(,,*P    i  " 
  290 PRINT "  h    P,,,,P  P,,,,P    i  " 
  300 PRINT "  h    P),,+P  P),,+P    i  " 
  310 PRINT "  h    PPPPPP  PPPPPP    i  " 
  320 PRINT "  h                      i  " 
  330 PRINT "  h                      i  " 
  340 PRINT "  h                      i  " 
  350 PRINT "  h                      i  " 
  360 PRINT "  h                      i  " 
  370 PRINT "  h                      i  " 
  380 PRINT "aaaaaaaaaaaaaaaaaaaaaaaaaaaa" 
  390 FOR I = 1 TO 12 
  400 CALL COLOR ( I , 16 , 1 ) 
  410 NEXT I 
  420 CALL CHAR ( 97 , "FFFFFFFFFFFFFFFF" ) 
  430 Q = 22 
  440 R = 14 
  450 CALL HCHAR ( Q - 1 , R , 112 ) 
  460 CALL HCHAR ( Q , R , 113 ) 
  470 L = 1 
  480 RI = 1 
  490 CALL CHAR ( 142 , "FFFFFFFFFFFFFFFF" ) 
  500 CALL COLOR ( 14 , 1 , 1 ) 
  510 P = 50000 
  520 CALL CHAR ( 44 , "0" ) 
  530 CALL CHAR ( 112 , "7C547C4C38107CBA" ) 
  540 CALL CHAR ( 113 , "BABABA282828286C" ) 
  550 CALL CHAR ( 120 , "7E5A7E427E187E7E" ) 
  560 CALL CHAR ( 121 , "7E7E7E7E7E666666" ) 
  570 CALL CHAR ( 122 , "00183C7E7E3C18" ) 
  580 CALL CHAR ( 128 , "3C7EFFFFFFFF7E3C" ) 
  590 CALL CHAR ( 40 , "FFFCF0E0C0C08080" ) 
  600 CALL CHAR ( 41 , "8080C0C0E0F0FCFF" ) 
  610 CALL CHAR ( 42 , "FF3F0F0703030101" ) 
  620 CALL CHAR ( 43 , "01010303070F3FFF" ) 
  630 CALL CHAR ( 48 , "C0C0C0FFC0C0C0C0" ) 
  640 CALL CHAR ( 49 , "030303FF03030303" ) 
  650 CALL CHAR ( 56 , "00402001070F0FDF" ) 
  660 CALL CHAR ( 57 , "80840880E0F0F0FB" ) 
  670 CALL CHAR ( 58 , "0F0F0711020" ) 
  680 CALL CHAR ( 59 , "F0F0E01008048080" ) 
  690 CALL CHAR ( 104 , "0202020202020202" ) 
  700 CALL CHAR ( 105 , "4040404040404040" ) 
  710 CALL CHAR ( 72 , "00183C7E7E3C18" ) 
  720 CALL CHAR ( 80 , "FFFFFFFFFFFFFFFF" ) 
  730 CALL COLOR ( 11 , 16 , 1 ) 
  740 CALL COLOR ( 12 , 15 , 1 ) 
  750 CALL COLOR ( 13 , 9 , 1 ) 
  760 CALL COLOR ( 4 , 12 , 1 ) 
  770 CALL COLOR ( 3 , 10 , 1 ) 
  780 CALL COLOR ( 2 , 10 , 6 ) 
  790 CALL COLOR ( 10 , 8 , 1 ) 
  800 CALL COLOR ( 6 , 14 , 1 ) 
  810 CALL COLOR ( 7 , 10 , 1 ) 
  820 CALL COLOR ( 9 , 14 , 1 ) 
  830 FOR SOU = 1 TO 62 
  840 READ ABC , DEFZ , GHI , JKL 
  850 CALL SOUND ( INT ( JKL * 1.5 ) , ABC , 0 , DEFZ , 0 , GHI , 0 ) 
  860 NEXT SOU 
  870 FOR I = 1 TO 50 
  880 RANDOMIZE 
  890 ZU ( I ) = INT ( RND * 14 ) + 1 
  900 FALL ( I ) = INT ( RND * 28 ) + 1 
  910 NEXT I 
  920 CALL KEY ( 0 , X , Y ) 
  930 IF X = 68 THEN 1360
  940 IF X = 83 THEN 1540
  950 IF X = 69 THEN 1710
  960 IF X = 88 THEN 2790
  980 IF X = 32 THEN 1950
  990 IF RI > 50 THEN RI = 1 
 1000 NOW = NOW + ZU ( RI ) 
 1010 NI = NI + 1 
 1020 FAU = FAU + 1 
 1030 NEU = NEU + 1 
 1050 IF FAU = ZU ( RI ) THEN 2010
 1060 IF L > 50 THEN L = 1 
 1070 IF NEU = FALL ( L ) THEN 2310
 1080 IF P < = 0 THEN 1120
 1090 P = P - 1 
 1110 GOTO 920
 1120 CALL CLEAR 
 1130 RESTORE 3340
 1135 FOR SOU = 1 TO 62 
 1140 X = INT ( 16 * RND + 1 ) 
 1150 CALL SCREEN ( X ) 
 1160 READ ABC , DEFZ , GHI , JKL 
 1170 CALL SOUND ( INT ( JKL * 1.3 ) , ABC , 0 , DEFZ , 0 , GHI , 0 ) 
 1180 NEXT SOU 
 1190 CALL CLEAR 
 1195 CALL CHARSET 
 1200 RANDOMIZE 
 1210 NOW = INT ( 100 * RND ) + NOW 
 1220 GOSUB 3450
 1230 PRINT "LEIDER IST DAS SPIEL JETZT  ZUENDE."  : "SIE MACHTEN"  ; NOW  ; "SCHRITTE." 
 1240 PRINT "UND RETTETEN SOMIT"  ; NOW 
 1250 PRINT "MENSCHENLEBEN."  :  :  : 
 1260 PRINT "DIE HOECHSTE PUNKTZAHL      BISHER BETRUG"  ; HIGH 
 1270 PRINT " BRAVO,"  ; NAME$  ; "!" 
 1280 REM 
 1290 REM 
 1300 REM 
 1310 REM 
 1320 CALL SCREEN ( 16 ) 
 1330 REM 
 1340 REM 
 1350 END 
 1360 CALL GCHAR ( Q , R + 1 , VOR ) 
 1370 IF VOR = 122 THEN 1490
 1380 IF VOR = 121 THEN 1490
 1390 IF VOR = 97 THEN 1520
 1400 IF R > = 27 THEN 940
 1410 REM 
 1420 CALL SOUND ( 30 , - 5 , 5 , 110 , 15 , 205 , 15 ) 
 1430 CALL VCHAR ( Q - 1 , R , 142 , 2 ) 
 1440 R = R + 1 
 1450 CALL HCHAR ( Q - 1 , R , 112 ) 
 1460 CALL HCHAR ( Q , R , 113 ) 
 1470 P = P - 1 
 1480 GOTO 940
 1490 P = P - 1000 
 1500 CALL SOUND ( - 200 , - 5 , 5 , 200 , 5 , 205 , 5 ) 
 1510 GOTO 1430
 1520 P = P + 100 
 1530 GOTO 1430
 1540 CALL GCHAR ( Q , R - 1 , VOR ) 
 1550 IF VOR = 122 THEN 1660
 1560 IF VOR = 121 THEN 1660
 1570 IF VOR = 97 THEN 1690
 1580 IF R < = 6 THEN 950
 1590 CALL SOUND ( - 30 , - 5 , 5 , 110 , 15 , 155 , 15 ) 
 1600 CALL VCHAR ( Q - 1 , R , 142 , 2 ) 
 1610 R = R - 1 
 1620 CALL HCHAR ( Q - 1 , R , 112 ) 
 1630 CALL HCHAR ( Q , R , 113 ) 
 1640 P = P - 1 
 1650 GOTO 950
 1660 P = P - 1000 
 1670 CALL SOUND ( - 200 , - 5 , 5 , 200 , 5 , 203 , 5 ) 
 1680 GOTO 1600
 1690 P = P + 100 
 1700 GOTO 1600
 1710 IF R = 6 THEN 1840
 1720 IF R = 27 THEN 1840
 1730 CALL GCHAR ( Q - 2 , R , UEBER ) 
 1740 IF UEBER = 58 THEN 1780
 1750 IF UEBER = 59 THEN 1780
 1760 P = P - 100 
 1770 GOTO 960
 1780 CALL HCHAR ( Q - 2 , R - 1 , 142 , 3 ) 
 1790 CALL HCHAR ( Q - 3 , R - 1 , 142 , 3 ) 
 1800 LA = LA - 1 
 1810 CALL SOUND ( - 900 , 1500 , 5 , 1504 , 6 , 1507 , 8 ) 
 1820 P = P + 500 
 1830 GOTO 960
 1840 IF Q < > 9 THEN 1880
 1850 P = P - 100 
 1860 GOTO 960
 1870 CALL SOUND ( - 300 , - 6 , 5 , 500 , 20 , 800 , 23 ) 
 1880 CALL VCHAR ( Q - 1 , R , 142 , 2 ) 
 1890 CALL SOUND ( - 100 , 1000 , 5 , 1001 , 5 , 1001 , 5 ) 
 1900 Q = 8 
 1910 CALL HCHAR ( Q - 1 , R , 112 ) 
 1920 CALL HCHAR ( Q , R , 113 ) 
 1930 P = P + 100 
 1940 GOTO 960
 1950 CALL SOUND ( - 200 , 110 , 5 , 800 , 5 , 250 , 5 ) 
 1960 CALL VCHAR ( Q - 1 , R - 1 , 142 , 2 ) 
 1970 CALL VCHAR ( Q - 1 , R + 1 , 142 , 2 ) 
 1980 P = P - 100 
 1990 CALL SOUND ( - 200 , 110 , 5 , 800 , 5 , 2500 , 5 ) 
 2000 GOTO 1050
 2010 RI = RI + 1 
 2020 FAU = 0 
 2030 CALL SOUND ( - 250 , - 4 , 10 , 110 , 10 , 113 , 10 ) 
 2040 RANDOMIZE 
 2050 AB = 1  ! INT(RND*2)+1
 2060 RANDOMIZE 
 2070 CD = INT ( RND * 2 ) + 1 
 2080 IF AB > 1 THEN 2190
 2090 IF CD < > 1 THEN 2130
 2100 CALL HCHAR ( Q - 1 , R - 1 , 120 ) 
 2110 CALL HCHAR ( Q , R - 1 , 121 ) 
 2120 GOTO 1070
 2130 IF CD = 2 THEN 2170
 2140 CALL HCHAR ( Q , R - 1 , 97 ) 
 2150 REM 
 2160 GOTO 1070
 2170 CALL HCHAR ( Q , R - 1 , 122 ) 
 2180 GOTO 1070
 2190 IF CD < > 1 THEN 2230
 2200 CALL HCHAR ( Q - 1 , R + 1 , 120 ) 
 2210 CALL HCHAR ( Q , R + 1 , 121 ) 
 2220 GOTO 1070
 2230 IF CD < > 2 THEN 2280
 2240 Q = 22 
 2250 R = 14 
 2260 CALL HCHAR ( Q , R + 1 , 122 ) 
 2270 GOTO 1070
 2280 CALL HCHAR ( Q , R + 1 , 97 ) 
 2290 GOTO 1070
 2300 RANDOMIZE 
 2310 ZUF = INT ( 12 * RND ) + 1 
 2320 NEU = 0 
 2330 ON ZUF GOSUB 2430, 2460, 2490, 2520, 2550, 2580, 2610, 2640, 2670, 2700, 2730, 2760
 2340 CALL HCHAR ( POS1 , POS2 , 56 ) 
 2350 CALL HCHAR ( POS1 , POS2 + 1 , 57 ) 
 2360 CALL HCHAR ( POS1 + 1 , POS2 , 58 ) 
 2370 CALL HCHAR ( POS1 + 1 , POS2 + 1 , 59 ) 
 2380 CALL SOUND ( - 300 , - 1 , 9 , 2000 , 2 , 2010 , 2 ) 
 2390 LA = LA + 1 
 2400 IF LA < 3 THEN 2420
 2410 P = P - 1000 
 2420 GOTO 1090
 2430 POS1 = 5 
 2440 POS2 = 7 
 2450 RETURN 
 2460 POS1 = 5 
 2470 POS2 = 10 
 2480 RETURN 
 2490 POS1 = 5 
 2500 POS2 = 13 
 2510 RETURN 
 2520 POS1 = 5 
 2530 POS2 = 16 
 2540 RETURN 
 2550 POS1 = 5 
 2560 POS2 = 19 
 2570 RETURN 
 2580 POS1 = 5 
 2590 POS2 = 22 
 2600 RETURN 
 2610 POS1 = 19 
 2620 POS2 = 7 
 2630 RETURN 
 2640 POS1 = 19 
 2650 POS2 = 10 
 2660 RETURN 
 2670 POS1 = 19 
 2680 POS2 = 13 
 2690 RETURN 
 2700 POS1 = 19 
 2710 POS2 = 16 
 2720 RETURN 
 2730 POS1 = 19 
 2740 POS2 = 19 
 2750 RETURN 
 2760 POS1 = 19 
 2770 POS2 = 22 
 2780 RETURN 
 2790 IF Q = 8 THEN 2820
 2800 P = P - 100 
 2810 GOTO 980
 2820 IF R > = 27 THEN 2860
 2830 IF R < = 6 THEN 2860
 2840 P = P - 100 
 2850 GOTO 980
 2860 CALL VCHAR ( Q - 1 , R , 142 , 2 ) 
 2870 Q = 22 
 2880 CALL SOUND ( - 100 , 1000 , 5 , 1001 , 5 , 1002 , 5 ) 
 2890 CALL HCHAR ( Q - 1 , R , 112 ) 
 2900 CALL HCHAR ( Q , R , 113 ) 
 2910 P = P - 1 
 2920 GOTO 980
 2930 CALL SCREEN ( 16 ) 
 2940 CALL CLEAR 
 2950 PRINT "****************************" 
 2960 PRINT  :  : "*********** HELP ***********" 
 2970 PRINT  :  : "****************************"  :  :  :  :  : "IDEE UND AUSFUEHRUNG VON    ROBERT-JAN MILLEKER" 
 2980 PRINT  : "TEXT UNTER MITARBEIT VON    ALEXANDER STEIN" 
 2990 FOR RET = 1 TO 1500 STEP 15 
 3000 CALL SOUND ( - 1000 , 110 + RET , 0 , 5000 - RET , 0 , 110 , 0 ) 
 3010 NEXT RET 
 3020 CALL CLEAR 
 3030 INPUT "GEBEN SIE BITTE IHREN NAMEN EIN:"  : NAME$ 
 3040 CALL CLEAR 
 3050 REM 
 3060 PRINT "BENOETIGEN SIE DIE SPIEL-   REGELN? (J/N)" 
 3070 CALL KEY ( 0 , K , S ) 
 3080 CALL SOUND ( - 1000 , 110 , 0 , 111 , 0 , 110 , 0 ) 
 3090 IF K = 74 THEN 3130
 3100 IF K = 78 THEN 3120
 3110 GOTO 3070
 3120 RETURN 
 3130 CALL CLEAR 
 3140 PRINT "SIE BEFINDEN SICH EIN EINER COMPUTERZENTRALE" 
 3150 PRINT "SIE MUESSEN VERSUCHEN DIE   AUFLEUCHTENDEN LAMPEN AUSZU-LOESCHEN. DIESES KOENNEN SIE" 
 3160 PRINT "MITTELS DER TASTE "E" BE-   WIRKEN." 
 3170 PRINT "DAS MAENNCHEN BEWEGEN SIE   MIT DEN TASTEN              "<E/S/D/X>"." 
 3180 PRINT "IN DIE OBERE ETAGE KOENNEN  SIE NUR GELANGEN,WENN SIE ANDEN SEITLICHEN STRICHEN STE-HEN." 
 3190 PRINT "SELBIGES GILT,WENN SIE IN   DIE UNTERE ETAGE GELANGEN   WOLLEN." 
 3200 PRINT "                        >>" 
 3210 CALL KEY ( 0 , K , S ) 
 3220 CALL SOUND ( - 1000 , 110 , 10 ) 
 3230 CALL SOUND ( - 100 , 5000 , 10 ) 
 3240 IF S = 0 THEN 3210
 3250 PRINT "UNTERWEGS WERDEN SIE VON    ROBOTERN BZW. VON RAUTEN" 
 3260 PRINT "BEHINDERT.MIT SPACE BRINGEN SIE DIESE ZUM VERSCHWINDEN." 
 3270 PRINT  :  : "DRUECKEN SIE EINE TASTE" 
 3280 CALL KEY ( 0 , K , S ) 
 3290 CALL SOUND ( - 100 , 566 , 10 , 566 , 10 , 566 , 10 ) 
 3300 IF S = 0 THEN 3280
 3310 RETURN 
 3320 CALL CLEAR 
 3330 STOP 
 3340 DATA 330 , 330 , 330 , 300 , 330 , 329 , 331 , 300 , 349 , 349 , 349 , 300 , 392 , 392 , 392 , 300 , 392 , 392 , 392 , 300 , 349 , 349 , 349 , 300 , 330 
 3350 DATA 329 , 331 , 300 , 294 , 295 , 293 , 300 , 262 , 263 , 261 , 300 , 262 , 263 , 261 , 300 , 294 , 295 , 293 , 300 , 330 , 331 , 329 , 300 
 3360 DATA 330 , 329 , 331 , 550 , 294 , 295 , 293 , 100 , 294 , 295 , 293 , 580 , 330 , 329 , 331 , 300 , 330 , 329 , 331 , 300 , 349 , 348 , 350 , 300 
 3370 DATA 392 , 394 , 391 , 300 , 392 , 393 , 391 , 300 , 349 , 350 , 348 , 300 , 330 , 329 , 331 , 300 , 294 , 295 , 293 , 300 , 262 , 263 , 261 , 300 
 3380 DATA 262 , 263 , 261 , 300 , 294 , 295 , 293 , 300 , 330 , 329 , 331 , 300 , 294 , 295 , 293 , 470 , 262 , 263 , 261 , 100 , 262 , 263 , 261 , 300 
 3390 DATA 294 , 295 , 293 , 300 , 294 , 295 , 293 , 300 , 330 , 329 , 331 , 300 , 262 , 263 , 261 , 300 , 294 , 295 , 293 , 300 , 330 , 331 , 329 , 100 
 3400 DATA 349 , 348 , 350 , 100 , 330 , 329 , 331 , 300 , 262 , 263 , 261 , 300 , 294 , 293 , 295 , 300 , 330 , 331 , 329 , 100 , 349 , 348 , 350 , 100 
 3410 DATA 330 , 331 , 329 , 300 , 294 , 295 , 293 , 300 , 262 , 263 , 261 , 300 , 294 , 295 , 293 , 300 , 196 , 197 , 195 , 470 , 330 , 331 , 329 , 300 
 3420 DATA 330 , 329 , 331 , 300 , 349 , 348 , 350 , 300 , 392 , 393 , 391 , 300 , 392 , 393 , 391 , 300 , 349 , 348 , 350 , 300 , 330 , 329 , 331 , 300 
 3430 DATA 294 , 295 , 293 , 300 , 262 , 263 , 261 , 300 , 262 , 263 , 261 , 300 , 294 , 295 , 293 , 300 , 330 , 329 , 331 , 300 , 294 , 295 , 293 , 470 
 3440 DATA 262 , 263 , 261 , 100 , 262 , 263 , 261 , 470 
 3450 IF NOW > HIGH THEN 3470
 3460 RETURN 
 3470 HIGH = NOW 
 3480 GOTO 3460
