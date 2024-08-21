   90 H = 16 
  100 CALL SCREEN ( 16 )  :: CALL CLEAR 
  110 M$ = "55AA55AA55AA55AA"  :: A = 122 
  120 CALL MAGNIFY ( 2 )  :: CALL CHAR ( 64 , RPT$ ( "F" , 16 ) , 34 , "FF8181FFFFFF" , 128 , "FFFFFFFFFFFF" , 73 , M$ )  :: CALL COLOR ( 3 , 16 , 2 , 4 , 16 , 2 , 6 , 1 , 1 , 5 , 2 , 1 ) 
  130 CALL VCHAR ( 1 , 27 , 64 , 192 )  :: CALL HCHAR ( 23 , 1 , 64 , 162 ) 
  140 G = - 2  :: FOR I = 3 TO 16  :: CALL SPRITE ( # I , 64 , I , ( G + I ) * 12 , 230 )  :: NEXT I  :: CALL SPRITE ( # 2 , 34 , 16 , 5 , 230 ) 
  150 CALL SPRITE ( # 1 , 42 , 2 , A , 231 ) 
  160 FOR S = 4 TO 22  :: CALL HCHAR ( S , 3 , 73 , 24 )  :: NEXT S 
  170 CALL JOYST ( 1 , X , Y )  :: ON SGN ( Y ) + 2 GOTO 180, 220, 200
  180 IF A > 168 THEN A = 2 
  190 A = A + 12  :: CALL LOCATE ( # 1 , A , 231 )  :: GOTO 220
  200 IF A - 12 < 0 THEN A = 170 
  210 A = A - 12  :: CALL LOCATE ( # 1 , A , 231 ) 
  220 CALL KEY ( 1 , K , S )  :: IF S = 0 THEN 170
  230 IF K = 5 THEN 200ELSE IF K = 0 THEN 180
  240 FOR F = 2 TO 16  :: CALL COINC ( # 1 , # F , 3 , C )  :: IF C THEN CALL SOUND ( 200 , 660 , 2 )  :: GOTO 270
  250 NEXT F 
  260 GOTO 170
  270 CALL COLOR ( 6 , F , H )  :: DISPLAY AT ( 24 , 6 ) SIZE ( 7 )  : F  ; H  :: H = F  :: GOTO 160
