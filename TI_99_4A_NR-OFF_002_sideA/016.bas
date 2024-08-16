  100 CALL CLEAR 
  110 INPUT "VORDERGRUND?: "  : V 
  120 INPUT "HINTERGRUND?: "  : H 
  130 A$ = "00000000000000FF" 
  140 FOR T = 129 TO 135 
  150 CALL CHAR ( T , A$ ) 
  160 A$ = SEG$ ( A$ , 1 , POS ( A$ , "FF" , 1 ) - 3 ) & "FFFFFFFFFFFFFFFF" 
  170 NEXT T 
  180 CALL COLOR ( 13 , V , H ) 
  190 CALL COLOR ( 12 , V , V ) 
  200 CALL SCREEN ( H ) 
  210 DIM ZAHL ( 11 ) 
  220 CALL CLEAR 
  230 FG = 0 
  240 INPUT "ANZAHL ZAHLEN?: "  : X 
  250 IF X > 11 THEN 680
  260 IF X < 1 THEN 700
  270 FOR Y = 1 TO X 
  280 INPUT "ZAHL NR." & STR$ ( Y ) & "?: "  : ZAHL ( Y ) 
  290 IF ZAHL ( Y ) < 0 THEN 280
  300 NEXT Y 
  310 CALL CLEAR 
  320 FOR Y = 1 TO X 
  330 IF ZAHL ( Y ) > = FG THEN 340ELSE 350
  340 LET FG = ZAHL ( Y ) 
  350 NEXT Y 
  360 GROESSE = 18 / FG 
  370 FOR Y = 1 TO X 
  380 CALL VCHAR ( 19 - INT ( GROESSE * ZAHL ( Y ) ) , ( 32 / X ) * Y - ( 32 / X / 2 ) , 127 , INT ( GROESSE * ZAHL ( Y ) ) ) 
  390 GOSUB 420
  400 NEXT Y 
  410 GOTO 580
  420 REST = 7 * ( ZAHL ( Y ) * GROESSE - INT ( ZAHL ( Y ) * GROESSE ) ) + 1 
  430 ON REST GOTO 450, 440, 460, 480, 500, 520, 540, 560
  440 CALL HCHAR ( 18 - INT ( GROESSE * ZAHL ( Y ) ) , ( 32 / X ) * Y - ( 32 / X / 2 ) , 129 ) 
  450 RETURN 
  460 CALL HCHAR ( 18 - INT ( GROESSE * ZAHL ( Y ) ) , ( 32 / X ) * Y - ( 32 / X / 2 ) , 130 ) 
  470 RETURN 
  480 CALL HCHAR ( 18 - INT ( GROESSE * ZAHL ( Y ) ) , ( 32 / X ) * Y - ( 32 / X / 2 ) , 131 ) 
  490 RETURN 
  500 CALL HCHAR ( 18 - INT ( GROESSE * ZAHL ( Y ) ) , ( 32 / X ) * Y - ( 32 / X / 2 ) , 132 ) 
  510 RETURN 
  520 CALL HCHAR ( 18 - INT ( GROESSE * ZAHL ( Y ) ) , ( 32 / X ) * Y - ( 32 / X / 2 ) , 133 ) 
  530 RETURN 
  540 CALL HCHAR ( 18 - INT ( GROESSE * ZAHL ( Y ) ) , ( 32 / X ) * Y - ( 32 / X / 2 ) , 134 ) 
  550 RETURN 
  560 CALL HCHAR ( 18 - INT ( GROESSE * ZAHL ( Y ) ) , ( 32 / X ) * Y - ( 32 / X / 2 ) , 135 ) 
  570 RETURN 
  580 FOR Y = 1 TO X 
  590 FOR C = 1 TO LEN ( STR$ ( ZAHL ( Y ) ) ) 
  600 KODE = ASC ( SEG$ ( STR$ ( ZAHL ( Y ) ) , C , 1 ) ) 
  610 IF ( 32 / X ) * Y - ( 32 / X / 2 ) + C - .5 > = 33 THEN 640
  620 CALL HCHAR ( 20 , ( 32 / X ) * Y - ( 32 / X / 2 ) + C - 1 , KODE ) 
  630 NEXT C 
  640 NEXT Y 
  650 CALL KEY ( 0 , K , S ) 
  660 IF S = 0 THEN 650
  670 GOTO 220
  680 PRINT "ZU GROSS!"  : "LIMITE IST 11!" 
  690 GOTO 240
  700 PRINT "ZU KLEIN!"  : "DIE ZAHL MUSS POSITIV SEIN!" 
  710 GOTO 240
