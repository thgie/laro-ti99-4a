  100 CALL CLEAR  :: CALL SCREEN ( 2 )  :: CALL MAGNIFY ( 4 )  :: CALL CHARALL  :: CALL ROCKET 
  110 GOTO 110
  120 SUB CHARALL 
  130 A$ = "01010103030303070707070707070D1B00000080808080C0C0C0C0C0C0C060B" 
  140 B$ = "01" 
  150 CALL CHAR ( 96 , A$ , 100 , B$ , 101 , "" , 102 , "" , 103 , "" ) 
  160 SUBEND 
  170 SUB ROCKET 
  180 CALL SPRITE ( # 1 , 96 , 8 , 120 , 120 ) 
  190 FOR X = 2 TO 28  :: CALL SPRITE ( # X , 100 , 16 , INT ( 256 * RND ) + 1 , INT ( RND * 256 ) + 1 )  :: NEXT X 
  200 CALL JOYST ( 1 , X , Y ) 
  210 IF A + Y > 127 OR A + Y < - 128 THEN 230
  220 A = A + Y 
  230 IF B - X > 127 OR B + X < - 128 THEN 250
  240 B = B - X 
  250 CALL MOTION ( # 2 , A , B , # 3 , A , B , # 4 , A , B , # 5 , A , B , # 6 , A , B , # 7 , A , B , # 8 , A , B , # 9 , A , B , # 10 , A , B , # 11 , A , B , # 12 , A , B , # 13 , A , B , # 14 , A , B , # 15 , A , B ) 
  260 CALL MOTION ( # 15 , A , B , # 16 , A , B , # 17 , A , B , # 18 , A , B , # 19 , A , B , # 20 , A , B , # 21 , A , B , # 22 , A , B , # 23 , A , B , # 24 , A , B , # 25 , A , B , # 26 , A , B , # 27 , A , B , # 28 , A , B ) 
  270 GOTO 200
  280 SUBEND 
