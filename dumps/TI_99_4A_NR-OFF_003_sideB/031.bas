  100 OPTION BASE 1 
  110 DIM BF$ ( 127 ) 
  120 FOR I = 1 TO 127 
  130 READ BF$ ( I ) 
  140 NEXT I 
  150 DATA "ELSE " , ":: " , ! , "IF " , "GO " , "GOTO " , "GOSUB " , "RETURN " , "DEF " , "DIM " , "END " , "FOR " , "LET " , "BREAK " , "UNBREAK " , "TRACE " , "UNTRACE " , "INPUT " 
  160 DATA "DATA " , "RESTORE " , "RANDOMIZE " , "NEXT " , "READ " , "STOP " , "DELETE " , REM , "ON " , "PRINT " , "CALL " , "OPEN " , "OPTION " , "CLOSE " , "SUB " 
  170 DATA "DISPLAY " , "IMAGE " , "ACCEPT " , "ERROR " , "WARNING " , "SUBEXIT " , "SUBEND " , "RUN " , "LINPUT " , "INTEGER" , ??? , ??? , ??? , ??? , "THEN " , "TO " , "STEP " 
  180 DATA "," , ; , : , ) , ( , & , ??? , "OR " , "AND " , "XOR " , "NOT " , = , < , > , + , - , * , / , ^ , ??? , ??? , ??? , ??? , EOF , ABS , ATN , COS , EXP , INT , LOG 
  190 DATA SGN , SIN , SQR , TAN , LEN , CHR$ , RND , SEG$ , POS , VAL , STR$ , ASC , PI , REC , MAX , MIN , RPT$ , UPRC$ , STATUS , TIME$ 
  200 DATA DAT$ , INTG , ALPHA , NUMERIC , DIGIT , UALPHA , SIZE , "ALL " , "USING " , "BEEP " , "ERASE " , AT , "BASE " , TEMPORARY 
  210 DATA "VARIABLE " , "RELATIVE " , INTERNAL , "SEQUENTIAL " , OUTPUT , UPDATE , APPEND , "FIXED " , PERMANENT , TAB , # , VALIDATE , ??? 
  220 AD = 0  :: PR = 0 
  230 CALL CLEAR 
  240 GOSUB 10000 :: Z1 = X  :: AD = AD + 1  :: GOSUB 10000 :: Z2 = X  :: AD = AD + 1 
  245 IF Z1 + Z2 = 0 THEN 240
  250 IF Z1 * 256 + Z2 = 32767 THEN PRINT  : "* READY *" ELSE PRINT STR$ ( Z1 * 256 + Z2 )  ; 
  255 PRINT " "  ; 
  260 GOSUB 10000 :: AD = AD + 1 
  270 IF X = 0 THEN PRINT  :: GOTO 240
  290 IF X < 129 THEN PRINT CHR$ ( X )  ;  :: GOTO 260
  300 IF X = 199 THEN 400
  310 IF X = 200 THEN 500
  320 IF X = 201 THEN 600
  330 PRINT USING RPT$ ( "#" , LEN ( BF$ ( X - 128 ) ) )  : BF$ ( X - 128 )  ; 
  340 GOTO 260
  400 GOSUB 10000 :: AD = AD + 1 
  410 ST$ = "" 
  420 FOR I = 1 TO X 
  430 GOSUB 10000 :: AD = AD + 1 
  440 ST$ = ST$ & CHR$ ( X ) 
  450 NEXT I 
  460 ST$ = CHR$ ( 34 ) & ST$ & CHR$ ( 34 ) 
  470 PRINT USING RPT$ ( "#" , LEN ( ST$ ) )  : ST$  ; 
  480 GOTO 260
  500 GOSUB 10000 :: AD = AD + 1 
  510 ST$ = "" 
  520 FOR I = 1 TO X 
  530 GOSUB 10000 :: AD = AD + 1 
  540 ST$ = ST$ & CHR$ ( X ) 
  550 NEXT I 
  560 PRINT USING RPT$ ( "#" , LEN ( ST$ ) )  : ST$  ; 
  570 GOTO 260
  600 GOSUB 10000 :: AD = AD + 1  :: Z1 = X  :: GOSUB 10000 :: AD = AD + 1  :: Z2 = X 
  610 ST$ = STR$ ( Z1 * 256 + Z2 ) 
  620 GOTO 560
 9999 STOP 
10000 IF AD > 32767 THEN CALL PEEK ( AD - 65536 , X ) ELSE CALL PEEK ( AD , X ) 
10010 RETURN 
