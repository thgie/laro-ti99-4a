    2 PRINT TAB ( 11 )  ; "LEBEN" 
    4 PRINT "    CREATIVE COMPUTING       MORRISTOWN,NEW JERSEY,USA" 
    6 PRINT  :  :  : 
    8 PRINT "TIPPE DEIN MUSTER EIN:" 
    9 X1 , Y1 = 1  :: X2 = 24  :: Y2 = 28 
   10 DIM A ( 25 , 30 ) , B$ ( 25 ) 
   20 C = 1 
   30 ACCEPT SIZE ( 28 ) VALIDATE ( " *FERTIG" ) BEEP  : B$ ( C ) 
   40 IF B$ ( C ) = "FERTIG" THEN B$ ( C ) = ""  :: GOTO 80
   50 IF SEG$ ( B$ ( C ) , 1 , 1 ) = "." THEN B$ ( C ) = " " & SEG$ ( B$ ( C ) , 2 , LEN ( B$ ( C ) ) - 1 ) 
   60 C = C + 1 
   70 GOTO 30
   80 C = C - 1  :: L = 0 
   90 FOR X = 1 TO C 
  100 IF LEN ( B$ ( X ) ) > L THEN L = LEN ( B$ ( X ) ) 
  110 NEXT X 
  120 X1 = 11 - C / 2 
  130 Y1 = 14 - L / 2 
  140 FOR X = 1 TO C 
  150 FOR Y = 1 TO LEN ( B$ ( X ) ) 
  160 IF SEG$ ( B$ ( X ) , Y , 1 ) < > " " THEN A ( X1 + X , Y1 + Y ) = 1  :: P = P + 1 
  170 NEXT Y 
  180 NEXT X 
  200 PRINT  :  :  : 
  210 PRINT "GENERATION"  ; G  : "BEVOELKERUNG"  ; P  :: IF I9 THEN PRINT "UNGUELTIG" 
  215 X3 = 24  :: Y3 = 28  :: X4 , Y4 = 1  :: P = 0 
  220 G = G + 1 
  225 FOR X = 1 TO X1 - 1  :: PRINT  :: NEXT X 
  230 FOR X = X1 TO X2 
  240 PRINT 
  250 FOR Y = Y1 TO Y2 
  253 IF A ( X , Y ) = 2 THEN A ( X , Y ) = 0  :: GOTO 270
  256 IF A ( X , Y ) = 3 THEN A ( X , Y ) = 1  :: GOTO 261
  260 IF A ( X , Y ) < > 1 THEN 270
  261 PRINT TAB ( Y )  ; "*"  ; 
  262 IF X < X3 THEN X3 = X 
  264 IF X > X4 THEN X4 = X 
  266 IF Y < Y3 THEN Y3 = Y 
  268 IF Y > Y4 THEN Y4 = Y 
  270 NEXT Y 
  290 NEXT X 
  295 FOR X = X2 + 1 TO 24  :: PRINT  :: NEXT X 
  299 X1 = X3  :: X2 = X4  :: Y1 = Y3  :: Y2 = Y4 
  301 IF X1 < 3 THEN X1 = 3  :: I9 = - 1 
  303 IF X2 > 22 THEN X2 = 22  :: I9 = - 1 
  305 IF Y1 < 3 THEN Y3 = 3  :: I9 = - 1 
  307 IF Y2 > 26 THEN Y2 = 68  :: I9 = - 1 
  309 P = 0 
  500 FOR X = X1 - 1 TO X2 + 1 
  505 IF X < 1 OR X > 24 THEN 630
  510 FOR Y = Y1 - 1 TO Y2 + 1 
  515 IF Y < 1 OR Y > 28 THEN 620
  520 C = 0 
  530 FOR I = X - 1 TO X + 1 
  535 IF I < 1 OR I > 24 THEN 570
  540 FOR J = Y - 1 TO Y + 1 
  545 IF J < 1 OR J > 28 THEN 560
  550 IF A ( I , J ) = 1 OR A ( I , J ) = 2 THEN C = C + 1 
  560 NEXT J 
  570 NEXT I 
  580 IF A ( X , Y ) = 0 THEN 610
  590 IF C < 3 OR C > 4 THEN A ( X , Y ) = 2  :: GOTO 600
  595 P = P + 1 
  600 GOTO 620
  610 IF C = 3 THEN A ( X , Y ) = 3  :: P = P + 1 
  620 NEXT Y 
  630 NEXT X 
  631 X1 = X1 - 1  :: IF X1 < 1 THEN X1 = 1 
  632 Y1 = Y1 - 1  :: IF Y1 < 1 THEN Y1 = 1 
  635 X2 = X2 + 1  :: IF X2 > 24 THEN X2 = 24 
  636 Y2 = Y2 + 1  :: IF Y2 > 28 THEN Y2 = 28 
  640 GOTO 210
  650 END 
