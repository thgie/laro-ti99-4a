   90 CALL CLEAR 
   95 S$ = ""  :: FOR I = 32 TO 128  :: S$ = S$ & CHR$ ( I )  :: NEXT I 
  100 FOR I = 65 TO 90 
  110 CALL CHARPAT ( I , A$ )  :: CALL CHAR ( I + 32 , A$ ) 
  120 NEXT I 
  130 FOR I = 65 TO 90 STEP 4  :: READ Z$  :: CALL CHAR ( I , Z$ )  :: NEXT I 
  140 DATA 10387CFEFE7C387C1010101010101010000000FF0000000000FF000000000000 , FF00000000000000000000000000FF0020202020202020200404040404040404 
  150 DATA 00000000C02010100808040300000000101020C00000000080808080808080FF , 80402010080402010102040810204080FF80808080808080FF01010101010101 
  160 DATA 3C7EFFFFFFFF7E3C00000000000000FF6CFEFE7C7C3838108080808080808080 , 000000000304080881422418182442813C4281818181423C1038387CFE7C1010 
  170 DATA 010101010101010118183CFFFF3C1818 
  180 FOR I = 1 TO 14  :: CALL COLOR ( I , 5 , 8 )  :: NEXT I 
  190 CALL SCREEN ( 5 ) 
  200 CALL VCHAR ( 1 , 31 , 31 , 96 ) 
  210 ACCEPT AT ( P , 1 ) VALIDATE ( S$ ) SIZE ( - 56 )  : B$ ( 0 + 0 ) 
  215 P = P + 2  :: IF P > 23 THEN PRINT  :  :  :: P = 22 
  220 GOTO 210
