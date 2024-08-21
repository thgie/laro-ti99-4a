  100 CALL CLEAR 
  110 CALL SCREEN ( 4 ) 
  120 CALL COLOR ( 9 , 2 , 16 , 10 , 14 , 16 ) 
  130 CALL CHAR ( 96 , "" , 97 , "FFFFFFFFFFFFFFFF" , 104 , "007E7E7E7E7E7E" ) 
  140 DISPLAY AT ( 1 , 4 )  : "AUTO-ZEICHENDEFINITION" 
  150 DISPLAY AT ( 4 , 3 )  : "12345678" 
  160 FOR I = 1 TO 8 
  170 CALL HCHAR ( I + 5 , 3 , I + 48 ) 
  180 CALL HCHAR ( I + 5 , 5 , 96 , 8 ) 
  190 NEXT I 
  200 OPTION BASE 1 
  210 DIM K ( 8 , 8 ) 
  220 FOR I = 1 TO 8  :: FOR J = 1 TO 8  :: K ( I , J ) = 0  :: NEXT J  :: NEXT I 
  230 A , B = 1  :: Z1 = 96  :: T = 1 
  240 CALL HCHAR ( 16 , 1 , 32 , 282 ) 
  250 FOR I = 13 TO 32 
  260 CALL VCHAR ( 3 , I , 32 , 22 ) 
  270 NEXT I 
  280 CALL GCHAR ( A + 5 , B + 4 , Z ) 
  290 CALL HCHAR ( A + 5 , B + 4 , 104 ) 
  300 CALL JOYST ( 1 , X , Y ) 
  310 IF X < > 0 OR Y < > 0 THEN 450
  320 CALL KEY ( 1 , KEY , ST ) 
  330 IF KEY = 5 THEN 520
  340 IF KEY < > 18 OR KEY = K1 THEN 370
  350 IF Z = 96 THEN Z = 97 ELSE Z = 96 
  360 CALL HCHAR ( A + 5 , B + 4 , Z ) 
  370 T = T + 1  :: IF T > 2 THEN T = 1 
  380 K1 = KEY 
  390 ON T GOTO 400, 420
  400 Z1 = Z 
  410 GOTO 430
  420 Z1 = 104 
  430 CALL HCHAR ( A + 5 , B + 4 , Z1 ) 
  440 GOTO 300
  450 K ( A , B ) = Z - 96 
  460 CALL HCHAR ( A + 5 , B + 4 , Z ) 
  470 Y = - Y / 4 
  480 X = X / 4 
  490 A = A + Y  :: IF A < 1 OR A > 8 THEN A = A - Y 
  500 B = B + X  :: IF B < 1 OR B > 8 THEN B = B - X 
  510 GOTO 280
  520 CALL HCHAR ( A + 5 , B + 4 , Z ) 
  530 K ( A , B ) = Z - 96 
  540 DISPLAY AT ( 10 , 14 )  : "DEFINITION" 
  550 HEX$ = "0123456789ABCDEF" 
  560 A$ = "" 
  570 FOR I = 1 TO 8 
  580 LINKS = 8 * K ( I , 1 ) + 4 * K ( I , 2 ) + 2 * K ( I , 3 ) + K ( I , 4 ) + 1 
  590 RECHTS = 8 * K ( I , 5 ) + 4 * K ( I , 6 ) + 2 * K ( I , 7 ) + K ( I , 8 ) + 1 
  600 A$ = A$ & SEG$ ( HEX$ , LINKS , 1 ) & SEG$ ( HEX$ , RECHTS , 1 ) 
  610 NEXT I 
  620 DISPLAY AT ( 10 , 14 ) 
  630 DISPLAY AT ( 16 , 1 )  : "HEX-STRING:"  ; A$ 
  640 DISPLAY AT ( 4 , 12 )  : "WELCHES ZEICHEN" 
  650 DISPLAY AT ( 6 , 12 )  : "SOLL DEFINIERT " 
  660 DISPLAY AT ( 8 , 12 )  : "WERDEN?:" 
  670 DISPLAY AT ( 10 , 13 )  : "0 FUER KEINES" 
  680 DISPLAY AT ( 12 , 13 )  : "1 FUER KORREKTUR" 
  690 DISPLAY AT ( 14 , 12 ) BEEP  : "EINGEBEN." 
  700 ACCEPT AT ( 8 , 20 ) VALIDATE ( DIGIT )  : P 
  710 IF P = 0 THEN 160
  720 IF P = 1 THEN 230
  730 IF P < 32 OR ( P > 95 AND P < 98 ) OR P > 143 OR P = 104 THEN 700
  740 DISPLAY AT ( 18 , 1 )  : "CALL CHAR(" & STR$ ( P ) & ","" & A$ & "")" 
  750 CALL CHAR ( P , A$ ) 
  760 CALL HCHAR ( 22 , 6 , P ) 
  770 FOR I = 1 TO 3 
  780 CALL HCHAR ( I + 20 , 12 , P , 3 ) 
  790 NEXT I 
  800 DISPLAY AT ( 22 , 14 )  : "W DRUECKEN" 
  810 CALL KEY ( 3 , KEY , S ) 
  820 IF KEY < > 87 THEN 810
  830 GOTO 160
