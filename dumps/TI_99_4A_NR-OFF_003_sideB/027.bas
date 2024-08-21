  100  !  ***************
  110  !  **I - G I N G**
  120  !  **O R A K E L**
  130  !  ***************
  140  ! 
  150  !  V. ERICH REITINGER
  160  !  VERSION V.16.6.84
  170  ! 
  180 DIM G$ ( 63 ) 
  190 CALL CLEAR  :: CALL SPRITE ( # 1 , 73 , 14 , 57 , 81 , # 2 , 71 , 14 , 65 , 113 , # 3 , 73 , 14 , 73 , 129 , # 4 , 78 , 14 , 81 , 145 , # 5 , 71 , 14 , 89 , 161 ) 
  200 YIN$ = "===   ===(YIN)" 
  210 YANG$ = "=========(YANG)" 
  220 CALL SCREEN ( 16 ) 
  230 CALL MAGNIFY ( 2 )  :: TON = 880 
  240 FOR COL = 4 TO 14 STEP 3  :: CALL COLOR ( # 1 , COL , # 2 , COL , # 3 , COL , # 4 , COL , # 5 , COL )  :: CALL SOUND ( 300 , TON , 9 , TON - 330 , 8 )  :: TON = TON - 110  :: NEXT COL 
  250 RANDOMIZE  :: SUMME = 0  :: ZEILE = 21  :: K$ = "Kopf"  :: Z$ = "Zahl"  :: PRINT  : "Was ist Ihr Problem ?"  :  :  :  :  :  : 
  260 ACCEPT AT ( 20 , 3 ) BEEP VALIDATE ( UALPHA ) SIZE ( 18 )  : PRO$ 
  270 FOR TON = 770 TO 440 STEP - 110  :: CALL SOUND ( 880 , TON , 8 )  :: NEXT TON  :: CALL CLEAR 
  280 FOR GW = 1 TO 2  :: FOR WURF = 1 TO 3  :: SUMME = 0  :: ZL = 3  :: FOR MUENZ = 1 TO 3 
  290 RANDOMIZE  :: CALL PEEK ( - 31880 , B )  :: MW = B + 1 
  300 CALL SCREEN ( 12 )  :: CALL SOUND ( 120 , 1300 , 5 , 1700 , 3 , 999 , 5 )  :: CALL SOUND ( 50 , 1600 , 3 )  :: CALL SOUND ( 30 , 1200 , 4 ) 
  310 CALL LOCATE ( # 1 , 5 , 89 , # 2 , 9 , 121 , # 3 , 15 , 137 , # 4 , 21 , 153 , # 5 , 27 , 169 ) 
  320 IF MW / 2 < > INT ( MW / 2 ) THEN MW = 3  :: GOTO 340ELSE MW = 2 
  330 DISPLAY AT ( ZL , 3 )  : K$  :: GOTO 350
  340 DISPLAY AT ( ZL , 3 )  : Z$ 
  350 SUMME = SUMME + MW  :: ZL = ZL + 2  :: NEXT MUENZ 
  360 IF SUMME = 9 OR SUMME = 6 THEN 490
  370 ON SUMME - 5 GOTO 450, 480, 450, 480
  380 ZEILE = ZEILE - 2  :: NEXT WURF 
  390 ZEILE = ZEILE - 2  :: NEXT GW 
  400 DISPLAY AT ( 24 , 6 )  : "Deutung - Jede Taste!"  :: DISPLAY AT ( 7 , 10 )  : PRO$ 
  410 CALL KEY ( 3 , K , S )  :: IF S = 0 THEN 410 :: IF K = 87 THEN 1300ELSE DISPLAY AT ( 1 , 1 )  : RPT$ ( " " , 192 )  :: GOSUB 510
  420 CALL MAGNIFY ( 1 )  :: CALL SOUND ( 1000 , 160 , 3 ) 
  430 DISPLAY AT ( 1 , 1 )  : G$ ( SA )  :: GOTO 410
  440  !  printroutine
  450 CALL SOUND ( 100 , 770 , 10 , 550 , 9 ) 
  460 DISPLAY AT ( ZEILE , 12 )  : YIN$ 
  470 GOTO 380
  480 DISPLAY AT ( ZEILE , 12 )  : YANG$  :: CALL SOUND ( 100 , 550 , 10 , 330 , 9 )  :: GOTO 380
  490 DISPLAY AT ( ZEILE , 4 )  : "wandel" 
  500 CALL SOUND ( 200 , 300 , 9 , 250 , 13 )  :: GOTO 370
  510  !  DEUTUNG
  520 N = 1  :: SA = 0 
  530 RESTORE 550
  540 FOR LE = 1 TO 6 
  550 DATA 21 , 19 , 17 , 13 , 11 , 9 
  560 READ ZE 
  570 CALL GCHAR ( ZE , 17 , B ) 
  580 IF B = 61 THEN SA = SA + N 
  590 N = N * 2 
  600 NEXT LE 
  610  !  ging
  620 FOR F = 0 TO 63 
  630 READ G$ ( F ) 
  640 DATA "2-Wenn Sie sich in alle       Richtungen oeffnen, werden  Sie den Weg finden." 
  650 DATA "24-Ein vertrauter Lebenszy-    klus beginnt von neuem.     Handeln Sie nach Erfah-     rungen." 
  660 DATA "7-Seien Sie jetzt besonders   offen fuer die Beduerf-     nisse der Mitmenschen !" 
  670 DATA "19-Sie sind jetzt faehig,      Ihre Plaene zu erfuellen.   Helfen Sie auch anderen !" 
  680 DATA "15-Zurueckhaltung ist          geboten. Pruefen Sie Ihre   Vorurteile." 
  690 DATA "36-Ihre Ziele sind richtig!    Aber Ihre Position ist      schwach. Abwarten !" 
  700 DATA "46-Viele kleine Bemuehungen    werden Sie an Ihr Ziel      bringen." 
  710 DATA "11-Sie haben grosses Glueck;   aber auch Verantwortung     gegenueber anderen." 
  720 DATA "16-Hoeren Sie auf Ihre         innere Stimme, folgen Sie   dem Weg des geringsten      Widerstandes." 
  730 DATA "51-Chaos! Sind Sie bereit es   mit grossen Erschuet-       terungen aufzunehmen !" 
  740 DATA "40-Innere Befreiung steht      unmittelbar bevor.Positiv" 
  750 DATA "54-Kehren Sie zum Anfang       zurueck! Nur von dort aus   kann die Situation          geordnet werden." 
  760 DATA "62-Jetzt ist Demut und Be-     schraenkung noetig. Zeit    um zu denken !" 
  770 DATA "32-Stabilisieren Sie Ihre      Lage. Suchen Sie nach be-   staendigen Werten." 
  780 DATA "34-Werden Sie sich ueber die   Ideale klarer, dann loest   sich Ihr Problem von        selbst." 
  790 DATA "8-Isolierung droht! Tun Sie   den Schritt in die Welt     Ihres Mitmenschen !" 
  800 DATA "3-Ein ungeloestes Problem     wurde von Ihnen nicht als   solches erkannt. Denken     Sie nach !" 
  810 DATA "29-Ihre Sehnsuechte werden     Sie in Gefahr bringen!      Handeln Sie einwandfrei!" 
  820 DATA "60-Nehmen Sie die momentanen   Beschraenkungen an und      suchen Sie einen anderen    Weg." 
  830 DATA "39-Ihre Hindernisse sind nur   von Ihnen geschaffen. Und   nur von Ihnen zu            beseitigen." 
  840 DATA "63-Sie sitzen im Auge eines    Zyklons ! Keine Moeglich-   keit einzugreifen." 
  850 DATA "48-Andere koennten Ihnen       helfen Ihr Ziel zu          erreichen. Nutzen Sie       Beziehungen." 
  860 DATA 
  870 DATA 
  880 DATA 
  890 DATA 
  900 DATA 
  910 DATA 
  920 DATA 
  930 DATA 
  940 DATA 
  950 DATA 
  960 DATA 
  970 DATA 
  980 DATA 
  990 DATA 
 1000 DATA 
 1010 DATA 
 1020 DATA 
 1030 DATA 
 1040 DATA 
 1050 DATA 
 1060 DATA 
 1070 DATA 
 1080 DATA 
 1090 DATA 
 1100 DATA 
 1110 DATA 
 1120 DATA 
 1130 DATA 
 1140 DATA 
 1150 DATA 
 1160 DATA 
 1170 DATA 
 1180 DATA 
 1190 DATA 
 1200 DATA 
 1210 DATA 
 1220 DATA 
 1230 DATA 
 1240 DATA 
 1250 DATA 
 1260 DATA 
 1265 DATA 13-? 
 1270 NEXT F 
 1280 RETURN 
 1290  ! wandelroutine
 1300 RESTORE 1320
 1310 FOR LE = 1 TO 6 
 1320 DATA 21 , 19 , 17 , 13 , 11 , 9 
 1330 READ ZE 
 1340 CALL GCHAR ( ZE , 6 , B ) 
 1350 IF B = 119 THEN CALL HCHAR ( ZE , 17 , X ) ELSE 1370
 1360 IF X = 61 THEN DISPLAY AT ( ZE , 12 ) BEEP  : YIN$ ELSE DISPLAY AT ( ZE , 12 ) BEEP  : YANG$ 
 1370 NEXT LE 
 1380 GOTO 400
