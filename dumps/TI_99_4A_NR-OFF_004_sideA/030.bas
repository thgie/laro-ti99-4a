    5 ON WARNING NEXT 
    7 ON ERROR 8000
   10 CALL CLEAR  :: CALL SCREEN ( 4 ) 
   12 DISPLAY AT ( 1 , 1 )  : " TI-PITFALL(EXTENDED BASIC)  " & RPT$ ( "=" , 26 ) 
   14 DISPLAY AT ( 4 , 1 )  : "VERSUCHEN SIE SICH DURCH    DEN URWALD ZU SCHLAGEN UND  IN DIE GEHEIMNISUMWITTERTE  PIT-PYRAMIDE EINZUDRINGEN." 
   16 DISPLAY AT ( 9 , 1 )  : "ERREICHEN SIE DEN GOLDSCHATZ"  :  : "UND WERDEN SIE REICH !!"  :  : "NUR DEN WEG ZUR PIT-PYRAMIDEMUESSEN SIE SELBER FINDEN!" 
   18 DISPLAY AT ( 15 , 1 )  :  : "FALLS SIE UMKOMMEN,WERDEN   IHRE NAECHSTEN VERWANDTEN   UMGEHEND BENACHRICHTIGT."  :  : "   VIEL GLUECK!!!" 
  150 DISPLAY AT ( 22 , 4 )  : "ANZAHL SPIELER(1/2):1" 
  160 ACCEPT AT ( 22 , 24 ) BEEP SIZE ( - 1 ) VALIDATE ( "12" )  : SPIELER 
  170 DIM PU ( 2 )  :: PU ( 1 ) , PU ( 2 ) = 0 
  200 CALL CLEAR  :: CALL SCREEN ( 2 )  :: CALL MAGNIFY ( 4 )  :: RESTORE 10000
  202 RANDOMIZE  :: DEF IR ( X ) = INT ( ( 2.5 * X + 1 ) * RND - X ) 
  203 DEF GS = ( ( PU ( [ ) / 200 ) < 10 ) * PU ( [ ) / - 200 + ( PU ( [ ) / 200 > = 10 ) * - 10 
  205 D = 1  :: CALL COLOR ( 1 , 12 , 2 , 2 , 2 , 12 , 13 , 12 , 6 , 14 , 12 , 6 , 5 , 4 , 13 , 6 , 2 , 7 , 8 , 8 , 1 ) 
  250 READ Z , Z$  :: IF Z THEN CALL CHAR ( Z , Z$ )  :: GOTO 250
  290 [ = 1 
  300 REM  PITFALL
  400 GOSUB 9000
  410 ON ( D + 27 ) / 28 GOTO 430, 1100, 2000
  430 GOSUB 9810
  440 CALL SPRITE ( # 1 , 104 , 12 , 103 , 41 , # 8 , 96 , 16 , 66 , 10 , # 2 , 112 , 15 , 151 , 235 , 0 , - 9 + IR ( 2 ) - GS ) 
  442 CALL SPRITE ( # 7 , 76 , 2 , 86 , 100 , # 6 , 76 , 2 , 86 , 132 ) 
  445 CALL SPRITE ( # 5 , 108 , 16 , 16 , 1 , 0 , 10 , # 3 , 104 , 12 , 103 , 186 , # 4 , 80 , 2 , 58 , 255 , 0 , - 11 + IR ( 2 ) - GS ) 
  450 GOSUB 9600
  460 CALL COINC ( # 8 , 66 , 41 , 5 , O )  :: CALL COINC ( # 8 , 66 , 186 , 5 , O1 )  :: IF NOT O THEN 465
  463 FA = 41  :: FA1 = 66  :: FA2 = 144  :: GOSUB 9100 :: GOTO 600
  465 IF NOT O1 THEN 470
  467 FA = 186  :: FA1 = 66  :: FA2 = 144  :: GOSUB 9100 :: GOTO 590
  470 IF K = 18 THEN CO = 5  :: GOSUB 700
  480 GOSUB 9650
  485 CALL COINC ( # 8 , 66 , 116 , 32 , O )  :: CALL COINC ( # 8 , # 4 , 10 , O1 )  :: IF O OR O1 THEN 900
  486 CALL COINC ( # 8 , 66 , 5 , 8 , O )  :: IF O THEN IF X = - 4 THEN X = 0 
  490 CALL MOTION ( # 8 , 0 , 2 * X )  :: GOTO 450
  590 WW = 17  :: SS = 4  :: WII = 3  :: GOSUB 9400 :: WEG = 1 
  600 GOSUB 9600
  611 GOSUB 9650
  615 CALL COINC ( # 8 , # 2 , 14 , O )  :: IF O THEN 900
  620 CALL COINC ( # 8 , 144 , 41 , 3 , O )  :: IF O AND Y = 4 THEN FA = 41  :: FI = 144  :: FI2 = 66  :: GOSUB 9200 :: GOTO 450
  623 FI = 28  :: FI2 = - 4  :: IF WEG THEN FI = 204  :: FI2 = 4 ELSE 625
  624 CALL COINC ( # 8 , 144 , 5 , 5 , O )  :: IF O THEN 1030
  625 CALL COINC ( # 8 , 144 , FI , 8 , O )  :: IF NOT O THEN 630
  629 IF X = FI2 THEN X = 0  :: CALL SOUND ( - 200 , 150 , 5 ) 
  630 CALL MOTION ( # 8 , 0 , X * 2 )  :: GOTO 600
  699 CALL PATTERN ( # 8 , 100 )  :: CALL COINC ( # 8 , 66 , 108 , 16 , O )  :: IF NOT O THEN 705
  700 CALL PATTERN ( # 8 , 100 )  :: CALL COINC ( # 8 , 66 , 75 , 20 , O )  :: CALL MOTION ( # 8 , - 8 , - X * ( X < > - 4 ) )  :: IF NOT O THEN 705
  701 FOR Z = 1 TO 16  :: CALL COINC ( # CO , # 8 , 40 , O )  :: IF O THEN 1000
  702 NEXT Z  :: GOTO 710
  705 FOR Z = 1 TO 150  :: NEXT Z 
  710 CALL MOTION ( # 8 , 8 , - 1.5 * X * ( X < > - 4 ) )  :: FOR Z = 1 TO 145  :: NEXT Z 
  720 X = 0  :: CALL MOTION ( # 8 , 0 , 0 )  :: CALL POSITION ( # 8 , P , Q )  :: CALL LOCATE ( # 8 , 66 , Q )  :: PAT = - 1  :: RETURN 
  900 CALL MOTION ( # 2 , 0 , 0 , # 8 , 0 , 0 , # 5 , 0 , 0 , # 4 , 0 , 0 , # 3 , 0 , 0 )  :: CALL PATTERN ( # 7 , 68 , # 6 , 68 , # 7 , 76 , # 6 , 78 ) 
  905 CALL SOUND ( 1250 , 40000 , 30 , 40000 , 30 , 2000 , 30 , - 8 , 5 ) 
  910 FOR V = 1 TO 40  :: CALL COLOR ( # 8 , 16 )  :: CALL COLOR ( # 8 , 10 )  :: NEXT V 
  920 CALL DELSPRITE ( ALL )  :: CALL CLEAR  :: GOTO 5000
 1000 CALL PATTERN ( # 8 , 44 )  :: CALL POSITION ( # 5 , P , Q )  :: CALL LOCATE ( # 8 , P + 29 , Q - 13 )  :: CALL MOTION ( # 8 , 0 , 10 ) 
 1010 X = 0  :: FOR Z = 1 TO 7  :: GOSUB 9650
 1020 FOR Z1 = 1 TO 50  :: NEXT Z1  :: NEXT Z  :: X = 4  :: CALL PATTERN ( # 8 , 100 )  :: GOTO 710
 1030 F , Z , P , Q , WEG , FA , FI , FI2 , X , Y , O , O1 , PAT , K , CO = 0  :: D = 29  :: CALL DELSPRITE ( ALL )  :: GOTO 400
 1100 GOSUB 9800 :: CALL SPRITE ( # 8 , 96 , 16 , 144 , 200 , # 4 , 112 , 15 , 151 , 160 , 0 , - 9 + IR ( 3 ) - GS , # 1 , 104 , 12 , 103 , 41 , # 3 , 104 , 7 , 73 , 197 ) 
 1101 SL = 0  :: CALL SPRITE ( # 2 , 80 , 2 , 58 , 255 , 0 , - 16 + IR ( 3 ) - GS , # 6 , 76 , 2 , 86 , 108 , # 5 , 108 , 16 , 8 , 1 , 0 , 10 ) 
 1110 GOSUB 9600
 1120 CALL COINC ( # 8 , 144 , 41 , 5 , O )  :: IF NOT O OR Y < > 4 THEN 1125
 1122 FA = 41  :: FI = 144  :: FI2 = 66  :: GOSUB 9200 :: GOTO 1298
 1125 CALL COINC ( # 8 , # 4 , 10 , O )  :: IF O THEN 900
 1127 IF SL THEN 1150
 1130 CALL COINC ( # 8 , 144 , 20 , 5 , O )  :: IF NOT O THEN 1150
 1135 CALL SOUND ( 500 , 440 , 2 , 880 , 2 , 1760 , 2 )  :: SL = - 1 
 1140 CALL VCHAR ( 17 , 4 , 32 , 2 ) 
 1150 GOSUB 9650
 1160 CALL MOTION ( # 8 , 0 , 2 * X )  :: GOTO 1110
 1298 CALL HCHAR ( 15 , 6 , 72 , 4 )  :: CALL HCHAR ( 16 , 6 , 72 , 4 ) 
 1299 CALL DELSPRITE ( # 1 )  :: CALL HCHAR ( 12 , 6 , 42 , 4 )  :: CALL HCHAR ( 13 , 6 , 42 , 4 )  :: CALL HCHAR ( 14 , 6 , 42 , 4 )  :: WW = 17  :: SS = 7  :: WII = 6  :: GOSUB 9400
 1300 GOSUB 9600
 1305 CALL COINC ( # 8 , # 6 , 20 , O1 ) 
 1310 CALL COINC ( # 8 , # 2 , 10 , O )  :: IF O OR O1 THEN 900
 1320 CALL COINC ( # 8 , 66 , 5 , 8 , O )  :: IF O AND X = - 4 THEN X = 0 
 1350 GOSUB 9650
 1360 IF K = 18 THEN GOSUB 1410
 1400 CALL MOTION ( # 8 , 0 , X * 2 )  :: GOTO 1300
 1410 CALL PATTERN ( # 8 , 100 )  :: CALL MOTION ( # 8 , 0 , 0 )  :: CALL COINC ( # 8 , 66 , 70 , 20 , O )  :: CALL MOTION ( # 8 , - 8 , - 1.5 * X * ( X < > - 4 ) )  :: FOR Z = 1 TO 100  :: NEXT Z  :: IF O THEN 1415
 1412 FOR Z = 1 TO 45  :: NEXT Z  :: GOTO 1420
 1415 FOR Z = 1 TO 4  :: CALL COINC ( # 5 , # 8 , 35 , O )  :: IF O THEN 1500
 1417 NEXT Z 
 1420 X = 0  :: CALL MOTION ( # 8 , 8 , - 1.5 * X * ( X < > - 4 ) )  :: FOR Z = 1 TO 150  :: NEXT Z  :: CALL MOTION ( # 8 , 0 , 0 )  :: CALL POSITION ( # 8 , P , Q )  :: CALL LOCATE ( # 8 , 66 , Q )  :: PAT = 0  :: RETURN 
 1500 CALL PATTERN ( # 8 , 44 )  :: CALL POSITION ( # 5 , P , Q )  :: CALL LOCATE ( # 8 , P + 29 , Q - 13 )  :: CALL MOTION ( # 8 , 0 , 10 ) 
 1510 X = 0  :: GOSUB 9650
 1511 CALL COINC ( # 8 , 37 , 192 , 4 , O )  :: CALL COINC ( # 8 , 37 , 192 , 4 , O1 )  :: IF NOT O AND NOT O1 THEN 1510
 1520 X = 0  :: CALL MOTION ( # 8 , 0 , 0 )  :: CALL PATTERN ( # 8 , 100 )  :: CALL LOCATE ( # 8 , 34 , 190 ) 
 1525 FOR Z = 1 TO 200  :: NEXT Z 
 1530 GOSUB 9600
 1535 CALL COINC ( # 8 , 34 , 174 , 3 , O )  :: IF O AND X = - 4 THEN X = 0 
 1540 CALL MOTION ( # 8 , 0 , X ) 
 1550 CALL COINC ( # 8 , 34 , 198 , 3 , O )  :: IF O THEN CALL MOTION ( # 8 , 0 , 0 )  :: CALL LOCATE ( # 8 , 34 , 198 )  :: GOTO 1560
 1552 CALL COINC ( # 8 , # 5 , 26 , O )  :: IF O THEN 1600ELSE 1530
 1560 CALL MOTION ( # 8 , 4 , 0 ) 
 1570 CALL COINC ( # 8 , 70 , 198 , 4 , O )  :: IF NOT O THEN 1570
 1580 CALL MOTION ( # 8 , 0 , 0 )  :: CALL DELSPRITE ( # 8 , ALL )  :: D = 57  :: GOTO 400
 1600 CALL MOTION ( # 8 , 0 , 0 , # 5 , 4 , 4 ) 
 1610 CALL COINC ( # 8 , # 5 , 8 , O )  :: IF NOT O THEN 1610ELSE 900
 2000 GOSUB 9800 :: CALL SPRITE ( # 8 , 100 , 16 , 236 , 113 , 16 , 0 , # 1 , 104 , 7 , 9 , 113 , # 15 , 124 , 12 , 145 , 196 ) 
 2020 CALL COINC ( # 8 , 49 , 113 , 3 , O )  :: IF NOT O THEN 2020
 2030 CALL MOTION ( # 8 , 0 , 0 )  :: CALL LOCATE ( # 8 , 49 , 113 )  :: WW = 5  :: SS = 16  :: WII = 6  :: GOSUB 9400
 2035 CALL SPRITE ( # 3 , 120 , 10 , 52 , 1 , # 4 , 112 , 15 , 103 , 150 , 0 , - 5 - 10 * RND - GS , # 2 , 120 , 14 , 144 , 150 , 0 , GS / 2 ) 
 2040 GOSUB 9600 :: GOSUB 9650
 2045 CALL COINC ( # 8 , # 3 , 16 , O )  :: IF O THEN 900
 2050 CALL COINC ( # 8 , 49 , 41 , 5 , O )  :: IF O THEN 2097
 2060 CALL COINC ( # 8 , 49 , 185 , 5 , O )  :: IF O THEN 2197
 2080 IF K < > 18 OR F > 5 THEN 2092
 2090 CALL COLOR ( # 3 , 12 )  :: CALL MOTION ( # 3 , 0 , 0 )  :: F = F + 1  :: GOTO 2095
 2092 CALL COLOR ( # 3 , 10 )  :: CALL MOTION ( # 3 , 0 , ( 3 * RND - 1 ) * 25 * RND ) 
 2095 CALL MOTION ( # 8 , 0 , 2 * X )  :: GOTO 2040
 2097 CALL PATTERN ( # 8 , 96 )  :: CALL MOTION ( # 8 , 0 , 0 )  :: CALL LOCATE ( # 8 , 49 , 41 )  :: CALL MOTION ( # 8 , 16 , 0 ) 
 2098 CALL COINC ( # 8 , 97 , 41 , 2 , O )  :: IF NOT O THEN 2098
 2099 CALL MOTION ( # 8 , 0 , 0 )  :: CALL LOCATE ( # 8 , 97 , 41 )  :: CALL PATTERN ( # 8 , 100 )  :: WW = 10  :: SS = 7  :: WII = 7  :: GOSUB 9400
 2100 CALL VCHAR ( 12 , 16 , 74 , 2 )  :: CALL VCHAR ( 12 , 17 , 74 , 2 )  :: WD = 100 
 2101 GOSUB 9600 :: GOSUB 9650
 2102 CALL COINC ( # 8 , 97 , 89 , 6 , O )  :: IF NOT O THEN 2110
 2105 FA1 = 97  :: FA2 = 145  :: FA = 89  :: GOSUB 9100 :: GOTO 2300
 2110 CALL COINC ( # 8 , 97 , 24 , 5 , O )  :: IF O AND X = - 4 THEN X = 0 
 2115 CALL COINC ( # 8 , # 4 , 16 , O )  :: IF O THEN 900
 2120 CALL COINC ( # 8 , 97 , WD , 5 , O )  :: IF O AND X = 4 THEN X = 0 
 2130 IF WD = 100 THEN 2195
 2140 CALL COINC ( # 8 , 97 , 185 , 5 , O ) 
 2150 IF NOT O OR Y < > 4 THEN 2195
 2160 FI = 97  :: FA = 185  :: FI2 = 49  :: GOSUB 9200 :: GOTO 2040
 2195 CALL MOTION ( # 8 , 0 , 2 * X )  :: GOTO 2101
 2197 CALL PATTERN ( # 8 , 96 )  :: CALL MOTION ( # 8 , 0 , 0 )  :: CALL LOCATE ( # 8 , 49 , 185 )  :: CALL MOTION ( # 8 , 16 , 0 ) 
 2198 CALL COINC ( # 8 , 97 , 185 , 2 , O )  :: IF NOT O THEN 2198
 2199 CALL PATTERN ( # 8 , 100 )  :: CALL MOTION ( # 8 , 0 , 0 )  :: CALL LOCATE ( # 8 , 97 , 185 ) 
 2200 WW = 12  :: SS = 16  :: WII = 2  :: WD = 202  :: GOSUB 9400 :: GOTO 2101
 2300 WW = 17  :: SS = 13  :: WII = 6  :: GOSUB 9400
 2310 GOSUB 9600 :: GOSUB 9650
 2320 CALL COINC ( # 8 , 145 , 35 , 5 , O )  :: IF O AND X = - 4 THEN X = 0 
 2330 CALL COINC ( # 8 , 145 , 200 , 5 , O )  :: IF O THEN 2500
 2340 IF SL THEN 2360
 2350 CALL COINC ( # 8 , # 2 , 14 , O )  :: IF O THEN 900
 2355 GOTO 2400
 2360 CALL DELSPRITE ( # 2 ) 
 2400 CALL MOTION ( # 8 , 0 , X * 2 )  :: GOTO 2310
 2500 CALL MOTION ( # 8 , 0 , 0 ) 
 2505 CALL PATTERN ( # 8 , 100 ) 
 2506 CALL SOUND ( 400 , 262 , 10 , 523 , 10 , 1047 , 10 ) 
 2507 CALL SOUND ( 400 , 330 , 8 , 659 , 8 , 1319 , 8 ) 
 2508 CALL SOUND ( 400 , 392 , 6 , 784 , 6 , 1568 , 6 ) 
 2509 CALL SOUND ( 1000 , 523 , 5 , 1047 , 5 , 2094 , 5 ) 
 2510 FOR X = 1 TO 20 
 2520 CALL COLOR ( # 8 , 16 , # 3 , 16 , # 4 , 16 ) 
 2530 CALL COLOR ( # 8 , 14 , # 3 , 14 , # 4 , 14 ) 
 2540 NEXT X 
 2550 CALL POSITION ( # 8 , P , Q ) 
 2560 CALL DELSPRITE ( ALL ) 
 2570 CALL SPRITE ( # 8 , 100 , 16 , P , Q , 0 , 2 ) 
 2571 FOR Z = 1 TO 800  :: NEXT Z  :: CALL DELSPRITE ( # 8 ) 
 2600 D = 1  :: PU ( [ ) = PU ( [ ) + 200  :: GOTO 400
 5000 [ = [ + 1  :: IF [ > SPIELER THEN [ = 1 
 5010 D = 1  :: GOTO 300
 7999 STOP 
 8000 CALL CLEAR  :: CALL DELSPRITE ( ALL )  :: CALL ERR ( A , B , C , D )  :: PRINT "* ERROR"  ; A  ; "IN"  ; D  :: CALL SOUND ( 220 , 220 , 5 )  :: STOP 
 9000 IF D > 57 OR D < 1 THEN 9100
 9010 CALL CLEAR 
 9020 IF D < 57 THEN CALL COLOR ( 3 , 2 , 13 , 4 , 2 , 13 ) ELSE CALL COLOR ( 3 , 2 , 4 , 4 , 2 , 4 ) 
 9050 RESTORE 20000 :: FOR Z = 1 TO 24  :: READ A$  :: DISPLAY AT ( Z , 1 )  : SEG$ ( A$ , D , 28 )  :: NEXT Z  :: A$ = "" 
 9060 RETURN 
 9100 CALL PATTERN ( # 8 , 96 )  :: CALL MOTION ( # 8 , 16 , 0 )  :: CALL LOCATE ( # 8 , FA1 , FA ) 
 9110 CALL COINC ( # 8 , FA2 , FA , 6 , O )  :: IF NOT O THEN 9110
 9120 CALL MOTION ( # 8 , 0 , 0 )  :: CALL POSITION ( # 8 , P , Q )  :: CALL LOCATE ( # 8 , FA2 , Q )  :: RETURN 
 9200 CALL PATTERN ( # 8 , 100 )  :: CALL LOCATE ( # 8 , FI , FA ) 
 9210 GOSUB 9600 :: CALL MOTION ( # 8 , Y * 1.5 * ( Y < > - 4 ) , 0 ) 
 9220 CALL COINC ( # 8 , FI2 , FA , 5 , O )  :: IF NOT O THEN 9210
 9230 CALL MOTION ( # 8 , 0 , 0 )  :: CALL LOCATE ( # 8 , FI2 , FA )  :: CALL MOTION ( # 8 , 0 , - 16 )  :: FOR Z = 1 TO 50  :: NEXT Z  :: CALL MOTION ( # 8 , 0 , 0 )  :: RETURN 
 9400 CALL VCHAR ( WW , SS , 32 , WII )  :: CALL VCHAR ( WW , SS + 1 , 32 , WII )  :: GOSUB 9700 :: RETURN 
 9600 CALL JOYST ( [ , X , Y )  :: CALL KEY ( [ , K , S )  :: RETURN 
 9650 PAT = NOT PAT  :: IF X = 0 THEN 9670
 9660 CALL PATTERN ( # 8 , 100 + 4 * PAT ) 
 9670 CALL PATTERN ( # 7 , 76 + 8 * PAT , # 6 , 68 - 8 * PAT , # 5 , 108 - 8 * PAT ) 
 9680 RETURN 
 9700 CALL SOUND ( - 200 , - 5 , 5 )  :: RETURN 
 9800 PU ( [ ) = PU ( [ ) + 10 
 9810 A$ = "1:" & STR$ ( PU ( 1 ) )  :: DISPLAY AT ( 2 , 2 ) SIZE ( LEN ( A$ ) )  : A$ 
 9813 IF SPIELER = 1 THEN 9820
 9815 A$ = "2:" & STR$ ( PU ( 2 ) )  :: DISPLAY AT ( 2 , 22 ) SIZE ( LEN ( A$ ) )  : A$ 
 9820 RETURN 
10000 DATA 33 , FFFFC0C0C0C0C0C0FFFF , 35 , FFFF030303030303FCF8F0F0E0C08080FFFFFFFFFFFEFEFCFFFFFFFF , 39 , FFFFFFFFFF7F7F3FC0E0F0F0F8FCFEFE 
10005 DATA 42 , 0 , 44 , 030707030307070707070301 , 46 , 28A8A83870E08090B8FCCE8603 
10010 DATA 128 , , 129 , FCF0C00000C0F0FCFFFFFFFFFFFFF000FFFFFFFFF , 132 , FFFFFFFF0F , 133 , FFFFFFFFFFFF0F003F0F030000030F3F000FFFFFFFFFFFFF 
10020 DATA 136 , 0000000FFFFFFFFF00000000F0FFFFFF00F0FFFFFFFFFFFF , 139 , FFFFFFFF , 140 , 00000000FFFFFFFF 
10030 DATA 64 , , 65 , 0080C0C0E0F0FCFE00010303070F3F7FFFFFFFFFFFFFFFFF , 68 , 0406030100000A1F0 , 70 , 000000A0F038BCFC0 , 88 , 1C221C0808081818 
10040 DATA 72 , , 73 , 55AA55AA55AA55AA , 74 , FF010101FF080808 , 76 , 000000000F150A1F0 , 78 , 00000020F078BCFC0 , 80 , 0 , 83 , 000000000040FF40 , 82 , 0 , 81 , 0 
10050 DATA 96 , 0103030103030303030303030303030380C0C080C0C0C0C0C0C0C0C0C0C0C0C , 100 , 0103030103070F1B1B030303060C0C0E80C0C080C0E0F0D8CCC0C0C060303038 
10060 DATA 104 , FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF 
10063 DATA 108 , 90CCEFFF7F7F3F1FFF3F1F14142828140000008080C0C0DCF7FC 
10065 DATA 120 , 00000003070F1F1F1F1F0F0703000000000000C0E0F0F8F8F8F8F0E0C 
10067 DATA 124 , 0101010102050E193660554275527FFFC0C0C0C0E090D894EA9EE68AE2CEFEFF 
10070 DATA 112 , 00000000001E0B0103011E060D000000007CC6C3630307FEFCFCA8A85 
10080 DATA 116 , 000000000000001FFF1F1F3F7F3E281400000000000000DCF7FC808 , 0 , 0 
20000 DATA @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@CCCCCCCCCCHH    HHCCCCCCCCCC 
20003 DATA @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@CCCCCCCCCHHHHHHHHHHCCCCCCCCC 
20006 DATA @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@CCCCCCCCHHHHHHHHHHHHCCCCCCCC 
20010 DATA A@@@@@BA@@@@@BA@@@@@BA@@@@@@A@@@@@BCCCA@@@BCCCA@@@@@BCCC*******HHHHHHHHHHHHHH******* 
20013 DATA CA@@@BCCA@@@BCCA@@@BCCA@@@@@CA@@@BCCCCCA@BCCCCCA@@@BCCCCHHHHHHHHHHHH !# HHHHHHHHHHHH 
20016 DATA CCCICCCCCA@BCCCCCICCCCCA@@@BCCA@BCCCCCCCICCCCCCCA@BCCCCCJJ           !#           JJ 
20020 DATA CCCICCCCCCICCCCCCICCCCCCCICCCCCICCCCCCCCICCCCCCCCICCCCCCJJ           !#           JJ 
20023 DATA CCCICCCCCCICCCCCCICCCCCCCICCCCCICCCCCCCCICCCCCCCCICCCCCC             !# 
20026 DATA CCCICCCCCCICCCCCCICCCCCCCICCCCCICCCCCCCCICCCCCCCCHH   HH             !# 
20030 DATA CCCICCCCCCICCCCCCICCCCCCCICCCCCICCCCCCCCICCCCCCCHHHHHHHH             !# 
20033 DATA CCCICCCCCCICCCCCCICCCCCCCICCCCCICCCCCCCCICCCCCCHHHHHHHHHHHHH!#HHHHHHHHHHHHHHHH!#HHHH 
20036 DATA ***%&&'*********%&&'******%&&'*******HHHHHHHHHHJJ  !#       JJ       !#  JJ 
20040 DATA ***$  (*****$  (******$  (****HHHHHHHHHHHJJ  !#       JJ       !#  JJ 
20043 DATA ***********************************************    !#                !# 
20046 DATA HHHH!#HHHHHHHHHHHHHHHH  HHHHHHHH!#HHHHHHHHHHHHHHHHHHHHHH    !#                !# 
20050 DATA HHHH!#HHHHHHHHHHHHHHHH  HHHHHHHH!#HHHHHHHHHHHHHHHHHHHHHH    !#                !# 
20053 DATA " JJ !#                    JJ H  !#          JJJJJJJJJJJJHHHHHHHHHH!#HHHHHHHHHHHHHHHH" 
20056 DATA " JJ !#                    JJ X  !#          JJJJJJJJJJJJJJ        !#                " 
20060 DATA " JJ !#                    JJ    !#          JJJJJJJJJJJJJJ        !#                " 
20063 DATA "    !#                          !#          JJJJJJJJJJJJ          !#            J   " 
20066 DATA "    !#                          !#          JJJJJJJJJJJJ          !#           HHH  " 
20070 DATA "    !#                          !#          JJJJJJJJJJJJ          !#           " 
20073 DATA HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH 
20076 DATA HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH 
32767 END 
