  100 CALL CLEAR 
  110 CALL CHAR ( 96 , "0008081C7F1C0808" ) 
  120 RANDOMIZE 
  130 CALL SCREEN ( 2 ) 
  140 FOR A = 1 TO 28 
  150 CALL SPRITE ( # A , 96 , INT ( A / 3 ) + 3 , 92 , 124 , A * INT ( RND * 4.5 ) - 2.25 + A / 2 * SGN ( RND - .5 ) , A * INT ( RND * 4.5 ) - 2.25 + A / 2 * SGN ( RND - .5 ) ) 
  160 NEXT A 
  170 GOTO 140
