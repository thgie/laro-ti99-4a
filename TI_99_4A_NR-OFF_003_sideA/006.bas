   10 RANDOMIZE  :: CALL CHARSET  :: CALL SCREEN ( 12 )  :: OPTION BASE 1  :: DIM GS ( 4 ) , PO ( 8 , 8 ) , FV ( 4 ) , CH$ ( 5 , 3 ) 
   20 DISPLAY AT ( 1 , 8 ) ERASE ALL  : "MONSTERIRRGARTEN"  :  : "   @ 1984 BY LARO SCHATZER" 
   30 CALL MAGNIFY ( 2 )  :: DISPLAY AT ( 10 , 9 )  : "BITTE WARTEN"  :  : "   DAS EINLESEN DAUERT CA"  :  : "        20 SEKUNDEN" 
   40 FOR I = 1 TO 10  :: READ GN$ ( I )  :: NEXT I 
   45 FOR I = 1 TO 5  :: FOR J = 1 TO 3  :: READ C$ ( I , J )  :: NEXT J  :: NEXT I 
   50 FOR I = 1 TO 10  :: READ FH ( I )  :: NEXT I 
   60 FOR I = 1 TO 4  :: READ FV ( I )  :: NEXT I 
   70 FOR I = 1 TO 10  :: READ FG ( I )  :: NEXT I 
   80 READ Z , Z$  :: IF Z < > 0 THEN CALL CHAR ( Z , Z$ )  :: GOTO 80
   90 Z$ = "" 
  100 DATA PLAN , BRILLE , TARNKAPPE , GIFT , SCHWERT , SPEER , BEIL , BOMBE , FLUEGEL , ZAUBERSTAB 
  110 DATA 010103070606060F1F3F7DFFEFEDEEEFC0BF7FE4F5FFFF6A6A6A6A6A3B3B1B0E , 8080C0C0606060F0F83CBEFFF7B370F038B8D8E8E8E8E8D8D8D8D899B9B87A7A 
  120 DATA 000000000000010303020206FAFACC0808101020202040404080800000000000 
  130 DATA 0307070E1E3E3E7E7E7EFEFEFDFDFBFB7B777777775F5F5756060E7E1B300000 , C381003CFF9999FFA5BDFF7EFFFFFFFFFFFFFFFFFFFF3C181818187E5A180000 
  140 DATA C0E06070787C7C7E7E7F7F7F7FBFBFDFDFDEEEEEFEFAFA6A6A60707EDA8C0000 
  150 DATA 000060387D2E1FE75FB8301C0B0B1F010103000000000E151B2A6E60F0FFFF7F , 00000000C061E3FFEF3F3F3FFFFF8F7F7F8F0F0F1F1F3F3F7F7F700F7FFFFFFE 
  160 DATA 000000007080F080F8C0F8C0FCF0FCF8F8F8F8F8F8F8F8F8F8F8F8F0F0E08000 
  170 DATA 000001070D0F0748906000000000000000000000000F1F1F000F1F1F000F1F1F , 0000C0F0F83C1E0F0F070703030301010101010103FFFFFF00FFFFFF00FFFFFF 
  180 DATA 0000000000000000008080C0C0C0E0E0E0E0E0E0E0C0C0800080800000808000 
  190 DATA 000000000000F0FC7E777B7C7F3F3F3F3F1F1F1F1F1F0F070100000000000000 , 101038387C7C547C447DFFFEFFEFD7EFD7EFFFFFFFFFFFFFFF7C000000000000 
  200 DATA 0000000000001E3EFCDCBC7CFCF8F8F8F8F0F0F0F0F0E0C00000000000000000 
  210 DATA 15 , 14 , 10 , 6 , 7 , 8 , 3 , 16 , 13 , 16 
  220 DATA 4 , 16 , 2 , 5 
  230 DATA 8 , 16 , 14 , 4 , 16 , 15 , 6 , 5 , 8 , 16 
  240 DATA 96 , 00000000030F3FFF030F3FFFFFFFFFFFFFFFFFFFFFFFFFFFC0F0FCFFFFFFFFFF , 100 , 00000000C0F0FCFF000000181800000000001824241800003C4281818181423C 
  250 DATA 104 , 0101030307070F0F1F1F3F3F1F0F01018080C0C0E0E0F0F0F8F8FCFCF8F08080 , 108 , 0000030F1F1F1B1A1A1A1A1A1A1E03000000C0F0F8F8D858585858585878C000 
  260 DATA 112 , 000022652A34A36B352529F50F01010100000024C854684F7892DCA0F8808080 , 120 , D2D2D2D2D2D2D2D24B4B4B4B4B4B4B4B0000007EBF7E00000000001166BA4400 
  270 DATA 124 , 00183C24243C3C3C7F41495D4949417F804020100E0C0A00000040FF40000000 , 128 , 00107834120100000000205048183C18006CFE6C6C2828000058182482112000 
  280 DATA 36 , 00000000000000FF0101010101010101FF000000000000008080808080808080 
  290 DATA 44 , 10387C101010101008080808083E1C0800002060FF602000000406FF0604 , 116 , 000000000F0F1F1F3F3F3F3F3F3F1F0F0000000000C0E0E0F0FCFCFCFCFCFCF8 
  300 DATA 93 , FFFFFFFFFFFFFFFF00BFBFBFBFBFBFBF00FDFDFDFDFDFDFD 
  310 DATA 0 , 0 
  320 FOR I = 1 TO 10  :: RG ( I ) = INT ( 10 * RND + 1 )  :: NEXT I 
  330 RESTORE 360
  340 FOR I = 1 TO 8  :: FOR J = 1 TO 8  :: READ PO ( I , J )  :: IF PO ( I , J ) = 0 THEN IF RND < .25 THEN PO ( I , J ) = - INT ( 10 * RND + 1 ) 
  350 NEXT J  :: NEXT I 
  360 DATA 10 , 0 , 0 , 9 , 0 , 0 , 0 , 0 , 0 , 11 , 0 , 11 , 0 , 11 , 0 , 0 , 8 , 11 , 0 , 11 , 12 , 11 , 11 , 7 , 0 , 0 , 0 , 6 , 0 , 0 , 5 , 0 
  370 DATA 12 , 11 , 4 , 11 , 11 , 0 , 11 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , 11 , 0 , 2 , 11 , 3 , 11 , 12 , 11 , 11 , 0 , 0 , 0 , 0 , 0 , 0 , 1 , 0 , 0 
  380 FOR I = 1 TO 10  :: RA ( I ) = INT ( 4 * RND + 1 )  :: NEXT I 
  390 C1 = 1  :: X , Y = 8  :: GS ( 1 ) = INT ( RND * 8 + 3 )  :: GS ( 2 ) = INT ( RND * 2 + 1 )  :: GS ( 3 ) = INT ( RND * 3 + 8 )  :: GS ( 4 ) = 0  :: HO = 0  :: VE = 1 
  400 CALL CLEAR 
  410 CALL COLOR ( 0 , 16 , 1 , 1 , 8 , 1 , 2 , 10 , 1 , 9 , 12 , 1 , 10 , 3 , 2 , 11 , 3 , 2 , 12 , 6 , 1 ) 
  420 FOR I = 3 TO 8  :: CALL COLOR ( I , 16 , 1 )  :: NEXT I 
  430 CALL SCREEN ( 2 ) 
  440 CALL VCHAR ( 2 , 3 , 37 , 16 )  :: CALL HCHAR ( 1 , 4 , 36 , 2 )  :: CALL VCHAR ( 2 , 6 , 39 , 13 )  :: CALL HCHAR ( 13 , 4 , 36 , 2 )  :: CALL HCHAR ( 14 , 6 , 36 , 14 ) 
  450 CALL HCHAR ( 18 , 4 , 38 , 16 )  :: CALL VCHAR ( 15 , 16 , 37 , 3 )  :: CALL HCHAR ( 16 , 21 , 44 )  :: CALL HCHAR ( 15 , 23 , 93 , 6 ) 
  460 CALL HCHAR ( 17 , 23 , 48 , 6 )  :: CALL HCHAR ( 14 , 5 , 37 )  :: CALL VCHAR ( 15 , 20 , 39 , 3 )  :: CALL HCHAR ( 22 , 1 , 36 , 32 )  :: CALL HCHAR ( 24 , 1 , 38 , 32 ) 
  470 FOR I = 1 TO 4  :: IF GS ( I ) = 0 THEN 490
  480 CALL SPRITE ( # 20 + I , 121 + GS ( I ) , FG ( GS ( I ) ) , 22 * I - 11 , 25 )  :: NEXT I 
  490  ! 
  500 GOSUB 1900
  510 IF X - VE < 1 OR X - VE > 8 OR Y + HO < 1 OR Y + HO > 8 THEN 870
  520 PO1 = PO ( X - VE , Y + HO )  :: XG = X - VE  :: YG = Y + HO 
  530 IF VE = 1 THEN CALL HCHAR ( 16 , 21 , 44 ) ELSE IF VE = - 1 THEN CALL HCHAR ( 16 , 21 , 45 ) 
  540 IF HO = - 1 THEN CALL HCHAR ( 16 , 21 , 47 ) ELSE IF HO = 1 THEN CALL HCHAR ( 16 , 21 , 46 ) 
  550 IF PO1 > 10 THEN 850
  555 IF X - VE = 1 AND Y + HO = 1 THEN CALL COLOR ( 9 , 16 , 1 )  :: F9 = 16 ELSE CALL COLOR ( 9 , 12 , 1 )  :: F9 = 12 
  560 DISPLAY AT ( 8 , 9 )  : "`abbbbbbbbbbbcd"  :: DISPLAY AT ( 9 , 7 )  : "`abbbbbbbbbbbbbbbcd"  :: DISPLAY AT ( 10 , 5 )  : "`abbbbbbbbbbbbbbbbbbbcd" 
  570 DISPLAY AT ( 11 , 5 )  : "bbbbbbbbbbbbbbbbbbbbbbb"  :: DISPLAY AT ( 12 , 5 )  : "bbbbbbbbbbbbbbbbbbbbbbb"  :: DISPLAY AT ( 13 , 5 )  : "bbbbbbbbbbbbbbbbbbbbbbb" 
  580 IF PO1 = 0 THEN 920ELSE IF PO1 < 0 THEN 740
  590 IF PO1 > 5 THEN PO3 = PO1 - 5 ELSE PO3 = PO1 
  610 CALL CHAR ( 132 , C$ ( PO3 , 1 ) , 136 , C$ ( PO3 , 2 ) , 140 , C$ ( PO3 , 3 ) ) 
  620 CALL COLOR ( 13 , 2 , 1 , 14 , 2 , 1 ) 
  630 DISPLAY AT ( 4 , 15 )  : CHR$ ( 132 )  ; CHR$ ( 136 )  ; CHR$ ( 140 )  ;  :: DISPLAY AT ( 5 , 15 )  : CHR$ ( 133 )  ; CHR$ ( 137 )  ; CHR$ ( 141 )  ; 
  640 DISPLAY AT ( 6 , 15 )  : CHR$ ( 134 )  ; CHR$ ( 138 )  ; CHR$ ( 142 )  ;  :: DISPLAY AT ( 7 , 15 )  : CHR$ ( 135 )  ; CHR$ ( 139 )  ; CHR$ ( 143 )  ; 
  650 CALL COLOR ( 13 , FH ( PO1 ) , 1 , 14 , FH ( PO1 ) , 1 ) 
  660 CALL VCHAR ( 1 , 9 , 120 , 9 )  :: CALL VCHAR ( 1 , 10 , 121 , 9 )  :: CALL VCHAR ( 1 , 14 , 120 , 7 )  :: CALL VCHAR ( 1 , 15 , 121 , 7 ) 
  670 CALL VCHAR ( 1 , 21 , 120 , 7 )  :: CALL VCHAR ( 1 , 22 , 121 , 7 )  :: CALL VCHAR ( 1 , 26 , 120 , 9 )  :: CALL VCHAR ( 1 , 27 , 121 , 9 ) 
  680 RA1 = RA ( PO1 )  :: CALL COLOR ( 10 , FV ( RA1 ) , F9 , 11 , FV ( RA1 ) , F9 )  :: Z9 = RA1 * 4 + 100 
  690 DISPLAY AT ( 9 , 11 )  : CHR$ ( Z9 )  ; CHR$ ( Z9 + 2 )  ;  :: DISPLAY AT ( 10 , 11 )  : CHR$ ( Z9 + 1 )  ; CHR$ ( Z9 + 3 )  ; 
  700 DISPLAY AT ( 9 , 20 )  : CHR$ ( Z9 )  ; CHR$ ( Z9 + 2 )  ;  :: DISPLAY AT ( 10 , 20 )  : CHR$ ( Z9 + 1 )  ; CHR$ ( Z9 + 3 )  ; 
  710 DISPLAY AT ( 11 , 8 )  : CHR$ ( Z9 )  ; CHR$ ( Z9 + 2 )  ;  :: DISPLAY AT ( 12 , 8 )  : CHR$ ( Z9 + 1 )  ; CHR$ ( Z9 + 3 )  ; 
  720 DISPLAY AT ( 11 , 23 )  : CHR$ ( Z9 )  ; CHR$ ( Z9 + 2 )  ;  :: DISPLAY AT ( 12 , 23 )  : CHR$ ( Z9 + 1 )  ; CHR$ ( Z9 + 3 )  ; 
  730  ! 
  740 IF PO1 < 0 THEN GG = - PO1 ELSE GG = RG ( PO1 ) 
  750 IF GG < 9 THEN 830
  760 IF WA = 0 THEN 920ELSE IF GS ( WA ) < > 2 THEN 920
  770 CALL SPRITE ( # 10 , 121 + GG , F9 , INT ( 55 + 35 * RND ) , INT ( 111 + 42 * RND ) ) 
  775 IF F9 = 12 THEN F8 = 11 ELSE F8 = 15 
  780 CALL SPRITE ( # 11 , 93 , F8 , 116 , 132 ) 
  790 CALL KEY ( 3 , K , S )  :: BX , BY = 0  :: IF K = 88 THEN BX = 4 ELSE IF K = 69 THEN BX = - 4 
  800 IF K = 68 THEN BY = 4 ELSE IF K = 83 THEN BY = - 4 
  810 CALL MOTION ( # 11 , BX , BY )  :: CALL COINC ( # 10 , # 11 , 2 , CO )  :: IF CO = 0 THEN 790
  820 CALL SOUND ( 500 , 440 , 5 )  :: CALL COLOR ( # 10 , 16 )  :: CALL DELSPRITE ( # 11 )  :: NE = 1  :: GOTO 920
  830 IF GG > 0 THEN CALL SPRITE ( # 10 , 121 + GG , 2 , 81 , 127 ) ELSE 920
  840 NE = 1  :: GOTO 920
  850 FOR I = 3 TO 11 STEP 2  :: CALL HCHAR ( I , 7 , 94 , 23 )  :: CALL HCHAR ( I + 1 , 7 , 95 , 23 )  :: NEXT I  :: CALL HCHAR ( 13 , 7 , 98 , 23 ) 
  860 GOTO 920
  870 CALL HCHAR ( 13 , 7 , 98 , 23 )  :: FOR I = 7 TO 28 STEP 3  :: CALL VCHAR ( 2 , I , 120 , 11 )  :: CALL VCHAR ( 2 , I + 1 , 121 , 11 )  :: NEXT I 
  880 GOTO 920
  890 CALL HCHAR ( 23 , C1 , 32 )  :: C1 = C1 + 1  :: IF C1 > 32 THEN C1 = 1 
  900 CALL HCHAR ( 23 , C1 , 30 ) 
  910 RETURN 
  920 DISPLAY AT ( 19 , 1 )  : "BEFEHL?"  :  :  : 
  930 GOSUB 890 :: CALL KEY ( 3 , K , S )  :: IF S < = 0 THEN 930
  940 ON POS ( "GSBXVN" , CHR$ ( K ) , 1 ) + 1 GOTO 930, 950, 960, 970, 980, 990, 1000
  950 DISPLAY AT ( 21 , 1 )  : "GEHE NACH"  :: PX = 11  :: GOTO 1010
  960 DISPLAY AT ( 21 , 1 )  : "SIEHE NACH"  :: PX = 12  :: GOTO 1260
  970 DISPLAY AT ( 21 , 1 )  : "BENUTZE"  :: PX = 9  :: GOTO 1300
  980 DISPLAY AT ( 21 , 1 )  : "VERLIERE"  :: PX = 10  :: GOTO 1520
  990 DISPLAY AT ( 21 , 1 )  : "VERSORGE"  :: PX = 10  :: GOTO 1590
 1000 DISPLAY AT ( 21 , 1 )  : "NIMM"  :: PX = 6  :: GOTO 1640
 1010 GOSUB 1730
 1020 IF K = 7 THEN 920
 1040 IF X - VE < 1 OR X - VE > 8 OR Y + HO < 1 OR Y + HO > 8 THEN 1010
 1050 IF PO ( X - VE , Y + HO ) = 11 THEN 1010
 1060 X = X - VE  :: Y = Y + HO  :: PU = PU + 25  :: GOSUB 1880
 1070 P4 = PO ( X , Y )  :: IF P4 < = 0 THEN 490
 1080 IF P4 = 12 THEN 490
 1090 IF WA = 0 THEN 1910
 1100 W = GS ( WA ) 
 1110 ON P4 GOTO 1160, 1170, 1180, 1240, 1190, 1200, 1210, 1220, 1250, 1230
 1120 IF SI = 0 THEN 1910
 1130 IF SI = - 2 THEN 1150
 1135 IF X = 1 AND Y = 1 THEN 1930
 1140 PO ( X , Y ) = - RG ( P4 )  :: CALL SOUND ( 1000 , - 6 , 10 )  :: FOR I = 1 TO 20  :: CALL COLOR ( 13 , 16 , 1 , 14 , 16 , 1 )  :: CALL COLOR ( 13 , 2 , 1 , 14 , 2 , 1 )  :: NEXT I 
 1150 PU = PU + P4 * 15  :: GOSUB 1880 :: CALL DELSPRITE ( # 20 + WA )  :: GS ( WA ) , WA = 0  :: GOTO 490
 1160 SI = ( W = 3 ) * 2 OR W = 5 OR W = 8 OR W = 10 OR W = 6  :: GOTO 1120
 1170 SI = ( W = 3 ) * 2 OR W = 7 OR W = 5 OR W = 6 OR W = 10  :: GOTO 1120
 1180 SI = W = 5 OR W = 4 OR W = 7 OR W = 10 OR W = 8  :: GOTO 1120
 1190 SI = ( W = 3 ) * 2 OR W = 6 OR W = 10  :: GOTO 1120
 1200 SI = ( W = 3 ) * 2 OR W = 5 OR W = 10 OR W = 6  :: GOTO 1120
 1210 SI = W = 7 OR W = 5 OR W = 10  :: GOTO 1120
 1220 SI = W = 7 OR W = 4 OR W = 10  :: GOTO 1120
 1230 SI = W = 10  :: GOTO 1120
 1240 SI = W = 5 OR W = 6 OR W = 7 OR W = 4  :: GOTO 1120
 1250 SI = W = 7 OR W = 5 OR W = 4  :: GOTO 1120
 1260  ! 
 1270 GOSUB 1730
 1280 IF K = 7 THEN 920
 1290 GOTO 490
 1300 IF WA < > 0 THEN IF GS ( WA ) = 1 THEN 1420ELSE 920
 1310 GOSUB 1820
 1320 IF K = 7 THEN 920
 1330 IF GS ( 1 ) = 0 AND GS ( 2 ) = 0 AND GS ( 3 ) = 0 AND GS ( 4 ) = 0 THEN 920
 1340 IF GS ( K1 ) = 0 THEN 1310
 1350 PU = PU + 10  :: GOSUB 1880
 1360 CALL MOTION ( # 20 + K1 , 8 , 0 )  :: T = 110  :: T1 = 2 ^ ( 1 / 12 ) 
 1370 CALL SOUND ( - 1000 , T , 10 )  :: T = T * T1  :: CALL COINC ( # 20 + K1 , 116 , 25 , 4 , CO )  :: IF CO = 0 THEN 1370
 1380 WA = K1  :: CALL MOTION ( # 20 + K1 , 0 , 0 )  :: CALL LOCATE ( # 20 + K1 , 116 , 25 )  :: CALL MOTION ( # 20 + K1 , 0 , 8 ) 
 1390 CALL SOUND ( - 500 , T , 10 )  :: T = T * T1  :: CALL COINC ( # 20 + K1 , 116 , 132 , 4 , CO )  :: IF CO = 0 THEN 1390
 1400 CALL MOTION ( # 20 + K1 , 0 , 0 )  :: CALL LOCATE ( # 20 + K1 , 116 , 132 )  :: CALL SOUND ( 1 , 110 , 30 )  :: IF GS ( WA ) < > 1 AND GS ( WA ) < > 9 THEN 920
 1410 IF GS ( WA ) = 9 THEN 1460
 1420 GOSUB 1900
 1430 CALL HCHAR ( 3 , 12 , 98 , 10 )  :: CALL HCHAR ( 12 , 12 , 98 , 10 )  :: CALL VCHAR ( 4 , 12 , 98 , 8 )  :: CALL VCHAR ( 4 , 21 , 98 , 8 ) 
 1440 FOR I = 1 TO 8  :: FOR J = 1 TO 8  :: Z = 32  :: IF PO ( I , J ) > 10 THEN Z = 98 ELSE IF PO ( I , J ) > 0 THEN Z = 93 
 1450 CALL HCHAR ( I + 3 , J + 12 , Z )  :: NEXT J  :: NEXT I  :: GOTO 920
 1460 X = X - 2 * VE  :: Y = Y + 2 * HO 
 1470 IF X < 1 THEN X = 1 
 1480 IF X > 8 THEN X = 8 
 1490 IF Y < 1 THEN Y = 1 
 1500 IF Y > 8 THEN Y = 8 
 1510 CALL DELSPRITE ( # 20 + WA )  :: GS ( WA ) , WA = 0  :: GOTO 1070
 1520 GOSUB 1830
 1530 IF K = 7 THEN 920
 1540 IF GS ( K1 ) = 0 THEN 920
 1550 IF K1 = WA THEN WA = 0 
 1560 PU = PU + 50  :: GOSUB 1880
 1570 CALL SOUND ( 1500 , - 5 , 10 )  :: CALL COLOR ( # 20 + K1 , 16 )  :: FOR I = 1 TO 15  :: FOR J = 101 TO 103  :: CALL PATTERN ( # 20 + K1 , J )  :: NEXT J  :: NEXT I 
 1580 GS ( K1 ) = 0  :: CALL DELSPRITE ( # 20 + K1 )  :: GOTO 920
 1590 IF WA = 0 THEN 920
 1600 DISPLAY AT ( 21 , PX )  : GN$ ( GS ( WA ) ) 
 1610 PU = PU - 15  :: GOSUB 1880
 1620 T = 5000  :: T1 = 2 ^ ( 1 / 3 )  :: CALL COLOR ( # 20 + WA , 16 )  :: FOR I = 1 TO 15  :: CALL SOUND ( - 50 , T , 10 )  :: T = T / T1  :: NEXT I 
 1630 CALL LOCATE ( # 20 + WA , 22 * WA - 11 , 25 )  :: CALL COLOR ( # 20 + WA , FG ( GS ( WA ) ) )  :: WA = 0  :: GOTO 920
 1640 IF NE = 0 OR ( GS ( 1 ) < > 0 AND GS ( 2 ) < > 0 AND GS ( 3 ) < > 0 AND GS ( 4 ) < > 0 ) THEN 920
 1650 PU = PU - 5  :: GOSUB 1880
 1660 CALL COLOR ( # 10 , 16 ) 
 1670 T = 110  :: T1 = 2 ^ ( 1 / 6 )  :: FOR I = 1 TO 20  :: CALL SOUND ( - 50 , T , 10 )  :: T = T * T1  :: NEXT I 
 1680 FOR I = 1 TO 4  :: IF GS ( I ) = 0 THEN 1700
 1690 NEXT I  :: STOP 
 1700 GS ( I ) = GG  :: IF PO1 < 0 THEN PO ( XG , YG ) = 0 ELSE RG ( PO1 ) = 0 
 1710 CALL DELSPRITE ( # 10 )  :: CALL SPRITE ( # 20 + I , 121 + GS ( I ) , FG ( GS ( I ) ) , 22 * I - 11 , 25 )  :: GOTO 920
 1720 STOP 
 1730  ! 
 1740 DISPLAY AT ( 21 , PX ) 
 1750 GOSUB 890 :: CALL KEY ( 3 , K , S )  :: IF S < = 0 THEN 1750
 1760 IF K = 7 THEN RETURN 
 1770 ON POS ( "NOSW" , CHR$ ( K ) , 1 ) + 1 GOTO 1750, 1780, 1790, 1800, 1810
 1780 DISPLAY AT ( 21 , PX )  : "NORDEN"  :: VE = 1  :: HO = 0  :: RETURN 
 1790 DISPLAY AT ( 21 , PX )  : "OSTEN"  :: VE = 0  :: HO = 1  :: RETURN 
 1800 DISPLAY AT ( 21 , PX )  : "SUEDEN"  :: VE = - 1  :: HO = 0  :: RETURN 
 1810 DISPLAY AT ( 21 , PX )  : "WESTEN"  :: VE = 0  :: HO = - 1  :: RETURN 
 1820 DISPLAY AT ( 21 , PX ) 
 1830 GOSUB 890 :: CALL KEY ( 3 , K , S )  :: IF S < = 0 THEN 1830
 1840 IF K = 7 THEN RETURN 
 1850 IF K < 49 OR K > 52 THEN 1830
 1860 K1 = K - 48  :: IF GS ( K1 ) < > 0 THEN DISPLAY AT ( 21 , PX )  : GN$ ( GS ( K1 ) ) 
 1870 RETURN 
 1880 IF PU < 0 THEN PU = 0 
 1890 A$ = "0" & STR$ ( PU )  :: DISPLAY AT ( 17 , 27 - LEN ( A$ ) )  : A$  ;  :: RETURN 
 1900 CALL DELSPRITE ( # 10 )  :: NE = 0  :: FOR I = 1 TO 13  :: CALL HCHAR ( I , 7 , 32 , 23 )  :: NEXT I  :: RETURN 
 1910 CALL SOUND ( - 4250 , - 7 , 0 )  :: FOR I = 1 TO 30  :: CALL SCREEN ( 10 )  :: CALL SCREEN ( 2 )  :: NEXT I  :: CALL CLEAR 
 1920 GOTO 1970
 1930 CALL SCREEN ( 4 ) 
 1940 T = 110  :: T1 = 2 ^ ( 1 / 12 ) 
 1950 FOR I = 1 TO 20  :: CALL SOUND ( - 1000 , T , 0 , T * 2 , 0 , T * 3 , 0 )  :: T = T * T1  :: NEXT I 
 1960 FOR I = 1 TO 10  :: CALL SCREEN ( 2 )  :: CALL SCREEN ( 16 )  :: CALL SCREEN ( 2 )  :: NEXT I 
 1970 CALL DELSPRITE ( ALL )  :: CALL CLEAR  :: CALL CHARSET  :: CALL SCREEN ( 8 )  :: DISPLAY AT ( 12 , 6 )  : "NOCH EIN SPIEL (J/N)" 
 1980 CALL KEY ( 3 , K , S )  :: IF S < = 0 THEN 1980
 1990 IF K = 74 THEN RUN ELSE IF K < > 78 THEN 1980
 2000 END 
