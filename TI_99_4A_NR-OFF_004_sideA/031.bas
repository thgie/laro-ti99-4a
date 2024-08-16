  100  !  COMPUTERSOUND
  110  !  EINGABE NACH NOTEN
  120 ON ERROR 560
  130 CALL CLEAR 
  140 OPTION BASE 1 
  150 DIM N ( 200 , 3 ) , L ( 200 ) 
  160 ST = 2 ^ ( 1 / 12 ) 
  170 N$ = "C #CD #DE F #FG #GA #AH " 
  180 H$ = "~"' -=" 
  190 FOR X = 1 TO 200 
  200 PRINT "WERT FUER NOTE NR." & STR$ ( X ) & "?:1/1000 SEK." 
  205 ACCEPT SIZE ( 28 ) BEEP  : L1$ 
  210 IF SEG$ ( L1$ , 1 , 2 ) = "P:" THEN GOSUB 1000 :: GOTO 420
  215 L1 = VAL ( L1$ ) 
  220 IF L1 < 1 OR L1 > 4250 THEN 200
  230 L ( X ) = L1 
  240 FOR Y = 1 TO 3 
  250 LINPUT "NOTE NR." & STR$ ( Y ) & "?:"  : AN$ 
  260 IF AN$ = "NEXT" THEN 420
  270 IF AN$ = "REPLAY" THEN 540
  280 IF AN$ = "STOP" THEN 430
  290 AN$ = AN$ & "   " 
  300 AN1$ = SEG$ ( AN$ , 1 , 1 ) 
  310 AN2$ = SEG$ ( AN$ , 2 , 2 ) 
  320 AN1 = POS ( H$ , AN1$ , 1 ) 
  330 AN2 = INT ( ( POS ( N$ , AN2$ , 1 ) + 1 ) / 2 ) 
  340 IF AN1 = 0 OR AN2 = 0 THEN 250
  350 NOTE1 = 2096 / 2 ^ ( AN1 - 1 ) 
  360 NOTE = NOTE1 * ST ^ AN2 
  370 N ( X , Y ) = NOTE 
  400 NEXT Y 
  420 NEXT X 
  430 FOR Z = 1 TO X 
  440 FOR Z1 = 1 TO 3 
  450 IF N ( Z , Z1 ) < 110 THEN N ( Z , Z1 ) = 40000 
  460 NEXT Z1  :: NEXT Z 
  470 LINPUT ">"  : A$ 
  480 IF A$ = "BREAK" THEN STOP 
  490 IF A$ < > "PLAY" THEN 470
  500 FOR X = 1 TO 200 
  510 IF N ( X , 1 ) = 0 THEN 470
  520 CALL SOUND ( L ( X ) , N ( X , 1 ) , 10 , N ( X , 2 ) , 10 , N ( X , 3 ) , 10 ) 
  530 NEXT X 
  540 Y = Y - 1  :: IF Y > 0 THEN 32767
  550 X = X - 1  :: IF X > 0 THEN 200ELSE PRINT  : "* ERROR,NOT POSSIBLE"  :  :  :: GOTO 190
  560 CALL ERR ( ERR1 , ERR2 , ERR2 , ERR3 )  :: PRINT  : "* WARNING"  : "  ERROR"  ; ERR1  ; "IN"  ; ERR3 
  570 ON ERROR 560 :: RETURN NEXT 
 1000 FOR Y = 1 TO 3  :: N ( X , Y ) = 40000  :: NEXT Y 
 1010 L ( X ) = VAL ( SEG$ ( L1$ , 3 , LEN ( L1$ ) - 2 ) )  :: IF L ( X ) > 4250 THEN L ( X ) = 4250 
 1020 IF L ( X ) < 1 THEN L ( X ) = 1 
 1030 RETURN 
