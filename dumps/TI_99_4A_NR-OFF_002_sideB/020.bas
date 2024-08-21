  100 CALL CLEAR 
  110 DIM I$ ( 12 ) 
  120 OPEN # 1  : "CS1" , DISPLAY , SEQUENTIAL , INPUT , FIXED 192 
  130 CALL CLEAR 
  140 CH$ = RPT$ ( "0" , 49 ) 
  150 FOR I = 96 TO 140 STEP 4 
  160 CALL CHAR ( I , CH$ )  :: NEXT I 
  170 Z = 96 
  180 FOR I = 1 TO 8  :: FOR J = 2 TO 7  :: FOR K = 0 TO 16 STEP 8  :: FOR L = 0 TO 24 STEP 6  :: CALL HCHAR ( I + K , J + L , Z )  :: NEXT L  :: NEXT K  :: Z = Z + 1  :: NEXT J  :: NEXT I 
  190 LINPUT # 1  : Z1$ 
  191 LINPUT # 1  : Z2$ 
  192 LINPUT # 1  : Z3$ 
  193 LINPUT # 1  : Z4$ 
  200 I$ ( 1 ) = SEG$ ( Z1$ , 1 , 64 ) 
  210 I$ ( 2 ) = SEG$ ( Z1$ , 65 , 64 ) 
  220 I$ ( 3 ) = SEG$ ( Z1$ , 129 , 64 ) 
  230 Z1$ = "" 
  240 I$ ( 4 ) = SEG$ ( Z2$ , 1 , 64 ) 
  250 I$ ( 5 ) = SEG$ ( Z2$ , 65 , 64 ) 
  260 I$ ( 6 ) = SEG$ ( Z2$ , 129 , 64 ) 
  270 Z2$ = "" 
  280 I$ ( 7 ) = SEG$ ( Z3$ , 1 , 64 ) 
  290 I$ ( 8 ) = SEG$ ( Z3$ , 65 , 64 ) 
  300 I$ ( 9 ) = SEG$ ( Z3$ , 129 , 64 ) 
  310 Z3$ = "" 
  320 I$ ( 10 ) = SEG$ ( Z4$ , 1 , 64 ) 
  330 I$ ( 11 ) = SEG$ ( Z4$ , 65 , 64 ) 
  340 I$ ( 12 ) = SEG$ ( Z4$ , 129 , 64 ) 
  350 Z4$ = "" 
  360 CALL KEY ( 0 , K , S )  :: IF S = 0 THEN 360
  370 FOR I = 1 TO 12 
  380 CALL CHAR ( 92 + I * 4 , I$ ( I ) ) 
  390 NEXT I 
  400 GOTO 190
