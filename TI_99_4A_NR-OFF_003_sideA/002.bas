  100  !  HELP
  200 ON WARNING NEXT 
  210 CALL CLEAR 
  250 INPUT "PASSWORT (VERSCHLUESSELN):  "  : SCODE  :: PRINT 
  260 INPUT "KLARTEXT: "  : TEXT1$  :: PRINT 
  270 CALL ENCODE ( SCODE , TEXT1$ , UNTEXT$ ) 
  280 PRINT "GEHEIMTEXT: " & UNTEXT$  :  : 
  290 INPUT "PASSWORT (ENTSCHLUESSELN):  "  : SDECODE  :: PRINT 
  300 CALL DECODE ( SDECODE , UNTEXT$ , TEXT2$ ) 
  310 PRINT "KLARTEXT: " & TEXT2$  :  : 
  320 IF TEXT1$ < > TEXT2$ THEN PRINT "FALSCH NEUES"  :: GOTO 290
  330 PRINT "PASSWORT RICHTIG!"  :  :  :  :  :  :  : 
  340 GOTO 250
  380 SUB ENCODE ( SC , T$ , UT$ ) 
  390 RANDOMIZE SC  :: UT$ = ""  :: V = ABS ( SC / 10 - INT ( SC / 10 ) ) * 10 
  400 FOR LO = 1 TO LEN ( T$ ) 
  410 X = INT ( RND * 95 - V )  :: A = ASC ( SEG$ ( T$ , LO , 1 ) ) 
  420 IF ( A + X ) < 128 THEN B$ = CHR$ ( A + X ) ELSE B$ = CHR$ ( A + X - 95 ) 
  430 UT$ = UT$ & B$ 
  440 NEXT LO 
  450 SUBEND 
  460 SUB DECODE ( SD , UT$ , T$ ) 
  470 RANDOMIZE SD  :: T$ = ""  :: V = ABS ( SD / 10 - INT ( SD / 10 ) ) * 10 
  480 FOR LO = 1 TO LEN ( UT$ ) 
  490 X = INT ( 95 * RND - V )  :: A = ASC ( SEG$ ( UT$ , LO , 1 ) ) 
  500 IF ( A - X ) > 31 THEN B$ = CHR$ ( A - X ) ELSE B$ = CHR$ ( A - X + 95 ) 
  510 T$ = T$ & B$ 
  520 NEXT LO 
  530 SUBEND 
