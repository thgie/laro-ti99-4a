  100 CALL CLEAR 
  110 CALL SCREEN ( 12 ) 
  120 CALL CIRCLE ( 96 , 120 , 10 , 0 , 360 , 1 , .83 ) 
  122 CALL CIRCLE ( 96 , 120 , 20 , 360 , 230 , 1 , .83 ) 
  124 CALL CIRCLE ( 96 , 120 , 35 , 360 , 270 , 1 , .83 ) 
  126 CALL CIRCLE ( 96 , 120 , 35 , 360 , 270 , 4 / 7 , .83 ) 
  130 GOTO 130
10000 SUB CIRCLE ( X1 , Y1 , R , W1 , W2 , E1 , E2 ) 
10010 FOR W = W1 TO W2 STEP 360 / 2 / R / PI * SGN ( W2 - W1 ) 
10020 X = INT ( X1 - COS ( PI / 180 * W ) * R * E1 + .5 ) 
10030 Y = INT ( Y1 + SIN ( PI / 180 * W ) * R * E2 + .5 ) 
10040 IF X < 1 OR X > 192 OR Y < 1 OR Y > 255 THEN 10060
10050 CALL ONSCREEN ( X , Y ) 
10060 NEXT W 
10070 SUBEND 
21000 SUB ONSCREEN ( W , S ) 
21010 DEF FR ( X ) = INT ( ( X / 8 - INT ( X / 8 ) ) * 8 ) + ( ( X / 8 ) = INT ( X / 8 ) ) * - 8 
21020 H$ = "0123456789ABCDEF" 
21030 IF SS = 0 THEN ZE = 91 
21035 SS = 1 
21040 IF ZE = 144 THEN ZE = 33 
21050 IF ZE < > 90 THEN 21065
21060 SUBEXIT 
21065 DIM F ( 8 )  :: FOR P = 1 TO 8  :: F ( P ) = 0  :: NEXT P 
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
