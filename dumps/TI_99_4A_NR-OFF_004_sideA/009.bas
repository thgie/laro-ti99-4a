    1 CALL CLEAR  :: PRINT TAB ( 8 )  ; "3D-ZEICHNUNG" 
    2 PRINT "    CREATIVE COMPUTING       MORRISTOWN,NEW JERSEY,USA" 
    3 PRINT  :  :  :  : 
    5 DEF FNA ( Z ) = 30 * ( COS ( Z / 16 ) ) - 2 
  110 FOR X = - 30 TO 30 STEP 2.5 
  120 L = 0 
  130 Y1 = 5 * INT ( SQR ( 900 - X * X ) / 5 ) 
  140 FOR Y = Y1 TO - Y1 STEP - 5 
  150 Z = INT ( ( 25 + FNA ( SQR ( X * X + Y * Y ) ) - .7 * Y ) / 2 ) 
  160 IF Z < = L THEN 190
  170 L = Z 
  180 PRINT TAB ( Z )  ; "*"  ; 
  190 NEXT Y 
  200 PRINT "" 
  210 NEXT X 
  300 GOTO 300
