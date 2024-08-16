  100 REM  ZEICHENDEFINITION 
  110 DIM B ( 8 , 8 ) 
  120 CALL CHAR ( 100 , "" ) 
  130 CALL CHAR ( 101 , "FFFFFFFFFFFFFFFF" ) 
  140 CALL COLOR ( 9 , 2 , 16 ) 
  150 CALL CLEAR 
  160 M$ = "AUTO ZEICHENDEFINITION" 
  170 Y = 3 
  180 X = 4 
  190 GOSUB 770
  200 M$ = "12345678" 
  210 Y = 8 
  220 GOSUB 770
  230 GOSUB 820
  240 M$ = "0=AUS=WEISS" 
  250 Y = 22 
  260 X = 4 
  270 GOSUB 770
  280 M$ = "1=EIN=SCHWARZ" 
  290 Y = 23 
  300 GOSUB 770
  310 FOR R = 1 TO 8 
  320 CALL HCHAR ( 8 + R , 5 , 100 , 8 ) 
  330 NEXT R 
  340 FOR R = 1 TO 8 
  350 FOR C = 1 TO 8 
  360 CALL HCHAR ( 8 + R , 4 + C , 30 ) 
  370 CALL KEY ( 0 , KEY , STATUS ) 
  380 IF STATUS = 0 THEN 370
  390 IF ( KEY < > 8 ) + ( KEY < > 9 ) = - 2 THEN 420
  400 GOSUB 870
  410 GOTO 360
  420 KEY = KEY - 48 
  430 IF ( KEY < 0 ) + ( KEY > 1 ) < = - 1 THEN 370
  440 B ( R , C ) = KEY 
  450 CALL HCHAR ( 8 + R , 4 + C , 100 + KEY ) 
  460 NEXT C 
  470 NEXT R 
  480 HEX$ = "0123456789ABCDEF" 
  490 M$ = "" 
  500 FOR R = 1 TO 8 
  510 LOW = B ( R , 5 ) * 8 + B ( R , 6 ) * 4 + B ( R , 7 ) * 2 + B ( R , 8 ) + 1 
  520 HIGH = B ( R , 1 ) * 8 + B ( R , 2 ) * 4 + B ( R , 3 ) * 2 + B ( R , 4 ) + 1 
  530 M$ = M$ & SEG$ ( HEX$ , HIGH , 1 ) & SEG$ ( HEX$ , LOW , 1 ) 
  540 NEXT R 
  550 CALL CHAR ( 102 , M$ ) 
  560 CALL HCHAR ( 8 , 20 , 102 ) 
  570 FOR R = 0 TO 2 
  580 CALL HCHAR ( 12 + R , 20 , 102 , 3 ) 
  590 NEXT R 
  600 Y = 16 
  610 X = 12 
  620 GOSUB 770
  630 M$ = "E FUER ENDE DRUECKEN" 
  640 Y = 18 
  650 X = 12 
  660 GOSUB 770
  670 M$ = "FUER WEITER AN-" 
  680 Y = 19 
  690 GOSUB 770
  700 M$ = "DEREN KNOPF DRUECKEN" 
  710 Y = 20 
  720 GOSUB 770
  730 CALL KEY ( 0 , KEY , STATUS ) 
  740 IF STATUS = 0 THEN 730
  750 IF KEY < > 69 THEN 140
  760 STOP 
  770 FOR I = 1 TO LEN ( M$ ) 
  780 CODE = ASC ( SEG$ ( M$ , I , 1 ) ) 
  790 CALL HCHAR ( Y , X + I , CODE ) 
  800 NEXT I 
  810 RETURN 
  820 FOR I = 1 TO LEN ( M$ ) 
  830 CODE = ASC ( SEG$ ( M$ , I , 1 ) ) 
  840 CALL HCHAR ( Y + I , X , CODE ) 
  850 NEXT I 
  860 RETURN 
  870 CALL HCHAR ( 8 + R , 4 + C , 100 + B ( R , C ) ) 
  880 IF KEY = 9 THEN 960
  890 C = C - 1 
  900 IF C < > 0 THEN 1020
  910 C = 8 
  920 R = R - 1 
  930 IF R < > 0 THEN 1020
  940 R = 8 
  950 GOTO 1020
  960 C = C + 1 
  970 IF C < > 9 THEN 1020
  980 C = 1 
  990 R = R + 1 
 1000 IF R < > 9 THEN 1020
 1010 R = 1 
 1020 RETURN 
