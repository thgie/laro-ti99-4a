  100 CALL CLEAR 
  110 DIM D$ ( 9 ) 
  120 RESTORE 
  130 FOR I = 1 TO 9  :: READ D$ ( I )  :: NEXT I 
  140 DATA `abcde>}~>> , fghij>> , klm>>>> , nop>>*>> , ">qrs>+,-./0>>" , >tuv>>w12>345> 
  150 DATA >>wx>>678>>9:> , >>yz>>>>>>>;<= , >>{|>>>>>>>>>> 
  160 FOR I = 0 TO 14  :: CALL COLOR ( I , 1 , 1 )  :: NEXT I 
  170 CALL SCREEN ( 4 ) 
  200 CALL CHAR ( 96 , "0000000107070F3F000038FCFFFFFF1F00000000F0FFFFFC0000000F18ECEE1C" ) 
  210 CALL CHAR ( 100 , "000000E0FF3F1F1F00000000F8F0E00000000000000103031F1F3F7FFFFFFFFF" ) 
  220 CALL CHAR ( 104 , "FCF8F8F8FDFFFFFF1C38F8FCFCF08CCC1E1800000000000003070707070B0B0B" ) 
  230 CALL CHAR ( 108 , "FFFFFFFFFFFFE0C0FFFCF8F8F0C080800B03030301000000C0C0C3E8F8180C0C" ) 
  240 CALL CHAR ( 112 , "8000C0581800007C0C07030707070707FCFCFEFFFFFFFFFF0000008080E0E0F8" ) 
  250 CALL CHAR ( 116 , "0707070301000000FFFFFFFFFF7F1F1FFCFEFFFFFFFEFCFC1F1F1F1F0F0F0F0F" ) 
  260 CALL CHAR ( 120 , "FCFCF8F0F0F0E0E00F0F0F0F07070707E0C08080808080C00301000000000000" ) 
  270 CALL CHAR ( 124 , "E0F070380000000000000000000102C300000000008137FF0000000000F0FFFF" ) 
  280 CALL CHAR ( 128 , "000000000000FFFF00000000001EFFFE000000020B0B0003071F3D3D117FFFFF" ) 
  290 CALL CHAR ( 132 , "FFFFFFFFFFFFFFFFFEF6C687C3E1F0F80101070707000F1FFFFFDB0D0CF0F0FF" ) 
  300 CALL CHAR ( 136 , "FFC7C3BF3F0307FF3F3F9F9F9FFFFFFFFAFBF399E9EBF6F01F3F7F7F7F7F7F7F" ) 
  310 CALL CHAR ( 140 , "FFF7F7FBFBFDFDFEFFDFE3FCFCFCF8E0FFFFFF3F1F0E0E0EFFFFFFFF1F0F0707" ) 
  320 CALL CHAR ( 42 , "F0F0F0E0C00086C67F7F3F1F00000000FFFFFFFF7F1F1F1F0080E0E0C0808000" ) 
  330 CALL CHAR ( 46 , "0E060503000000000705020105020303C0C1C0091C3C3C3CFFFEFEFEFEFEFEFC" ) 
  340 CALL CHAR ( 50 , "00000000000040C003010100000000003C9E8660380C000000101C06070330B4" ) 
  350 CALL CHAR ( 54 , "0F0F0F0707070703F8F8F1F1F0E0C000C0C0C0800000000001030F3F7F7F7F7F" ) 
  360 CALL CHAR ( 58 , "F6F6FEFEFFFFFEFC7F7FE30301000100FCF8F8F0C103060C0000C0C080000000" ) 
  370 CALL CHAR ( 62 , "" , 92 , "00000010381" ) 
  380 CALL COLOR ( 0 , 2 , 4 , 1 , 2 , 4 , 2 , 13 , 8 , 3 , 13 , 8 , 4 , 13 , 8 , 5 , 2 , 4 , 6 , 2 , 4 , 7 , 2 , 4 ) 
  390 CALL COLOR ( 8 , 2 , 4 , 9 , 13 , 8 , 10 , 13 , 8 , 11 , 13 , 8 , 12 , 13 , 8 , 13 , 13 , 8 , 14 , 13 , 8 ) 
  400 FOR I = 1 TO 9 
  410 DISPLAY AT ( I + 7 , 8 )  : D$ ( I ) 
  420 NEXT I 
  440  ! WS
  460  ! 
  480  ! 
  490 DISPLAY AT ( 3 , 1 )  : "      DENKEN SIE AN DIE           MILLIONENSTAEDTE" 
  500 FOR I = 1 TO 13 
  510 READ Z$ , V , H 
  520 DATA NEW YORK , 70 , 92 , TOKIO , 74 , 165 , PARIS , 70 , 118 , LOS ANGELES , 72 , 75 , MOSKAU , 65 , 129 
  530 DATA LONDON , 67 , 117 , SYDNEY , 112 , 169 , MELBOURNE , 113 , 166 
  540 DATA DELHI , 79 , 146 , RIO DE JANEIRO , 102 , 98 , BUENOS AIRES , 109 , 95 , JOHANNESBURG , 105 , 127 , MEXICO , 80 , 78 , ENDE 
  550 CALL SPRITE ( # I , 92 , 1 , V , H ) 
  560 DISPLAY AT ( 20 , 1 )  :: DISPLAY AT ( 20 , ( 29 - LEN ( Z$ ) ) / 2 )  : Z$ 
  570 FOR J = 1 TO 5  :: CALL SOUND ( - 50 , 440 + I * 6 , 10 )  :: CALL COLOR ( # I , 14 )  :: CALL SOUND ( - 50 , 550 + I * 6 , 10 )  :: CALL COLOR ( # I , 16 )  :: NEXT J 
  580 NEXT I  :: DISPLAY AT ( 20 , 1 ) 
  590 CALL SOUND ( - 4250 , 110 , 10 , - 6 , 0 ) 
  595 CALL SOUND ( - 1000 , 220 , 10 , - 6 , 0 ) 
  600 CALL CHAR ( 92 , "000010281" )  :: CALL P ( 1 ) 
  605 CALL SOUND ( - 1000 , 205 , 10 , - 7 , 0 ) 
  610 CALL CHAR ( 92 , "00102844281" )  :: CALL P ( 1 ) 
  615 CALL SOUND ( - 1000 , 200 , 10 , - 6 , 0 ) 
  620 CALL CHAR ( 92 , "003844544438" )  :: CALL P ( 1 ) 
  625 CALL SOUND ( - 1000 , 190 , 10 , - 6 , 0 ) 
  630 CALL CHAR ( 92 , "384492BA924438" )  :: CALL P ( 1 ) 
  635 CALL SOUND ( - 1000 , 150 , 10 , - 5 , 0 ) 
  640 CALL CHAR ( 92 , "3C4299BDBD99423C" )  :: CALL P ( 1 ) 
  645 CALL SOUND ( - 1000 , 120 , 10 , - 5 , 0 ) 
  650 CALL CHAR ( 92 , "3C7EFFFFFFFF7E3C" )  :: CALL P ( 1 ) 
  655 CALL SOUND ( - 1000 , 110 , 15 , - 5 , 10 ) 
  660 CALL CHAR ( 92 , "2854AA55AA552A14" )  :: CALL P ( 1 ) 
  665 CALL SOUND ( - 1000 , 110 , 20 , - 5 , 20 ) 
  670 CALL CHAR ( 92 , "" ) 
  675 CALL SOUND ( - 1000 , - 5 , 25 ) 
  680 CALL DELSPRITE ( ALL ) 
  700 GOTO 700
 1000 SUB WS 
 1010 CALL SPRITE ( # 1 , 92 , 16 , 96 , 120 ) 
 1020 CALL JOYST ( 1 , X , Y ) 
 1030 CALL MOTION ( # 1 , - Y / 4 , X / 4 ) 
 1040 CALL POSITION ( # 1 , V , H ) 
 1050 DISPLAY AT ( 24 , 10 )  : V  ; H 
 1060 GOTO 1020
 1070 SUBEND 
 2000 SUB P ( X )  :: FOR I = 1 TO X * 100  :: NEXT I  :: SUBEND 
