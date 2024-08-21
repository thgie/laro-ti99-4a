  100 CALL CLEAR 
  101 DEF A [1 ] = ASC ( SEG$ ( A1$ , A1 , 1 ) ) 
  102 DEF A [2 ] = ASC ( SEG$ ( A2$ , A2 , 1 ) ) 
  110 INPUT "TERM?: "  : A$ 
  111 Z1$ = "" 
  112 Z2$ = "" 
  113 POT1$ = "" 
  114 POT2$ = "" 
  115 N1$ = "" 
  116 N2$ = "" 
  118 IF LEN ( A$ ) < = 2 THEN 110
  119 IF SEG$ ( A$ , LEN ( A$ ) - 1 , 2 ) < > "^2" THEN 110
  120 IF POS ( A$ , "(" , 1 ) = 0 THEN 1000
  130 B$ = SEG$ ( A$ , POS ( A$ , "(" , 1 ) + 1 , POS ( A$ , ")" , 1 ) - POS ( A$ , "(" , 1 ) - 1 ) 
  140 IF POS ( B$ , "+" , 1 ) = 0 THEN 1000
  150 A1$ = SEG$ ( B$ , 1 , POS ( B$ , "+" , 1 ) - 1 ) 
  160 A2$ = SEG$ ( B$ , POS ( B$ , "+" , 1 ) + 1 , LEN ( B$ ) - POS ( B$ , "+" , 1 ) ) 
  170 FOR A1 = 1 TO LEN ( A1$ ) 
  175 IF A [1 ] = 94 THEN 520
  180 IF A [1 ] < 48 THEN 110
  190 IF A [1 ] < 58 THEN 500
  195 N1$ = N1$ & CHR$ ( A [1 ] ) 
  200 NEXT A1 
  210 FOR A2 = 1 TO LEN ( A2$ ) 
  215 IF A [2 ] = 94 THEN 620
  220 IF A [2 ] < 48 THEN 110
  230 IF A [2 ] < 58 THEN 600
  235 N2$ = N2$ & CHR$ ( A [2 ] ) 
  240 NEXT A2 
  260 IF POT1$ < > "" THEN 271
  270 POT1$ = "1" 
  271 IF POT2$ < > "" THEN 273
  272 POT2$ = "1" 
  273 IF Z1$ < > "" THEN 275
  274 Z1$ = "1" 
  275 IF Z2$ < > "" THEN 280
  276 Z2$ = "1" 
  280 PRINT STR$ ( VAL ( Z1$ ) ^ 2 ) & N1$ & "^" & STR$ ( VAL ( POT1$ ) * 2 ) & "+"  ; 
  290 PRINT STR$ ( VAL ( Z1$ ) * VAL ( Z2$ ) * 2 ) & N1$ & "^" & POT1$ & "*" & N2$ & "^" & POT2$ & "+"  ; 
  320 PRINT STR$ ( VAL ( Z2$ ) ^ 2 ) & N2$ & "^" & STR$ ( VAL ( POT2$ ) * 2 ) 
  330 GOTO 110
  500 Z1$ = Z1$ & CHR$ ( A [1 ] ) 
  510 GOTO 200
  520 A1 = A1 + 1 
  530 POT1$ = POT1$ & CHR$ ( A [1 ] ) 
  540 A1 = A1 + 1 
  545 IF A1 > LEN ( A1$ ) THEN 210
  570 GOTO 530
  600 Z2$ = Z2$ & CHR$ ( A [2 ] ) 
  610 GOTO 240
  620 A2 = A2 + 1 
  630 POT2$ = POT2$ & CHR$ ( A [2 ] ) 
  640 A2 = A2 + 1 
  650 IF A2 > LEN ( A2$ ) THEN 260
  660 GOTO 630
 1000 END 
