  100 CALL CLEAR 
  102 RANDOMIZE 
  105 CALL MAGNIFY ( 3 ) 
  110 OPTION BASE 1 
  111 RESTORE 115
  112 READ Z , Z$  :: IF Z THEN CALL CHAR ( Z , Z$ )  :: GOTO 112
  115 DATA 40 , 00030F1C3C3F7F7F00C0F0F8FCFCFEFE007F3F3F1F0F0300FEFEFCFCF8F0C 
  120 DATA 44 , 00030F1C3C1F070100030F3F1F0F030000030F1C3C3F7F0700077F3F1F0F03 
  130 DATA 64 , 00C0F0383CFCFEFE00030F1F3F3F7F7F00FEFCFCF8F0C0007F7F3F3F1F0F03 , 88 , 0000000000000303 
  135 DATA 112 , 0F1F3171717F7E7E3E1F0F0F07070300F0F88C8E8EFE7E7E7CF8F0F0E0E0C 
  140 DATA 68 , 00C0F0383CFCFEE000E0FEFCF8F0C00000C0F0383CF8E08000C0F0FCF8F0C , 0 , 0 
  258 CALL MOTION ( # 1 , 0 , - 5 ) 
  290 DIM FELD ( 24 , 32 ) 
  310 CALL SCREEN ( 2 ) 
  315 CALL COLOR ( 1 , 2 , 2 , 2 , 12 , 2 , 3 , 16 , 2 , 4 , 16 , 2 , 5 , 12 , 2 , 8 , 16 , 2 , 9 , 6 , 6 ) 
  390 GOSUB 1400
  400 A , AO = 10 
  410 B , BO = 20 
  412 A1 = 4  :: B1 = 3 
  415 CALL SPRITE ( # 1 , 112 , 16 , A1 * 8 - 7 , A1 * 8 - 7 ) 
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
  540 CALL JOYST ( 1 , X , Y ) 
  550 CALL POSITION ( # 1 , P , Q ) 
  555 CALL COINC ( # 1 , A * 8 - 7 , B * 8 - 7 , 8 , O )  :: IF O THEN 10000
  560 IF X = 0 AND Y = 0 THEN 540
  570 A2 = ( ( A * 8 - 7 ) - P ) / 16 
  572 B2 = ( ( B * 8 - 7 ) - Q ) / 16 
  600 CALL MOTION ( # 1 , A2 , B2 ) 
  610 B = B + ( X / 4 ) 
  615 A = A - ( Y / 4 ) 
  620 IF A = 10 AND B = 20 AND PU < > PUO THEN 11000
  621 IF A < 1 THEN A = 23 ELSE IF A > 23 THEN A = 1 
  622 IF B < 1 THEN B = 31 ELSE IF B > 31 THEN B = 1 
  630 IF FELD ( A , B ) THEN 700
  640 A = A + ( Y / 4 )  :: IF FELD ( A , B ) THEN Y = 0  :: GOTO 700
  650 B = B - ( X / 4 )  :: A = A - ( Y / 4 )  :: IF FELD ( A , B ) THEN X = 0  :: GOTO 700
  660 A = A + ( Y / 4 )  :: GOTO 540
  700 CALL VCHAR ( AO , BO , 32 , 2 )  :: CALL VCHAR ( AO , BO + 1 , 32 , 2 ) 
  710 AO = A  :: BO = B 
  730 CALL GCHAR ( A + .4 - Y / 8 , B + .4 + ( X / 8 ) , ZEICHEN ) 
  750 IF ZEICHEN < > 88 THEN 775
  770 CALL SOUND ( 25 , 600 , 2 ) 
  772 PU = PU + 1 
  773 DISPLAY AT ( 1 , 1 ) SIZE ( 8 )  : PU 
  775 IF X = - 4 THEN 420
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
 1400 RESTORE 1440
 1410 READ B1 , B2 , B3 
 1412 IF B1 = 0 THEN 1500
 1414 FOR B = B1 TO B2  :: FELD ( B3 , B ) = 1  :: NEXT B 
 1416 GOTO 1410
 1440 DATA 3 , 18 , 4 , 21 , 29 , 4 , 6 , 23 , 7 , 3 , 6 , 9 , 23 , 26 , 9 , 12 , 15 , 10 , 18 , 20 , 10 , 1 , 9 , 12 , 23 , 31 , 12 , 12 , 15 , 13 
 1450 DATA 18 , 23 , 13 , 3 , 6 , 15 , 18 , 26 , 16 , 6 , 12 , 18 , 18 , 21 , 19 , 24 , 29 , 19 , 3 , 18 , 21 , 24 , 29 , 22 , 0 , 0 , 0 
 1500 RESTORE 1540
 1505 READ B1 , B2 , B3 
 1510 IF B1 = 0 THEN 2000
 1520 FOR B = B1 TO B2  :: FELD ( B , B3 ) = 1  :: NEXT B 
 1530 GOTO 1505
 1540 DATA 4 , 9 , 3 , 15 , 21 , 3 , 7 , 9 , 6 , 15 , 18 , 6 , 4 , 18 , 9 , 10 , 18 , 12 , 7 , 10 , 15 , 13 , 21 , 15 , 4 , 13 , 18 , 16 , 21 , 18 , 1 , 4 , 21 
 1550 DATA 19 , 23 , 21 , 16 , 22 , 24 , 4 , 9 , 26 , 12 , 16 , 26 , 4 , 22 , 29 , 8 , 8 , 23 , 0 , 0 , 0 
 2000 RESTORE 2200
 2010 READ B1 , B2 , B3 
 2020 IF B1 = 0 THEN 2300
 2030 CALL HCHAR ( B1 , B2 , 96 , B3 ) 
 2040 GOTO 2010
 2200 DATA 3 , 2 , 19 , 3 , 23 , 9 , 6 , 5 , 4 , 6 , 11 , 7 , 6 , 20 , 6 , 9 , 11 , 4 , 9 , 20 , 3 , 11 , 1 , 8 , 11 , 22 , 7 , 11 , 31 , 2 , 12 , 14 , 4 
 2210 DATA 12 , 20 , 3 , 14 , 1 , 8 , 14 , 31 , 2 , 15 , 17 , 9 , 18 , 20 , 4 , 18 , 26 , 3 , 20 , 5 , 10 , 21 , 26 , 3 , 23 , 2 , 19 , 24 , 23 , 9 , 0 , 0 , 0 
 2300 RESTORE 2400
 2310 READ B1 , B2 , B3 
 2320 IF B1 = 0 THEN 2500
 2330 CALL VCHAR ( B1 , B2 , 96 , B3 ) 
 2340 GOTO 2310
 2400 DATA 3 , 2 , 9 , 14 , 2 , 10 , 6 , 5 , 3 , 17 , 5 , 4 , 9 , 8 , 3 , 14 , 8 , 4 , 9 , 11 , 9 , 15 , 14 , 6 , 9 , 17 , 12 , 1 , 20 , 6 , 21 , 20 , 4 
 2410 DATA 9 , 22 , 4 , 1 , 23 , 3 , 18 , 23 , 7 , 6 , 25 , 3 , 14 , 25 , 1 , 6 , 28 , 6 , 14 , 28 , 5 , 3 , 31 , 9 , 14 , 31 , 11 , 0 , 0 , 0 
 2500 RESTORE 2600
 2510 READ B1 , B2 , B3 
 2520 IF B1 = 0 THEN 2700
 2530 CALL HCHAR ( B1 , B2 , 88 , B3 ) 
 2540 GOTO 2510
 2600 DATA 4 , 3 , 16 , 4 , 21 , 9 , 7 , 6 , 18 , 9 , 3 , 4 , 9 , 23 , 4 , 10 , 12 , 4 , 12 , 3 , 7 , 12 , 23 , 7 , 13 , 12 , 4 , 13 , 18 , 6 , 15 , 3 , 4 
 2610 DATA 16 , 18 , 9 , 18 , 6 , 7 , 19 , 18 , 4 , 19 , 24 , 6 , 21 , 3 , 16 , 22 , 24 , 6 , 0 , 0 , 0 
 2700 RESTORE 2800
 2710 READ B1 , B2 , B3 
 2720 IF B1 = 0 THEN 2900
 2730 CALL VCHAR ( B1 , B2 , 88 , B3 ) 
 2740 GOTO 2710
 2800 DATA 4 , 3 , 6 , 15 , 3 , 7 , 7 , 6 , 3 , 15 , 6 , 4 , 4 , 9 , 15 , 10 , 12 , 9 , 7 , 15 , 4 , 13 , 15 , 9 , 4 , 18 , 10 , 16 , 18 , 6 , 1 , 21 , 4 
 2810 DATA 19 , 21 , 4 , 8 , 23 , 1 , 16 , 24 , 7 , 4 , 26 , 6 , 12 , 26 , 5 , 4 , 29 , 19 , 0 , 0 , 0 
 2900 RETURN 
10000 CALL MOTION ( # 1 , 0 , 0 )  :: CALL SOUND ( 200 , - 7 , 10 ) 
10005 CALL COLOR ( 2 , 10 , 2 , 5 , 10 , 2 )  :: FOR Z = 1 TO 100  :: NEXT Z 
10010 CALL VCHAR ( A , B , 32 , 2 )  :: CALL VCHAR ( A , B + 1 , 32 , 2 ) 
10020 CALL CLEAR  :: STOP 
10030 END 
11000 CALL MOTION ( # 1 , 0 , 0 ) 
11010 PUO = PU  :: GOSUB 2500 :: GOTO 540
