  100 CALL CLEAR 
  110 CALL COLOR ( 12 , 16 , 16 ) 
  120 FOR A = 19 TO 24 
  130 CALL HCHAR ( A , 1 , 120 , 32 ) 
  140 NEXT A 
  150 A$ = "01071821214141FFFF4141212119070080E09884848282FFFF8282848498E000" 
  160 B$ = "01061820305C4681814246242C180700806018342462428181623A0C0418E000" 
  170 C$ = "0106182C2446428181465C3020180700806018040C3A6281814262243418E000" 
  180 CALL CHAR ( 96 , A$ ) 
  190 CALL CHAR ( 100 , B$ ) 
  200 CALL CHAR ( 104 , C$ ) 
  210 CALL SPRITE ( # 1 , 96 , 5 , 130 , 1 , 0 , 8 ) 
  220 CALL MAGNIFY ( 3 ) 
  230 FOR A = 96 TO 104 STEP 4 
  240 CALL PATTERN ( # 1 , A ) 
  250 FOR D = 1 TO 5  :: NEXT D 
  260 NEXT A 
  270 GOTO 230
