  100  !  DER DUNKLE KRISTAL           TRICKFILMVERSUCH     _
  110 CALL CLEAR 
  120 CALL SCREEN ( 15 ) 
  130 CALL MAGNIFY ( 4 ) 
  140 CALL CHAR ( 96 , "0001070D0A0B0B0E0D0D050603030301008080A0B0F0A0A0E060E0C0408080" ) 
  150 CALL CHAR ( 100 , "0000000000030F1F1F0F03" , 102 , "0000000000C0F0F8F8F0C0" ) 
  160 CALL CHAR ( 104 , "00000000030C102020100C030000000000000000C0300804040830C0" ) 
  170 CALL CHAR ( 108 , "001D77FD0101233C03050D010000010780C0E0F0F8F8FCFCFCFCFCFEFEFFFCB0" ) 
  180 CALL CHAR ( 112 , "00000000003CEFFF0F1FFBE79FBD868F00000000000080E0F0F8FCFCFCFCFEC3" ) 
  190 CALL CHAR ( 116 , "0001070F0F0F0F0F0F0F0707030303010080C0E0E0F0F0F0E0E0E0C0C08080" ) 
  200 CALL CHAR ( 120 , "" , 121 , "" , 122 , "00404040" , 123 , "" ) 
  210 CALL CHAR ( 124 , "FFFFFFFFFFFFFFFF3C3C3C3C3C3C3C3C000000FFFF" ) 
  220 CALL SPRITE ( # 14 , 96 , 14 , 80 , 118 , # 15 , 100 , 9 , 106 , 116 , # 16 , 104 , 2 , 106 , 116 , # 5 , 108 , 2 , 140 , 256 , 0 , - 4 ) 
  260 CALL SPRITE ( # 2 , 112 , 11 , 140 , 128 , 0 , - 2 , # 13 , 120 , 16 , 30 , 168 , 1 , - 1 ) 
  266 CALL COINC ( # 13 , # 14 , 1 , T ) 
  267 IF T = 0 THEN 266
  268 CALL DELSPRITE ( # 13 )  :: CALL PATTERN ( # 14 , 116 )  :: CALL COLOR ( # 14 , 16 )  :: CALL SOUND ( 500 , - 7 , 20 )  :: CALL MOTION ( # 5 , 0 , 0 ) 
  269 CALL COLOR ( 12 , 12 , 1 )  :: CALL VCHAR ( 1 , 17 , 124 , 13 ) 
  270 CALL COINC ( # 2 , 140 , 116 , 4 , T ) 
  280 CALL SOUND ( - 200 , 9000 , 0 )  :: IF T = 0 THEN 270
  290 CALL MOTION ( # 2 , 0 , 0 , # 5 , 0 , 3 ) 
  295 CALL PATTERN ( # 2 , 108 , # 5 , 112 ) 
  300 CALL COINC ( # 2 , # 5 , 14 , T ) 
  310 CALL SOUND ( - 200 , 9000 , 0 )  :: IF T = 0 THEN 300
  320 CALL COLOR ( # 2 , 16 , # 5 , 16 ) 
  330 CALL COINC ( # 2 , # 5 , 1 , Y ) 
  340 CALL SOUND ( - 200 , 9000 , 0 )  :: IF Y = 0 THEN 330
  350 CALL MOTION ( # 2 , 0 , 0 , # 5 , 0 , 0 ) 
  365 CALL SOUND ( - 4250 , 9000 , 0 ) 
  370 FOR T = 1 TO 1000  :: NEXT T  :: GOTO 350
