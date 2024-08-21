  100 CALL CLEAR 
  110 CALL SCREEN ( 2 ) 
  120 CALL CHAR ( 96 , "3C7EFFFFFFFF7E3CFFFFFFFFFFFFFFFF00000000000000000000183C3C18" ) 
  130 CALL CHAR ( 104 , "FFFFFFFFF8F0F0F0F0F0F8FCFEFFFFFFFFFFFFFF3F1F0F07FFFFFCF8F0F0F0F0" ) 
  140 CALL CHAR ( 108 , "FFFF3F1F0F0F0F0FFFFFFFFFFCF8F0E0FFFFFFFF1F0F0F0F0F0F1F3F7FFFFFFF" ) 
  150 CALL CHAR ( 112 , "E0F0F8FCFFFFFFFFFFFFFF7F3F1F0F0F0F0F0F1FFFFFFFFFF0F0F0F0F8FCFFFF" ) 
  160 CALL CHAR ( 116 , "0F0F0F0F1F3FFFFFFFFFFFFEFCF8F0F0F0F0F0F8FFFFFFFF070F1F3FFFFFFFFF" ) 
  170 CALL CHAR ( 120 , "F8F8F8F0E00000001F1F1F0F07000000000000070F1F1F1F000000E0F0F8F8F8" ) 
  180 CALL CHAR ( 124 , "0703000000000000E0C00000000000000000000000000307000000000000C0E0" ) 
  190 CALL CHAR ( 128 , "000000FF80FF0000000000FFFFFF00000000FFFFFFFFFF003C7EFFFFFFFF7E3C" ) 
  200 OPTION BASE 1  :: DIM X ( 7 ) , Y ( 7 ) , P ( 7 ) , Q ( 7 ) , L ( 7 ) 
  210 ON WARNING NEXT 
  220  ! 
  230  ! 
  240  ! 
  250 CALL COLOR ( 9 , 7 , 4 , 10 , 7 , 2 , 11 , 7 , 2 , 12 , 2 , 4 , 13 , 16 , 1 ) 
  260 FOR I = 3 TO 16  :: CALL HCHAR ( I , 5 , 98 , 24 )  :: NEXT I 
  270 CALL HCHAR ( 1 , 3 , 97 , 28 )  :: DISPLAY AT ( 2 , 1 )  : "ahjaaaaaaaaaaklaaaaaaaaaamnaaixbbbbbbbbbb|}bbbbbbbbbbyoa" 
  280 CALL VCHAR ( 4 , 3 , 97 , 12 )  :: CALL VCHAR ( 4 , 4 , 97 , 12 )  :: CALL VCHAR ( 4 , 29 , 97 , 12 )  :: CALL VCHAR ( 4 , 30 , 97 , 12 ) 
  290 DISPLAY AT ( 16 , 1 )  : "au{bbbbbbbbbb~bbbbbbbbbbzqaavwaaaaaaaaaastaaaaaaaaaapra"  :: CALL HCHAR ( 18 , 3 , 97 , 28 ) 
  295 GOSUB 10000
  300 FOR I = 0 TO 8  :: CALL COLOR ( I , 16 , 1 )  :: NEXT I 
  310 DISPLAY AT ( 20 , 2 )  : "ANZAHL SPIELER (1-3)?>1" 
  320 ACCEPT AT ( 20 , 24 ) BEEP VALIDATE ( "123" ) SIZE ( - 1 )  : SPI 
  330 DISPLAY AT ( 20 , 1 ) 
  340 DISPLAY AT ( 22 , 1 )  : "NOCH SCHLAEGE:     RUNDE:" 
  350 IF SPI = 1 THEN DISPLAY AT ( 24 , 1 )  : "PUNKTE:"  :: PP = 8  :: GOTO 370ELSE PP = 3 
  360 FOR I = 1 TO SPI  :: DISPLAY AT ( 24 , 1 + ( I - 1 ) * 9 )  : STR$ ( I ) & ":"  :: NEXT I 
  370 FOR SP = 1 TO SPI 
  380 IF SPI < > 1 THEN DISPLAY AT ( 20 , 1 )  : "S:" & STR$ ( SP ) 
  390 CALL SPRITE ( # 1 , 99 , 16 , P ( 1 ) , Q ( 1 ) ) 
  400 CALL JOYST ( 1 , X1 , Y1 ) 
  410 CALL MOTION ( # 1 , - Y1 , X1 ) 
  440 CALL KEY ( 1 , K , S )  :: IF K < > 18 THEN 400
  450  ! 
  460 CALL POSITION ( # 1 , P1 , Q1 ) 
  470 IF P1 > 123 OR P1 < 15 OR Q1 < 31 OR Q1 > 219 OR ( P1 - P ( 1 ) = 0 AND Q1 - Q ( 1 ) = 0 ) THEN CALL SOUND ( 100 , 110 , 5 )  :: GOTO 400
  480 P2 = P1 - P ( 1 )  :: CALL DELSPRITE ( # 1 ) 
  490 Q2 = Q1 - Q ( 1 ) 
  500 DISPLAY AT ( 20 , 6 )  : "STAERKE: " & CHR$ ( 131 ) 
  510 ST = 3 
  520 CALL JOYST ( 1 , X1 , Y1 ) 
  530 ST = ST + X1 / 4  :: IF ST < 1 THEN ST = 1 
  540 IF ST > 5 THEN ST = 5 
  550 DISPLAY AT ( 20 , 15 + ST )  : " " & CHR$ ( 128 ) & CHR$ ( 129 ) & CHR$ ( 130 ) 
  560 CALL KEY ( 1 , K , S )  :: IF K < > 18 THEN 520
  570 IF ABS ( P2 ) > ABS ( Q2 ) THEN X ( 1 ) = 2 * ST * SGN ( P2 )  :: Y ( 1 ) = SGN ( Q2 ) * ABS ( Q2 / P2 ) * ST * 2 ELSE X ( 1 ) = 2 * SGN ( P2 ) * ABS ( P2 / Q2 ) * ST  :: Y ( 1 ) = 2 * ST * SGN ( Q2 ) 
  580 DISPLAY AT ( 20 , 6 ) 
  590 BW = 0 
  600 FOR BA = 1 TO 7 
  610 IF X ( BA ) = 0 AND Y ( BA ) = 0 THEN 700
  615 BW = 1 
  620 P ( BA ) = P ( BA ) + X ( BA )  :: X ( BA ) = X ( BA ) * .97 
  630 Q ( BA ) = Q ( BA ) + Y ( BA )  :: Y ( BA ) = Y ( BA ) * .97  :: IF ABS ( Y ( BA ) ) < 1 AND ABS ( X ( BA ) ) < 1 THEN Y ( BA ) , X ( BA ) = 0 
  640 IF P ( BA ) < 122 AND P ( BA ) > 16 THEN 660
  650 CO = 1  :: X ( BA ) = - X ( BA )  :: P ( BA ) = P ( BA ) + 2 * X ( BA )  :: CALL SOUND ( - 100 , 110 , 10 ) 
  660 IF Q ( BA ) < 218 AND Q ( BA ) > 32 THEN 680
  670 CO = 1  :: Y ( BA ) = - Y ( BA )  :: Q ( BA ) = Q ( BA ) + 2 * Y ( BA )  :: CALL SOUND ( - 100 , 130 , 10 ) 
  680 CALL LOCATE ( # BA + 1 , P ( BA ) , Q ( BA ) )  :: IF CO THEN CALL LOCH ( BA + 1 , JA )  :: CO = 0  :: IF JA THEN L ( BA ) , X ( BA ) , Y ( BA ) , P ( BA ) , Q ( BA ) = 0 ELSE 700ELSE 700
  690 IF BA < > 1 THEN CALL DELSPRITE ( # BA + 1 )  :: BL = BL + 1 ELSE GOSUB 10000
  700 NEXT BA 
  710 IF BW = 1 THEN 590
 1000 NEXT SP  :: GOTO 370
 9990 STOP 
10000 CALL SPRITE ( # 2 , 96 , 15 , 68 , 184 , # 3 , 96 , 5 , 58 , 54 , # 4 , 96 , 7 , 68 , 54 , # 5 , 96 , 8 , 78 , 54 ) 
10010 CALL SPRITE ( # 6 , 96 , 11 , 63 , 64 , # 7 , 96 , 13 , 73 , 64 , # 8 , 96 , 14 , 68 , 74 ) 
10020 FOR I = 1 TO 7 
10030 CALL POSITION ( # I + 1 , P ( I ) , Q ( I ) ) 
10040 X ( I ) , Y ( I ) , L ( I ) = 0 
10050 NEXT I 
10060 BL = 0  :: RETURN 
20000 SUB LOCH ( X , Y ) 
20010 Y = 0 
20020 SUBEND 
