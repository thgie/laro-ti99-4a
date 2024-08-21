   10 REM  BALLADE POUR ADELINE 
   15 CALL CLEAR 
   20 FOR I = 1 TO 14 
   25 CALL COLOR ( I , 16 , 1 ) 
   30 NEXT I 
   35 CALL SCREEN ( 5 ) 
   40 PRINT "    BALLADE POUR ADELINE"  :  :  :  :  :  :  :  :  :  :  :  :  : 
   42 G = 600 
   45 FOR I = 1 TO 4 
   50 CALL SOUND ( G / 4 , 262 , 15 ) 
   55 CALL SOUND ( G / 4 , 262 , 15 , 392 , 15 ) 
   60 CALL SOUND ( G / 4 , 262 , 15 , 523 , 15 ) 
   65 CALL SOUND ( G / 4 , 587 , 15 ) 
   70 NEXT I 
   75 FOR I = 1 TO 4 
   80 CALL SOUND ( G / 4 , 262 , 15 ) 
   85 CALL SOUND ( G / 4 , 262 , 15 , 392 , 15 ) 
   90 CALL SOUND ( G / 4 , 262 , 15 , 659 , 15 ) 
   95 CALL SOUND ( G / 4 , 392 , 15 ) 
  100 NEXT I 
  105 GOSUB 1000
  995 STOP 
 1000 CALL SOUND ( G / 2 , 131 , 15 , 392 , 15 , 659 , 15 ) 
 1005 CALL SOUND ( G / 2 , 196 , 15 ) 
 1010 CALL SOUND ( G / 2 , 330 , 15 , 392 , 15 , 659 , 15 ) 
 1015 CALL SOUND ( G / 2 , 196 , 15 , 392 , 15 , 659 , 15 ) 
 1020 CALL SOUND ( G / 2 , 330 , 15 , 392 , 15 , 659 , 15 ) 
 1025 CALL SOUND ( G / 2 , 196 , 15 ) 
 1030 CALL SOUND ( G / 2 , 330 , 15 , 392 , 15 , 659 , 15 ) 
 1035 CALL SOUND ( G / 4 , 196 , 15 , 392 , 15 , 659 , 15 ) 
 1040 CALL SOUND ( G / 8 , 196 , 15 , 440 , 15 , 698 , 15 ) 
 1045 CALL SOUND ( G / 8 , 196 , 15 ) 
 1050 CALL SOUND ( G / 2 , 147 , 15 , 440 , 15 , 698 , 15 ) 
 1055 CALL SOUND ( G / 2 , 220 , 15 ) 
 1060 CALL SOUND ( G / 2 , 147 , 15 , 440 , 15 , 698 , 15 ) 
 1065 CALL SOUND ( G / 2 , 220 , 15 , 440 , 15 , 698 , 15 ) 
 1070 RETURN 
