  100 REM  (C) CHRISTIAN KRAL              3D-DEFENCE
  110 GOTO 910
  120 CALL CLEAR  :: CALL MAGNIFY ( 3 ) 
  130 J1 = 0  :: CALL COLOR ( 1 , 1 , 1 )  :: RANDOMIZE 
  140 CALL CHAR ( 128 , "FFFFFFFFFFFFFFFF" , 129 , "FFFCF0E0C0C08080" , 130 , "8080C0C0E0F0FCFF" , 131 , "FF3F0F0703030181" , 132 , "61190303070F3FFF" ) 
  150 CALL CHAR ( 133 , "C3810000000081C3" , 134 , "FFFF7F7F3F3F1F1F" , 135 , "0F0F070703030101" , 136 , "8080C0C0E0E0F0F0" , 137 , "F8F8FCFCFEFEFFFF" ) 
  160 CALL CHAR ( 138 , "0101030307070F0F" , 139 , "1F1F3F3F7F7FFFFF" , 140 , "FFFFFEFEFCFCF8F8" , 141 , "F0F0E0E0C0C08080" ) 
  170 FOR I = 40 TO 47  :: CALL CHAR ( I , RPT$ ( "F" , 16 ) )  :: NEXT I  :: CALL COLOR ( 9 , 4 , 1 , 2 , 7 , 1 , 13 , 11 , 1 , 14 , 11 , 1 ) 
  180 FOR I = 3 TO 8  :: CALL COLOR ( I , 1 , 11 )  :: NEXT I 
  190 DISPLAY AT ( 2 , 1 )  : "HI:00000       PUNKTE:00000                                     " 
  200 DISPLAY AT ( 11 , 1 )  : "                                               " 
  210 DISPLAY AT ( 13 , 1 )  : "                                                                                    " 
  220 DISPLAY AT ( 16 , 1 )  : "                                                                                  " 
  230 DISPLAY AT ( 19 , 1 )  : "                                                                                  " 
  240 DISPLAY AT ( 21 , 1 )  : "                                                        FUEL()*+,-./" 
  250 DISPLAY AT ( 2 , 10 - LEN ( STR$ ( H ) ) )  : STR$ ( H )  ; 
  260 CALL CHAR ( 96 , "0101010101010101" , 97 , "8080808080808080" , 98 , "00000000000000FF" , 99 , "FF" ) 
  270 CALL VCHAR ( 6 , 16 , 96 , 5 )  :: CALL VCHAR ( 6 , 17 , 97 , 5 )  :: CALL VCHAR ( 13 , 16 , 96 , 5 )  :: CALL VCHAR ( 13 , 17 , 97 , 5 ) 
  280 CALL HCHAR ( 11 , 6 , 98 , 9 )  :: CALL HCHAR ( 12 , 6 , 99 , 9 )  :: CALL HCHAR ( 11 , 19 , 98 , 9 )  :: CALL HCHAR ( 12 , 19 , 99 , 9 ) 
  290 CALL CHAR ( 92 , "0000000000001818" & RPT$ ( "0" , 48 ) , 124 , "0103060C183060C" & RPT$ ( "0" , 48 ) ) 
  300 CALL CHAR ( 60 , "C06030180C060301" & RPT$ ( "0" , 48 ) ) 
  310 GOSUB 330
  320 GOTO 410
  330 FOR I = 4 TO 18  :: CALL SPRITE ( # I , 92 , INT ( RND * 14 + 3 ) , 83 , 125 , INT ( RND * 10 - 5 ) , INT ( RND * 10 - 5 ) )  :: NEXT I 
  340 A$ ( 1 ) = "000000070F1A3F1F0009020100000000000000F0F8ACFEFC00285040" 
  350 A$ ( 2 ) = "00000C0601071C2F494A0204190000000000183040F09CFA49A9A0904C" 
  360 A$ ( 3 ) = "0000000103060F17A8C2E0000000000000000080C060F0E8852307" 
  370 A$ ( 4 ) = "000000011F0103046C936C000000000000000080F880C02036C936" 
  380 A$ ( 5 ) = "000000060203060FB0A0300000000000000000030207B0F8E82860" 
  390 CALL CHAR ( 36 , A$ ( INT ( RND * 5 + 1 ) ) ) 
  400 RETURN 
  410 RESTORE 430
  420 FOR I = 1 TO 8  :: READ DATA$  :: CH$ ( I ) = RPT$ ( DATA$ , 8 )  :: NEXT I 
  430 DATA FE , FC , F8 , F0 , E0 , C0 , 80 , 00 
  440 TR = 48  :: HC = 1 - 1 / 8  :: SV = 3  :: P = 0 
  450 GOSUB 470
  460 GOTO 500
  470 ZY = INT ( 4 * RND + 1 )  :: ZX = INT ( RND * 8 - 4 )  :: IF ZX = 0 THEN 470
  480 CALL SPRITE ( # 1 , 36 , INT ( RND * 14 + 3 ) , INT ( 60 * RND + 20 ) , INT ( 256 * RND + 1 ) , ZY , ZX ) 
  490 RETURN 
  500 SV = SV + 1  :: IF SV = 19 THEN SV = 4 
  510 CALL LOCATE ( # SV , 83 , 125 , # SV + 4 , 83 , 125 ) 
  520 CALL SOUND ( - 4000 , - 7 , 17 ) 
  530 CALL JOYST ( 1 , X , Y )  :: CALL MOTION ( # 1 , ZY + Y * 1.25 , ZX - X * 1.25 )  :: CALL POSITION ( # 1 , YZ , XZ )  :: IF YZ < 25 THEN CALL LOCATE ( # 1 , 30 , XZ ) 
  540 IF YZ > 145 AND YZ < 185 THEN 730ELSE IF YZ < 256 AND YZ < 25 THEN CALL LOCATE ( # 1 , 30 , XZ ) 
  550 GOSUB 570
  560 GOTO 600
  570 TR = TR - 1 / 64  :: RT = INT ( TR )  :: IF TR = 40 - 1 / 64 THEN 880ELSE HC = HC + 1 / 8  :: IF HC = 9 - 1 / 8 THEN HC = 7 / 8  :: GOTO 570
  580 CALL CHAR ( RT , CH$ ( INT ( HC ) ) ) 
  590 RETURN 
  600 CALL KEY ( 1 , K , S )  :: IF K < > 18 THEN 500
  610 CALL MOTION ( # 1 , ZY , ZX )  :: FOR I = 78 TO 1 STEP - 4  :: CALL SPRITE ( # 2 , 124 , 6 , I + 83 , 125 - I , # 3 , 60 , 6 , I + 83 , 125 + I )  :: NEXT I 
  620 CALL MOTION ( # 1 , 0 , 0 )  :: CALL SOUND ( - 4000 , - 7 , 17 )  :: CALL COLOR ( # 2 , 2 , # 3 , 2 ) 
  630 CALL COINC ( # 1 , # 2 , 8 , C1 )  :: CALL COINC ( # 3 , # 1 , 8 , C2 )  :: IF C1 = - 1 OR C2 = - 1 THEN CALL DELSPRITE ( ALL ) ELSE CALL DELSPRITE ( # 2 , # 3 )  :: GOTO 1040
  640 FOR I = 1 TO 20 STEP 2 
  650 CALL SOUND ( - 800 , - 6 , I , 111 , I , 112 , I , 113 , I )  :: CALL SPRITE ( # I , 92 , 16 , INT ( RND * 4 + 84 ) , INT ( RND * 4 + 123 ) , INT ( RND * 4 - 2 ) , INT ( RND * 4 - 2 ) ) 
  660 NEXT I 
  670 FOR I = 1 TO 20  :: GOSUB 570 :: NEXT I  :: CALL DELSPRITE ( ALL ) 
  680 P = P + 25  :: DISPLAY AT ( 2 , 28 - LEN ( STR$ ( P ) ) )  : STR$ ( P )  ; 
  690 IF NOT H > = P THEN DISPLAY AT ( 2 , 10 - LEN ( STR$ ( P ) ) )  : STR$ ( P )  ;  :: H = P 
  700 GOSUB 330
  710 GOSUB 470
  720 GOTO 500
  730 CALL DELSPRITE ( # 1 ) 
  740 FOR T = 1 TO 5  :: CALL SOUND ( - 4000 , - 6 , 0 , 1400 , 19 , 221 , 4 , 339 , 5 )  :: CALL SCREEN ( 7 )  :: CALL COLOR ( 13 , 4 , 1 , 14 , 4 , 1 , 9 , 8 , 1 )  :: CALL SCREEN ( 5 ) 
  750 CALL COLOR ( 14 , 9 , 1 , 14 , 9 , 1 , 9 , 16 , 1 )  :: CALL SCREEN ( 12 )  :: CALL COLOR ( 13 , 5 , 1 , 14 , 5 , 1 , 9 , 14 , 1 ) 
  760 CALL SCREEN ( 3 )  :: CALL COLOR ( 13 , 14 , 1 , 14 , 14 , 1 , 9 , 10 , 1 )  :: CALL SCREEN ( 7 )  :: CALL SCREEN ( 8 )  :: CALL SCREEN ( 2 )  :: CALL COLOR ( 13 , 12 , 1 , 4 , 12 , 1 ) 
  770 CALL COLOR ( 9 , 13 , 1 )  :: CALL SCREEN ( 13 )  :: CALL SCREEN ( 7 )  :: CALL SCREEN ( 8 )  :: CALL SCREEN ( 5 )  :: CALL SCREEN ( 2 )  :: NEXT T 
  780 FOR I = 0 TO 25 STEP 2  :: CALL SOUND ( - 200 , - 6 , I , 1400 , I + 4 , 221 , I + 1 , 339 , I )  :: NEXT I  :: J1 = 1 
  790 CALL DELSPRITE ( ALL )  :: CALL CLEAR  :: FOR I = 0 TO 8  :: CALL COLOR ( I , 5 , 8 )  :: NEXT I 
  800 DISPLAY AT ( 1 , 1 )  : "HI:00000"  :: DISPLAY AT ( 1 , 9 - LEN ( STR$ ( P ) ) )  : STR$ ( P )  ; 
  810 DISPLAY AT ( 1 , 16 )  : "PUNKTE:00000"  :: DISPLAY AT ( 1 , 28 - LEN ( STR$ ( H ) ) )  : STR$ ( H )  ; 
  820 IF J1 = 1 THEN DISPLAY AT ( 12 , 1 )  : "SIE   WURDEN   VOM   FEIND"  :  : "V E R N I C H T E T ! !" 
  830 GOTO 850
  840 DISPLAY AT ( 12 , 1 )  : "EIN G U T E S SPIEL ! ! !"  :  : "   NUR   WEITER   SO " 
  850 DISPLAY AT ( 7 , 1 ) BEEP  : " ^ ^ G A M E   O V E R ^ ^"  :: DISPLAY AT ( 22 , 1 ) 
  860 FOR TI = 1 TO 75  :: NEXT TI  :: DISPLAY AT ( 7 , 1 )  :: DISPLAY AT ( 22 , 1 )  : "PRESS   R E D O  OR  B A C K" 
  870 FOR TI = 0 TO 70  :: NEXT TI  :: CALL KEY ( 0 , K , S )  :: IF S = 0 THEN 850ELSE IF K = 6 THEN 120ELSE IF K = 15 THEN 910ELSE CALL CLEAR  :: STOP 
  880 CALL MOTION ( # 1 , 0 , 0 ) 
  890 CALL SOUND ( 300 , 220 , 1 , 440 , 2 , 880 , 3 )  :: CALL SOUND ( 400 , 330 , 1 , 660 , 2 , 990 , 3 )  :: CALL SOUND ( 500 , 220 , 3 , 440 , 2 , 880 , 1 ) 
  900 CALL SOUND ( 1 , 110 , 30 )  :: GOTO 790
  910 CALL SCREEN ( 2 )  :: CALL CLEAR 
  920 C1$ = ""  :: CALL COLOR ( 1 , 5 , 1 , 3 , 8 , 1 )  :: FOR I = 5 TO 8  :: CALL COLOR ( I , 8 , 1 , I + 4 , 5 , 1 )  :: NEXT I 
  930 CALL CHARPAT ( 51 , I$ )  :: FOR T = 1 TO 15 STEP 2  :: C1$ = C1$ & SEG$ ( I$ , T , 2 ) & SEG$ ( I$ , T , 2 )  :: NEXT T  :: CALL CHAR ( 51 , SEG$ ( C1$ , 1 , 16 ) , 35 , SEG$ ( C1$ , 17 , 16 ) ) 
  940 C1$ = "" 
  950 FOR I = 65 TO 90  :: CALL CHARPAT ( I , I$ )  :: FOR T = 1 TO 15 STEP 2  :: C1$ = C1$ & SEG$ ( I$ , T , 2 ) & SEG$ ( I$ , T , 2 )  :: NEXT T  :: CALL CHAR ( I , SEG$ ( C1$ , 1 , 16 ) ) 
  960 CALL CHAR ( I + 32 , SEG$ ( C1$ , 17 , 16 ) )  :: C1$ = ""  :: NEXT I 
  970 DISPLAY AT ( 13 , 9 )  : "3D_DEFENCE"  :: DISPLAY AT ( 14 , 9 )  : "#d defence" 
  980 DISPLAY AT ( 23 , 1 )  : "READY_PRESS ANY KEY TO BEGINready press any key to begin" 
  990 CALL KEY ( 0 , K , S )  :: IF S = 0 THEN 1000ELSE 1020
 1000 CALL KEY ( 1 , K , S )  :: IF K < > 18 THEN 1010ELSE 1020
 1010 CALL JOYST ( 1 , X , Y )  :: IF X + Y = 0 THEN 990
 1020 CALL SOUND ( 200 , 333 , 3 , 444 , 4 , 555 , 5 )  :: CALL SOUND ( 200 , 111 , 1 , 333 , 3 , 555 , 5 )  :: CALL SOUND ( 400 , 222 , 2 , 555 , 5 , 888 , 8 )  :: CALL CLEAR 
 1030 CALL CHARSET  :: GOTO 120
 1040 FOR I = 1 TO 20  :: GOSUB 570 :: NEXT I  :: GOTO 500
