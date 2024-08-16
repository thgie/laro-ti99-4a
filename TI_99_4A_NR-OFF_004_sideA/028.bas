  100 CALL CLEAR  :: CALL SCREEN ( 4 ) 
  110 OPTION BASE 1 
  120 DIM A ( 8 , 8 ) , C ( 9 , 2 ) 
  130 C ( 3 , 1 ) , C ( 4 , 1 ) , C ( 2 , 1 ) , C ( 4 , 2 ) , C ( 5 , 2 ) , C ( 6 , 2 ) = - 1 
  140 C ( 1 , 2 ) , C ( 2 , 2 ) , C ( 6 , 1 ) , C ( 7 , 1 ) , C ( 8 , 1 ) , C ( 8 , 2 ) , C ( 9 , 2 ) = 1 
  145 Z = 33  :: A$ = "0123456789ABCDEF" 
  150 INPUT "RICHTUNG?="  : R 
  160 IF R = 9 THEN R = 1 
  170 IF R > = 8.5 THEN R2 = R - 7 ELSE R2 = R + 1 
  180 IF R < 1 OR R > = 9 THEN 150
  190 Y = C ( R , 1 ) + ( C ( R2 , 1 ) - C ( R , 1 ) ) * ( R - INT ( R ) )  :: X = C ( R , 2 ) + ( C ( R2 , 2 ) - C ( R , 2 ) ) * ( R - INT ( R ) ) 
  200 X1 , Y1 = 1  :: Y2 = 12  :: X2 = 14  :: D = 0 
  210 X1 = X1 + X  :: Y1 = Y1 + Y 
  220 IF X1 < .5 THEN X1 = X1 + 8  :: X2 = X2 - 1  :: D = 1 
  230 IF X1 > = 8.5 THEN X1 = X1 - 8  :: X2 = X2 + 1  :: D = 1 
  240 IF Y1 < .5 THEN Y1 = Y1 + 8  :: Y2 = Y2 - 1  :: D = 1 
  250 IF Y1 > = 8.5 THEN Y1 = Y1 - 8  :: Y2 = Y2 + 1  :: D = 1 
  260 IF D = 1 THEN GOSUB 2000 :: CALL HCHAR ( Y2 , X2 , Z )  :: D = 0 
  270 A ( Y1 , X1 ) = 1  :: GOTO 210
 2000 Z$ = "" 
 2010 Z = Z + 1 
 2020 IF X2 > 32 THEN X2 = 1 ELSE IF X2 < 1 THEN X2 = 32 
 2025 IF Y2 > 24 THEN Y2 = 1 ELSE IF Y2 < 1 THEN Y2 = 24 
 2030 FOR J = 1 TO 8  :: W1 = A ( J , 1 ) * 8 + A ( J , 2 ) * 4 + A ( J , 3 ) * 2 + A ( J , 4 )  :: W2 = A ( J , 5 ) * 8 + A ( J , 6 ) * 4 + A ( J , 7 ) * 2 + A ( J , 8 )  :: Z$ = Z$ & SEG$ ( A$ , W1 + 1 , 1 ) & SEG$ ( A$ , W2 + 1 , 1 )  :: NEXT J 
 2055 CALL CHAR ( Z , Z$ ) 
 2060 FOR M = 1 TO 8  :: FOR N = 1 TO 8  :: A ( M , N ) = 0  :: NEXT N  :: NEXT M  :: RETURN 
