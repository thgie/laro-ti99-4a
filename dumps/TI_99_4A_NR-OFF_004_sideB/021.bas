   70 REM  PROGRAMM: HAMMURABI
   80 REM  VERSION 1 / GERMAN / NOV 1982
   90 REM  COPYRIGHT 1982 BY TEXAS INSTRUMENTS DEUTSCHLAND GMBH
  100 DATA HAMMURABI , "  REGIERE DAS KOENIGREICH" , DER SUMERER 
  110 DATA 1982 TEXAS INSTRUMENTS , IRGEND EINE TASTE DRUECKEN 
  120 DATA 0 , 0 , 0 , 95 , 2800 , 3000 , 3 , 5 , 3 , 0 , 0 , 0 , 0 
  130 DATA "HAMMURABI, HIER IST EIN" , NEUER JAHRESBERICHT: , JAHR , VERHUNGERTE: , NEUGEBORENE: 
  140 DATA EINE SEUCHE RAFFTE , DAS HALBE VOLK HIN 
  150 DATA GETOETET VOM FEIND: , GEFECHTSTOTE: , KRIEGSGEFANGENE: 
  160 DATA UNTERTANEN DERZEIT: , LANDBESITZ (ACKER): , ERNTEERTRAG , (SCHEFFEL/ACKER): , RATTEN (SCHEFFEL): 
  170 DATA SCHEFFEL IM LAGER: , DIE NACHBARN GREIFEN UNS AN 
  180 DATA "GEFANGENE FREIGEBEN (J/N)?" 
  190 DATA PREIS FUER LANDKAUF , (SCHEFFEL/ACKER): 
  200 DATA "LANDANKAUF  (J/N)? " , "WIEVIELE ACKER? " 
  210 DATA "LANDVERKAUF (J/N)? " , "WIEVIELE ACKER? " 
  220 DATA SCHEFFEL ZUR , "VOLKSERNAEHRUNG? " , "SOLDATEN FUER DEN KRIEG? " 
  230 DATA "ACKER ZUM ANBAU?" , "ABER HAMMURABI," , WIR HABEN NUR , LEUTE , UM FELDER ZU BEBAUEN! , "BEDENKE ES NEU: " 
  240 DATA DU MORDETEST , MENSCHEN , IN EINEM JAHR!!! 
  250 DATA "IM VOLK HERRSCHT AUFRUHR," , ES FORDERT DEINEN KOPF. 
  260 DATA LAUFE UM DEIN LEBEN!! , LEBE WOHL 
  270 DATA "ABER HAMMURABI, DU HAST NUR" , SCHEFFEL KORN! , "BEDENKE ES NEU: " 
  280 DATA "ABER HAMMURABI," , WIR BESITZEN NUR , ACKER. , "BEDENKE ES NEU  " 
  290 DATA "HAMMURABI:                  DAS KANN ICH NICHT!" , "NOCHEINMAL:     " 
  300 DATA "NEUES SPIEL (J/N)? " 
  310 DATA JAHRESUEBERSICHT , TOTE DURCH KRIEG , " ODER HUNGER:" , " JAHRESMITTEL(%):" 
  320 DATA ANBAUFLAECHE/PERSON: , ANFANGS: , GEGEN ENDE: 
  330 DATA DU REGIERST HERVORRAGEND! , DAS VOLK JUBELT DIR ZU , UND BITTET DICH ZU BLEIBEN. 
  340 DATA "WILLST DU (J/N)? " , 100 , 2 , 392 , 494 , 587 , 784 
  350 DATA "HERRSCHEN IST NICHT LEICHT," , "ABER EHRLICH, DU KANNST" , ES GARNICHT. , DAS VOLK IST WUETEND. 
  360 DATA "BESSER, DU FLIEHST RASCH." , LEBE WOHL. 
  370 DATA NICHT SCHLECHT! , "MAN KANN BESSER HERRSCHEN," , ABER WIR ALLE SIND MENSCHEN. 
  380 DATA BLEIBST DU IM AMT , "   (J/N)?" 
  390 DATA AUF BALD. 
  400 DATA 0038383810387EFD , 387C7CFE2828286C , 001C1C1C083E7EBE , BE3E3E3E24242466 
  410 DATA 0000000367652722 , 312B0F0303131F1F , 000000C0E0A0E04 , 88D8F0C0C0C8F8F8 
  420 DATA 0000070F09090F0F , 040303180E030E18 , 0000E0F09090F0F , 20C0C01870C07018 
  430 DATA 00000000B4FCFC78 , 303078FCFCB4 , 000000005A7E7E3C , 18183C7E7E5A 
  440 DATA 0000000000130F17 , 3F1F001E212018 , 0000000000E0F0FE , F9F1020CF 
  450 DATA 000000000339177C , FEFEFEFEFEFE7C , 00000000801CC83E , 7F7F7F7F7F7F3E , 3C4299A1A199423C 
  460 DATA 0001010120271B03 , 00C2C2C282F2EEE2 , 030307060E0C1C , E2E272323A1A1E 
  470 REM  **PROGRAM** 
  480 CALL CLEAR 
  490 RESTORE 400
  500 FOR I = 104 TO 132 
  510 READ A$ 
  520 CALL CHAR ( I , A$ ) 
  530 NEXT I 
  540 CALL SCREEN ( 11 ) 
  550 RESTORE 100
  560 READ A$ , B$ , C$ 
  570 PRINT TAB ( 9 )  ; CHR$ ( 104 ) & CHR$ ( 106 )  ; TAB ( 14 )  ; CHR$ ( 129 ) & CHR$ ( 130 )  ; TAB ( 19 )  ; CHR$ ( 108 ) & CHR$ ( 110 ) 
  580 PRINT TAB ( 9 )  ; CHR$ ( 105 ) & CHR$ ( 107 )  ; TAB ( 14 )  ; CHR$ ( 131 ) & CHR$ ( 132 )  ; TAB ( 19 )  ; CHR$ ( 109 ) & CHR$ ( 111 ) 
  590 PRINT  :  : TAB ( 11 )  ; A$  :  : 
  600 PRINT " " & B$  :  : TAB ( 10 )  ; C$  :  : 
  610 PRINT TAB ( 9 )  ; CHR$ ( 116 ) & CHR$ ( 118 )  ; TAB ( 14 )  ; CHR$ ( 120 ) & CHR$ ( 122 )  ; TAB ( 19 )  ; CHR$ ( 124 ) & CHR$ ( 126 ) 
  620 PRINT TAB ( 9 )  ; CHR$ ( 117 ) & CHR$ ( 119 )  ; TAB ( 14 )  ; CHR$ ( 121 ) & CHR$ ( 123 )  ; TAB ( 19 )  ; CHR$ ( 125 ) & CHR$ ( 127 ) 
  630 READ A$ , C$ 
  640 PRINT  :  :  :  : TAB ( 4 )  ; CHR$ ( 128 ) & A$  :  :  :  :  : TAB ( 2 )  ; C$  ; 
  650 CALL SOUND ( 150 , 1400 , 5 ) 
  660 CALL KEY ( 0 , K , S ) 
  670 IF S = 0 THEN 660
  680 RANDOMIZE 
  690 RESTORE 120
  700 READ D1 , P1 , Z , P , S , H 
  710 E = H - S 
  720 READ Y , I , Q , W , PR , SLD , KL 
  730 A = H / Y 
  740 D = 0 
  750 Z = Z + 1 
  760 IF Z = 1 THEN 780
  770 IF ( Z - 1 ) / 5 = INT ( ( Z - 1 ) / 5 ) THEN 2800
  780 CALL CLEAR 
  790 RESTORE 130
  800 READ A$ , B$ , C$ 
  810 PRINT A$  : " " & B$  :  : 
  820 PRINT TAB ( 9 )  ; C$  ; " "  ; STR$ ( Z - 1 ) 
  830 READ A$ , B$ 
  840 PRINT CHR$ ( 112 ) & CHR$ ( 114 )  : 
  850 PRINT CHR$ ( 113 ) & CHR$ ( 115 )  ; "  " & A$  ; TAB ( 24 )  ; D 
  860 PRINT CHR$ ( 108 ) & CHR$ ( 110 )  : 
  870 PRINT CHR$ ( 109 ) & CHR$ ( 111 )  ; "  " & B$  ; TAB ( 24 )  ; I 
  880 P = P + I 
  890 IF Q > 0 THEN 940
  900 P = INT ( P / 2 ) 
  910 RESTORE 140
  920 READ A$ , B$ 
  930 PRINT  : CHR$ ( 112 ) & CHR$ ( 114 )  ; "  "  ; A$  : CHR$ ( 113 ) & CHR$ ( 115 )  ; "  "  ; B$  : 
  940 IF W = 0 THEN 1060
  950 RESTORE 150
  960 READ A$ , B$ , C$ 
  970 IF KL = 0 THEN 1010
  980 PRINT  : TAB ( 5 )  ; A$  ; TAB ( 24 )  ; KL  : 
  990 KL = 0 
 1000 GOTO 1060
 1010 IF SLD = 0 THEN 1050
 1020 PRINT  : TAB ( 5 )  ; B$  ; TAB ( 24 )  ; SLD  : 
 1030 SLD = 0 
 1040 GOTO 1060
 1050 PRINT  : TAB ( 5 )  ; C$  ; TAB ( 24 )  ; PR  : 
 1060 RESTORE 160
 1070 READ A$ , B$ 
 1080 PRINT CHR$ ( 104 ) & CHR$ ( 106 )  : CHR$ ( 105 ) & CHR$ ( 107 )  ; "  " & A$  ; TAB ( 24 )  ; P  :  : TAB ( 5 )  ; B$  ; TAB ( 24 )  ; A  :  : 
 1090 READ A$ , B$ , C$ 
 1100 PRINT CHR$ ( 116 ) & CHR$ ( 118 )  ; "  " & A$  : CHR$ ( 117 ) & CHR$ ( 119 )  ; "  " & B$  ; TAB ( 24 )  ; Y  : 
 1110 PRINT CHR$ ( 120 ) & CHR$ ( 122 )  : CHR$ ( 121 ) & CHR$ ( 123 )  ; "  " & C$  ; TAB ( 24 )  ; E  : 
 1120 READ A$ , B$ 
 1130 PRINT CHR$ ( 124 ) & CHR$ ( 126 )  : CHR$ ( 125 ) & CHR$ ( 127 )  ; "  " & A$  ; TAB ( 24 )  ; S  :  : 
 1140 IF Q < 1 THEN 1190
 1150 IF Q > 2 THEN 1190
 1160 PRINT TAB ( 2 )  ; B$  :  : 
 1170 W = 5 
 1180 GOTO 1200
 1190 W = 0 
 1200 C = INT ( 10 * RND ) 
 1210 Y = C + 17 
 1220 IF PR = 0 THEN 1240
 1230 GOSUB 3410
 1240 RESTORE 190
 1250 READ A$ , B$ , C$ 
 1260 PRINT TAB ( 5 )  ; A$  ; TAB ( 5 )  ; B$  ; TAB ( 24 )  ; Y  :  : 
 1270 INPUT C$  : A$ 
 1280 IF A$ = "N" THEN 1430
 1290 IF A$ < > "J" THEN 1270
 1300 READ A$ 
 1310 INPUT A$ & " "  : Q 
 1320 IF Q > = 0 THEN 1350
 1330 GOSUB 2760
 1340 GOTO 1310
 1350 IF Y * Q < = S THEN 1380
 1360 GOSUB 2650
 1370 GOTO 1310
 1380 IF Q = 0 THEN 1430
 1390 A = A + Q 
 1400 S = S - Y * Q 
 1410 C = 0 
 1420 GOTO 1580
 1430 RESTORE 210
 1440 READ B$ , A$ 
 1450 INPUT B$  : C$ 
 1460 IF C$ = "N" THEN 1580
 1470 IF C$ < > "J" THEN 1450
 1480 INPUT A$ & " "  : Q 
 1490 IF Q > = 0 THEN 1520
 1500 GOSUB 2760
 1510 GOTO 1480
 1520 IF Q < A THEN 1550
 1530 GOSUB 2690
 1540 GOTO 1480
 1550 A = A - Q 
 1560 S = S + Y * Q 
 1570 C = 0 
 1580 PRINT 
 1590 RESTORE 220
 1600 READ B$ , A$ , C$ 
 1610 PRINT B$ 
 1620 INPUT A$  : Q 
 1630 IF Q > = 0 THEN 1670
 1640 GOSUB 2760
 1650 GOTO 1620
 1660 REM  **ENOUGH GRAIN TO FEED?** 
 1670 IF Q < = S THEN 1720
 1680 GOSUB 2650
 1690 RESTORE 220
 1700 READ B$ , A$ , C$ 
 1710 GOTO 1610
 1720 S = S - Q 
 1730 C = 1 
 1740 PRINT 
 1750 IF W = 0 THEN 1810
 1760 INPUT C$  : SLD 
 1770 IF SLD > P THEN 1760
 1780 GOSUB 3520
 1790 PRINT 
 1800 GOTO 1810
 1810 RESTORE 230
 1820 READ A$ 
 1830 INPUT A$ & " "  : D 
 1840 IF D = 0 THEN 2060
 1850 IF D > = 0 THEN 1890
 1860 GOSUB 2760
 1870 GOTO 1830
 1880 REM  **ENOUGH ACRES TO PLANT?** 
 1890 IF D < = A THEN 1930
 1900 GOSUB 2690
 1910 GOTO 1830
 1920 REM  **ENOUGH GRAIN FOR SEED? 
 1930 IF INT ( D / 2 ) < = S THEN 1970
 1940 GOSUB 2650
 1950 GOTO 1810
 1960 REM  **ENOUGH PEOPLE TO TEND THE CROPS? 
 1970 IF D < = 10 * ( P - SLD ) THEN 2050
 1980 RESTORE 230
 1990 READ A$ 
 2000 READ A$ , B$ , C$ 
 2010 PRINT A$  : B$  ; P - SLD  ; C$ 
 2020 READ B$ , A$ 
 2030 PRINT B$ 
 2040 GOTO 1830
 2050 S = S - INT ( D / 2 ) 
 2060 GOSUB 2740
 2070 REM  **HARVEST**   
 2080 Y = C 
 2090 H = D * Y 
 2100 D = 0 
 2110 IF H < > 0 THEN 2130
 2120 Y = 0 
 2130 E = 0 
 2140 GOSUB 2740
 2150 IF INT ( C / 2 ) < > C / 2 THEN 2180
 2160 REM  **RATS** 
 2170 E = INT ( S / C ) 
 2180 S = S - E + H 
 2190 GOSUB 2740
 2200 REM  **NEWCOMERS** 
 2210 I = INT ( C * ( 10 * A + S ) / P / 100 + 1 ) 
 2220 REM  **PEOPLE FED** 
 2230 C = INT ( Q / 20 ) 
 2240 REM  **CHANCE OF PLAGUE** 
 2250 Q = INT ( 15 * RND ) 
 2260 IF W > 0 THEN 2340
 2270 REM  **PERCENT STARVED** 
 2280 IF P > C THEN 2310
 2290 P1 = ( Z - 1 ) * P1 / Z 
 2300 GOTO 740
 2310 PRINT  :  : 
 2320 D = P - C 
 2330 GOTO 2410
 2340 IF KL > 0 THEN 2390
 2350 IF W = 1 THEN 2380
 2360 SLD = INT ( SLD * RND ) + 1 
 2370 GOTO 2390
 2380 SLD = 0 
 2390 IF P < C THEN 2410
 2400 D = P - C 
 2410 IF D + SLD + KL > .45 * P THEN 2510
 2420 P1 = ( ( Z - 1 ) * P1 + ( D + SLD + KL ) * 100 / P ) / Z 
 2430 P = C - SLD - KL 
 2440 D1 = D1 + D + SLD + KL 
 2450 IF W < > 1 THEN 750
 2460 IF SLD > 15 THEN 2490
 2470 PR = INT ( 10 * RND ) + 1 
 2480 GOTO 750
 2490 PR = INT ( 15 * RND ) + 1 
 2500 GOTO 750
 2510 CALL CLEAR 
 2520 CALL SCREEN ( 9 ) 
 2530 RESTORE 240
 2540 READ A$ , B$ , C$ 
 2550 PRINT A$  ; D  ; B$  : C$  :  : 
 2560 RESTORE 250
 2570 READ A$ , B$ 
 2580 PRINT  :  : A$  ; B$ 
 2590 READ A$ , B$ 
 2600 PRINT A$  :  : B$  :  :  :  :  :  :  : 
 2610 FOR I = 392 TO 196 STEP - 10 
 2620 CALL SOUND ( - 100 , I , 2 ) 
 2630 NEXT I 
 2640 GOTO 3310
 2650 RESTORE 270
 2660 READ C$ , B$ , A$ 
 2670 PRINT  : C$  ; S  ; B$ 
 2680 RETURN 
 2690 RESTORE 280
 2700 READ A$ , B$ , C$ 
 2710 PRINT A$  : B$  ; A  ; C$ 
 2720 READ A$ 
 2730 RETURN 
 2740 C = INT ( 5 * RND ) + 1 
 2750 RETURN 
 2760 RESTORE 290
 2770 READ B$ , A$ 
 2780 PRINT B$ 
 2790 RETURN 
 2800 CALL CLEAR 
 2810 RESTORE 310
 2820 READ A$ 
 2830 PRINT STR$ ( Z - 1 )  ; "  "  ; A$  :  : 
 2840 READ A$ , B$ , C$ 
 2850 PRINT A$  : B$  ; TAB ( 23 )  ; D1  ; C$  ; TAB ( 23 )  ; INT ( P1 * 100 + .5 ) / 100 
 2860 L = INT ( A / P * 100 + .5 ) / 100 
 2870 RESTORE 320
 2880 READ A$ , B$ , C$ 
 2890 PRINT A$  : " " & B$  ; TAB ( 23 )  ; 10 
 2900 PRINT " " & C$  ; TAB ( 23 )  ; L 
 2910 IF P1 > 33 THEN 2560
 2920 IF L < 6 THEN 2560
 2930 IF P1 > 10 THEN 3100
 2940 IF L < 7 THEN 3100
 2950 IF P1 > 3 THEN 3190
 2960 IF ( L - P1 - 8 ) < = 0 THEN 3190
 2970 RESTORE 330
 2980 READ A$ , B$ , C$ 
 2990 PRINT  : A$  ; B$  ; 
 3000 READ A$ , DR , V , T1 , T2 , T3 , T4 
 3010 PRINT C$  :  :  :  :  :  : 
 3020 FOR I = 1 TO 2 
 3030 CALL SOUND ( DR , T1 , V ) 
 3040 CALL SOUND ( DR , T2 , V ) 
 3050 CALL SOUND ( DR , T3 , V ) 
 3060 NEXT I 
 3070 CALL SOUND ( DR * 3 , T4 , 2 ) 
 3080 INPUT "       " & A$  : B$ 
 3090 IF B$ = "N" THEN 3300ELSE 780
 3100 RESTORE 350
 3110 READ A$ , B$ , C$ 
 3120 PRINT  :  : A$  ; B$  ; C$ 
 3130 READ A$ , B$ , C$ 
 3140 PRINT A$  :  : B$  : C$  :  :  :  :  : 
 3150 FOR I = 392 TO 196 STEP - 10 
 3160 CALL SOUND ( - 100 , I , 2 ) 
 3170 NEXT I 
 3180 GOTO 3310
 3190 RESTORE 370
 3200 READ A$ , B$ , C$ 
 3210 PRINT  : A$  ; B$  ; C$  :  :  : 
 3220 CALL SOUND ( 200 , 784 , 2 , 988 , 2 , 1175 , 2 ) 
 3230 CALL SOUND ( 1000 , 784 , 2 , 988 , 2 , 1175 , 2 ) 
 3240 READ B$ , A$ 
 3250 PRINT  :  : B$ 
 3260 INPUT "       " & A$  : B$ 
 3270 IF B$ = "N" THEN 3300
 3280 CALL CLEAR 
 3290 GOTO 780
 3300 CALL CLEAR 
 3310 RESTORE 300
 3320 READ A$ 
 3330 INPUT A$  : B$ 
 3340 IF B$ = "N" THEN 3380
 3350 CALL SCREEN ( 11 ) 
 3360 W = 0 
 3370 GOTO 680
 3380 CALL CLEAR 
 3390 END 
 3400 REM  **RETURN PRISONERS?**   
 3410 RESTORE 180
 3420 READ A$ 
 3430 INPUT A$  : B$ 
 3440 IF B$ = "J" THEN 3450ELSE 3480
 3450 S = S + PR * 100 
 3460 PR = 0 
 3470 RETURN 
 3480 P = P + PR 
 3490 PR = 0 
 3500 RETURN 
 3510 REM  **WIN WAR?** 
 3520 IF SLD < P / 100 THEN 3580
 3530 IF SLD < 6 * P / 100 THEN 3600
 3540 IF SLD < 11 * P / 100 THEN 3620
 3550 IF SLD < 16 * P / 100 THEN 3640
 3560 W = 1 
 3570 RETURN 
 3580 KL = INT ( P * 2 / 10 ) 
 3590 RETURN 
 3600 W = INT ( 4 * RND ) + 1 
 3610 RETURN 
 3620 W = INT ( 3 * RND ) + 1 
 3630 RETURN 
 3640 W = INT ( 2 * RND ) + 1 
 3650 RETURN 
 3660 REM  HOLD SCREEN 
 3670 FOR I = 1 TO 1000 
 3680 NEXT I 
 3690 RETURN 
