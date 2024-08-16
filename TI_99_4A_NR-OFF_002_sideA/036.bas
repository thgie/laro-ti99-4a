  100 CALL CLEAR 
  101 CALL MAGNIFY ( 3 ) 
  110 CALL CHAR ( 96 , "00000000031F7FCC" , 97 , "CC7F1F03" , 98 , "00000000C0F8FE33" , 99 , "33FEF8C0" ) 
  120 CALL SCREEN ( 2 ) 
  130 RANDOMIZE 
  135 FOR SPI = 1 TO 2 
  140 CALL SPRITE ( # SPI , 96 , 12 , 96 , 12 ) 
  150 CALL KEY ( SPI , K , S ) 
  160 IF S = 0 THEN 150
  170 FOR T = 3 TO 13 
  180 CALL SPRITE ( # T , 96 , INT ( 13 * RND ) + 3 , ( T - 2 ) * 16 , 220 ) 
  190 NEXT T 
  200 FOR T = 3 TO 13 
  210 CALL MOTION ( # T , 0 , - INT ( 40 * RND ) + 1 ) 
  220 NEXT T 
  230 CALL JOYST ( SPI , X , Y ) 
  240 CALL MOTION ( # SPI , - Y * 7 , X * 7 ) 
  250 CALL COINC ( ALL , G ) 
  260 IF G < > - 1 THEN 230
  270 CALL SOUND ( 1000 , - 7 , 10 ) 
  280 FOR T = 1 TO 13 
  290 CALL DELSPRITE ( # T ) 
  300 NEXT T 
  310 NEXT SPI 
  320 GOTO 135
