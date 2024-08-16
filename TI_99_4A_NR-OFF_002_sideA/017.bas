  100 CALL CLEAR 
  110 REM  KONJUNKTION   
  120 CALL CHAR ( 133 , "0008107C4078407C" ) 
  130 GOTO 180
  140 B$ = SEG$ ( A$ , 1 , LEN ( A$ ) - 2 ) 
  150 C$ = SEG$ ( A$ , LEN ( A$ ) - 1 , 2 ) 
  160 D$ = SEG$ ( A$ , LEN ( A$ ) - 2 , 3 ) 
  170 RETURN 
  180 INPUT "VERB?(KEINE AUSNAHME):      "  : A$ 
  190 IF LEN ( A$ ) < 3 THEN 380
  200 GOSUB 140
  210 GOSUB 450
  220 IF C$ < > "ER" THEN 310
  230 PRINT "JE(J') " & A1$ & B$ & "E" 
  240 PRINT "TU " & A2$ & B$ & "ES" 
  250 PRINT "IL " & A3$ & B$ & "E" 
  260 PRINT "NOUS " & A4$ & B$ & "ONS" 
  270 PRINT "VOUS " & A5$ & B$ & "EZ" 
  280 PRINT "ILS " & A6$ & B$ & "ENT" 
  290 GOSUB 420
  300 GOTO 180
  310 IF D$ = "OIR" THEN 380
  320 IF C$ = "RE" THEN 340
  330 IF C$ < > "IR" THEN 400
  340 PRINT "JE(J') " & A1$ & B$ & "S" 
  350 PRINT "TU " & A2$ & B$ & "S" 
  360 PRINT "IL " & A3$ & B$ & "(T)" 
  370 GOTO 260
  380 PRINT  : "KONJUNKTION NICHT MOEGLICH!"  :  : 
  390 GOTO 180
  400 PRINT  : "ENDUNG UNRICHTIG!"  : 
  410 GOTO 380
  420 PRINT  : A7$ & B$ & "" 
  430 PRINT  : A8$ & B$ & "AIS"  :  : 
  440 RETURN 
  450 IF SEG$ ( A$ , 1 , 3 ) = "SE " THEN 560
  460 IF SEG$ ( A$ , 1 , 2 ) = "S'" THEN 580
  470 A1$ = "" 
  480 A2$ = "" 
  490 A3$ = "" 
  500 A4$ = "" 
  510 A5$ = "" 
  520 A6$ = "" 
  530 A7$ = "J'AI(JE SUIS) " 
  540 A8$ = "JE(J') " 
  550 RETURN 
  560 B$ = SEG$ ( A$ , 4 , LEN ( A$ ) - 5 ) 
  570 GOTO 600
  580 B$ = SEG$ ( A$ , 3 , LEN ( A$ ) - 4 ) 
  590 GOTO 690
  600 A1$ = "ME " 
  610 A2$ = "TE " 
  620 A3$ = "SE " 
  630 A4$ = "NOUS " 
  640 A5$ = "VOUS " 
  650 A6$ = "SE " 
  660 A7$ = "JE ME SUIS " 
  670 A8$ = "JE ME " 
  680 RETURN 
  690 A1$ = "M'" 
  700 A2$ = "T'" 
  710 A3$ = "S'" 
  720 A4$ = "NOUS " 
  730 A5$ = "VOUS " 
  740 A6$ = "S'" 
  750 A7$ = "JE ME SUIS " 
  760 A8$ = "JE M'" 
  770 RETURN 
