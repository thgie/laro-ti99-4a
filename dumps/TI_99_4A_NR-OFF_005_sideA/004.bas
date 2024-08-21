   80 CALL CLEAR 
   90 CALL SCREEN ( 7 ) 
  100 FOR I = 0 TO 14 
  110 F1 = 2  :: F2 = 12  :: IF I > = 9 THEN F1 = 16  :: F2 = 5  :: IF I > = 13 THEN F1 = 14  :: F2 = 16 
  120 CALL COLOR ( I , F1 , F2 ) 
  130 NEXT I 
  131 FOR I = 64 TO 95 
  132 CALL CHARPAT ( I , A$ )  :: CALL CHAR ( I + 32 , A$ )  :: NEXT I 
  133 FOR I = 64 TO 79 
  134 CALL CHARPAT ( I , A$ )  :: CALL CHAR ( I + 64 , A$ )  :: NEXT I 
  140 DISPLAY AT ( 2 , 2 )  : "* READY *" 
  150 X = 20 
  160 Y = 3 
  165 CALL GCHAR ( X , Y , Z1 ) 
  170 FOR K = 1 TO 5 
  180 CALL KEY ( 0 , KEY , S ) 
  190 IF S = 1 THEN 300
  191 IF S = 0 THEN 200
  192 FOR K1 = 1 TO 5 
  193 CALL KEY ( 0 , KEY , S ) 
  194 IF S < > - 1 THEN 200
  195 NEXT K1 
  196 GOTO 400
  200 NEXT K 
  210 REM  CURSOR
  220 CUR = NOT CUR 
  230 ON CUR + 2 GOTO 240, 260
  240 Z = 30 
  250 GOTO 270
  260 Z = Z1 
  270 CALL HCHAR ( X , Y , Z ) 
  280 GOTO 170
  300 IF KEY > 31 AND KEY < 144 THEN 350
  310 GOTO 170
  320  ! 
  330  ! 
  340  ! 
  350 CALL HCHAR ( X , Y , KEY ) 
  360 Y = Y + 1  :: IF Y > 30 THEN Y = 3  :: X = X + 1  :: IF X > 23 THEN PRINT  :  :  :  :  :  :: X = 19 
  365 CALL GCHAR ( X , Y , Z1 )  :: CALL HCHAR ( X , Y , 30 ) 
  370 GOTO 170
  400 CALL KEY ( 0 , KEY , S ) 
  410 IF S < > - 1 THEN 170
  411 IF KEY < 32 OR KEY > 143 THEN 170
  420 CALL HCHAR ( X , Y , KEY ) 
  430 Y = Y + 1  :: IF Y > 30 THEN Y = 3  :: X = X + 1  :: IF X > 23 THEN PRINT  :  :  :  :  :  :: X = 19 
  440 CALL GCHAR ( X , Y , Z1 ) 
  450 CALL HCHAR ( X , Y , 30 ) 
  460 GOTO 400
