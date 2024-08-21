  100 CALL CLEAR  :: RANDOMIZE  :: CALL CHARSET  :: CALL SCREEN ( 12 )  :: OPTION BASE 1  :: DIM GS ( 4 ) , GN$ ( 10 ) , RG ( 10 ) , RH ( 10 ) , RA ( 10 , 3 ) , PO ( 8 , 8 ) , DI ( 4 , 2 ) , CH$ ( 10 , 3 ) , RF ( 10 , 2 ) 
  110 PRINT "* BITTE BEFOLGEN SIE DIE"  : "  ANWEISUNGEN :"  :  :: OPEN # 1  : "CS1" , INTERNAL , INPUT , FIXED 192  :: DISPLAY AT ( 12 , 1 ) ERASE ALL  : "BITTE GEDULDEN SIE SICH !   DAS EINLESEN DAUERT 9 MIN." 
  120 FOR I = 1 TO 9  :: INPUT # 1  : GN$ ( I ) ,  :: NEXT I  :: INPUT # 1  : GN$ ( 10 ) 
  130 FOR I = 1 TO 10  :: INPUT # 1  : CH$ ( I , 1 ) , CH$ ( I , 1 )  :: INPUT # 1  : CH$ ( I , 3 )  :: NEXT I 
  140 FOR I = 1 TO 9  :: INPUT # 1  : RF ( I , 1 ) , RF ( I , 2 ) ,  :: NEXT I  :: INPUT # 1  : RF ( 10 , 1 ) , RF ( 10 , 2 ) 
  150 FOR I = 96 TO 116 STEP 4  :: INPUT # 1  : Z$  :: CALL CHAR ( I , Z$ )  :: NEXT I 
  155 CLOSE # 1 
  160 FOR I = 1 TO 10 
  170 RG ( I ) = INT ( 10 * RND ) + 1 
  180 FOR J = 1 TO I - 1  :: IF RG ( J ) = RG ( I ) THEN 170
  190 NEXT J  :: NEXT I 
  200 FOR I = 1 TO 10 
  210 RH ( I ) = INT ( 10 * RND ) + 1 
  220 FOR J = 1 TO I - 1  :: IF RH ( J ) = RH ( I ) THEN 210
  230 NEXT J  :: NEXT I 
  235 RESTORE 
  240 FOR I = 1 TO 8  :: FOR J = 1 TO 8  :: READ PO ( I , J )  :: NEXT J  :: NEXT I 
  250 DATA 0 , 1 , 0 , 2 , 0 , 0 , 0 , 0 , 0 , 11 , 0 , 11 , 0 , 11 , 0 , 0 , 3 , 11 , 0 , 11 , 12 , 11 , 11 , 4 , 0 , 11 , 0 , 5 , 0 , 0 , 6 , 0 
  260 DATA 0 , 11 , 7 , 11 , 0 , 0 , 11 , 8 , 0 , 12 , 0 , 0 , 0 , 0 , 11 , 0 , 9 , 11 , 10 , 11 , 11 , 11 , 11 , 0 , 0 , 12 , 0 , 0 , 0 , 0 , 0 , 0 
  270 FOR I = 1 TO 10 
  280 J = INT ( 5 * RND ) + 1 
  290 IF J < 4 THEN RA ( I , 1 ) = J  :: RA ( I , 2 ) = J + 1  :: RA ( I , 3 ) = J + 2  :: GOTO 320
  300 IF J < 5 THEN RA ( I , 1 ) = J  :: RA ( I , 2 ) = J + 1  :: RA ( I , 3 ) = 6  :: GOTO 320
  310 IF J = 5 THEN RA ( I , 1 ) = J  :: RA ( I , 2 ) , RA ( I , 3 ) = 6 
  320 NEXT I 
  330 DI ( 1 , 2 ) , DI ( 2 , 1 ) = - 1  :: DI ( 3 , 1 ) , DI ( 4 , 2 ) = 1 
  340 X , Y = 8  :: GS ( 1 ) , GS ( 2 ) , GS ( 3 ) , GS ( 4 ) = 0  :: GZ = 1 
  350  ! 
  360  !  ** HAUPTPROGRAMM **
  370  ! 
