  100 CALL CLEAR 
  110 DISPLAY AT ( 10 , 4 )  : "ANZAHL SPIELER(1/2)?:1" 
  120 ACCEPT AT ( 10 , 25 ) BEEP VALIDATE ( "12" ) SIZE ( - 1 )  : SPIELER 
  130 DISPLAY AT ( 9 , 1 ) ERASE ALL  : "GEBEN SIE DIE PISTENNUMMER  AN, AUF DER SIE FAHREN      WOLLEN: 1" 
  140 ACCEPT AT ( 11 , 9 ) SIZE ( - 6 ) BEEP VALIDATE ( DIGIT )  : PSN 
  150 DISPLAY AT ( 4 , 3 )  : "BITTE WAEHLEN SIE:"  :  : TAB ( 5 )  ; "1 ABFAHRT"  :  : TAB ( 5 )  ; "2 SUPER-RIESENSLALOM"  :  : TAB ( 5 )  ; "3 RIESEN SLALOM"  :  : TAB ( 5 )  ; "4 SLALOM" 
  160 CALL KEY ( 0 , K , S ) 
  170 IF K < 49 OR K > 53 THEN 160
  180 ON K - 48 GOTO 190, 210, 230, 250
  190 F1 = 1  :: F2 = 12  :: F3 = 10 
  200 GOTO 260
  210 F1 = 2  :: F2 = 10  :: F3 = 7 
  220 GOTO 260
  230 F1 = 3  :: F2 = 7  :: F3 = 7 
  240 GOTO 260
  250 F1 = 4  :: F2 = 3  :: F3 = 3 
  260 CALL CLEAR 
  270 CALL MAGNIFY ( 3 ) 
  280 CALL CLEAR 
  290 DISPLAY AT ( 10 , 7 )  : "BITTE WARTEN"  :  : "   [ DIE PISTE WIRD GERADE       PREPARIERT ]" 
  300 DIM S$ ( 20 ) , H$ ( 20 ) 
  310 FOR I = 1 TO 19 
  320 S$ ( I ) = SEG$ ( "                  ()                         " , I , 28 ) 
  330 H$ ( I ) = SEG$ ( "!!!!!!!!!!!!!!!!!!*+      !!!!!!!!!!!!!!!!!!!" , I , 28 ) 
  340 NEXT I 
  350 REM  DEFINITION
  360 CALL CHAR ( 33 , "000000FFFF" , 128 , "0000001824C3" ) 
  370 Z$ = "070707070707040400C0F0F0C000000004040404040404040" 
  380 IF F1 < > 4 THEN Z$ = "2030383F3F3F3F3F040C1CFCFCFCFCFC3F2F272020202020FCF4E40404040404" 
  390 CALL CHAR ( 40 , Z$ , 136 , Z$ , 129 , "000000FFFF" ) 
  400 CALL CHAR ( 96 , "000707070F1F1315191101000000030E000000E0B19ACCC0C0C0C0EEF8E08" ) 
  410 CALL CHAR ( 100 , "000303071F3727272F37270606060202008080C0F0D8C8C8E8D8C8C0C0C0808" ) 
  420 CALL CHAR ( 104 , "000000078D593303030303771F07010000E0E0E0F0F8C8A8988880000000C07" ) 
  430 RANDOMIZE PSN 
  440 LS = INT ( 60 + 200 * RND )  :: SL = 1 
  450 DIM HS ( 260 ) 
  460 FOR I = 1 TO LS 
  470 HS ( I ) = INT ( 51 + RND * 100 ) 
  480 NEXT I 
  490 FOR I = 1 TO LS - 5 
  500 IF F1 = 1 THEN HS ( I ) = INT ( 19 * RND + 1 ) ELSE HS ( I ) = INT ( 10 + SGN ( SL ) * ( 3 + 6 * RND ) )  :: SL = - SL 
  510 HS ( I + 1 ) = HS ( I ) + 20 
  520 I = I + F2 + INT ( F3 * RND ) 
  530 NEXT I 
  540 CALL COLOR ( 0 , 2 , 8 , 1 , 16 , 16 , 2 , 7 , 16 , 3 , 2 , 16 , 4 , 2 , 16 , 5 , 2 , 16 , 6 , 2 , 16 ) 
  550 CALL COLOR ( 7 , 2 , 16 , 8 , 2 , 16 , 9 , 5 , 16 , 10 , 5 , 16 , 11 , 2 , 16 , 12 , 2 , 16 , 13 , 2 , 16 , 14 , 5 , 16 ) 
  555 CALL SCREEN ( 8 ) 
  560 REM  START
  570 FOR SP = 1 TO SPIELER 
  580 CALL CLEAR 
  590 CALL DELSPRITE ( ALL ) 
  600 CALL VCHAR ( 1 , 31 , 31 , 96 ) 
  610 DISPLAY AT ( 3 , 1 )  : "                                START" 
  630 DISPLAY AT ( 14 , 1 )  : S$ ( 10 )  : H$ ( 10 ) 
  640 CALL SPRITE ( # 1 , 100 , 6 , 2 , 120 , 0 , 0 ) 
  650 ZIEL , T = 0 
  660 CALL KEY ( SP , K , S ) 
  670 IF K < > 18 THEN 660
  680 FOR ZA = 1 TO 3 
  690 CALL SOUND ( 100 , 440 , 9 ) 
  700 NEXT ZA 
  710 CALL SOUND ( 200 , 659 , 9 ) 
  720 SPD = 8 
  730 TZ = .2 
  735 CALL SOUND ( 4250 , - 5 , 29 ) 
  740 GOSUB 1450
  745 IF X THEN T = T + .5 
  750 CALL POSITION ( # 1 , P , Q ) 
  760 IF P < 58 THEN 740
  770 SPD = 0 
  780 JO , GE = 1 
  790 FOR PS = 1 TO LS 
  800 FOR JO = 1 TO GE 
  810 TZ = ( 1 + .9 * ( JO > 1 ) ) / F1 
  820 GOSUB 1450
  830 CALL POSITION ( # 1 , P , Q ) 
  840 P = ( P + 15 ) / 8 
  850 Q = ( Q + 11 ) / 8 
  860 IF Q < = 2 OR Q > = 31 THEN 1020
  870 CALL GCHAR ( P , Q , Z ) 
  880 IF Z = 32 OR Z = 128 THEN 1110
  890 IF Z = 33 OR ( Z = 139 AND F1 = 4 ) THEN 930
  900 IF Z = 129 THEN 1270
  910 IF Z = 42 OR ( Z = 43 AND F1 < > 4 ) OR Z = 138 OR ( Z = 139 AND F1 < > 4 ) THEN 980
  920 GOTO 1110
  930 CALL COLOR ( 1 , 15 , 16 ) 
  940 CALL SOUND ( - 100 , 440 , 20 ) 
  950 T = T + 1.5 
  960 CALL COLOR ( 1 , 16 , 16 ) 
  970 GOTO 1120
  980 CALL HCHAR ( P , Q , 32 ) 
  982 CALL PATTERN ( # 1 , 100 ) 
  984 CALL PATTERN ( # 1 , 96 ) 
  986 CALL PATTERN ( # 1 , 100 ) 
  988 CALL PATTERN ( # 1 , 104 ) 
  990 CALL SOUND ( - 100 , - 6 , 15 ) 
  992 CALL PATTERN ( # 1 , 100 ) 
  994 CALL PATTERN ( # 1 , 96 ) 
  996 CALL PATTERN ( # 1 , 100 ) 
 1000 T = T + .1 
 1010 GOTO 1110
 1020 CALL MOTION ( # 1 , 0 , 0 ) 
 1030 CALL SOUND ( - 500 , - 6 , 10 ) 
 1040 FOR G = 1 TO 20 
 1050 CALL COLOR ( 0 , 2 , 10 ) 
 1060 CALL COLOR ( # 1 , 12 ) 
 1070 CALL COLOR ( 0 , 2 , 8 ) 
 1080 CALL COLOR ( # 1 , 5 ) 
 1090 NEXT G 
 1100 GOTO 1420
 1110 NEXT JO 
 1115 CALL SOUND ( - 1500 , - 5 , 29 ) 
 1120 GE = GE + Y / 2 
 1130 IF GE < 1 OR GE > 3 THEN GE = GE - Y / 2 
 1140 REM  PISTE
 1150 IF ZIEL THEN PRINT  :: GOTO 1210
 1160 WP = HS ( PS ) 
 1170 IF WP > 50 THEN 1200
 1180 IF WP < 20 THEN PRINT S$ ( WP ) ELSE PRINT H$ ( WP - 20 ) 
 1190 GOTO 1210
 1200 IF WP < 79 THEN PRINT TAB ( WP - 50 )  ; CHR$ ( 128 ) ELSE PRINT  : 
 1210 NEXT PS 
 1220 ZIEL , PS = 1 
 1230 PRINT "           ZIEL" 
 1240 TZ = 1 
 1250 GOSUB 1450 :: GOSUB 1450
 1260 GOTO 790
 1270 TM = INT ( T / 60 ) 
 1280 TS = INT ( ( T - TM * 60 ) * 100 ) / 100 
 1290 TRM = INT ( TR / 60 ) 
 1300 TRS = INT ( ( TR - TRM * 60 ) * 100 ) / 100 
 1310 IMAGE "## : ##.##" 
 1320 DISPLAY AT ( 23 , 2 )  : USING 1310 : TRM , TRS 
 1330 DISPLAY AT ( 23 , 15 )  : USING 1310 : TM , TS 
 1340 IF TR > T OR TR = 0 THEN TR = T 
 1350 SPD = 8 
 1360 FOR G = 1 TO 30 
 1370 GOSUB 1450
 1380 NEXT G 
 1390 CALL MOTION ( # 1 , 0 , 0 ) 
 1400 FOR G = 1 TO 1000 
 1410 NEXT G 
 1420 NEXT SP 
 1430 GOTO 570
 1440 STOP 
 1450 REM  SKIFAHRER
 1460 CALL JOYST ( SP , X , Y ) 
 1470 T = T + TZ 
 1480 IF X THEN T = T + .01 
 1490 CALL PATTERN ( # 1 , SGN ( X ) * 4 + 100 ) 
 1500 CALL MOTION ( # 1 , SPD , F1 * X ) 
 1505 IF Y < 0 THEN JO = JO + 1 
 1510 RETURN 
