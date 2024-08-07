  100 CALL CLEAR 
  110 RANDOMIZE 
  120 A , C , B , D = 2  :: R = 1  :: W , W1 = 0 
  130 DIM S ( 12 ) 
  140 FOR I = 1 TO 12  :: S ( I ) = 0  :: NEXT I 
  150 CALL SCREEN ( 2 ) 
  160 CALL COLOR ( 3 , 16 , 1 , 4 , 16 , 1 , 9 , 6 , 1 , 10 , 12 , 1 ) 
  170 CALL CHAR ( 96 , "FFFFFFFFFFFFFFFF" , 104 , "FFD5ABD5ABD5ABFF" ) 
  180 FOR I = 3 TO 23 STEP 2 
  190 CALL HCHAR ( I , 1 , 96 , 32 ) 
  200 NEXT I 
  210 CALL VCHAR ( 3 , 1 , 96 , 22 ) 
  220 CALL VCHAR ( 3 , 32 , 96 , 22 ) 
  230 FOR I = 5 TO 23 STEP 2 
  240 CALL HCHAR ( I , INT ( 28 * RND + 3 ) , 32 ) 
  250 NEXT I 
  260 CALL HCHAR ( 2 * C , D , 32 ) 
  270 CALL HCHAR ( 2 * A , B , 104 ) 
  280  ! DISPLAY AT(1,10):W;W1
  290 IF A > 11 THEN 380
  300 CALL GCHAR ( 2 * A + 1 , B , Z ) 
  310 IF Z = 32 THEN 360
  320 IF B + R < 2 OR B + R > 31 THEN R = - R 
  330 C = A  :: D = B  :: B = B + R  :: W = W + 1  :: GOTO 260
  340 CALL GCHAR ( 2 * A , B + 1 , Z ) 
  350 STOP 
  360 C = A  :: S ( A ) = R  :: D = B  :: A = A + 1  :: IF S ( A ) THEN R = S ( A ) 
  370 GOTO 260
  380 DISPLAY AT ( 1 , 10 )  : W  ; W1 
  390 CALL KEY ( 0 , K , L ) 
  400 IF NOT L THEN 390
  410 IF K = 87 THEN 430
  420 GOTO 100
  430 IF W1 = 0 THEN W1 = W  :: W = 0 ELSE W = 0 
  440 A , B , C , D = 2 
  450 CALL HCHAR ( 24 , 2 , 32 , 30 ) 
  460 GOTO 260
