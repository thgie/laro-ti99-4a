  100 CALL CLEAR 
  110 PRINT "(A-B)*(A+B)=" 
  120 PRINT "A^2+AB-AB-B^2=" 
  130 PRINT "A^2-B^2" 
  140 INPUT "1.,2.ZAHL?: "  : C1 , D1 
  150 IF C1 < D1 THEN 270
  160 C = C1 
  170 D = D1 
  180 PRINT C  ; "*"  ; D  ; "=" 
  190 A = C - ( ( C - D ) / 2 ) 
  200 B = ( C - D ) / 2 
  210 PRINT "(" & STR$ ( A ) & "+" & STR$ ( B ) & ")*(" & STR$ ( A ) & "-" & STR$ ( B ) & ")=" 
  220 PRINT STR$ ( A ) & "^2+" & STR$ ( A ) & "*" & STR$ ( B ) & "-" & STR$ ( A ) & "*" & STR$ ( B ) & "-" & STR$ ( B ) & "^2=" 
  230 PRINT STR$ ( A ) & "^2-" & STR$ ( B ) & "^2=" 
  240 PRINT A ^ 2  ; "-"  ; B ^ 2  ; "=" 
  250 PRINT A ^ 2 - B ^ 2 
  260 GOTO 140
  270 C = D1 
  280 D = C1 
  290 GOTO 180
