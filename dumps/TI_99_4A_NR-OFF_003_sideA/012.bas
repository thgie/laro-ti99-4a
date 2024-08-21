  100 CALL CLEAR 
  110 CALL SCREEN ( 2 ) 
  120 CALL MAGNIFY ( 4 ) 
  130  ! 
  140  ! 
  150 CALL CHAR ( 64 , "" , 65 , "FFFFFFFFFFFFFFFF0000000000000FFF000000000FFFFFFF00000FFFFFFFFFFF" ) 
  160 CALL CHAR ( 69 , "0FFFFFFFFFFFFFFF00000000030F3FFF030F3FFFFFFFFFFF0103070F1F3F7FFF" ) 
  170 CALL CHAR ( 73 , "000000000000F0FF00000000F0FFFFFF0000F0FFFFFFFFFFF0FFFFFFFFFFFFFF" ) 
  180 CALL CHAR ( 77 , "00000000C0F0FCFFC0F0FCFFFFFFFFFF80C0E0F0F8FCFEFF" ) 
  190 CALL CHAR ( 80 , "07182044488080808080805A42231807E0180422120101010101015A42C418E0" ) 
  200 CALL CHAR ( 84 , "3333333333333333CCCCCCCCCCCCCCCCFFFF0000FFFF00000000FFFF0000FFFF" ) 
  210 CALL CHAR ( 88 , "00000000000000010100000000000000000000000000008080" ) 
  220 CALL CHAR ( 92 , "FFFFFFFFFFFFFFFF0103070F1F3F7FFF80C0E0F0F8FCFEFF" ) 
  230  ! 
  240  ! 
  250  ! 
  260  ! 
  270  ! 
  280 CALL COLOR ( 3 , 16 , 1 , 4 , 16 , 1 , 5 , 12 , 8 , 6 , 12 , 8 , 7 , 16 , 2 , 8 , 15 , 12 ) 
  290  ! 
  300 OPTION BASE 1  :: DIM H$ ( 7 ) , E$ ( 7 )  :: FOR I = 1 TO 7  :: H$ ( I ) , E$ ( I ) = ""  :: NEXT I 
  310 H$ ( 4 ) = RPT$ ( "@" , 252 )  :: E$ ( 4 ) = RPT$ ( "A" , 252 ) 
  320 A$ = "AAAAAO@@@@@@@@@@@@@@@@@@@@@@"  :: FOR I = 1 TO 9  :: H$ ( 1 ) = H$ ( 1 ) & A$  :: A$ = "A" & SEG$ ( A$ , 1 , 27 )  :: NEXT I 
  330 FOR I = 1 TO 9  :: E$ ( 1 ) = E$ ( 1 ) & A$  :: A$ = "A" & SEG$ ( A$ , 1 , 27 )  :: NEXT I 
  340 H$ ( 2 ) = RPT$ ( "@" , 56 )  :: A$ = "NM" & RPT$ ( "@" , 26 )  :: FOR I = 3 TO 9  :: H$ ( 2 ) = H$ ( 2 ) & A$  :: A$ = "AA" & SEG$ ( A$ , 1 , 26 )  :: NEXT I 
  350 FOR I = 1 TO 9  :: E$ ( 2 ) = E$ ( 2 ) & A$  :: A$ = "AA" & SEG$ ( A$ , 1 , 26 )  :: NEXT I 
  360 H$ ( 3 ) = RPT$ ( "@" , 140 ) & "JI" & RPT$ ( "@" , 26 )  :: A$ = "AALKJI" & RPT$ ( "@" , 22 )  :: FOR I = 7 TO 9  :: H$ ( 3 ) = H$ ( 3 ) & A$  :: A$ = "AAAA" & SEG$ ( A$ , 1 , 24 )  :: NEXT I 
  370 FOR I = 1 TO 9  :: E$ ( 3 ) = E$ ( 3 ) & A$  :: A$ = "AAAA" & SEG$ ( A$ , 1 , 24 )  :: NEXT I 
  380 H$ ( 5 ) = RPT$ ( "@" , 140 ) & RPT$ ( "@" , 26 ) & "BC"  :: A$ = RPT$ ( "@" , 22 ) & "BCDEAA"  :: FOR I = 7 TO 9  :: H$ ( 5 ) = H$ ( 5 ) & A$  :: A$ = SEG$ ( A$ , 5 , 24 ) & "AAAA"  :: NEXT I 
  390 FOR I = 1 TO 9  :: E$ ( 5 ) = E$ ( 5 ) & A$  :: A$ = SEG$ ( A$ , 5 , 24 ) & "AAAA"  :: NEXT I 
  400 H$ ( 6 ) = RPT$ ( "@" , 56 )  :: A$ = RPT$ ( "@" , 26 ) & "FG"  :: FOR I = 3 TO 9  :: H$ ( 6 ) = H$ ( 6 ) & A$  :: A$ = SEG$ ( A$ , 3 , 26 ) & "AA"  :: NEXT I 
  410 FOR I = 1 TO 9  :: E$ ( 6 ) = E$ ( 6 ) & A$  :: A$ = SEG$ ( A$ , 3 , 26 ) & "AA"  :: NEXT I 
  420 A$ = RPT$ ( "@" , 22 ) & "HAAAAA"  :: FOR I = 1 TO 9  :: H$ ( 7 ) = H$ ( 7 ) & A$  :: A$ = SEG$ ( A$ , 2 , 27 ) & "A"  :: NEXT I 
  430 FOR I = 1 TO 9  :: E$ ( 7 ) = E$ ( 7 ) & A$  :: A$ = SEG$ ( A$ , 2 , 27 ) & "A"  :: NEXT I 
  440  ! 
  450  ! 
  460 GOSUB 11000
  500  !  START
  510 CALL KEY ( 2 , K , S )  :: IF K < > 18 THEN 510
  520 GSW = 0  :: FOR PA = 30 TO 10 STEP - 1  :: CALL SOUND ( - 4250 , 110 , PA , 115 , PA , 120 , PA )  :: NEXT PA 
  530 GOSUB 13000
  535 CALL SPRITE ( # 10 , 88 , 16 , 50 , 115 )  :: SPO = 50  :: PL , SPL = 0 
  540 GOSUB 12000
  550 SPL = SPL + GSW  :: IF SPL < 1400 AND PL = 0 THEN 600ELSE PL = PL + 1 
  552 CALL DELSPRITE ( # 10 ) 
  555 ON PL GOTO 560, 565, 575, 580, 585, 590, 595
  560 CALL HCHAR ( 8 , 15 , 65 , 4 )  :: GOTO 620
  565 CALL HCHAR ( 9 , 14 , 65 , 6 )  :: GOTO 620
  575 CALL HCHAR ( 10 , 13 , 65 , 8 )  :: GOTO 620
  580 CALL HCHAR ( 11 , 12 , 65 , 10 )  :: GOTO 620
  585 CALL HCHAR ( 12 , 11 , 65 , 12 )  :: GOTO 620
  590 CALL HCHAR ( 13 , 10 , 65 , 14 )  :: GOTO 620
  595 FOR PA = 1 TO 40  :: CALL SOUND ( - 10 , - 5 , 0 )  :: CALL SCREEN ( 5 )  :: CALL SOUND ( - 10 , - 7 , 0 )  :: CALL SCREEN ( 10 )  :: CALL SOUND ( - 10 , - 6 , 0 )  :: CALL SCREEN ( 16 )  :: NEXT PA 
  596 CALL SOUND ( - 4250 , - 7 , 0 ) 
  597 GOTO 597
  600 SPO = SPO + GSW / 8  :: IF SPO > 93 THEN SPO = 50 
  610 CALL LOCATE ( # 10 , SPO , 115 ) 
  620  ! 
  630 GOSUB 13000
  640 GOTO 540
 9970 STOP 
 9980  !  UNTERPROGRAMME
 9990  !  1.SICHT
10000 D$ = SEG$ ( H$ ( INT ( QU ) ) , INT ( WI ) * 28 - 27 , 252 ) 
10010 F$ = SEG$ ( E$ ( INT ( QU ) ) , 1 , ( INT ( WI ) + 2 ) * 28 ) 
10020 DISPLAY AT ( 2 , 1 )  : D$  ; F$ 
10030  ! 
10040  ! 
10050  ! 
10060  ! 
10070  ! 
10080  ! 
10090  ! 
10100 RETURN 
10990  ! 2.AUFBAU
11000  ! 
11005 CALL VCHAR ( 2 , 2 , 84 , 12 )  :: CALL VCHAR ( 2 , 31 , 85 , 12 )  :: CALL HCHAR ( 1 , 2 , 87 , 30 )  :: CALL HCHAR ( 14 , 2 , 86 , 30 ) 
11010 CALL SPRITE ( # 25 , 80 , 16 , 110 , 220 , # 26 , 80 , 8 , 110 , 4 , # 27 , 80 , 15 , 140 , 108 ) 
11020  ! 
11030  ! 
11040 DISPLAY AT ( 2 , 1 )  : SEG$ ( H$ ( 4 ) , 1 , 168 )  ; SEG$ ( E$ ( 4 ) , 1 , 168 ) 
11050 FOR I = 1 TO 6  :: CALL HCHAR ( I + 7 , 16 - I , 93 )  :: CALL HCHAR ( I + 7 , 17 - I , 92 , I * 2 )  :: CALL HCHAR ( I + 7 , 17 + I , 94 )  :: NEXT I 
11060  ! 
11070  ! 
11080  ! 
11090  ! 
11100 RETURN 
12000 CALL JOYST ( 2 , [ , ] ) 
12010 GSW1 = GSW  :: GSW = GSW + ] * 2 
12015 IF GSW < = 0 THEN GSW = 0 
12020 FOR PA = GSW1 TO GSW STEP SGN ( GSW - GSW1 ) + 1E-10  :: CALL SOUND ( - 4250 , 110 + 2.7 * PA , 10 , 115 + 2.8 * PA , 10 , 120 + 2.9 * PA , 10 )  :: NEXT PA 
12030 RETURN 
13000 DISPLAY AT ( 20 , 12 ) SIZE ( 4 )  : GSW 
13010 RETURN 
