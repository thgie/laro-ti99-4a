  100 CALL CHARPAT ( 44 , A$ ) 
  110 CALL CHAR ( 128 , SEG$ ( A$ , 5 , 12 ) & "00FE" ) 
  120 FOR I = 97 TO 111 
  130 CALL CHARPAT ( I , A$ ) 
  140 CALL CHAR ( I + 32 , SEG$ ( A$ , 5 , 12 ) & "00FE" ) 
  150 NEXT I 
