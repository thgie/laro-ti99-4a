  100 CALL CLEAR 
  110 A = 1  :: B = 3 
  120 Z = 32 
  130 FOR I = 1 TO 4 
  140 CALL KEY ( 0 , K , S ) 
  150 IF K = 8 OR K = 9 THEN 370
  160 IF K < 32 THEN 200
  170 IF S = 1 THEN 230
  180 IF S < > - 1 THEN SZ = 0  :: GOTO 200
  190 SZ = SZ + 1  :: IF SZ > 10 THEN SZ = 0  :: GOTO 300
  200 NEXT I 
  210 GOSUB 430
  220 GOTO 130
  230 ZE = 30 
  240 GOSUB 490
  250 ZE = K 
  260 GOSUB 490
  270 B = B + 1  :: IF B > 30 THEN B = 3  :: A = A + 1  :: IF A > 24 THEN A = 1 
  280 CALL GCHAR ( A , B , Z ) 
  290 GOTO 130
  300 CALL HCHAR ( A , B , K ) 
  310 B = B + 1  :: IF B > 30 THEN B = 3  :: A = A + 1  :: IF A > 24 THEN A = 1 
  320 CALL HCHAR ( A , B , 30 ) 
  330 CALL KEY ( 0 , K , S ) 
  340 IF S < > - 1 THEN Z = 32  :: C = 1  :: GOSUB 430 :: GOTO 130
  350 CALL HCHAR ( A , B , K ) 
  360 GOTO 300
  370 CALL HCHAR ( A , B , Z ) 
  380 IF K = 9 THEN 410
  390 B = B - 1  :: IF B < 3 THEN B = 30  :: A = A - 1  :: IF A < 1 THEN A = 24 
  400 CALL GCHAR ( A , B , Z )  :: ZE = 30  :: GOSUB 490 :: ZE = Z  :: GOSUB 490 :: GOTO 130
  410 B = B + 1  :: IF B > 30 THEN B = 3  :: A = A + 1  :: IF A > 24 THEN A = 1 
  420 GOTO 400
  430 REM  CURSOR
  440 C = C + 1  :: IF C > 2 THEN C = 1 
  450 ON C GOTO 460, 480
  460 ZE = 30 
  470 GOTO 490
  480 ZE = Z 
  490 CALL HCHAR ( A , B , ZE ) 
  500 RETURN 
