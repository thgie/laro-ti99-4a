  100 CALL CLEAR 
  110 OPTION BASE 1 
  120 CALL CHAR ( 40 , "00030F1C3C3F7F7F" ) 
  130 CALL CHAR ( 41 , "00C0F0F8FCFCFEFE" ) 
  140 CALL CHAR ( 42 , "007F3F3F1F0F03" ) 
  150 CALL CHAR ( 43 , "FEFEFCFCF8F0C0" ) 
  160 CALL CHAR ( 44 , "00030F1C3C1F0701" ) 
  170 CALL CHAR ( 45 , "00030F3F1F0F03" ) 
  180 CALL CHAR ( 46 , "00030F1C3C3F7F07" ) 
  190 CALL CHAR ( 47 , "00077F3F1F0F03" ) 
  200 CALL CHAR ( 88 , "0000000000000303" ) 
  210 CALL CHAR ( 64 , "00C0F0383CFCFEFE" ) 
  220 CALL CHAR ( 65 , "00030F1F3F3F7F7F" ) 
  230 CALL CHAR ( 66 , "00FEFCFCF8F0C0" ) 
  240 CALL CHAR ( 67 , "7F7F3F3F1F0F03" ) 
  250 CALL CHAR ( 68 , "00C0F0383CFCFEE0" ) 
  260 CALL CHAR ( 69 , "00E0FEFCF8F0C0" ) 
  270 CALL CHAR ( 70 , "00C0F0383CF8E080" ) 
  280 CALL CHAR ( 71 , "00C0F0FCF8F0C0" ) 
  290 DIM FELD ( 24 , 32 ) 
  300 RICHTUNG = 1 
  310 CALL SCREEN ( 2 ) 
  320 CALL COLOR ( 8 , 16 , 2 ) 
  330 CALL COLOR ( 2 , 12 , 2 ) 
  340 CALL COLOR ( 5 , 12 , 2 ) 
  350 CALL COLOR ( 1 , 2 , 2 ) 
  360 CALL COLOR ( 9 , 6 , 6 ) 
  370 CALL COLOR ( 3 , 16 , 2 ) 
  380 CALL COLOR ( 4 , 16 , 2 ) 
  390 GOSUB 1470
  400 A = 10 
  410 B = 20 
  420 CALL HCHAR ( A , B , 44 ) 
  430 CALL HCHAR ( A , B + 1 , 41 ) 
  440 CALL HCHAR ( A + 1 , B , 45 ) 
  450 CALL HCHAR ( A + 1 , B + 1 , 43 ) 
  460 CALL HCHAR ( A , B , 46 ) 
  470 CALL HCHAR ( A + 1 , B , 47 ) 
  480 CALL HCHAR ( A , B , 40 ) 
  490 CALL HCHAR ( A + 1 , B , 42 ) 
  500 CALL HCHAR ( A , B , 46 ) 
  510 CALL HCHAR ( A + 1 , B , 47 ) 
  520 CALL HCHAR ( A , B , 44 ) 
  530 CALL HCHAR ( A + 1 , B , 45 ) 
  540 CALL KEY ( 0 , K , S ) 
  550 IF S = 0 THEN 540
  560 IF K = 68 THEN 800
  570 IF K = 83 THEN 610
  580 IF K = 69 THEN 1110
  590 IF K = 88 THEN 1290
  600 GOTO 540
  610 B = B - 1 
  620 RICHTUNG = 1 
  630 IF B < 1 THEN 640ELSE 710
  640 B = 31 
  650 IF FELD ( A , B ) < > 1 THEN 660ELSE 680
  660 B = 1 
  670 GOTO 540
  680 CALL VCHAR ( A , 1 , 32 , 2 ) 
  690 CALL VCHAR ( A , 2 , 32 , 2 ) 
  700 GOTO 420
  710 IF FELD ( A , B ) < > 1 THEN 720ELSE 740
  720 B = B + 1 
  730 GOTO 540
  740 CALL GCHAR ( A , B , ZEICHEN ) 
  750 IF ZEICHEN = 88 THEN 770ELSE 780
  770 CALL SOUND ( 25 , 600 , 2 ) 
  780 CALL VCHAR ( A , B + 2 , 32 , 2 ) 
  790 GOTO 420
  800 B = B + 1 
  810 RICHTUNG = 2 
  820 IF B > 31 THEN 830ELSE 900
  830 B = 1 
  840 IF FELD ( A , B ) < > 1 THEN 850ELSE 870
  850 B = 31 
  860 GOTO 540
  870 CALL VCHAR ( A , 31 , 32 , 2 ) 
  880 CALL VCHAR ( A , 32 , 32 , 2 ) 
  890 GOTO 980
  900 IF FELD ( A , B ) < > 1 THEN 910ELSE 930
  910 B = B - 1 
  920 GOTO 540
  930 CALL GCHAR ( A , B + 1 , ZEICHEN ) 
  940 IF ZEICHEN = 88 THEN 960ELSE 970
  960 CALL SOUND ( 25 , 600 , 2 ) 
  970 CALL VCHAR ( A , B - 1 , 32 , 2 ) 
  980 CALL HCHAR ( A , B , 65 ) 
  990 CALL HCHAR ( A + 1 , B , 67 ) 
 1000 CALL HCHAR ( A , B + 1 , 70 ) 
 1010 CALL HCHAR ( A + 1 , B + 1 , 71 ) 
 1020 CALL HCHAR ( A , B + 1 , 68 ) 
 1030 CALL HCHAR ( A + 1 , B + 1 , 69 ) 
 1040 CALL HCHAR ( A , B + 1 , 64 ) 
 1050 CALL HCHAR ( A + 1 , B + 1 , 66 ) 
 1060 CALL HCHAR ( A , B + 1 , 68 ) 
 1070 CALL HCHAR ( A + 1 , B + 1 , 69 ) 
 1080 CALL HCHAR ( A , B + 1 , 70 ) 
 1090 CALL HCHAR ( A + 1 , B + 1 , 71 ) 
 1100 GOTO 540
 1110 A = A - 1 
 1120 IF A < 1 THEN 1130ELSE 1200
 1130 A = 23 
 1140 IF FELD ( A , B ) < > 1 THEN 1150ELSE 1170
 1150 A = 1 
 1160 GOTO 540
 1170 CALL VCHAR ( 1 , B , 32 , 2 ) 
 1180 CALL VCHAR ( 1 , B + 1 , 32 , 2 ) 
 1190 ON RICHTUNG GOSUB 420, 980
 1200 IF FELD ( A , B ) < > 1 THEN 1210ELSE 1230
 1210 A = A + 1 
 1220 GOTO 540
 1230 CALL GCHAR ( A , B , ZEICHEN ) 
 1240 IF ZEICHEN = 88 THEN 1260ELSE 1270
 1260 CALL SOUND ( 25 , 600 , 2 ) 
 1270 CALL HCHAR ( A + 2 , B , 32 , 2 ) 
 1280 ON RICHTUNG GOSUB 420, 980
 1290 A = A + 1 
 1300 IF A > 23 THEN 1310ELSE 1380
 1310 A = 1 
 1320 IF FELD ( A , B ) < > 1 THEN 1330ELSE 1350
 1330 A = 23 
 1340 GOTO 540
 1350 CALL VCHAR ( 23 , B , 32 , 2 ) 
 1360 CALL VCHAR ( 23 , B + 1 , 32 , 2 ) 
 1370 ON RICHTUNG GOSUB 420, 980
 1380 IF FELD ( A , B ) < > 1 THEN 1390ELSE 1410
 1390 A = A - 1 
 1400 GOTO 540
 1410 CALL GCHAR ( A + 1 , B , ZEICHEN ) 
 1420 IF ZEICHEN = 88 THEN 1440ELSE 1450
 1440 CALL SOUND ( 25 , 600 , 2 ) 
 1450 CALL HCHAR ( A - 1 , B , 32 , 2 ) 
 1460 ON RICHTUNG GOSUB 420, 980
 1470 FOR B = 3 TO 18 
 1480 FELD ( 4 , B ) = 1 
 1490 NEXT B 
 1500 FOR B = 21 TO 29 
 1510 FELD ( 4 , B ) = 1 
 1520 NEXT B 
 1530 FOR B = 6 TO 23 
 1540 FELD ( 7 , B ) = 1 
 1550 NEXT B 
 1560 FOR B = 3 TO 6 
 1570 FELD ( 9 , B ) = 1 
 1580 NEXT B 
 1590 FOR B = 23 TO 26 
 1600 FELD ( 9 , B ) = 1 
 1610 NEXT B 
 1620 FOR B = 12 TO 15 
 1630 FELD ( 10 , B ) = 1 
 1640 NEXT B 
 1650 FOR B = 18 TO 20 
 1660 FELD ( 10 , B ) = 1 
 1670 NEXT B 
 1680 FOR B = 1 TO 9 
 1690 FELD ( 12 , B ) = 1 
 1700 NEXT B 
 1710 FOR B = 23 TO 31 
 1720 FELD ( 12 , B ) = 1 
 1730 NEXT B 
 1740 FOR B = 12 TO 15 
 1750 FELD ( 13 , B ) = 1 
 1760 NEXT B 
 1770 FOR B = 18 TO 23 
 1780 FELD ( 13 , B ) = 1 
 1790 NEXT B 
 1800 FOR B = 3 TO 6 
 1810 FELD ( 15 , B ) = 1 
 1820 NEXT B 
 1830 FOR B = 18 TO 26 
 1840 FELD ( 16 , B ) = 1 
 1850 NEXT B 
 1860 FOR B = 6 TO 12 
 1870 FELD ( 18 , B ) = 1 
 1880 NEXT B 
 1890 FOR B = 18 TO 21 
 1900 FELD ( 19 , B ) = 1 
 1910 NEXT B 
 1920 FOR B = 24 TO 29 
 1930 FELD ( 19 , B ) = 1 
 1940 NEXT B 
 1950 FOR B = 3 TO 18 
 1960 FELD ( 21 , B ) = 1 
 1970 NEXT B 
 1980 FOR B = 24 TO 29 
 1990 FELD ( 22 , B ) = 1 
 2000 NEXT B 
 2010 FOR A = 4 TO 9 
 2020 FELD ( A , 3 ) = 1 
 2030 NEXT A 
 2040 FOR A = 15 TO 21 
 2050 FELD ( A , 3 ) = 1 
 2060 NEXT A 
 2070 FOR A = 7 TO 9 
 2080 FELD ( A , 6 ) = 1 
 2090 NEXT A 
 2100 FOR A = 15 TO 18 
 2110 FELD ( A , 6 ) = 1 
 2120 NEXT A 
 2130 FOR A = 4 TO 18 
 2140 FELD ( A , 9 ) = 1 
 2150 NEXT A 
 2160 FOR A = 10 TO 18 
 2170 FELD ( A , 12 ) = 1 
 2180 NEXT A 
 2190 FOR A = 7 TO 10 
 2200 FELD ( A , 15 ) = 1 
 2210 NEXT A 
 2220 FOR A = 13 TO 21 
 2230 FELD ( A , 15 ) = 1 
 2240 NEXT A 
 2250 FOR A = 4 TO 13 
 2260 FELD ( A , 18 ) = 1 
 2270 NEXT A 
 2280 FOR A = 16 TO 21 
 2290 FELD ( A , 18 ) = 1 
 2300 NEXT A 
 2310 FOR A = 1 TO 4 
 2320 FELD ( A , 21 ) = 1 
 2330 NEXT A 
 2340 FOR A = 19 TO 23 
 2350 FELD ( A , 21 ) = 1 
 2360 NEXT A 
 2370 FELD ( 8 , 23 ) = 1 
 2380 FOR A = 16 TO 22 
 2390 FELD ( A , 24 ) = 1 
 2400 NEXT A 
 2410 FOR A = 4 TO 9 
 2420 FELD ( A , 26 ) = 1 
 2430 NEXT A 
 2440 FOR A = 12 TO 16 
 2450 FELD ( A , 26 ) = 1 
 2460 NEXT A 
 2470 FOR A = 4 TO 22 
 2480 FELD ( A , 29 ) = 1 
 2490 NEXT A 
 2500 CALL HCHAR ( 3 , 2 , 96 , 19 ) 
 2510 CALL HCHAR ( 3 , 23 , 96 , 9 ) 
 2520 CALL HCHAR ( 6 , 5 , 96 , 4 ) 
 2530 CALL HCHAR ( 6 , 11 , 96 , 7 ) 
 2540 CALL HCHAR ( 6 , 20 , 96 , 6 ) 
 2550 CALL HCHAR ( 9 , 11 , 96 , 4 ) 
 2560 CALL HCHAR ( 9 , 20 , 96 , 3 ) 
 2570 CALL HCHAR ( 11 , 1 , 96 , 8 ) 
 2580 CALL HCHAR ( 11 , 22 , 96 , 7 ) 
 2590 CALL HCHAR ( 11 , 31 , 96 , 2 ) 
 2600 CALL HCHAR ( 12 , 14 , 96 , 4 ) 
 2610 CALL HCHAR ( 12 , 20 , 96 , 3 ) 
 2620 CALL HCHAR ( 14 , 1 , 96 , 8 ) 
 2630 CALL HCHAR ( 14 , 31 , 96 , 2 ) 
 2640 CALL HCHAR ( 15 , 17 , 96 , 9 ) 
 2650 CALL HCHAR ( 18 , 20 , 96 , 4 ) 
 2660 CALL HCHAR ( 18 , 26 , 96 , 3 ) 
 2670 CALL HCHAR ( 20 , 5 , 96 , 10 ) 
 2680 CALL HCHAR ( 21 , 26 , 96 , 3 ) 
 2690 CALL HCHAR ( 23 , 2 , 96 , 19 ) 
 2700 CALL HCHAR ( 24 , 23 , 96 , 9 ) 
 2710 CALL VCHAR ( 3 , 2 , 96 , 9 ) 
 2720 CALL VCHAR ( 14 , 2 , 96 , 10 ) 
 2730 CALL VCHAR ( 6 , 5 , 96 , 3 ) 
 2740 CALL VCHAR ( 17 , 5 , 96 , 4 ) 
 2750 CALL VCHAR ( 9 , 8 , 96 , 3 ) 
 2760 CALL VCHAR ( 14 , 8 , 96 , 4 ) 
 2770 CALL VCHAR ( 9 , 11 , 96 , 9 ) 
 2780 CALL VCHAR ( 15 , 14 , 96 , 6 ) 
 2790 CALL VCHAR ( 9 , 17 , 96 , 12 ) 
 2800 CALL VCHAR ( 1 , 20 , 96 , 6 ) 
 2810 CALL VCHAR ( 21 , 20 , 96 , 4 ) 
 2820 CALL VCHAR ( 9 , 22 , 96 , 4 ) 
 2830 CALL VCHAR ( 1 , 23 , 96 , 3 ) 
 2840 CALL VCHAR ( 18 , 23 , 96 , 7 ) 
 2850 CALL VCHAR ( 6 , 25 , 96 , 3 ) 
 2860 CALL VCHAR ( 14 , 25 , 96 ) 
 2870 CALL VCHAR ( 6 , 28 , 96 , 6 ) 
 2880 CALL VCHAR ( 14 , 28 , 96 , 5 ) 
 2890 CALL VCHAR ( 3 , 31 , 96 , 9 ) 
 2900 CALL VCHAR ( 14 , 31 , 96 , 11 ) 
 2910 CALL HCHAR ( 4 , 3 , 88 , 16 ) 
 2920 CALL HCHAR ( 4 , 21 , 88 , 9 ) 
 2930 CALL HCHAR ( 7 , 6 , 88 , 18 ) 
 2940 CALL HCHAR ( 9 , 3 , 88 , 4 ) 
 2950 CALL HCHAR ( 9 , 23 , 88 , 4 ) 
 2960 CALL HCHAR ( 10 , 12 , 88 , 4 ) 
 2970 CALL HCHAR ( 12 , 3 , 88 , 7 ) 
 2980 CALL HCHAR ( 12 , 23 , 88 , 7 ) 
 2990 CALL HCHAR ( 13 , 12 , 88 , 4 ) 
 3000 CALL HCHAR ( 13 , 18 , 88 , 6 ) 
 3010 CALL HCHAR ( 15 , 3 , 88 , 4 ) 
 3020 CALL HCHAR ( 16 , 18 , 88 , 9 ) 
 3030 CALL HCHAR ( 18 , 6 , 88 , 7 ) 
 3040 CALL HCHAR ( 19 , 18 , 88 , 4 ) 
 3050 CALL HCHAR ( 19 , 24 , 88 , 6 ) 
 3060 CALL HCHAR ( 21 , 3 , 88 , 16 ) 
 3070 CALL HCHAR ( 22 , 24 , 88 , 6 ) 
 3080 CALL VCHAR ( 4 , 3 , 88 , 6 ) 
 3090 CALL VCHAR ( 15 , 3 , 88 , 7 ) 
 3100 CALL VCHAR ( 7 , 6 , 88 , 3 ) 
 3110 CALL VCHAR ( 15 , 6 , 88 , 4 ) 
 3120 CALL VCHAR ( 4 , 9 , 88 , 15 ) 
 3130 CALL VCHAR ( 10 , 12 , 88 , 9 ) 
 3140 CALL VCHAR ( 7 , 15 , 88 , 4 ) 
 3150 CALL VCHAR ( 13 , 15 , 88 , 9 ) 
 3160 CALL VCHAR ( 4 , 18 , 88 , 10 ) 
 3170 CALL VCHAR ( 16 , 18 , 88 , 6 ) 
 3180 CALL VCHAR ( 1 , 21 , 88 , 4 ) 
 3190 CALL VCHAR ( 19 , 21 , 88 , 4 ) 
 3200 CALL VCHAR ( 8 , 23 , 88 ) 
 3210 CALL VCHAR ( 16 , 24 , 88 , 7 ) 
 3220 CALL VCHAR ( 4 , 26 , 88 , 6 ) 
 3230 CALL VCHAR ( 12 , 26 , 88 , 5 ) 
 3240 CALL VCHAR ( 4 , 29 , 88 , 19 ) 
 3250 RETURN 
