  100 REM  *******************
  110 REM   TI-99/4A HOERTEST
  120 REM  *******************
  130 X = 0 
  140 Y = 0 
  150 FOR K = 1 TO 4 
  160 READ FREQ ( K ) 
  170 NEXT K 
  180 DATA 30000 , 1000 , 2000 , 4000 
  190 CALL CLEAR 
  200 D$ = "COMPUTERHEFT HOERTEST" 
  210 LU = LEN ( D$ ) 
  220 ZL = 5 
  230 SP = INT ( 28 - LU ) / 2 
  240 GOSUB 1500
  250 CALL SOUND ( 300 , 440 , 5 , 880 , 5 , 220 , 5 ) 
  260 GOSUB 1440
  270 PRINT "MIT DIESEM PROGRAMM KOENNEN SIE IHR GEHOER AUF ZWEIFACHEWEISE UEBERPRUEFEN:"  :  :  :  :  :  :  :  :  :  :  :  : 
  280 GOSUB 1440
  290 PRINT "ERSTENS:"  : "OB IHRE HOERLEISTUNG FUER"  : "ALLTAGSSITUATIONEN, WIE"  : "ZUM BEISPIEL EINE UNTER-" 
  300 PRINT "HALTUNG, AUSREICHEND IST."  :  : "ZWEITENS:"  : "WELCHES DIE HOECHSTE"  : "FREQUENZ IST,DIE SIE NOCH" 
  310 PRINT "WAHRNEHMEN KOENNEN."  :  :  :  :  :  :  : 
  320 GOSUB 1440
  330 PRINT "BEVOR DER EIGENTLICHE TEST"  : "BEGINNT, MUESSEN SIE ZUERST"  : "DIE 'PRUEFLAUTSTAERKE'" 
  340 PRINT "AN IHREM FERNSEHGERAET"  : "EINSTELLEN."  :  : "ZU DIESEM ZWECK HOEREN"  : "SIE GLEICH EINEN TON."  :  :  : 
  350 PRINT "IHR TELEFON MUSS IN REICH-  WEITE STEHEN, DENN DAS"  : "BENOETIGEN SIE EBENFALLS."  :  :  :  :  : 
  360 GOSUB 1440
  370 PRINT  :  :  : "NEHMEN SIE NUN DEN TELEFON- HOERER AB UND HALTEN SIE IHNVERKEHRT HERUM AN IHR OHR."  :  : 
  380 PRINT "DIE HOERMUSCHEL IST DANN VORIHREM MUND; SIE HOEREN LEISEDAS FREIZEICHEN."  :  :  :  :  :  :  :  :  :  :  :  :  : 
  390 GOSUB 1440
  400 PRINT "WENN SIE GLEICH DEN KON-    TROLLTON HOEREN, STELLEN    SIE IHREN FERNSEHER SO EIN," 
  410 PRINT "DAS DIESER TON GENAUSO"  : "LAUT IST, WIE DAS FREI-"  : "ZEICHEN AUS DEM TELEFON."  :  :  :  :  :  :  :  :  :  :  :  : 
  420 GOSUB 1440
  430 CALL CLEAR 
  440 PRINT "SIND SIE ZUM EINSTELLEN"  : "BEREIT ?"  :  :  : "WENN SIE JETZT IRGENDEINE"  : "TASTE DRUECKEN," 
  450 PRINT "ERTOENT 15 SEKUNDEN LANG DERKONTROLLTON."  :  :  :  :  :  :  :  :  :  :  :  :  : 
  460 CALL KEY ( 0 , A , B ) 
  470 IF B = 0 THEN 460
  480 CALL CLEAR 
  490 V = 0 
  500 CALL SCREEN ( 14 ) 
  510 PRINT "STELLEN SIE JETZT DEN TON"  : "GENAUSO LAUT, WIE DAS FREI- ZEICHEN AUS DEM TELEFON !"  :  :  :  :  :  :  :  :  :  :  :  : 
  520 V = V + 1 
  530 CALL SOUND ( 1000 , 450 , 5 ) 
  540 IF V < 16 THEN 520
  550 CALL CLEAR 
  560 CALL SCREEN ( 4 ) 
  570 PRINT "WENN SIE DEN KONTROLLTON    NOCH EINMAL HOEREN WOLLEN,  DANN DRUECKEN SIE 'J'." 
  580 PRINT "ANDERNFALLS DRUECKEN SIE    IRGENDEINE ANDERE TASTE."  :  :  :  :  :  :  : 
  590 CALL KEY ( 0 , A , B ) 
  600 IF B = 0 THEN 590
  610 IF A = 74 THEN 480
  620 CALL CLEAR 
  630  ! 
  640 PRINT "DIE VOR BEREITUNGEN FUER    DEN TEST SIND ABGESCHLOSSEN."  :  :  :  : 
  650 PRINT "WENN DER BILDSCHIRM NUN ROT WIRD ACHTEN SIE BITTE AUF   TOENE."  :  :  :  :  :  : 
  660 GOSUB 1440
  670 GOSUB 1200
  680 IF ( X = 0 ) + ( Y = 0 ) = - 2 THEN 810
  690 IF Y > 0 THEN 710
  700 IF X > 0 THEN 790
  710 PRINT "SIE MUESSEN SICH GETAEUSCHT HABEN, ALS SIE BEIM ERSTEN  MAL AUF 'J' DRUECKTEN." 
  720 PRINT  : "ES WAR GAR KEIN TON ZU"  : "HOEREN. MACHEN SIE DEN TEST NOCHMAL."  :  :  : 
  730 PRINT "(DRUECKEN SIE DAZU EINE"  : "TASDE)" 
  740 X = 0 
  750 Y = 0 
  760 GOSUB 1450
  770 GOTO 650
  780 GOTO 820
  790 PRINT "BEI IHNEN LIEGT MOEGLICHER- WEISE EIN HOERDEFIZIT VOR." 
  800 GOTO 820
  810 PRINT "BEI IHNEN WURDE KEINE"  : "ABWEICHUNG VON DER ZU ERWAR-TENDEN HOERLEISTUNG FESTGE- STELLT."  :  :  :  :  :  :  : 
  820 GOSUB 1440
  830 CALL CLEAR 
  840 D$ = "ZWEITER TEST:" 
  850 LU = LEN ( D$ ) 
  860 ZL = 5 
  870 SP = INT ( 28 - LU ) / 2 
  880 GOSUB 1500
  890 D$ = "HOHE TOENE" 
  900 LU = LEN ( D$ ) 
  910 ZL = 10 
  920 SP = INT ( 28 - LU ) / 2 
  930 GOSUB 1500
  940 GOSUB 1440
  950 PRINT "FUER DEN ZWEITEN TEIL DES   TESTS MUESSEN SIE DIE"  : "LAUTSTAERKE DES FERNSEHERS  WEIT AUFDREHEN."  :  : 
  960 PRINT "HABEN SIE IHN EINGESTELLT?"  : "DANN KOENNEN WIR JA WEITER- MACHEN."  :  :  :  :  :  : 
  970 GOSUB 1440
  980 PRINT "NACH DEM NAECHSTEN DRUCK"  : "AUF EINE BELIEBIGE TASTE"  : "BEGINNT EINE KASKADE VON"  : "TOENEN"  :  :  :  : 
  990 PRINT  :  : "JEDER FARBWECHSEL ZEIGT"  : "EINEN NEUEN TON AN."  :  :  : 
 1000 PRINT "DRUECKEN SIE AUF DIE J-TASTESOBALD SIE ZWEIFELSFREI     EINEN TON HOEREN."  :  :  :  :  :  : 
 1010 PRINT "(STARTEN MIT ENTER)" 
 1020 CALL KEY ( 0 , K , S ) 
 1030 IF S = 0 THEN 1020
 1040 CALL CLEAR 
 1050 FOR HHE = 20000 TO 100 STEP - 500 
 1060 COUNT = COUNT + 1 
 1070 ZAEHLER = ZAEHLER + 1 
 1080 IF ZAEHLER > 15 THEN 1090ELSE 1100
 1090 ZAEHLER = ZAEHLER - 15 
 1100 CALL SCREEN ( ZAEHLER + 1 ) 
 1110 CALL SOUND ( 1000 , HHE , 1 ) 
 1120 CALL KEY ( 0 , KEY , STATUS ) 
 1130 IF KEY = 74 THEN 1150
 1140 NEXT HHE 
 1150 CALL CLEAR 
 1160 PRINT  :  :  : "DER ERSTE GEHOERTE TON HATTEEINE FREQUENZ VON"  :  : HHE  :  : "HERTZ."  :  : 
 1170 PRINT "*DAMIT IST DER TEST BEENDET*" 
 1180 STOP 
 1190 REM 
 1200 CT = 1 
 1210 CALL SCREEN ( 7 ) 
 1220 T = FREQ ( CT ) 
 1230 CALL CLEAR 
 1240 CALL SOUND ( 4250 , T , 23 ) 
 1250 FOR I = 1 TO 1700 
 1260 NEXT I 
 1270 CALL SCREEN ( 4 ) 
 1280 PRINT "TON GEHOERT=J KEIN TON=N"  :  :  :  :  :  :  :  :  :  : 
 1290 CALL KEY ( 3 , A , B ) 
 1300 IF B = 0 THEN 1290
 1310 IF ( A = 74 ) + ( A = 78 ) = 0 THEN 1290
 1320 IF ( CT > 1 ) + ( A = 78 ) = - 2 THEN 1330ELSE 1350
 1330 X = X + 1 
 1340 GOTO 1380
 1350 IF ( CT < = 1 ) + ( A = 74 ) = - 2 THEN 1370ELSE 1380
 1360 IF ( CT = 1 ) + ( A = 78 ) = - 2 THEN 1380
 1370 Y = Y + 1 
 1380 CT = CT + 1 
 1390 IF CT < 5 THEN 1210
 1400 RETURN 
 1410 CCV$ = "P.M. COMPUTERHEFT" 
 1420 RETURN 
 1430 REM 
 1440 PRINT "(WEITER MIT EINER TASTE)" 
 1450 CALL KEY ( 0 , K , S ) 
 1460 IF S = 0 THEN 1450
 1470 CALL CLEAR 
 1480 RETURN 
 1490 REM 
 1500 FOR K = 1 TO LU 
 1510 DR$ = SEG$ ( D$ , K , 1 ) 
 1520 CALL HCHAR ( ZL , SP + K - 1 , ASC ( DR$ ) ) 
 1530 CALL HCHAR ( ZL + 1 , SP + K - 1 , ASC ( "=" ) ) 
 1540 NEXT K 
 1550 RETURN 
