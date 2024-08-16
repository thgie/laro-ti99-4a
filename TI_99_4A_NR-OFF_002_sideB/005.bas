  100 REM  PHOENIX
  103 RANDOMIZE 
  104 R1 = 16  :: X1 = 96 
  106 CALL MAGNIFY ( 4 ) 
  107 GOTO 300
  110 CALL CLEAR 
  115 OPTION BASE 1 
  116 DIM E ( 5 , 3 ) , S ( 5 , 3 ) 
  120 CALL CHAR ( 129 , "003844BAA2BA4438" ) 
  130 CALL SCREEN ( 4 ) 
  140 READ A$ , X , Y  :: IF A$ = "ENDE" THEN 160
  150 DISPLAY AT ( X , Y ) BEEP SIZE ( LEN ( A$ ) + 1 )  : A$  :: FOR T = 1 TO 300  :: NEXT T  :: GOTO 140
  160 FOR T = 1 TO 600  :: NEXT T 
  170 CALL CLEAR 
  180 CALL SCREEN ( 16 ) 
  190 CALL CHAR ( 96 , "" ) 
  200 CALL MAGNIFY ( 4 ) 
  210 CALL CHAR ( 100 , "" ) 
  220 CALL CHAR ( 104 , "" ) 
  230 CALL SCREEN ( 2 ) 
  240 DATA PHOENIX , 2 , 11 , ------- , 3 , 11 , DAS SPIEL FUER ALLE , 5 , 5 , "   FANATISCHEN  " , 7 , 6 , "   BEGEISTERTEN " , 7 , 6 
  250 DATA "   TOLLKUEHNEN  " , 7 , 6 , " VOGELFANS" , 9 , 9 , 1983 BY L.SACER , 16 , 6 , ENDE , 0 , 0 
  300 CALL CLEAR 
  310 CALL SCREEN ( 2 ) 
  320 CALL CHAR ( 96 , "00000000000F7FFF7F" , 98 , "00000000F8FCFEF3F33F1F0F1A38F070" ) 
  330 CALL CHAR ( 100 , "000000003E7FFF9F9FF8F0E0B0381E1C0000000000E0FCFEFC" ) 
  340 CALL CHAR ( 104 , "00000000000101030F0F1F3C78F0E04000030FFFE3E3FFFFFAF89838F0E0" ) 
  350 CALL CHAR ( 108 , "0080E0FC9C9FFFFFBF3F33381E1C00000000000000000080E0F0F0783C1E0E04" ) 
  360 CALL CHAR ( 112 , "00000000000101030301" , 114 , "00000000008080C0C080" ) 
  365 CALL CHAR ( 116 , "E7E7E3FFFFE3FF1F1FFFFFC3C3CFF0F0E7E7C7FFFFC7FFF8F8FFFFC3C3F30F0F" ) 
  370 CALL CHAR ( 120 , "000000000000000101" , 122 , "000000000000008080" ) 
  400 CALL SPRITE ( # 20 , 96 , 7 , 10 , 80 , # 21 , 100 , 14 , 10 , 112 , # 10 , 116 , 11 , 160 , 96 ) 
  410 FOR I = 1 TO 160 STEP .5 
  411 PAT = NOT PAT 
  416 CALL PATTERN ( # 20 , 96 - 8 * PAT , # 21 , 100 - 8 * PAT ) 
  417 H = H + R1  :: IF H > 80 THEN H = 80  :: R1 = - R1 
  418 IF H < - 56 THEN H = - 56  :: R1 = - R1 
  420 CALL LOCATE ( # 20 , I , 90 + H , # 21 , I , 122 + H ) 
  425 IF RND < .7 THEN 460
  430 EI = EI + 1 
  435 IF EI > 5 THEN EI = 1 
  440 IF E ( EI , 1 ) THEN 460
  445 E ( EI , 1 ) = 1 
  450 CALL SPRITE ( # EI , 112 , 16 , I + 16 , H + 104 , 4 , 0 ) 
  452 CALL SOUND ( - 200 , - 1 , 8 ) 
  455 E ( EI , 2 ) = I + 16  :: E ( EI , 3 ) = H + 104 
  460 FOR J = 1 TO 5 
  465 IF E ( J , 1 ) = 0 THEN 500
  470 E ( J , 2 ) = E ( J , 2 ) + 16 
  475 IF E ( J , 2 ) < 160 THEN 490
  480 CALL DELSPRITE ( # J ) 
  485 E ( J , 1 ) , E ( J , 2 ) , E ( J , 3 ) = 0 
  487 GOTO 500
  490 CALL LOCATE ( # J , E ( J , 2 ) , E ( J , 3 ) ) 
  492 CALL COINC ( # J , # 10 , 20 , O )  :: IF O THEN 1100
  500 NEXT J 
  520 CALL JOYST ( 1 , X , Y ) 
  530 X1 = X1 + X * 4 
  532 IF X1 < 20 THEN X1 = 20 ELSE IF X1 > 200 THEN X1 = 200 
  540 CALL LOCATE ( # 10 , 160 , X1 ) 
  550 CALL KEY ( 1 , K , [ ) 
  560 IF K < > 18 THEN 800
  570 SH = SH + 1  :: IF SH > 5 THEN SH = 1 
  580 IF S ( SH , 1 ) THEN 800
  585 S ( SH , 1 ) = 1 
  590 CALL SPRITE ( # SH + 10 , 120 , 16 , 144 , X1 , - 8 , 0 ) 
  595 CALL SOUND ( - 300 , - 6 , 8 ) 
  600 S ( SH , 2 ) = 144  :: S ( SH , 3 ) = X1 
  800 FOR J = 1 TO 5 
  810 IF S ( J , 1 ) = 0 THEN 900
  820 S ( J , 2 ) = S ( J , 2 ) - 24 
  830 IF S ( J , 2 ) > 1 THEN 870
  840 S ( J , 1 ) , S ( J , 2 ) , S ( J , 3 ) = 0 
  850 CALL DELSPRITE ( # J + 10 ) 
  860 GOTO 900
  870 CALL LOCATE ( # J + 10 , S ( J , 2 ) , S ( J , 3 ) ) 
  880 CALL COINC ( # J + 10 , I , H + 106 , 26 , O )  :: IF O THEN 2000
  900 NEXT J 
 1000 NEXT I 
 1100 FOR I = 1 TO 21 
 1110 CALL MOTION ( # I , 0 , 0 ) 
 1120 NEXT I 
 1130 FOR I = 1 TO 10 
 1140 FOR J = 10 TO 12 STEP 2 
 1150 CALL COLOR ( # 10 , J ) 
 1160 NEXT J 
 1170 NEXT I 
 1180 CALL SOUND ( 600 , - 7 , 8 ) 
 1190 CALL DELSPRITE ( # 10 ) 
 1200 FOR I = 1 TO 200  :: NEXT I 
 1210 CALL DELSPRITE ( ALL ) 
 1220 STOP 
 2000 CALL MOTION ( # 20 , 2 , - 2 , # 21 , 2 , 2 , # 1 , 0 , 0 , # 2 , 0 , 0 , # 3 , 0 , 0 , # 4 , 0 , 0 , # 5 , 0 , 0 , # 11 , 0 , 0 , # 12 , 0 , 0 , # 13 , 0 , 0 ) 
 2005 CALL MOTION ( # 10 , 0 , 0 , # 14 , 0 , 0 , # 15 , 0 , 0 ) 
 2010 CALL SOUND ( 600 , - 6 , 5 ) 
 2020 FOR I = 1 TO 500  :: NEXT I 
 2030 STOP 
