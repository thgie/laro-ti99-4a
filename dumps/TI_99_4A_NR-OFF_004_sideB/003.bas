    5 RANDOMIZE 
   10 CALL CLEAR 
   20 CALL SCREEN ( 4 ) 
   30 ON ERROR STOP 
   40 ON WARNING NEXT 
   50 INPUT "HOEHE(MAX.:50)"  : H 
   60 IF H < 3 OR H > 50 THEN 50
   70 INPUT "REIBUNGSFAKTOR(0-.999)"  : R 
   80 IF R < 0 OR R > .999 THEN 70
   90 G , G1 = H  :: C = 2  :: F = R 
  100 CALL CLEAR 
  110 CALL SCREEN ( 2 ) 
  130 GOTO 300
  135 GOTO 490
  140 CALL MAGNIFY ( 3 ) 
  150 CALL CHAR ( 104 , "00070F1F3F7F7F7F7F7F7F3F1F0F070000E0F0F8FCFEFEFEFEFEFEFCF8F0E" ) 
  160 CALL SPRITE ( # 1 , 104 , 2 , 152 , 118 ) 
  180 FOR X = - G TO G + .5 
  190 CALL MOTION ( # 1 , X , 0 ) 
  200 NEXT X 
  210 CALL MOTION ( # 1 , 0 , 0 ) 
  220 G = G * F 
  230 IF G > 3 THEN 180
  240 CALL LOCATE ( # 1 , 152 , 118 ) 
  250 C = C + 1  :: IF C > 16 THEN 270
  260 CALL COLOR ( # 1 , C )  :: G = G1  :: GOTO 180
  270 CALL DELSPRITE ( ALL ) 
  280 C = 2  :: GOTO 135
  300 A1$ = "0103070F1F3F7FFF" 
  310 A2$ = "80C0E0F0F8FCFEFF" 
  320 CALL CHAR ( 40 , A1$ , 41 , A2$ , 42 , "" , 43 , RPT$ ( "F" , 16 ) , 48 , A2$ , 49 , A1$ , 50 , "" , 51 , RPT$ ( "F" , 16 ) ) 
  330 FOR X = 1 TO 5  :: CALL VCHAR ( X , X , 42 , 24 - ( X - 1 ) * 2 )  :: CALL HCHAR ( X , X , 48 )  :: CALL HCHAR ( 25 - X , X , 40 )  :: NEXT X 
  340 FOR X = 1 TO 5  :: CALL HCHAR ( X + 19 , 7 - X , 43 , 23 + ( X - 1 ) * 2 )  :: CALL HCHAR ( X + 19 , X + 27 , 41 )  :: NEXT X 
  350 FOR X = 1 TO 5  :: CALL HCHAR ( X , X + 1 , 50 , 30 - ( X - 1 ) * 2 )  :: CALL HCHAR ( X , 33 - X , 49 )  :: NEXT X 
  360 FOR X = 1 TO 5  :: CALL VCHAR ( 7 - X , 27 + X , 42 , 14 + ( X - 1 ) * 2 )  :: NEXT X 
  370 FOR X = 1 TO 14  :: CALL HCHAR ( X + 5 , 6 , 56 , 22 )  :: NEXT X 
  490 R1 = INT ( 14 * RND ) + 3  :: R2 = INT ( 14 * RND ) + 3  :: R3 = INT ( 14 * RND ) + 3  :: R4 = INT ( 14 * RND ) + 3 
  495 IF R1 = R2 OR R1 = R3 OR R1 = R4 OR R2 = R4 OR R3 = R4 OR R2 = R3 THEN 490
  500 CALL COLOR ( 2 , R1 , R2 , 3 , R2 , R3 , 4 , R4 , R4 ) 
  510 GOTO 140
10000 END 
