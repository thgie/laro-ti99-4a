   10 REM *********************
   15 REM * TI BENUETZER-CLUB *
   20 REM *     SCHWEIZ       *
   25 REM * ----------------- *
   30 REM *  BIORHYTHMUS MIT  *
   35 REM *      GRAFIK       *
   40 REM * ----------------- *
   45 REM * VON GUGL JOHANNES *
   50 REM *    (JUNI 1982)    *
   55 REM *********************
   60 REM 
   65 REM 
   70 REM  * SPEICHERBEDARF :
   75 REM    CA. 5150 BYTES   *
   80 REM 
   85 REM   GRUNDAUSRUESTUNG
   90 REM 
  500 REM  ###########
  510 REM  #  TITEL  #
  520 REM  ###########
  530 REM 
  540 CALL CLEAR 
  545 RESTORE 
  550 CALL CHAR ( 64 , "3C4299A1A199423C" ) 
  560 PRINT "@ TI BENUETZER-CLUB SCHWEIZ"  :  : 
  570 CALL HCHAR ( 23 , 5 , 42 , 24 ) 
  580 PRINT  :  : TAB ( 8 )  ; "PRAESENTIERT:"  :  :  : 
  590 PRINT TAB ( 4 )  ; "***********************" 
  600 PRINT TAB ( 4 )  ; "***********************" 
  610 PRINT TAB ( 4 )  ; "***********************" 
  620 PRINT TAB ( 4 )  ; "***                 ***" 
  630 PRINT TAB ( 4 )  ; "***                 ***" 
  640 PRINT TAB ( 4 )  ; "***                 ***" 
  650 PRINT TAB ( 4 )  ; "***   BIORHYTHMUS   ***" 
  660 PRINT TAB ( 4 )  ; "***                 ***" 
  670 PRINT TAB ( 4 )  ; "***                 ***" 
  680 PRINT TAB ( 4 )  ; "***                 ***" 
  690 PRINT TAB ( 4 )  ; "***********************" 
  700 PRINT TAB ( 4 )  ; "***********************" 
  710 PRINT TAB ( 4 )  ; "***********************" 
  720 PRINT  :  :  : 
  730 FOR Z = 1 TO 400 
  740 NEXT Z 
  750 CALL CLEAR 
  760 CALL SCREEN ( 12 ) 
  770 INPUT "IHR NAME?:"  : NAME$ 
  780 PRINT 
  790 INPUT "WANN SIND SIE GEBOREN?      (TAG,MONAT,JAHR):"  : TT , MM , JJ 
  800 PRINT 
  810 REM 
  820 REM  ##################
  830 REM  # WOCHENTAGBEST. #
  840 REM  ##################
  850 REM 
  860 IF MM < = 2 THEN 890
  870 MM = MM - 3 
  880 GOTO 910
  890 MM = MM + 9 
  900 JJ = JJ - 1 
  910 JU = INT ( ( 1461 * JJ ) / 4 ) + INT ( ( 153 * MM + 2 ) / 5 ) + TT + 2415078.5 
  920 FOR I = 0 TO 6 
  930 READ WO$ ( I ) 
  940 NEXT I 
  950 EI = INT ( JU - ( INT ( ( JU + 1 ) / 7 ) * 7 ) + .5 ) 
  960 PRINT "****************************" 
  970 PRINT "DER GEBURTSTAG VON "  ; NAME$  ; " WAR AN EINEM "  ; WO$ ( EI ) 
  980 PRINT "****************************"  :  : 
  990 INPUT "VON WELCHEM DATUM AN WOLLEN SIE DIE BIORHYTHMEN?        (TAG,MONAT,JAHR):"  : AA , BB , CC 
 1000 PRINT 
 1010 REM 
 1020 REM  ##################
 1030 REM  # WOCHENTAGBEST. #
 1040 REM  ##################
 1050 REM 
 1060 IF BB < = 2 THEN 1090
 1070 BB = BB - 3 
 1080 GOTO 1110
 1090 BB = BB + 9 
 1100 CC = CC - 1 
 1110 GR = INT ( ( 1461 * CC ) / 4 ) + INT ( ( 153 * BB + 2 ) / 5 ) + AA + 2415078.5 
 1160 VE = INT ( GR - ( INT ( ( GR + 1 ) / 7 ) * 7 ) + .5 ) 
 1170 PRINT  : "DER ERSTE TAG IST EIN "  ; WO$ ( VE ) 
 1180 PRINT  :  : 
 1190 DATA SAMSTAG , SONNTAG , MONTAG , DIENSTAG , MITTWOCH , DONNERSTAG , FREITAG 
 1200 INPUT "FUER WELCHEN ZEITRAUM WOLLENSIE DIE BERECHNUNG?         (MAX.30 TAGE):"  : TG 
 1210 REM 
 1220 REM  ##########
 1230 REM  # GRAFIK #
 1240 REM  ##########
 1250 REM 
 1260 CALL CLEAR 
 1270 CALL SCREEN ( 10 ) 
 1280 FOR S = 3 TO 32 
 1290 CALL VCHAR ( 4 , S , 154 , 21 ) 
 1300 NEXT S 
 1310 CALL CHAR ( 153 , "0C0C0C7C7C0C0C0C" ) 
 1320 CALL VCHAR ( 4 , 2 , 153 , 21 ) 
 1330 CALL HCHAR ( 4 , 1 , 43 ) 
 1340 CALL HCHAR ( 14 , 1 , 48 ) 
 1350 CALL HCHAR ( 24 , 1 , 45 ) 
 1360 CALL CHAR ( 152 , "101010FFFF101010" ) 
 1370 CALL CHAR ( 128 , "003C24243C202" ) 
 1380 CALL CHAR ( 136 , "003C203838203C" ) 
 1390 CALL CHAR ( 144 , "003C24202C243C" ) 
 1400 CALL CHAR ( 154 , "101010101010101" ) 
 1410 CALL HCHAR ( 14 , 3 , 152 , 30 ) 
 1420 CALL COLOR ( 13 , 2 , 1 ) 
 1430 CALL COLOR ( 4 , 16 , 1 ) 
 1440 CALL COLOR ( 14 , 2 , 1 ) 
 1450 CALL COLOR ( 5 , 16 , 1 ) 
 1460 CALL COLOR ( 15 , 2 , 1 ) 
 1470 CALL COLOR ( 6 , 16 , 1 ) 
 1480 CALL COLOR ( 7 , 16 , 1 ) 
 1490 CALL COLOR ( 8 , 16 , 1 ) 
 1500 CALL COLOR ( 16 , 2 , 1 ) 
 1510 CALL COLOR ( 9 , 16 , 1 ) 
 1520 CALL COLOR ( 10 , 16 , 1 ) 
 1530 CALL COLOR ( 11 , 16 , 1 ) 
 1540 CALL COLOR ( 12 , 16 , 1 ) 
 1550 CALL COLOR ( 2 , 16 , 1 ) 
 1560 CALL COLOR ( 3 , 16 , 1 ) 
 1570 REM 
 1580 REM  ############
 1590 REM  #  PHASEN  #
 1600 REM  ############
 1610 REM 
 1620 FNG = GR - JU 
 1630 FOR A = 0 TO TG - 1 
 1640 TSG = FNG + A 
 1650 X = A + 3 
 1660 REM 
 1670 REM  ################
 1680 REM  # PHYS. ZYKLUS #
 1690 REM  ################
 1700 REM 
 1710 Z = 23 
 1720 GOSUB 2010
 1730 DEF PZ = APL 
 1740 CALL HCHAR ( Y , X , 128 ) 
 1750 REM 
 1760 REM  ################
 1770 REM  # EMOT. ZYKLUS #
 1780 REM  ################
 1790 REM 
 1800 Z = 28 
 1810 GOSUB 2010
 1820 DEF EZ = APL 
 1830 CALL HCHAR ( Y , X , 136 ) 
 1840 REM 
 1850 REM  ################
 1860 REM  # GEIST.ZYKLUS #
 1870 REM  ################
 1880 REM 
 1890 Z = 33 
 1900 GOSUB 2010
 1910 DEF GZ = APL 
 1920 CALL HCHAR ( Y , X , 144 ) 
 1930 NEXT A 
 1940 PRINT 
 1950 PRINT "biorhythmus fuer "  ; NAME$  : "dauer"  ; TG  ; "tage" 
 1960 CALL KEY ( 0 , CODE , STAT ) 
 1970 IF CODE < > 13 THEN 1960ELSE 750
 1980 STOP 
 1990 REM 
 2000 REM  ################
 2010 REM  # BERECHN.ZYKL.#
 2020 REM  ################
 2030 REM 
 2040 APL = SIN ( ( ( TSG / Z ) * 360 ) * ( 4 * ATN ( 1 ) ) / 180 ) 
 2050 Y = ABS ( INT ( APL * 10 ) - 14 ) 
 2060 RETURN 
 2070 END 
