    5 CALL CLEAR 
   10 PRINT TAB ( 12 )  ; "TIER" 
   20 PRINT "     CREATIVE COMPUTING      MORRISTOWN,NEW JERSEY,USA" 
   30 PRINT  :  :  : 
   40 PRINT "WIR SPIELEN 'RATE DAS TIER'" 
   50 PRINT "DENK DIR EIN TIER AUS,UND   DER COMPUTER VERSUCHT ES ZU ERRATEN."  :  : 
   70 DIM A$ ( 200 ) 
   75 GOSUB 1000
   76 IF B$ = "J" THEN 110
   80 FOR I = 0 TO 3 
   90 READ A$ ( I ) 
  100 NEXT I 
  110 N = VAL ( A$ ( 0 ) ) 
  120 REM  HAUPTKONTROLLTEIL
  130 INPUT "HAST DU DIR EIN TIER        AUSGEDACHT?:"  : AA$ 
  140 IF AA$ = "LISTE" THEN 600
  145 IF AA$ = "ENDE" THEN GOSUB 1210
  150 IF SEG$ ( AA$ , 1 , 1 ) < > "J" THEN 120
  160 K = 1 
  170 GOSUB 390
  180 IF LEN ( A$ ( K ) ) = 0 THEN 999
  190 IF SEG$ ( A$ ( K ) , 1 , 2 ) = "#Q" THEN 170
  200 PRINT "IST ES EIN "  ; SEG$ ( A$ ( K ) , 3 , LEN ( A$ ( K ) ) - 2 )  ; 
  210 INPUT AA$ 
  220 AA$ = SEG$ ( AA$ , 1 , 1 ) 
  230 IF AA$ = "J" THEN PRINT "VERSUCHE NOCH EINANDERES    TIER."  :: GOTO 120
  240 INPUT "DAS VON DIR AUSGEDACHTE TIERWAR EIN...?:"  : V$ 
  250 PRINT "GIB BITTE EINE FRAGE EIN,DIEEIN "  ; V$ 
  260 PRINT "VOM "  ; SEG$ ( A$ ( K ) , 3 , LEN ( A$ ( K ) ) - 2 )  ; " UNTERSCHEIDET." 
  270 INPUT X$ 
  280 PRINT "FUER "  ; V$  ; " WAERE DIE ANTWORT"  ; 
  290 INPUT AA$ 
  300 AA$ = SEG$ ( AA$ , 1 , 1 )  :: IF AA$ < > "J" AND AA$ < > "N" THEN 280
  310 IF AA$ = "J" THEN B$ = "N" 
  320 IF AA$ = "N" THEN B$ = "J" 
  330 Z1 = VAL ( A$ ( 0 ) ) 
  340 A$ ( 0 ) = STR$ ( Z1 + 2 ) 
  350 A$ ( Z1 ) = A$ ( K ) 
  360 A$ ( Z1 + 1 ) = "#A" & V$ 
  370 A$ ( K ) = "#Q" & X$ & "#" & AA$ & STR$ ( Z1 + 1 ) & "#" & B$ & STR$ ( Z1 ) & "#" 
  380 GOTO 120
  390 REM  UNTERPROGRAMM ZUM   AUSDRUCKEN DER FRAGEN
  400 Q$ = A$ ( K ) 
  410 FOR Z = 3 TO LEN ( Q$ ) 
  415 IF SEG$ ( Q$ , Z , 1 ) < > "#" THEN PRINT SEG$ ( Q$ , Z , 1 )  ; ELSE GOTO 420
  417 NEXT Z 
  420 INPUT C$ 
  430 C$ = SEG$ ( C$ , 1 , 1 ) 
  440 IF C$ < > "J" AND C$ < > "N" THEN 410
  450 T$ = "#" & C$ 
  455 FOR X = 3 TO LEN ( Q$ ) - 1 
  460 IF SEG$ ( Q$ , X , 2 ) = T$ THEN 480
  470 NEXT X 
  475 STOP 
  480 FOR Y = X + 1 TO LEN ( Q$ ) 
  490 IF SEG$ ( Q$ , Y , 1 ) = "#" THEN 510
  500 NEXT Y 
  505 STOP 
  510 K = VAL ( SEG$ ( Q$ , X + 2 , Y - X - 2 ) ) 
  520 RETURN 
  530 DATA 4 , #QSCHWIMMT ES#J2#N3# , #AFISCH , #AVOGEL 
  600 PRINT "DIE FOLGENDEN TIERE KENNE   ICH SCHON:" 
  605 X = 0 
  610 FOR I = 1 TO 200 
  620 IF SEG$ ( A$ ( I ) , 1 , 2 ) < > "#A" THEN 650
  624 PRINT TAB ( 14 * X )  ; 
  630 FOR Z = 3 TO LEN ( A$ ( I ) ) 
  640 IF SEG$ ( A$ ( I ) , Z , 1 ) < > "#" THEN PRINT SEG$ ( A$ ( I ) , Z , 1 )  ; ELSE GOTO 645
  642 NEXT Z 
  645 X = X + 1  :: IF X = 2 THEN X = 0  :: PRINT 
  650 NEXT I 
  660 PRINT  :  : 
  680 GOTO 120
  999 END 
 1000  !  LADEN
 1010 PRINT "DATEN AUF KASSETE?:" 
 1020 ACCEPT BEEP SIZE ( 1 ) VALIDATE ( "JN" )  : B$ 
 1030 IF B$ = "N" THEN RETURN 
 1035 OPEN # 1  : "CS1" , INTERNAL , INPUT , FIXED 164 
 1040 FOR I = 0 TO 200 STEP 4 
 1050 INPUT # 1  : A$ ( I ) , A$ ( I + 1 ) , A$ ( I + 2 ) , A$ ( I + 3 ) 
 1059 FOR X = 0 TO 3 
 1060 IF A$ ( I + X ) = "ENDE" THEN A$ ( I + X ) = ""  :: GOTO 1080
 1061 NEXT X 
 1070 NEXT I 
 1080 CLOSE # 1 
 1200 RETURN 
 1210  !  AUFNAHME
 1220 PRINT "DATEN SPEICHER?:"  ; 
 1230 ACCEPT BEEP SIZE ( 1 ) VALIDATE ( "JN" )  : B$ 
 1240 IF B$ = "N" THEN STOP 
 1250 OPEN # 2  : "CS1" , INTERNAL , OUTPUT , FIXED 164 
 1260 FOR I = 0 TO 200 STEP 4 
 1270 FOR X = 0 TO 3 
 1280 IF A$ ( I + X ) = "" THEN A$ ( I + X ) = "ENDE"  :: GOTO 1300
 1290 NEXT X 
 1300 PRINT # 2  : A$ ( I ) , A$ ( I + 1 ) , A$ ( I + 2 ) , A$ ( I + 3 ) 
 1305 IF A$ ( I ) = "ENDE" OR A$ ( I + 1 ) = "ENDE" OR A$ ( I + 2 ) = "ENDE" OR A$ ( I + 3 ) = "ENDE" THEN 1320
 1310 NEXT I 
 1320 END 
