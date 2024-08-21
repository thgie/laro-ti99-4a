   70  !  SPACE CHASE
   80  !  (C) 1983 BY
   90  !  F. SCHWELLINGER
  100 DIM AA ( 20 ) , BB ( 20 ) 
  110 AA ( 5 ) , BB ( 2 ) = - 20 
  120 AA ( 0 ) , BB ( 3 ) = 20 
  130 Z , HI = 0 
  140 CALL CLEAR 
  150 FOR K = 5 TO 10 
  160 CALL COLOR ( K , 2 , 14 ) 
  170 NEXT K 
  180 FOR W = 3 TO 4 
  190 CALL COLOR ( W , 14 , 2 ) 
  200 NEXT W 
  210 DISPLAY AT ( 1 , 5 )  : "SCORE  0" 
  220 DISPLAY AT ( 4 , 5 )  : "HIGH SCORE  0" 
  230 DISPLAY AT ( 6 , 13 )  : "2nd 0" 
  240 DEF DIR ( I ) = ( RND * SP + I ) * SGN ( .5 - RND ) 
  250 CALL SCREEN ( 2 ) 
  260 RANDOMIZE 
  270 CALL MAGNIFY ( 2 ) 
  280 CALL CHAR ( 99 , "FF7E3C10083C7EFF" ) 
  290 CALL CHAR ( 96 , "10183C7FFE3C1808" ) 
  300 DISPLAY AT ( 12 , 10 )  : "PLAY SPACE CHASE" 
  310 DISPLAY AT ( 15 , 5 )  : "PRESS ANY KEY TO BEGIN" 
  320 CALL KEY ( 0 , XXX , F ) 
  330 HH = 0  :: CO = 500 
  340 IF F = 0 THEN 320
  350 DISPLAY AT ( 12 , 10 ) 
  360 DISPLAY AT ( 15 , 5 ) 
  370 SHIPS = 3  :: CALL SOUND ( 1500 , 440 , 0 ) 
  380 DISPLAY AT ( 1 , 12 )  : 0 
  390 TB = 0 
  400 CALL HCHAR ( 24 , 3 , 96 , 2 ) 
  410 DISPLAY AT ( 22 , 1 )  : "TANK:  500" 
  420 FOR ZT = 1 TO 2 
  430 FOR SH = 1 TO 0 STEP - 1 
  440 FOR SP = 10 TO 25 STEP 5 
  450 FOR SZ = 1 TO 7 
  460 CALL SPRITE ( # SZ , 99 , 16 , 1 , 1 , DIR ( 1 ) , DIR ( 1 ) ) 
  470 NEXT SZ 
  480 FOR TOS = 8 TO ZT + 7 
  490 CALL SPRITE ( # TOS , 99 , 9 , 1 , 1 , DIR ( 5 ) , DIR ( 5 ) ) 
  500 NEXT TOS 
  510 CALL SPRITE ( # 28 , 96 , 6 , 81 , 128 , 0 , 0 ) 
  520 FOR I = 1 TO 5 
  530 FOR X = 8 TO ZT + 7 
  540 CALL COLOR ( # X , 9 ) 
  550 NEXT X 
  560 CALL SOUND ( 300 , 2500 , 0 ) 
  570 FOR X = 8 TO ZT + 7 
  580 CALL COLOR ( # X , 1 ) 
  590 NEXT X 
  600 CALL SOUND ( 600 , 400 , 30 ) 
  610 FOR X = 8 TO ZT + X 
  620 CALL COLOR ( # X , 9 ) 
  630 NEXT X 
  640 NEXT I 
  650 A = 1 
  660 CALL COLOR ( # A , 16 - 5 * SH ) 
  670 X = 0 
  680 CALL KEY ( 1 , DI , PR ) 
  690 CO = CO - 1  :: DISPLAY AT ( 22 , 8 )  : CO  :: X = X + 1 
  700 IF CO = 0 THEN 1000
  710 IF X = 20 THEN CALL COLOR ( # A , 16 - 3 * SH ) 
  720 IF DI > - 1 THEN CALL MOTION ( # 28 , AA ( DI ) , BB ( DI ) ) 
  730 IF DI = 19 THEN CALL LOCATE ( # 28 , 255 * RND + 1 , 255 * RND + 1 ) 
  740 IF A > 7 THEN 850
  750 CALL COINC ( # 8 , # 28 , 10 , GH ) 
  760 IF ZT = 2 THEN CALL COINC ( # 28 , # 9 , 10 , HH ) 
  770 IF GH + HH THEN SHIPS = SHIPS - 1  :: CALL SOUND ( 800 , - 7 , 0 )  :: GOTO 940
  780 CALL COINC ( # A , # 28 , 15 , TR ) 
  790 IF TB < 20000 THEN E = - 1 ELSE E = 0 
  800 IF TR THEN CALL DELSPRITE ( # A )  :: CALL SOUND ( 700 , - 2 , 0 )  :: A = A + 1  :: TB = INT ( TB + 3 * SP * ZT * ZT * ( 1.5 - .5 * SH ) )  :: CALL COLOR ( # A , 16 - 5 * SH ) 
  810 IF TR AND X < 20 THEN TB = INT ( TB + 27 * SP * ZT * ZT * ( 1.5 - .5 * SH ) ) 
  820 IF E AND TB > = 20000 THEN SHIPS = SHIPS + 1  :: DISPLAY AT ( 24 , 1 )  : RPT$ ( "`" , SHIPS - 1 )  :: GOSUB 1080
  830 IF TR THEN X = 0  :: DISPLAY AT ( 1 , 12 )  : TB 
  840 GOTO 680
  850 CALL DELSPRITE ( # 9 ) 
  860 CALL COLOR ( # 8 , 9 ) 
  870 CALL COINC ( # 28 , # 8 , 15 , DES ) 
  880 IF TB < 20000 THEN E = - 1 ELSE E = 0 
  890 IF DES THEN TB = TB + SP * 200  :: DISPLAY AT ( 1 , 12 )  : TB  :: CALL SOUND ( 4000 , 110 , 0 )  :: CO = 500 
  900 IF TB > = 20000 AND E THEN SHIPS = SHIPS + 1  :: DISPLAY AT ( 24 , 1 )  : RPT$ ( "`" , SHIPS - 1 )  :: GOSUB 1080
  910 IF DES THEN 940
  920 IF X / 10 = INT ( X / 10 ) THEN CALL MOTION ( # 8 , ( 30 * RND + 1 ) * SGN ( .5 - RND ) , ( 30 * RND + 1 ) * SGN ( .5 - RND ) ) 
  930 GOTO 680
  940 IF SHIPS = 0 THEN 1000
  950 DISPLAY AT ( 24 , 1 )  : RPT$ ( "`" , SHIPS - 1 ) 
  960 IF GH + HH THEN 450
  970 NEXT SP 
  980 NEXT SH 
  990 NEXT ZT 
 1000 IF TB > HI THEN DISPLAY AT ( 4 , 17 )  : TB  :: Z = HI  :: HI = TB  :: DISPLAY AT ( 6 , 17 )  : Z 
 1010 IF TB < HI AND TB > Z THEN DISPLAY AT ( 6 , 17 )  : TB  :: Z = TB 
 1020 DISPLAY AT ( 12 , 12 )  : "GAME OVER" 
 1030 FOR NM = 1 TO 50 
 1040 CALL SOUND ( 10 , 5000 , 0 ) 
 1050 NEXT NM 
 1060 FOR I = 1 TO 9  :: CALL DELSPRITE ( # I )  :: NEXT I 
 1070 GOTO 300
 1080 FOR L = 111 TO 444 STEP 10  :: CALL SOUND ( 10 , L , 0 )  :: NEXT L  :: RETURN 
