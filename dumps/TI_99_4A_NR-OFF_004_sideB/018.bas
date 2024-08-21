   10  !  FUNKTIONENPLOTT AUF DEM BILDSCHIRM
   20  !  BY LARO SACER,ALEMANNENSTR.10,CH-4106 THERWIL
   30 ON WARNING NEXT 
   40  !  FUNKTION
   50 DEF Y = X ^ 3 
   80 DEF KOL ( X ) = 97 - X 
   90 OPTION BASE 1 
  100 CALL CHAR ( 46 , "FF" ) 
  110 CALL CLEAR  :: CALL SCREEN ( 12 ) 
  115 DISPLAY AT ( 2 , 1 )  : "SCHEMA 1:1(X:Y):J"  :: ACCEPT AT ( 2 , 17 ) SIZE ( - 1 ) VALIDATE ( "JN" ) BEEP  : A$ 
  117 IF A$ = "J" THEN SC = 1 
  120 CALL ACCEPT ( 2 , 1 , "ANFANGS-X:" , XA )  :: CALL ACCEPT ( 2 , 17 , "END-X:" , XE ) 
  130 IF XA = XE THEN 120
  140 DISPLAY AT ( 1 , 9 )  : "BITTE WARTEN" 
  150 XB = XE - XA  :: X = XA  :: YMI , YMA = Y 
  160 FOR X = XA TO XE STEP XB / 20  :: Y1 = Y 
  170 IF YMA < Y1 THEN YMA = Y1 
  180 IF YMI > Y1 THEN YMI = Y1 
  190 NEXT X 
  192 CALL HCHAR ( 13 , 1 , 46 ) 
  195 IF YMA = YMI THEN FA = 1  :: GOTO 205
  197 IF SC THEN FA = 1  :: GOTO 210
  200 FA = 160 / ( YMA - YMI ) 
  205 IF FA * YMA < 80 AND FA * YMI > - 80 THEN 210
  206 FA = FA / 1.2  :: GOTO 205
  210 FOR SP = 6 TO 25 
  220 FOR Z = 1 TO 8 
  230 X = XA + ( ( ( SP - 6 ) * 8 + Z ) * XB / 160 ) 
  234 Y1 = Y * FA  :: IF Y1 > 80 OR Y1 < - 80 THEN 250
  240 CALL ONSCREEN ( SP * 8 + Z , KOL ( INT ( Y1 ) ) ) 
  250 NEXT Z  :: NEXT SP 
  260 DISPLAY AT ( 1 , 1 ) 
  270 CALL SOUND ( 1000 , 440 , 10 ) 
  280 GOTO 280
20000 SUB ACCEPT ( R , K , F$ , V ) 
20010 DISPLAY AT ( R , K )  : F$  :: ACCEPT AT ( R , K + LEN ( F$ ) ) BEEP  : V 
20020 SUBEND 
21000 SUB ONSCREEN ( S , W ) 
21010 DEF FR ( X ) = INT ( ( X / 8 - INT ( X / 8 ) ) * 8 ) + ( ( X / 8 ) = INT ( X / 8 ) ) * - 8 
21015 DIM F ( 8 )  :: FOR P = 1 TO 8  :: F ( P ) = 0  :: NEXT P 
21020 H$ = "0123456789ABCDEF" 
21030 IF SS = 0 THEN ZE = 91 
21035 SS = 1 
21040 IF ZE = 144 THEN ZE = 33 
21050 IF ZE < > 44 THEN 21065
21060 D = 1  :: CALL HCHAR ( 1 , 1 , 32 , 64 )  :: CALL HCHAR ( 13 , 1 , 32 ) 
21065 IF D = 1 AND ZE = 91 THEN 260
21070 CALL GCHAR ( INT ( ( W + 7 ) / 8 ) , INT ( ( S + 7 ) / 8 ) , ZE1 ) 
21080 IF ZE1 < 33 OR ZE1 > 143 THEN 22000
21090 CALL CHARPAT ( ZE1 , Z$ ) 
21100 IF Z$ = RPT$ ( "0" , 16 ) THEN 22000
21110 I = FR ( W ) 
21120 FOR K = 1 TO 5 STEP 4 
21130 Z1$ = SEG$ ( Z$ , I * 2 - 1 + ( K - 1 ) / 4 , 1 ) 
21140 ON POS ( H$ , Z1$ , 1 ) GOTO 21310, 21150, 21160, 21170, 21180, 21190, 21200, 21210, 21220, 21230, 21240, 21250, 21260, 21270, 21280, 21290
21150 F ( K + 3 ) = 1  :: GOTO 21310
21160 F ( K + 2 ) = 1  :: GOTO 21310
21170 F ( K + 2 ) = 1  :: GOTO 21150
21180 F ( K + 1 ) = 1  :: GOTO 21310
21190 F ( K + 1 ) = 1  :: GOTO 21150
21200 F ( K + 1 ) = 1  :: GOTO 21160
21210 F ( K + 1 ) = 1  :: GOTO 21170
21220 F ( K ) = 1  :: GOTO 21310
21230 F ( K ) = 1  :: GOTO 21150
21240 F ( K ) = 1  :: GOTO 21160
21250 F ( K ) = 1  :: GOTO 21170
21260 F ( K ) = 1  :: GOTO 21180
21270 F ( K ) = 1  :: GOTO 21190
21280 F ( K ) = 1  :: GOTO 21200
21290 F ( K ) = 1  :: GOTO 21210
21310 NEXT K  :: F ( FR ( S ) ) = 1 
21320 T1 = F ( 1 ) * 8 + F ( 2 ) * 4 + F ( 3 ) * 2 + F ( 4 ) + 1 
21330 T2 = F ( 5 ) * 8 + F ( 6 ) * 4 + F ( 7 ) * 2 + F ( 8 ) + 1 
21335 T1$ = SEG$ ( H$ , T1 , 1 ) & SEG$ ( H$ , T2 , 1 ) 
21340 ZZ$ = SEG$ ( Z$ , 1 , I * 2 - 2 ) & T1$ & SEG$ ( Z$ , I * 2 + 1 , 16 - I * 2 ) 
21350 CALL CHAR ( ZE1 , ZZ$ ) 
21360 GOTO 30000
22000 I = FR ( W )  :: J = FR ( S ) 
22010 F ( J ) = 1 
22020 T1 = F ( 1 ) * 8 + F ( 2 ) * 4 + F ( 3 ) * 2 + F ( 4 ) + 1 
22030 T2 = F ( 5 ) * 8 + F ( 6 ) * 4 + F ( 7 ) * 2 + F ( 8 ) + 1 
22040 ZZ$ = RPT$ ( "0" , I * 2 - 2 ) & SEG$ ( H$ , T1 , 1 ) & SEG$ ( H$ , T2 , 1 ) & RPT$ ( "0" , 16 - I * 2 ) 
22050 CALL CHAR ( ZE , ZZ$ )  :: CALL HCHAR ( INT ( ( W + 7 ) / 8 ) , INT ( ( S + 7 ) / 8 ) , ZE ) 
22060 ZE = ZE + 1 
30000 SUBEND 
