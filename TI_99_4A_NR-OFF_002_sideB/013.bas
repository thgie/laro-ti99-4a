  100 REM  SNAFU
  101 KA = 2 ^ ( 1 / 12 ) 
  110 CALL CLEAR 
  120 CALL SCREEN ( 4 ) 
  130 CALL COLOR ( 9 , 13 , 1 , 10 , 5 , 1 , 11 , 3 , 1 , 12 , 6 , 1 ) 
  140 A$ = "3C7EFFFFFFFF7E3C"  :: B$ = "FFFFFFFFFFFFFFFF" 
  150 CALL CHAR ( 96 , A$ , 104 , A$ , 112 , B$ , 120 , B$ ) 
  160 A1 , C1 = 12  :: B1 , D1 = 8 
  170 A2 , C2 = 12  :: B2 , D2 = 24 
  180 CALL HCHAR ( C2 , D2 , 120 ) 
  190 CALL HCHAR ( A2 , B2 , 104 ) 
  195 CALL KEY ( 3 , K , S )  :: IF K < > 80 THEN 200
  196 CALL KEY ( 3 , K , S )  :: IF S < = 0 THEN 196
  197 IF K = 82 THEN 100
  200 CALL JOYST ( 2 , X , Y )  :: X = X / 4  :: Y = Y / 4 
  205 IF X = 0 AND Y = 0 THEN X = SGN ( B2 - B1 )  :: Y = SGN ( A1 - A2 ) 
  207 C1 = A1  :: D1 = B1 
  210 A1 = A1 - Y 
  220 B1 = B1 + X 
  230 IF NOT ( A1 > 24 OR A1 < 1 OR B1 < 1 OR B1 > 32 ) THEN 235
  232 A1 = A1 + Y  :: B1 = B1 - X  :: GOTO 480
  235 IF A1 = C1 AND B1 = D1 THEN 480
  240 CALL GCHAR ( A1 , B1 , Z ) 
  245 IF Z = 112 THEN 232
  250 IF Z < > 32 THEN 2000
  480 CALL HCHAR ( C1 , D1 , 112 ) 
  490 CALL HCHAR ( A1 , B1 , 96 ) 
  500 CALL JOYST ( 1 , X , Y )  :: X = X / 4  :: Y = Y / 4 
  510 IF X = 0 AND Y = 0 THEN X = SGN ( B1 - B2 )  :: Y = SGN ( A2 - A1 ) 
  515 C2 = A2  :: D2 = B2 
  520 A2 = A2 - Y 
  530 B2 = B2 + X 
  540 IF NOT ( A2 > 24 OR A2 < 1 OR B2 < 1 OR B2 > 32 ) THEN 545
  542 A2 = A2 + Y  :: B2 = B2 - X  :: GOTO 180
  545 IF A2 = C2 AND B2 = D2 THEN 180
  550 CALL GCHAR ( A2 , B2 , Z ) 
  560 IF Z = 120 THEN 542
  565 IF Z < > 32 THEN 1000
  570 GOTO 180
 1000 GOSUB 3000
 1001 FOR I = 1 TO 3  :: CALL COLOR ( 10 , 12 , 1 )  :: FOR J = 1 TO 10  :: NEXT J  :: CALL COLOR ( 10 , 1 , 1 )  :: FOR J = 1 TO 10  :: NEXT J  :: NEXT I 
 1002 CALL SOUND ( 330 , - 6 , 7 ) 
 1003 CALL HCHAR ( A2 , B2 , 104 ) 
 1004 FOR I = 1 TO 100  :: NEXT I 
 1010 CALL COLOR ( 12 , 1 , 1 ) 
 1020 FOR I = 1 TO 5 
 1025 CALL SOUND ( - 100 , 440 , 10 ) 
 1030 CALL COLOR ( 9 , 16 , 1 , 11 , 16 , 1 ) 
 1040 FOR J = 1 TO 50  :: NEXT J 
 1050 CALL COLOR ( 9 , 13 , 1 , 11 , 3 , 1 ) 
 1060 FOR J = 1 TO 50  :: NEXT J 
 1070 NEXT I 
 1080 GOTO 100
 2000 GOSUB 3000
 2001 FOR I = 1 TO 3  :: CALL COLOR ( 9 , 12 , 1 )  :: FOR J = 1 TO 10  :: NEXT J  :: CALL COLOR ( 9 , 1 , 1 )  :: FOR J = 1 TO 10  :: NEXT J  :: NEXT I 
 2002 CALL SOUND ( 330 , - 6 , 7 ) 
 2003 CALL HCHAR ( A1 , B1 , 96 ) 
 2004 FOR I = 1 TO 100  :: NEXT I 
 2010 CALL COLOR ( 11 , 1 , 1 ) 
 2020 FOR I = 1 TO 5 
 2025 CALL SOUND ( - 100 , 440 , 10 ) 
 2030 CALL COLOR ( 10 , 16 , 1 , 12 , 16 , 1 ) 
 2040 FOR J = 1 TO 50  :: NEXT J 
 2050 CALL COLOR ( 10 , 5 , 1 , 12 , 6 , 1 ) 
 2060 FOR J = 1 TO 50  :: NEXT J 
 2070 NEXT I 
 2080 GOTO 100
 2090 END 
 3000  ! Ka=2^(1/12)
 3010 T = 440 
 3020 FOR I = 0 TO 12 
 3030 CALL SOUND ( - 100 , T , 10 ) 
 3040 FOR J = 1 TO 10  :: NEXT J 
 3050 T = T / KA 
 3060 NEXT I 
 3070 RETURN 
