  100 CALL GCHAR ( 17 , 23 , X )  :: IF X < > 126 THEN PRINT "~ERST LIST DANN RUN !"  :: STOP 
  110 FOR I = 16 TO 22  :: FOR J = 3 TO 30  :: CALL GCHAR ( I , J , Z )  :: A$ = A$ & CHR$ ( Z )  :: NEXT J  :: NEXT I  :: PRINT A$  :: END 
