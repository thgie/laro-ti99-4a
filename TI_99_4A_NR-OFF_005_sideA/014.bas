    1 CALL CHAR ( 128 , "FF8083838383BFBFFF01C1C1C1C1FDFDBFBF8383838380FFFDFDC1C1C1C101FF" ) 
    2 CALL CLEAR  :: CALL SCREEN ( 5 )  :: CALL COLOR ( 0 , 16 , 5 , 1 , 16 , 5 , 2 , 16 , 5 , 3 , 16 , 5 , 4 , 16 , 5 , 5 , 16 , 5 , 6 , 16 , 5 , 7 , 16 , 5 , 8 , 16 , 5 ) 
    3 CALL COLOR ( 13 , 16 , 9 )  :: DISPLAY AT ( 1 , 11 )  : "19" 
    4 CALL HCHAR ( 1 , 16 , 128 )  :: CALL HCHAR ( 1 , 17 , 129 )  :: CALL HCHAR ( 2 , 16 , 130 )  :: CALL HCHAR ( 2 , 17 , 131 )  :: DISPLAY AT ( 1 , 17 )  : "84" 
    5 DISPLAY AT ( 5 , 6 )  : "    LARO SACER "  :  : "   HOMECOMPUTER TI-99/4A" 
    6 DISPLAY AT ( 10 , 9 )  : "PRAESENTIERT:" 
    7 CALL TITEL ( 15 , 2 , "3-DIMENSIONALES LABYRINTH" ) 
    8 DISPLAY AT ( 24 , 6 )  : "** MOMENT BITTE **" 
  110 RANDOMIZE 
  130 DIM F ( 23 , 23 ) , RT ( 3 , 1 ) , U ( 2 , 2 ) 
  140 DATA 0 , 1 , 0 , -1 , -1 , 0 , 1 , 0 
  150 FOR I = 0 TO 1 
  160 FOR J = 0 TO 3 
  170 READ RT ( J , I ) 
  180 NEXT J 
  190 NEXT I 
  200 FOR I = 1 TO 23 STEP 2 
  210 FOR J = 1 TO 23 STEP 2 
  220 F ( I , J ) = 1 
  230 NEXT J 
  240 NEXT I 
  250 FOR I = 0 TO 22 
  260 FOR J = 1 TO 2 
  270 P = J + I - 1 
  280 IF P < 1 THEN 330
  290 F ( 1 , P ) = J 
  300 F ( P , 1 ) = J 
  310 F ( 23 , P ) = J 
  320 F ( P , 23 ) = J 
  330 NEXT J 
  340 NEXT I 
  350 XH = 11 
  360 FOR I = 3 TO 21 STEP 18 
  370 FOR J = 1 TO 2 
  372 P = INT ( RND * 10 ) * 2 + 3 
  373 IF F ( I , P ) = 2 THEN 378
  374 F ( I , P ) = 2 
  376 F ( I + SGN ( I - 11 ) , P ) = 1 
  378 P = INT ( RND * 10 ) * 2 + 3 
  379 IF F ( P , I ) = 2 THEN 390
  380 F ( P , I ) = 2 
  382 F ( P , I + SGN ( I - 11 ) ) = 1 
  390 NEXT J 
  400 NEXT I 
  410 FOR HX = 1 TO 12 
  420 XH = XH + 2 
  430 IF XH < 24 THEN 450
  440 XH = 1 
  450 FOR YH = 1 TO 23 STEP 2 
  460 X = XH 
  470 Y = YH 
  480 GOSUB 530
  490 NEXT YH 
  500 NEXT HX 
  510 CALL SOUND ( 1000 , 440 , 1 ) 
  520 GOTO 680
  530 FOR S = 1 TO INT ( RND * 3 ) + 1 
  540 R = INT ( RND * 4 ) 
  550 PX = X + RT ( R , 0 ) * 2 
  560 PY = Y + RT ( R , 1 ) * 2 
  570 IF ( PX < 1 ) + ( PY < 1 ) + ( PX > 23 ) + ( PY > 23 ) < 0 THEN 660
  580 IF F ( PX , PY ) = 2 THEN 660
  590 F ( X + RT ( R , 0 ) , Y + RT ( R , 1 ) ) = 1 
  600 F ( X , Y ) = 2 
  610 F ( PX , PY ) = 2 
  620 X = PX 
  630 Y = PY 
  640 S = 1 
  650 GOTO 540
  660 NEXT S 
  670 RETURN 
  680 REM  PROGRAMMSTART
  690 F ( 1 , 22 ) = - 5 
  695 F ( 2 , 21 ) , F ( 2 , 22 ) , F ( 3 , 22 ) , F ( 4 , 22 ) = 0 
  700 X = INT ( RND * 8 ) + 5 
  710 Y = INT ( RND * 13 ) + 5 
  720 IF F ( X , Y ) < > 0 THEN 700
  730 R = INT ( RND * 4 ) 
  740 GOSUB 1090
  750 GOSUB 1440
  760 GOSUB 1740
  770 CALL KEY ( 0 , K , S ) 
  780 IF S < = 0 THEN 770
  785 CALL SOUND ( 200 , 880 , 10 ) 
  790 IF K = 81 THEN 840
  800 IF K = 80 THEN 880
  810 IF K = 32 THEN 920
  820 IF K = 65 THEN 980
  830 GOTO 770
  840 R = R - 1 
  850 IF R > - 1 THEN 750
  860 R = 3 
  870 GOTO 750
  880 R = R + 1 
  890 IF R < 4 THEN 750
  900 R = 0 
  910 GOTO 750
  920 UX = X + RT ( R , 0 ) 
  930 UY = Y + RT ( R , 1 ) 
  940 IF F ( UX , UY ) = 1 THEN 770
  950 X = UX 
  960 Y = UY 
  970 GOTO 750
  980 CALL CLEAR 
  990 FOR I = 1 TO 23 
 1000 FOR J = 1 TO 23 
 1010 IF F ( I , J ) < 1 THEN 1030
 1020 CALL HCHAR ( J , I + 4 , 58 ) 
 1030 NEXT J 
 1040 NEXT I 
 1050 CALL KEY ( 0 , K , S ) 
 1060 IF S = 0 THEN 1050
 1070 GOSUB 1090
 1080 GOTO 760
 1090 CALL CLEAR 
 1100 IF ST = 1 THEN 1280
 1110 RESTORE 1390
 1120 CALL CHAR ( 58 , "FEFEFEFEFEFEFE00" ) 
 1130 FOR K = 1 TO 10 
 1140 READ A$ 
 1150 FOR I = 1 TO 3 
 1160 READ J 
 1170 CALL CHAR ( J , A$ ) 
 1180 NEXT I 
 1190 NEXT K 
 1200 FOR K = 1 TO 4 
 1210 READ A$ 
 1220 FOR I = 1 TO 4 
 1230 READ J 
 1240 CALL CHAR ( J , A$ ) 
 1250 NEXT I 
 1260 NEXT K 
 1270 ST = 1 
 1280 CALL SCREEN ( 5 ) 
 1291 CALL COLOR ( 1 , 16 , 1 ) 
 1292 CALL COLOR ( 2 , 1 , 1 ) 
 1293 FOR I = 5 TO 12 
 1294 CALL COLOR ( I , 1 , 1 ) 
 1295 NEXT I 
 1300 PRINT "  "$$$$$$$$$$$$$$$$$$$$$$#    A(                    )H    A (                  ) H" 
 1310 PRINT "  ABC(****************)JIH    A AXP              Q`H H    A AX P            Q `H H" 
 1320 PRINT "  A AXYZPRRRRRRRRRRQba`H H    A AX Xph        ix` `H H    A AX Xp h      i x` `H H" 
 1330 PRINT "  A AX Xpqrhjjjjizyx` `H H    A AX Xp p      x x` `H H    A AX Xp p      x x` `H H" 
 1340 PRINT "  A AX Xp p      x x` `H H    A AX Xp p      x x` `H H    A AX Xptsikkkkh{|x` `H H" 
 1350 PRINT "  A AX Xp i      h x` `H H    A AX Xpi        hx` `H H    A AX\[QSSSSSSSSSSPcd`H H" 
 1360 PRINT "  A AX Q            P `H H    A AXQ              P`H H    AED)++++++++++++++++(KLH" 
 1370 PRINT "  A )                  ( H    A)                    (H    #%%%%%%%%%%%%%%%%%%%%%%""  ; 
 1380 RETURN 
 1390 DATA 0101010101010101 , 65 , 88 , 112 , 808080808080808 , 72 , 96 , 120 , FF , 66 , 89 , 113 , FF , 73 , 97 , 121 
 1400 DATA FF01010101010101 , 67 , 90 , 114 , FF8080808080808 , 74 , 98 , 122 , 01010101010101FF , 68 , 91 , 115 
 1410 DATA 80808080808080FF , 75 , 99 , 123 , 00000000000000FF , 69 , 92 , 116 , 00000000000000FF , 76 , 100 , 124 
 1420 DATA 8040201008040201 , 34 , 40 , 80 , 104 , 010204081020408 , 35 , 41 , 81 , 105 , 00000000000000FF 
 1430 DATA 36 , 42 , 82 , 106 , FF , 37 , 43 , 83 , 107 
 1440 ON R + 1 GOSUB 1460, 1530, 1600, 1670
 1450 RETURN 
 1460 FOR XI = 0 TO 2 
 1470 FOR YI = 0 TO 2 
 1480 IF Y - 3 + YI < 1 THEN 1500
 1490 U ( XI , YI ) = F ( X - 1 + XI , Y - 3 + YI ) 
 1500 NEXT YI 
 1510 NEXT XI 
 1520 RETURN 
 1530 FOR XI = 0 TO 2 
 1540 FOR YI = 0 TO 2 
 1550 IF X + 3 - YI > 23 THEN 1570
 1560 U ( XI , YI ) = F ( X + 3 - YI , Y - 1 + XI ) 
 1570 NEXT YI 
 1580 NEXT XI 
 1590 RETURN 
 1600 FOR XI = 0 TO 2 
 1610 FOR YI = 0 TO 2 
 1620 IF Y + 3 - YI > 23 THEN 1640
 1630 U ( XI , YI ) = F ( X + 1 - XI , Y + 3 - YI ) 
 1640 NEXT YI 
 1650 NEXT XI 
 1660 RETURN 
 1670 FOR XI = 0 TO 2 
 1680 FOR YI = 0 TO 2 
 1690 IF X - 3 + YI < 1 THEN 1710
 1700 U ( XI , YI ) = F ( X - 3 + YI , Y + 1 - XI ) 
 1710 NEXT YI 
 1720 NEXT XI 
 1730 RETURN 
 1740 CALL COLOR ( 2 , 1 , 1 ) 
 1741 FOR I = 5 TO 12 
 1742 CALL COLOR ( I , 1 , 1 ) 
 1743 NEXT I 
 1750 IF U ( 1 , 2 ) < 0 THEN 1965
 1760 IF U ( 1 , 2 ) > 0 THEN 1960
 1770 CALL COLOR ( 2 , 16 , 1 ) 
 1780 IF U ( 0 , 2 ) > 0 THEN 1800
 1790 CALL COLOR ( 5 , 16 , 1 ) 
 1800 IF U ( 2 , 2 ) > 0 THEN 1820
 1810 CALL COLOR ( 6 , 16 , 1 ) 
 1820 IF U ( 1 , 1 ) < 0 THEN 1965
 1830 IF U ( 1 , 1 ) > 0 THEN 1960
 1840 CALL COLOR ( 7 , 16 , 1 ) 
 1850 IF U ( 0 , 1 ) > 0 THEN 1870
 1860 CALL COLOR ( 8 , 16 , 1 ) 
 1870 IF U ( 2 , 1 ) > 0 THEN 1890
 1880 CALL COLOR ( 9 , 16 , 1 ) 
 1890 IF U ( 1 , 0 ) < 0 THEN 1965
 1900 IF U ( 1 , 0 ) > 0 THEN 1960
 1910 CALL COLOR ( 10 , 16 , 1 ) 
 1920 IF U ( 0 , 0 ) > 0 THEN 1940
 1930 CALL COLOR ( 11 , 16 , 1 ) 
 1940 IF U ( 2 , 0 ) > 0 THEN 1960
 1950 CALL COLOR ( 12 , 16 , 1 ) 
 1960 RETURN 
 1965 CALL CHAR ( 58 , "FFFFFFFFFFFFFFFF" )  :: FOR I = 1 TO 10  :: CALL HCHAR ( 7 + I , 11 , 58 , 12 )  :: NEXT I  !  AUSGANG
 1966 FOR I = 1 TO 10  :: CALL SOUND ( 100 , 220 , 5 )  :: CALL SOUND ( 100 , 440 , 5 )  :: CALL SOUND ( 100 , 880 , 5 )  :: NEXT I  :: FOR I = 1 TO 1000  :: NEXT I 
 1967 CALL CLEAR  :: CALL CHARSET  :: FOR I = 0 TO 13  :: CALL COLOR ( I , 16 , 1 )  :: NEXT I  :: PRINT "   SIE HABEN ES GESCHAFT!"  :  : " DER AUSGANG IST IN SICHT!"  :  :  :  :  :  :  :  :  :  : 
 1968 FOR I = 1 TO 2000  :: NEXT I 
 1969 PRINT  :  :  :  :  :  :  :  :  :  :  :  :  :  : 
 1970 STOP 
 3000 SUB TITEL ( X , Y , S$ ) 
 3010 X1 = X * 8 - 7 
 3020 Y1 = Y * 8 - 7 + 16 
 3030 FOR I = 1 TO LEN ( S$ ) 
 3040 S = ASC ( SEG$ ( S$ , I , 1 ) ) 
 3045 IF S = 32 THEN 3090
 3050 CALL SPRITE ( # 1 , S , 16 , X1 , 256 , 0 , - 128 ) 
 3060 CALL COINC ( # 1 , X1 , Y1 , 24 , C )  :: IF C = 0 THEN 3060
 3070 CALL DELSPRITE ( # 1 ) 
 3080 CALL HCHAR ( X , Y + 2 , S ) 
 3090 Y = Y + 1 
 3100 Y1 = Y1 + 8 
 3110 IF Y1 > 256 THEN 3130
 3120 NEXT I 
 3130 SUBEND 
