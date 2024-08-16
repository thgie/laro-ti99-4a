  100 CALL CLEAR 
  110 CALL SCREEN ( 2 ) 
  120 CALL MAGNIFY ( 4 ) 
  130 CALL CHAR ( 128 , "0101010103030FFF0C0C060300000000000000008080E0FE2060C08" ) 
  140 CALL CHAR ( 132 , "000000000000000007030100000000000000000000000000C080000" ) 
  150 CALL SPRITE ( # 2 , 128 , 8 , 80 , 120 , # 1 , 132 , 16 , 80 , 120 ) 
  160 CALL STERNE ( 20 ) 
  170 GOTO 170
10000 SUB STERNE ( W ) 
10010 RANDOMIZE 
10020 CALL MAGNIFY ( 4 ) 
10030 CALL CHAR ( 96 , "00000000000000010" , 98 , "" , 99 , "" , 100 , "000000000000000101" , 102 , "00000000000000808" ) 
10040 DIM SP ( 14 , 2 ) 
10050 FOR I = 1 TO 14 
10060 X = INT ( RND * 43 - 21 )  :: SP ( I , 1 ) = 80 + X 
10070 Y = INT ( RND * 45 - 22 )  :: SP ( I , 2 ) = 120 + Y 
10080 IF X * X + Y * Y < 100 THEN 10060
10090 CALL SPRITE ( # I + 14 , 96 , 2 , SP ( I , 1 ) , SP ( I , 2 ) , X , Y ) 
10100 NEXT I 
10105 FOR I = 14 TO 28  :: CALL COLOR ( # I , 16 )  :: NEXT I 
10110 FOR V = 1 TO W 
10120 FOR I = 1 TO 7  :: CALL PATTERN ( # I + 14 , 96 , # I + 21 , 100 )  :: CALL LOCATE ( # I + 14 , SP ( I , 1 ) , SP ( I , 2 ) )  :: NEXT I 
10130 FOR I = 8 TO 14  :: CALL PATTERN ( # I + 14 , 96 , # I + 7 , 100 )  :: CALL LOCATE ( # I + 14 , SP ( I , 1 ) , SP ( I , 2 ) )  :: NEXT I 
10140 NEXT V 
10150 FOR I = 14 TO 28  :: CALL DELSPRITE ( # I )  :: NEXT I 
10160 SUBEND 
