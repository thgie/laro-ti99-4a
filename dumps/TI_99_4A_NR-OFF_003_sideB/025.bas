  100 CALL CLEAR  :: CALL SCREEN ( 4 ) 
  105 ON WARNING NEXT 
  110 INPUT "PRIMFAKTORZERLEGUNG:        ZAHL? "  : W 
  120 IF W < 2 OR W < > INT ( W ) OR W > 1E10 THEN 110
  122 DISPLAY AT ( 1 , 1 ) ERASE ALL  : "PRIMFAKTORZERLEGUNG"  : "DER ZAHL"  ; W 
  130 WAS = W 
  140 DIM P ( 1000 ) , F ( 40 ) 
  150 ZAHL = 2 
  160 I , J = 1 
  170 P ( I ) = 2 
  180 GOTO 230
  190 FOR X = 1 TO I 
  200 IF ZAHL / P ( X ) = INT ( ZAHL / P ( X ) ) THEN 260
  210 IF P ( X ) * P ( X ) > ZAHL THEN 230
  220 NEXT X 
  230 IF WAS / ZAHL < > INT ( WAS / ZAHL ) THEN IF P ( I ) * P ( I ) > WAS THEN F ( J ) = WAS  :: J = J + 1  :: GOTO 1000ELSE 240
  231 WAS = WAS / ZAHL 
  232 DISPLAY AT ( 10 , 14 ) BEEP  : ZAHL  ;  :: F ( J ) = ZAHL  :: J = J + 1  :: IF WAS < 2 THEN 1000
  233 GOTO 230
  240 I = I + 1 
  242 IF I > 1000 THEN I = 1000  :: IF P ( 999 ) * P ( 999 ) < P ( 1000 ) THEN F ( J ) = WAS  :: J = J + 1  :: GOTO 1000
  244 DISPLAY AT ( 10 , 1 )  : ZAHL  ; 
  250 P ( I ) = ZAHL 
  260 ZAHL = ZAHL + 1 
  310 GOTO 190
 1000 DISPLAY ERASE ALL  : "DIE FAKTOREN VON"  ; W  ; "SIND:" 
 1005 E = 1 
 1010 PRINT , 
 1020 FOR K = 1 TO J - 1 
 1030 PRINT , STR$ ( F ( K ) )  ; 
 1032 IF F ( K ) = F ( K + 1 ) THEN E = E + 1  :: K = K + 1  :: GOTO 1032
 1034 IF E < > 1 THEN PRINT "^" & STR$ ( E )  ;  :: E = 1 
 1040 NEXT K 
 1050 GOTO 1050
