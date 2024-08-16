  210 GOTO 500 :: CALL CHAR  :: CALL CLEAR  :: CALL COLOR  :: CALL HCHAR  :: CALL SCREEN  :: CALL SOUND  :: CALL VCHAR  :: CALL KEY 
  220 DIM B ( 13 ) , G ( 13 ) , F ( 50 ) 
  230 A$ , XX$ 
  240 A , C , D , E , H , I , J , K , L , M , N , P , Q , R , S , V , X , Y , Z , ZG , ZS 
  250  ! @P-
  500 CALL CLEAR 
  520 CALL SCREEN ( 6 )  :: FOR ZS = 0 TO 13  :: CALL COLOR ( ZS , 2 , 8 )  :: NEXT ZS 
  530 CALL COLOR ( 14 , 8 , 8 ) 
  540 DISPLAY AT ( 12 , 9 )  : "MOMENT BITTE..." 
  580 CALL CHAR ( 136 , "FFFFFFFFFFFFFFFF" , 137 , "0103070F1F3F7FFF" , 138 , "80C0E0F0F8FCFEFF" , 139 , "FFFEFCF8F0E0C080" , 140 , "FF7F3F1F0F070301" ) 
  590 CALL CHAR ( 141 , "FFFFFFFF" , 142 , "00000000FFFFFFFF" , 143 , "1818181818181818" ) 
  600 CALL HCHAR ( 2 , 5 , 137 )  :: CALL VCHAR ( 3 , 5 , 136 , 2 )  :: CALL VCHAR ( 3 , 7 , 136 , 2 )  :: CALL HCHAR ( 2 , 7 , 138 )  :: CALL HCHAR ( 2 , 6 , 141 )  :: CALL HCHAR ( 3 , 6 , 142 ) 
  610 CALL VCHAR ( 6 , 5 , 136 , 2 )  :: CALL VCHAR ( 6 , 7 , 136 , 2 )  :: CALL VCHAR ( 8 , 6 , 136 )  :: CALL VCHAR ( 8 , 5 , 140 )  :: CALL HCHAR ( 8 , 7 , 139 )  :: CALL HCHAR ( 7 , 6 , 143 ) 
  620 CALL HCHAR ( 10 , 5 , 137 )  :: CALL VCHAR ( 11 , 5 , 136 , 2 )  :: CALL HCHAR ( 10 , 6 , 141 )  :: CALL HCHAR ( 10 , 7 , 138 )  :: CALL VCHAR ( 11 , 7 , 136 , 2 ) 
  630 CALL HCHAR ( 11 , 6 , 142 )  :: CALL VCHAR ( 14 , 5 , 136 , 3 )  :: CALL HCHAR ( 14 , 6 , 141 )  :: CALL HCHAR ( 15 , 6 , 142 )  :: CALL HCHAR ( 16 , 6 , 140 )  :: CALL HCHAR ( 16 , 7 , 138 ) 
  640 CALL HCHAR ( 14 , 7 , 138 )  :: CALL HCHAR ( 15 , 7 , 139 )  :: CALL VCHAR ( 18 , 6 , 136 , 3 )  :: DISPLAY AT ( 12 , 9 ) 
  660 CALL HCHAR ( 3 , 16 , 136 , 4 )  :: CALL HCHAR ( 4 , 16 , 136 , 4 )  :: CALL HCHAR ( 5 , 15 , 136 , 12 )  :: CALL HCHAR ( 4 , 23 , 136 , 3 )  :: CALL HCHAR ( 6 , 14 , 136 , 14 ) 
  670 CALL HCHAR ( 7 , 13 , 136 , 16 )  :: CALL HCHAR ( 8 , 13 , 136 , 17 )  :: CALL HCHAR ( 8 , 30 , 136 )  :: CALL HCHAR ( 9 , 13 , 136 , 17 )  :: CALL HCHAR ( 10 , 13 , 136 , 17 ) 
  680 CALL HCHAR ( 11 , 13 , 136 , 17 )  :: CALL HCHAR ( 12 , 14 , 136 , 15 )  :: CALL HCHAR ( 13 , 15 , 136 , 13 )  :: CALL HCHAR ( 14 , 17 , 136 , 10 )  :: CALL HCHAR ( 15 , 18 , 136 , 9 ) 
  690 CALL HCHAR ( 16 , 18 , 136 , 9 )  :: CALL HCHAR ( 17 , 18 , 136 , 8 )  :: CALL HCHAR ( 18 , 18 , 136 , 7 )  :: CALL HCHAR ( 19 , 18 , 136 , 6 )  :: CALL HCHAR ( 20 , 18 , 136 , 6 ) 
  700 CALL HCHAR ( 21 , 19 , 136 , 5 )  :: CALL HCHAR ( 22 , 20 , 136 , 3 )  :: CALL HCHAR ( 23 , 20 , 136 , 2 )  :: CALL HCHAR ( 21 , 18 , 140 )  :: CALL HCHAR ( 22 , 19 , 140 ) 
  710 CALL HCHAR ( 15 , 17 , 140 )  :: CALL HCHAR ( 13 , 14 , 140 )  :: CALL HCHAR ( 12 , 13 , 140 )  :: CALL HCHAR ( 6 , 13 , 137 )  :: CALL HCHAR ( 5 , 14 , 137 ) 
  720 CALL HCHAR ( 4 , 15 , 137 )  :: CALL HCHAR ( 4 , 26 , 138 )  :: CALL HCHAR ( 5 , 27 , 138 )  :: CALL HCHAR ( 6 , 28 , 138 )  :: CALL HCHAR ( 7 , 29 , 138 )  :: CALL HCHAR ( 8 , 30 , 138 ) 
  730 CALL HCHAR ( 8 , 30 , 136 )  :: CALL HCHAR ( 9 , 30 , 139 )  :: CALL HCHAR ( 12 , 29 , 139 )  :: CALL HCHAR ( 13 , 28 , 139 )  :: CALL HCHAR ( 14 , 27 , 139 ) 
  740 CALL HCHAR ( 17 , 25 , 139 )  :: CALL HCHAR ( 19 , 24 , 139 )  :: CALL HCHAR ( 22 , 23 , 139 )  :: CALL HCHAR ( 23 , 22 , 139 )  :: CALL COLOR ( 14 , 7 , 8 )  :: GOSUB 2420 ! MUSIK
  750 CALL CLEAR 
  760 CALL COLOR ( 14 , 2 , 8 ) 
  770  ! 
  780 CALL CHAR ( 128 , "0103070F1F3F7FFF" , 129 , "0F1F3F7FFFFFFFFF" , 130 , "0080C0E0F0F8FCFE" , 131 , "F0F0F0F0F0F0F0F0" , 132 , "FFFFFFFFFFFFFFFF" ) 
  790 CALL CHAR ( 133 , "0F0F0F0F0F0F0F0F" ) 
  800  ! 
  810 DISPLAY AT ( 4 , 10 ) ERASE ALL  : "         *********                   *       *                   * AWARI *                   *       *" 
  820 DISPLAY AT ( 9 , 10 )  : "*       *" 
  830 DISPLAY AT ( 9 , 10 )  : "*********"  :: DISPLAY AT ( 11 , 1 )  : "DIESES ALTE SPIEL IST NOCH  IN VIELEN LAENDERN AFRIKAS  BRAUCH." 
  840 DISPLAY AT ( 15 , 1 )  : "ES WIRD AWALE,BAO,AWARI ODERAUCH GISSONO GENANNT."  :  : "MAN BRAUCHT DABEI BOHNEN    MUSCHELN ODER STEINE, DIE IN" 
  850 DISPLAY AT ( 20 , 1 )  : "ERDLOECHERN VERTEILT WERDEN." 
  860 DISPLAY AT ( 24 , 20 )  : ">>>ENTER"  :: CALL KEY ( 0 , K , S )  :: IF K < > 13 THEN 860
  870  ! 
  880 CALL CLEAR 
  890 DISPLAY AT ( 20 , 1 )  : "DEIN NAME, BITTE: "  :: ACCEPT AT ( 22 , 1 ) SIZE ( 20 ) BEEP  : A$  :: CALL CLEAR 
  900 DISPLAY AT ( 20 , 1 )  : "WILLST DU DIE SPIELREGELN   LESEN ? (J/N)" 
  910 CALL KEY ( 0 , K , S )  :: IF S = 0 THEN 910 :: IF K = 78 THEN 1280
  920  ! 
  930 DISPLAY AT ( 1 , 5 ) ERASE ALL  : "S P I E L R E G E L N       *********************" 
  940 DISPLAY AT ( 5 , 1 )  : "Beide Spieler haben 18      Steine, die gleichmaessig   auf die 6 vor ihnen liegen- den Loecher verteilt sind." 
  950 DISPLAY AT ( 10 , 1 )  : "Dein "Haus" steht am rechtenEnde der Reihe." 
  960 DISPLAY AT ( 13 , 1 )  : "Das Spiel besteht darin,alleSteine aus einem Deiner Loe-" 
  970 DISPLAY AT ( 15 , 1 )  : "cher zu nehmen und sie mit  1 Stein pro Loch rechtsherumauf die anderen Loecher zu  verteilen." 
  980 DISPLAY AT ( 19 , 1 )  : "Die Steine,die so in Dein   Haus geraten bleiben dort   sicher liegen." 
  990 DISPLAY AT ( 23 , 18 )  : ">>>ENTER" 
 1000 ACCEPT AT ( 23 , 28 ) SIZE ( 1 )  : XX$  :: CALL CLEAR 
 1010  ! 
 1020 DISPLAY AT ( 2 , 1 )  : "Fortsetzung"  :: DISPLAY AT ( 6 , 1 )  : "Wenn es gelingt den letzten Stein einer Saat in Dein    Haus zu legen,so darfst Du" 
 1030 DISPLAY AT ( 3 , 1 )  : "-----------" 
 1040 DISPLAY AT ( 9 , 1 )  : "noch einmal spielen."  :: DISPLAY AT ( 11 , 10 )  : "Wenn Du den letzten Stein   Deiner Saat in ein leeres   Loch legst,so wir dieser" 
 1050 DISPLAY AT ( 15 , 1 )  : "wie auch die Steine im Feld gegenueber sofort zu Deiner Haus-Punktzahl dazugezaehlt." 
 1060 DISPLAY AT ( 23 , 20 )  : ">>>ENTER"  :: ACCEPT AT ( 23 , 28 ) SIZE ( 1 )  : XX$  :: CALL CLEAR 
 1070  ! 
 1080 DISPLAY AT ( 1 , 1 )  : "Fortsetzung                 -----------" 
 1090 DISPLAY AT ( 4 , 1 )  : "Deine Loecher sind von 1 - 6nummeriert (von links nach  rechts)." 
 1100 DISPLAY AT ( 8 , 1 )  : "Die Partie ist beendet,wenn in einer der beiden Reihen  saemtliche Loecher geleert  sind." 
 1110 DISPLAY AT ( 14 , 1 )  : "Jederzeit waehrend dem Spielkannst Du die "Spielregeln" nachlesen. Gib dazu "99"" 
 1120 DISPLAY AT ( 17 , 1 )  : "ein, wenn Du am Zug waerest." 
 1130 DISPLAY AT ( 20 , 1 )  : "----------------------------" 
 1140 DISPLAY AT ( 23 , 20 )  : ">>>ENTER"  :: CALL KEY ( 0 , K , S )  :: IF S = 0 THEN 1140 :: CALL CLEAR 
 1150  ! 
 1160 DISPLAY AT ( 9 , 1 )  : "1   BEGINN NEUES SPIEL." 
 1170 DISPLAY AT ( 15 , 1 )  : "2   ZURUECK ZUR STELLE WO       DIE PARTIE UNTERBROCHEN     WURDE." 
 1180 DISPLAY AT ( 22 , 1 )  : "3   SPIELREGELN" 
 1190 CALL KEY ( 0 , K , S )  :: IF S = 0 THEN 1190
 1200 IF K = 50 THEN 1210 :: IF K = 49 THEN 1270 :: IF K = 51 THEN 930ELSE 1160
 1210 ZG = 1 
 1270  ! 
 1280 CALL CLEAR  :: FOR ZS = 1 TO 14  :: CALL COLOR ( ZS , 2 , 8 )  :: NEXT ZS 
 1290  ! 
 1300 DISPLAY AT ( 1 , 1 ) ERASE ALL  : "         TI-99/4A                    ********" 
 1310 DISPLAY AT ( 4 , 1 )  : "    [6][5][4][3][2][1]          ------------------" 
 1320 DISPLAY AT ( 17 , 1 )  : "    [1][2][3][4][5][6]          ------------------" 
 1330 DISPLAY AT ( 19 , 10 )  : A$  :: DISPLAY AT ( 24 , 1 )  : "regeln: (99)  //  ende: (0)" 
 1340 IF ZG > 0 THEN 1840
 1350 N , E = 0 
 1360 FOR I = 0 TO 12  :: B ( I ) = 3  :: NEXT I 
 1370 C , F ( N ) , B ( 13 ) , B ( 6 ) = 0 
 1380 GOSUB 1910
 1390 CALL SCREEN ( 6 )  :: DISPLAY AT ( 8 , 1 )  : "                        **" 
 1400 DISPLAY AT ( 21 , 1 )  : " WELCHES LOCH LEERST DU ?" 
 1410  ! 
 1420 CALL HCHAR ( 9 , 26 , 128 )  :: CALL HCHAR ( 9 , 27 , 132 , 2 )  :: CALL VCHAR ( 10 , 26 , 131 , 3 )  :: CALL VCHAR ( 10 , 29 , 133 , 3 )  :: CALL HCHAR ( 9 , 29 , 130 ) 
 1430 CALL HCHAR ( 13 , 26 , 140 )  :: CALL HCHAR ( 13 , 27 , 132 , 2 )  :: CALL HCHAR ( 13 , 29 , 139 ) 
 1440 GOSUB 1720
 1450 IF E = 0 THEN 1640
 1460 IF M = H THEN 1470ELSE 1480
 1470 DISPLAY AT ( 21 , 1 )  : " WEITERER ZUG:    "  :: GOSUB 1720
 1480 IF E = 0 THEN 1640
 1490  ! 
 1500 CALL SCREEN ( 9 )  :: DISPLAY AT ( 8 , 3 )  : "**"  :: CALL SOUND ( 100 , 554 , 3 ) 
 1510 DISPLAY AT ( 21 , 1 )  : "EIN MOMENT BITTE, ICH DENKE" 
 1520  ! 
 1530 CALL HCHAR ( 9 , 4 , 128 )  :: CALL HCHAR ( 9 , 5 , 132 , 2 )  :: CALL VCHAR ( 10 , 4 , 131 , 3 )  :: CALL VCHAR ( 10 , 7 , 133 , 3 ) 
 1540 CALL HCHAR ( 9 , 7 , 130 )  :: CALL HCHAR ( 13 , 4 , 140 )  :: CALL HCHAR ( 13 , 5 , 132 , 2 )  :: CALL HCHAR ( 13 , 7 , 139 ) 
 1550 GOSUB 2130
 1560 IF E = 0 THEN 1640
 1570 IF M = H THEN 1580ELSE 1600
 1580 DISPLAY AT ( 21 , 1 )  : "UND              " 
 1590 GOSUB 2130
 1600 IF E > 0 THEN 1380
 1610  ! 
 1620  ! 
 1630  ! 
 1640 DISPLAY AT ( 21 , 1 )  : "PARTIE ZU ENDE." 
 1650 D = B ( 6 ) - B ( 13 )  :: IF D < 0 THEN 1660ELSE 1680
 1660 DISPLAY AT ( 22 , 1 )  : "ICH GEWINNE MIT"  ; - D  ; "PUNKTEN VORSPRUNG." 
 1670 GOTO 2350
 1680 N = N + 1  :: IF D = 0 THEN 1690ELSE 1700
 1690 DISPLAY AT ( 22 , 1 )  : "SPIEL UNENTSCHIEDEN."  :: GOTO 2350
 1700 DISPLAY AT ( 22 , 1 )  : "DU GEWINNST MIT"  ; D  ; "PUNKTEN VORSPRUNG."  :: GOTO 2350
 1710  ! 
 1720 ACCEPT AT ( 21 , 27 ) VALIDATE ( DIGIT ) BEEP SIZE ( 2 )  : M 
 1730 IF M = 99 THEN 930 :: IF M = 0 THEN 2380 :: IF M > 6 OR M < 1 THEN 1750
 1740 GOTO 1760
 1750 DISPLAY AT ( 22 , 1 )  : " UNGUELTIGER ZUG."  :: GOTO 1720
 1760 DISPLAY AT ( 22 , 1 )  :: M = M - 1  :: IF B ( M ) = 0 THEN 1750
 1770 H = 6  :: GOSUB 1790
 1780 GOTO 1910
 1790 K = M  :: GOSUB 2050
 1800 E = 0 
 1810 IF K > 6 THEN K = K - 7  :: C = C + 1 
 1820 IF C < 9 THEN F ( N ) = F ( N ) * 6 + K 
 1830  ! 
 1840 FOR I = 0 TO 5  :: IF B ( I ) THEN 1870
 1850 NEXT I 
 1860 RETURN 
 1870 FOR I = 7 TO 12 
 1880 IF B ( I ) = 0 THEN 1900
 1890 E = 1  :: RETURN 
 1900 NEXT I  :: RETURN 
 1910 Z = 7  :: V = - 7 
 1920  ! 
 1930 FOR I = 12 TO 7 STEP - 1 
 1940 GOSUB 2030
 1950 V = V + 4  :: NEXT I 
 1960 Z = 11  :: I = 13  :: V = - 11  :: GOSUB 2030
 1970 DISPLAY AT ( Z , 24 ) SIZE ( 3 )  : B ( 6 ) 
 1980 Z = 15  :: V = 5 
 1990  ! 
 2000 FOR I = 0 TO 5  :: GOSUB 2030
 2010 V = V + 2  :: NEXT I  :: RETURN 
 2020  ! 
 2030 DISPLAY AT ( Z , I + V ) SIZE ( 3 )  : B ( I )  :: RETURN 
 2040  ! 
 2050 P = B ( M )  :: B ( M ) = 0 
 2060 FOR P = P TO 1 STEP - 1  :: M = M + 1 
 2070 IF M > 13 THEN M = M - 14 
 2080 B ( M ) = B ( M ) + 1  :: NEXT P 
 2090 IF B ( M ) = 1 THEN IF M < > 6 THEN IF M < > 13 THEN IF B ( 12 - M ) < > 0 THEN 2110
 2100 RETURN 
 2110 B ( H ) = B ( H ) + B ( 12 - M ) + 1  :: B ( M ) = 0  :: B ( 12 - M ) = 0  :: RETURN 
 2120  ! 
 2130 D = - 99  :: H = 13 
 2140 FOR I = 0 TO 13  :: G ( I ) = B ( I )  :: NEXT I 
 2150 FOR J = 7 TO 12  :: IF B ( J ) = 0 THEN 2310
 2160 M = J  :: GOSUB 2050
 2170 FOR I = 0 TO 5  :: IF B ( I ) = 0 THEN 2230
 2180 L = B ( I ) + 1  :: R = 0 
 2190 IF L > 13 THEN 2200ELSE 2210
 2200 L = L - 14  :: R = 1  :: GOTO 2190
 2210 IF B ( L ) = 0 THEN IF L < > 6 THEN IF L < > 13 THEN R = B ( 12 - L ) + R 
 2220 IF R > Q THEN Q = R 
 2230 NEXT I 
 2240 Q = B ( 13 ) - B ( 6 ) - Q  :: IF C > 8 THEN 2290
 2250 K = J  :: IF K > 6 THEN K = K - 7 
 2260 FOR I = 0 TO N - 1 
 2270 IF F ( N ) * 6 + K = INT ( F ( I ) / 6 ^ ( 7 - C ) + .1 ) THEN Q = Q - 2 
 2280 NEXT I 
 2290 FOR I = 0 TO 13  :: B ( I ) = G ( I )  :: NEXT I 
 2300 IF Q > = D THEN A = J  :: D = Q 
 2310 NEXT J 
 2320 CALL SOUND ( 100 , 1109 , 3 )  :: M = A  :: DISPLAY AT ( 21 , 1 )  : "ICH NEHME LOCH NR."  ; CHR$ ( 42 + M )  :: GOTO 1790
 2330 FOR I = 0 TO N - 1  :: PRINT B ( I )  :: NEXT I 
 2340  ! 
 2350 INPUT "NOCH EIN SPIEL ? "  : XX$ 
 2360 IF SEG$ ( XX$ , 1 , 1 ) = "N" THEN 2380
 2370 GOTO 880
 2380 DISPLAY AT ( 12 , 12 ) ERASE ALL  : "AUF WIEDERSEHEN ..." 
 2390 GOSUB 2490
 2400 END 
 2420  !  MUSIK
 2430  ! 
 2440 FOR X = 1 TO 2 
 2450 CALL SOUND ( 80 , 110 , 3 , 220 , 3 )  :: CALL SOUND ( 120 , 123 , 3 )  :: CALL SOUND ( 200 , 138 , 3 )  :: CALL SOUND ( 200 , 164 , 3 , 329 , 3 ) 
 2460 CALL SOUND ( 400 , 110 , 3 )  :: CALL SOUND ( 80 , 123 , 3 )  :: CALL SOUND ( 120 , 110 , 3 )  :: CALL SOUND ( 200 , 123 , 3 )  :: CALL SOUND ( 200 , 110 , 3 , 220 , 3 ) 
 2470 CALL SOUND ( 200 , 164 , 3 , 329 , 3 )  :: CALL SOUND ( 200 , 110 , 3 )  :: CALL SOUND ( 100 , 110 , 3 , 220 , 3 ) 
 2480 CALL SOUND ( 300 , 25000 , 3 )  :: NEXT X 
 2490 FOR Y = 1 TO 2 
 2500 CALL SOUND ( 80 , 440 , 2 )  :: CALL SOUND ( 120 , 415 , 2 )  :: CALL SOUND ( 200 , 440 , 2 )  :: CALL SOUND ( 300 , 164 , 3 , 329 , 3 ) 
 2510 CALL SOUND ( 200 , 110 , 3 )  :: CALL SOUND ( 200 , 164 , 3 , 329 , 3 )  :: CALL SOUND ( 200 , 123 , 3 )  :: CALL SOUND ( 80 , 110 , 3 )  :: CALL SOUND ( 120 , 110 , 3 , 220 , 3 ) 
 2520 CALL SOUND ( 200 , 25000 , 3 )  :: NEXT Y 
 2530 RETURN 
