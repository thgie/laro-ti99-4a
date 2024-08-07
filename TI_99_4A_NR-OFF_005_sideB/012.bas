    5  !  TITELPROGRAMM               (C) 1984 BY                 YODA SOFTWARE           _
   10 CALL CLEAR  :: CALL SCREEN ( 2 )  :: CALL SOUND ( 1000 , 131 , 7 , 196 , 7 , 262 , 0 ) 
   15 FOR I = 1 TO 14  :: CALL COLOR ( I , 16 , 2 )  :: NEXT I 
   20 CALL CHAR ( 64 , "0000001" , 95 , "000000183C3C18" , 94 , "0000001818" ) 
   25 CALL SOUND ( 1000 , 131 , 7 , 330 , 7 , 392 , 0 ) 
   30 CALL VCHAR ( 1 , 31 , 31 , 96 )  :: CALL SCREEN ( 5 ) 
   35 DISPLAY AT ( 1 , 1 )  : "   @             ^     _     ^          @     @       ^                      ^       @  @  YODA SOFTWARE   @    " 
   40 DISPLAY AT ( 5 , 1 )  : "                         ^     @         @    @    @    ^    @     @  ^       _            ^         ^       ^  " 
   45 DISPLAY AT ( 9 , 1 )  : " @          ^      _  @ @       @   ^    @   @        ^        ^  @         @       _ @          _          @   " 
   50 DISPLAY AT ( 13 , 1 )  : "     _          ^   ^  @    @          @^     _       ^               @     @ @       ^      ^      _       @   " 
   55 DISPLAY AT ( 17 , 1 )  : "    @       @     ^  ^   @    _      @     @        ^        ^     @ ^    _   @   @        @       ^     ^     ^" 
   57 DISPLAY AT ( 21 , 1 )  : " @ ^      @      @     ^         @  @   ^       @    @           @      ^     _       @          @     @      ^ " 
   60 CALL SOUND ( 250 , 175 , 7 , 147 , 7 , 349 , 0 ) 
   62 CALL CHAR ( 128 , "0707070707070707" , 129 , "" ) 
   65 CALL SOUND ( 250 , 165 , 7 , 131 , 7 , 330 , 0 ) 
   67 CALL CHAR ( 130 , "" , 131 , "" ) 
   70 CALL SOUND ( 250 , 147 , 7 , 175 , 7 , 294 , 0 ) 
   72 FOR I = 0 TO 3  :: CALL SPRITE ( # 10 + I , 128 , 14 , 25 , I * 64 + 1 , 0 , 16 )  :: NEXT I 
   75 CALL SOUND ( 1000 , 196 , 7 , 165 , 7 , 523 , 0 ) 
   80 CALL SOUND ( 1000 , 131 , 7 , 330 , 7 , 392 , 0 ) 
   85 CALL SOUND ( 250 , 175 , 7 , 147 , 7 , 349 , 0 ) 
   90 CALL SOUND ( 250 , 165 , 7 , 131 , 7 , 330 , 0 ) 
   95 CALL SOUND ( 250 , 147 , 7 , 175 , 7 , 294 , 0 ) 
  100 CALL SOUND ( 1000 , 196 , 7 , 165 , 7 , 523 , 0 ) 
  105 CALL SOUND ( 1000 , 131 , 7 , 330 , 7 , 392 , 0 ) 
  110 CALL SOUND ( 250 , 175 , 7 , 147 , 7 , 349 , 0 ) 
  115 CALL SOUND ( 250 , 165 , 7 , 131 , 7 , 330 , 0 ) 
  120 CALL SOUND ( 250 , 175 , 7 , 147 , 7 , 349 , 0 ) 
  125 CALL SOUND ( 1000 , 147 , 7 , 292 , 7 , 294 , 0 ) 
