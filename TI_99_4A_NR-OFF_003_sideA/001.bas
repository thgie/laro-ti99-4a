    1 REM 
    2 REM  LOTHAR HOFFMANN
    3 REM 
    4 REM  ROTEKREUZSTR.26
    5 REM 
    6 REM  3000 HANNOVER 61
    7 REM 
    8 REM        1984
    9 REM 
   10 CALL CLEAR 
   20 CALL SCREEN ( 13 ) 
   30 FOR R = 1 TO 9 
   40 CALL COLOR ( R , 16 , 13 ) 
   50 NEXT R 
   60 PRINT "BENOETIGEN SIE EINE"  : "SPIELANLEITUNG?"  :  :  : 
   70 PRINT TAB ( 7 )  ; "(J/N)" 
   80 CALL KEY ( 0 , K , S ) 
   90 IF S = 0 THEN 80
  100 IF K = ASC ( "N" ) THEN 280
  110 CALL CLEAR 
  120 PRINT "****************************" 
  130 PRINT "******* POOL-BILLARD *******" 
  140 PRINT "****************************" 
  150 FOR I = 1 TO 500 
  160 NEXT I 
  170 CALL CLEAR 
  180 PRINT "****************************"  :  : 
  190 PRINT "DIESES SPIEL IST FUER 1-4"  : "TEILNAHMER GEDACHT."  :  : 
  200 PRINT "IN DER RECHTEN SPIELFLAECHE"  : "ERSCHEINT FUER CA. 2.SEC."  : "EINE MARKIERUNG."  :  : 
  210 PRINT "DIESE SENKRECHTE LINIE MUSS"  : "MAN SICH GUT MERKEN,"  : "DENN VON DIESER POSITION"  : 
  220 PRINT "WIRD DIE KUGEL NACH LINKS"  : "OBEN IM WINKEL VON 45' ABGE-"  : "STOSSEN."  :  : "AN DER LINKEN SPIELFLAECHE"  : 
  221 PRINT "SIND DIE ZEILENNUMMERN 4-21"  : "GESCHRIEBEN."  :  : 
  222 PRINT "**DRUECKEN SIE EINE TASTE**" 
  225 CALL KEY ( 0 , K , S ) 
  226 IF S = 0 THEN 225
  229 PRINT "****************************"  :  : 
  230 PRINT "NACH DER ABFRAGE(ZEILEN-NR.)BESTIMMEN SIE DURCH DIE EIN-GABE EINER ZAHL(4-21),DANN"  : 
  231 PRINT "ENTER,VON WELCHER HOEHE DIE KUGEL ABGESTOSSEN WIRD."  :  : "DIE SENKRECHTE ACHSE UND DAS"  : 
  232 PRINT "LOCH VERSCHIEBEN SICH NACH  JEDEM STOSS."  :  : "DARAUS ERGIBT SICH EIN HOHER" 
  233 PRINT "SCHWIERIGKEITSGRAD ZU EINEM TREFFER ZU KOMMEN."  :  : 
  234 PRINT "**DRUECKEN SIE EINE TASTE**" 
  235 CALL KEY ( 0 , K , S ) 
  236 IF S = 0 THEN 235
  238 CALL CLEAR 
  239 PRINT "****************************" 
  240 PRINT "MAN KANN ALLEINE ODER BIS   ZU 4 TEILNEHMERN DAMIT SPIE-LEN."  :  : "JEDER SPIELER ERHAELT 5"  : "KUGELN"  : 
  241 PRINT "EIN TREFFER WIRD MIT EINER  HUEBSCHEN MELODIE ANGEZEIGT."  :  : "NACH ENDE EINES SPIELES"  : 
  242 PRINT "ZEIGT IHNEN IHR -TI-,WER"  : "DIE MEISTEN TREFFER HAT."  :  :  : 
  245 PRINT "******** VIEL SPASS ********"  :  :  : 
  246 PRINT "**DRUECKEN SIE EINE TASTE**" 
  247 CALL KEY ( 0 , K , S ) 
  248 IF S = 0 THEN 247
  280 CALL CLEAR 
  290 PRINT "ANZAHL DER SPIELER!"  :  : 
  300 PRINT "FUER ANZAHL DER SPIELER NUR EINE ZIFFER EINGEBEN!"  :  : 
  310 PRINT "(1,2,3,4)" 
  320 FOR I = 1 TO 800 
  330 NEXT I 
  340 CALL CLEAR 
  350 CALL KEY ( 0 , K , S ) 
  360 IF S = 0 THEN 350
  370 IF CHR$ ( K ) = "1" THEN 420
  380 IF CHR$ ( K ) = "2" THEN 420
  390 IF CHR$ ( K ) = "3" THEN 420
  400 IF CHR$ ( K ) = "4" THEN 420
  410 GOTO 350
  420 A$ = CHR$ ( K ) 
  430 B = VAL ( A$ ) 
  440 GOTO 2620
  450 IF B = 4 THEN 490
  460 IF B = 3 THEN 500
  470 IF B = 2 THEN 510
  480 IF B = 1 THEN 520
  490 INPUT "NAME SP.4>"  : A4$ 
  500 INPUT "NAME SP.3>"  : A3$ 
  510 INPUT "NAME SP.2>"  : A2$ 
  520 INPUT "NAME SP.1>"  : A1$ 
  530 CALL CLEAR 
  540 IF B = 4 THEN 550ELSE 590
  550 PRINT A4$ 
  560 FOR I = 1 TO 250 
  570 NEXT I 
  580 CALL CLEAR 
  590 IF B = 3 THEN 600ELSE 640
  600 PRINT A3$ 
  610 FOR I = 1 TO 250 
  620 NEXT I 
  630 CALL CLEAR 
  640 IF B = 2 THEN 650ELSE 690
  650 PRINT A2$ 
  660 FOR I = 1 TO 250 
  670 NEXT I 
  680 CALL CLEAR 
  690 IF B = 1 THEN 700ELSE 730
  700 PRINT A1$ 
  710 FOR I = 1 TO 250 
  720 NEXT I 
  730 CALL CLEAR 
  740 CALL CHAR ( 96 , "183C7E7E7E7E3C18" ) 
  750 CALL COLOR ( 12 , 2 , 2 ) 
  760 CALL CHAR ( 127 , "0" ) 
  770 CALL COLOR ( 12 , 2 , 8 ) 
  780 CALL VCHAR ( 4 , 6 , 127 , 19 ) 
  790 CALL VCHAR ( 4 , 27 , 127 , 19 ) 
  800 FOR S = 52 TO 57 
  810 CALL VCHAR ( S - 48 , 4 , S ) 
  820 NEXT S 
  830 CALL VCHAR ( 10 , 4 , 48 ) 
  840 CALL VCHAR ( 10 , 3 , 49 ) 
  850 CALL HCHAR ( 11 , 4 , 49 ) 
  860 CALL HCHAR ( 11 , 3 , 49 ) 
  870 CALL HCHAR ( 12 , 4 , 50 ) 
  880 CALL HCHAR ( 12 , 3 , 49 ) 
  890 CALL HCHAR ( 13 , 4 , 51 ) 
  900 CALL HCHAR ( 13 , 3 , 49 ) 
  910 CALL HCHAR ( 14 , 4 , 52 ) 
  920 CALL HCHAR ( 14 , 3 , 49 ) 
  930 CALL HCHAR ( 15 , 4 , 53 ) 
  940 CALL HCHAR ( 15 , 3 , 49 ) 
  950 CALL HCHAR ( 16 , 4 , 54 ) 
  960 CALL HCHAR ( 16 , 3 , 49 ) 
  970 CALL HCHAR ( 17 , 4 , 55 ) 
  980 CALL HCHAR ( 17 , 3 , 49 ) 
  990 CALL HCHAR ( 18 , 4 , 56 ) 
 1000 CALL HCHAR ( 18 , 3 , 49 ) 
 1010 CALL HCHAR ( 19 , 4 , 57 ) 
 1020 CALL HCHAR ( 19 , 3 , 49 ) 
 1030 CALL HCHAR ( 20 , 4 , 48 ) 
 1040 CALL HCHAR ( 20 , 3 , 50 ) 
 1050 CALL HCHAR ( 21 , 4 , 49 ) 
 1060 CALL HCHAR ( 21 , 3 , 50 ) 
 1070 FOR S1 = 1 TO 3 
 1080 C = INT ( 10 * RND ) + 13 
 1090 NEXT S1 
 1120 CALL HCHAR ( 4 , 7 , 127 , 20 ) 
 1130 CALL HCHAR ( 22 , 7 , 127 , 20 ) 
 1140 CALL CHAR ( 143 , "0" ) 
 1150 CALL COLOR ( R , 2 , 13 ) 
 1160 CALL CHAR ( 97 , "818181818181423C" ) 
 1170 CALL HCHAR ( 22 , C , 97 ) 
 1180 RANDOMIZE 
 1190 FOR S2 = 1 TO 3 
 1200 X = INT ( 10 * RND ) + 17 
 1210 NEXT S2 
 1216 FOR L = 6 TO 20 
 1220 CALL HCHAR ( L , X , 60 ) 
 1221 NEXT L 
 1230 FOR I = 1 TO 100 
 1240 NEXT I 
 1245 FOR L1 = 6 TO 20 
 1250 CALL HCHAR ( L1 , X , 143 ) 
 1251 NEXT L1 
 1260 INPUT "ZEILEN NR.-->"  : U 
 1270 IF U < 4 THEN 1260
 1280 IF U > 21 THEN 1260
 1290 Y = U 
 1300 XDIR = - 1 
 1310 YDIR = - 1 
 1320 X = X + XDIR 
 1330 Y = Y + YDIR 
 1340 IF X < 7 THEN 1410
 1350 IF X > 26 THEN 1410
 1360 IF Y < 4 THEN 1460
 1370 IF Y > 20 THEN 1490
 1380 CALL HCHAR ( Y , X , 96 ) 
 1390 CALL HCHAR ( Y , X , 32 ) 
 1400 GOTO 1320
 1410 XDIR = - XDIR 
 1420 CALL SOUND ( 30 , 500 , 2 ) 
 1430 IF Y < 4 THEN 1460
 1440 IF Y > 20 THEN 1490
 1450 GOTO 1320
 1460 YDIR = - YDIR 
 1470 CALL SOUND ( 30 , 200 , 2 ) 
 1480 GOTO 1320
 1490 IF B = 4 THEN 1530
 1500 IF B = 3 THEN 1790
 1510 IF B = 2 THEN 2060
 1520 IF B = 1 THEN 2330
 1530 IF X = C + 1 THEN 1660
 1550 TONE = 220 
 1560 FOR COUNT = 1 TO 3 
 1570 CALL SOUND ( 100 , TONE , 8 ) 
 1580 TONE = TONE + 220 
 1590 NEXT COUNT 
 1600 FOR I = 1 TO 500 
 1610 NEXT I 
 1620 F = F + 1 
 1630 F4 = F 
 1640 G = F4 + T4 
 1650 IF G = 5 THEN 2570ELSE 530
 1660 TONE = 110 
 1670 FOR COUNT = 1 TO 10 
 1680 CALL SOUND ( - 500 , TONE , 3 ) 
 1690 TONE = TONE + 110 
 1700 NEXT COUNT 
 1710 FOR I = 1 TO 500 
 1720 NEXT I 
 1730 T = T + 1 
 1740 T4 = T 
 1750 G = F4 + T4 
 1760 IF G = 5 THEN 2570ELSE 530
 1790 IF X = C + 1 THEN 1920
 1810 TONE = 220 
 1820 FOR COUNT = 1 TO 3 
 1830 CALL SOUND ( 100 , TONE , 3 ) 
 1840 TONE = TONE + 220 
 1850 NEXT COUNT 
 1860 FOR I = 1 TO 500 
 1870 NEXT I 
 1880 F5 = F5 + 1 
 1890 F3 = F5 
 1900 G1 = F3 + T3 
 1910 IF G1 = 5 THEN 2570ELSE 580
 1920 TONE = 110 
 1930 FOR COUNT = 1 TO 10 
 1940 CALL SOUND ( - 500 , TONE , 3 ) 
 1950 TONE = TONE + 110 
 1960 NEXT COUNT 
 1970 FOR I = 1 TO 500 
 1980 NEXT I 
 1990 T5 = T5 + 1 
 2000 T3 = T5 
 2010 G1 = F3 + T3 
 2020 IF G1 = 5 THEN 2570ELSE 580
 2060 IF X = C + 1 THEN 2190
 2080 TONE = 220 
 2090 FOR COUNT = 1 TO 3 
 2100 CALL SOUND ( 100 , TONE , 8 ) 
 2110 TONE = TONE + 220 
 2120 NEXT COUNT 
 2130 FOR I = 1 TO 500 
 2140 NEXT I 
 2150 F6 = F6 + 1 
 2160 F2 = F6 
 2170 G2 = F2 + T2 
 2180 IF G2 = 5 THEN 2570ELSE 630
 2190 TONE = 110 
 2200 FOR COUNT = 1 TO 10 
 2210 CALL SOUND ( - 500 , TONE , 3 ) 
 2220 TONE = TONE + 110 
 2230 NEXT COUNT 
 2240 FOR I = 1 TO 500 
 2250 NEXT I 
 2260 T6 = T6 + 1 
 2270 T2 = T6 
 2280 G2 = F2 + T2 
 2290 IF G2 = 5 THEN 2570ELSE 630
 2330 IF X = C + 1 THEN 2460
 2350 TONE = 220 
 2360 FOR COUNT = 1 TO 3 
 2370 CALL SOUND ( 100 , TONE , 8 ) 
 2380 TONE = TONE + 220 
 2390 NEXT COUNT 
 2400 FOR I = 1 TO 500 
 2410 NEXT I 
 2420 F7 = F7 + 1 
 2430 F1 = F7 
 2440 G3 = F1 + T1 
 2450 IF G3 > 4 THEN 2570ELSE 680
 2460 TONE = 110 
 2470 FOR COUNT = 1 TO 10 
 2480 CALL SOUND ( - 500 , TONE , 3 ) 
 2490 TONE = TONE + 110 
 2500 NEXT COUNT 
 2510 FOR I = 1 TO 500 
 2520 NEXT I 
 2530 T7 = T7 + 1 
 2540 T1 = T7 
 2550 G3 = F1 + T1 
 2560 IF G3 > 4 THEN 2570ELSE 680
 2570 Q = B + 1 
 2580 Q = Q - 1 
 2590 IF Q = 1 THEN 2640ELSE 2600
 2600 B = B - 1 
 2610 GOTO 530
 2620 Z = B 
 2630 GOTO 450
 2640 CALL CLEAR 
 2650 IF Z = 4 THEN 2690ELSE 2660
 2660 IF Z = 3 THEN 2710
 2670 IF Z = 2 THEN 2730
 2680 IF Z = 1 THEN 2750
 2690 PRINT A4$  :  : 
 2700 PRINT "TREFFER:"  ; T4  ; "FEHL:"  ; F4  :  :  : 
 2710 PRINT A3$  :  : 
 2720 PRINT "TREFFER:"  ; T3  ; "FEHL:"  ; F3  :  :  : 
 2730 PRINT A2$  :  : 
 2740 PRINT "TREFFER:"  ; T2  ; "FEHL:"  ; F2  :  :  : 
 2750 PRINT A1$  :  : 
 2760 PRINT "TREFFER:"  ; T1  ; "FEHL:"  ; F1  :  :  : 
 2770 FOR I = 1 TO 2000 
 2780 NEXT I 
 2790 CALL CLEAR 
 2800 PRINT "NOCH EIN SPIEL(J/N)?" 
 2810 GOSUB 2890
 2820 CALL KEY ( 0 , K , S ) 
 2830 IF S = 0 THEN 2820
 2840 IF K = 74 THEN 2860
 2850 IF K = 78 THEN 2880
 2860 CALL CLEAR 
 2870 GOTO 300
 2880 END 
 2890 G3 = 0 
 2900 T1 = 0 
 2910 F1 = 0 
 2920 F7 = 0 
 2930 T7 = 0 
 2940 G2 = 0 
 2950 T2 = 0 
 2960 F2 = 0 
 2970 T6 = 0 
 2980 F6 = 0 
 2990 G1 = 0 
 3000 T3 = 0 
 3010 F3 = 0 
 3020 T5 = 0 
 3030 F5 = 0 
 3040 G = 0 
 3050 T4 = 0 
 3060 F4 = 0 
 3070 T = 0 
 3080 F = 0 
 3090 RETURN 
