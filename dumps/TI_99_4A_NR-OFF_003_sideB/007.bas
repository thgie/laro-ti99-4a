  100 OPEN # 1  : "CS1" , INPUT , FIXED 168 
  110 DIM T$ ( 40 ) 
  120 D = 40 
  125 CALL CLEAR 
  130 FOR I = 1 TO D 
  140 LINPUT # 1  : S$ 
  145 DISPLAY AT ( 1 , 1 )  : S$ 
  150 FOR J = 1 TO LEN ( S$ ) 
  160 W , JA = 0 
  170 P$ = SEG$ ( S$ , J , 1 ) 
  180 IF ASC ( P$ ) < 65 OR ASC ( P$ ) > 127 THEN IF W = 0 THEN 390ELSE 300
  190 W = - 1 
  200 W$ = W$ & P$ 
  205 IF J / 28 = INT ( J / 28 ) THEN JA = 1  :: GOTO 300ELSE J = J + 1  :: GOTO 170
  300 CALL WORT ( W$ ) 
  303 DISPLAY AT ( 14 , 1 ) BEEP  : W$ 
  305 H$ = H$ & W$ 
  310 W$ = "" 
  320 IF JA THEN 400ELSE 390
  390 H$ = H$ & P$ 
  400 NEXT J 
  405 DISPLAY AT ( 1 , 1 )  : H$  :: T$ ( I ) = H$  :: H$ = "" 
  410 NEXT I 
  420 CLOSE # 1 
  430 CALL CLEAR 
  440 OPEN # 1  : "CS1" , OUTPUT , FIXED 168 
  450 FOR I = 1 TO D 
  460 PRINT # 1  : T$ ( I ) 
  470 NEXT I 
10000 SUB WORT ( W$ ) 
10005 F$ = "" 
10010 DISPLAY AT ( 12 , 1 ) BEEP  : W$ 
10020 CALL KEY ( 3 , K , S )  :: IF S < 1 THEN 10020
10030 IF K = ASC ( "Q" ) THEN SUBEXIT 
10040 IF K = ASC ( "K" ) THEN 11000
10050 IF K = ASC ( "G" ) THEN 12000
10060 GOTO 10020
11000 FOR I = 1 TO LEN ( W$ ) 
11010 F$ = F$ & CHR$ ( ASC ( SEG$ ( W$ , I , 1 ) ) + 32 ) 
11020 NEXT I 
11030 W$ = F$ 
11040 SUBEXIT 
12000 F$ = SEG$ ( W$ , 1 , 1 ) 
12010 FOR I = 2 TO LEN ( W$ ) 
12020 F$ = F$ & CHR$ ( ASC ( SEG$ ( W$ , I , 1 ) ) + 32 ) 
12030 NEXT I 
12040 W$ = F$ 
12050 SUBEND 
