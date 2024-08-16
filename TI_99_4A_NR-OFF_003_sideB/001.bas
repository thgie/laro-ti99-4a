  100 DIM T$ ( 40 ) , S$ ( 6 )  :: D = 32 
  110 OPEN # 1  : "CS1" , INTERNAL , INPUT , FIXED 192 
  120 FOR I = 1 TO D 
  130 INPUT # 1  : S$ ( 1 ) , S$ ( 2 ) , S$ ( 3 ) , S$ ( 4 ) , S$ ( 5 ) , S$ ( 6 ) 
  140 FOR J = 1 TO 6  :: S$ ( J ) = SEG$ ( S$ ( J ) & "                            " , 1 , 28 )  :: NEXT J 
  150 T$ ( I ) = S$ ( 1 ) & S$ ( 2 ) & S$ ( 3 ) & S$ ( 4 ) & S$ ( 5 ) & S$ ( 6 ) 
  160 NEXT I 
  170 CLOSE # 1 
  180 FOR I = 1 TO D 
  190 P = POS ( T$ ( I ) , CHR$ ( 156 ) , 1 ) 
  200 IF P = 0 THEN 250
  210 IF P = 1 THEN T$ ( I ) = "," & SEG$ ( T$ ( I ) , 2 , 167 )  :: GOTO 190
  220 IF P = 168 THEN T$ ( I ) = SEG$ ( T$ ( I ) , 1 , 167 ) & ","  :: GOTO 190
  230 T$ ( I ) = SEG$ ( T$ ( I ) , 1 , P - 1 ) & "," & SEG$ ( T$ ( I ) , P + 1 , 168 - P ) 
  240 GOTO 190
  250 P = POS ( T$ ( I ) , CHR$ ( 144 ) , 1 ) 
  260 IF P = 0 THEN 310
  270 IF P = 1 THEN T$ ( I ) = """ & SEG$ ( T$ ( I ) , 2 , 167 )  :: GOTO 250
  280 IF P = 168 THEN T$ ( I ) = SEG$ ( T$ ( I ) , 1 , 167 ) & """  :: GOTO 250
  290 T$ ( I ) = SEG$ ( T$ ( I ) , 1 , P - 1 ) & """ & SEG$ ( T$ ( I ) , P + 1 , 168 - P ) 
  300 GOTO 250
  310 NEXT I 
  320 CALL CLEAR  :: FOR I = 1 TO D 
  322 DISPLAY AT ( 4 , 1 )  : T$ ( I )  :  : I 
  324 FOR J = 1 TO 6  :: ACCEPT AT ( 3 + J , 1 ) SIZE ( - 28 )  : S$ ( J ) 
  326 S$ ( J ) = SEG$ ( S$ ( J ) & "                            " , 1 , 28 ) 
  328 NEXT J  :: T$ ( I ) = S$ ( 1 ) & S$ ( 2 ) & S$ ( 3 ) & S$ ( 4 ) & S$ ( 5 ) & S$ ( 6 ) 
  350 NEXT I 
  360 OPEN # 1  : "CS1" , OUTPUT , FIXED 168 
  370 PRINT  : "* RECORDING"  : 
  380 FOR J = 1 TO 200  :: NEXT J 
  390 FOR I = 1 TO D 
  400 PRINT # 1  : T$ ( I ) 
  410 NEXT I 
  420 CLOSE # 1 
  430 PRINT T$ ( D ) 
  440 END 
