   10 REM *********************
   15 REM * TI BENUETZER-CLUB *
   20 REM *     SCHWEIZ       *
   25 REM * ----------------- *
   30 REM *  BIORHYTHMUS MIT  *
   35 REM *      GRAFIK       *
   40 REM * ----------------- *
   45 REM * VON GUGL JOHANNES *
   47 REM * ERW:LARO SCHATZER
   50 REM *    (JUNI 1982)    *
   55 REM *********************
   60 REM 
   65 REM 
   70 REM  * SPEICHERBEDARF :
   75 REM    CA. 4985 BYTES   *
   80 REM 
   85 REM   EXTENDED BASIC    *
   90 REM 
  500 REM  ###########
  510 REM  #  TITEL  #
  520 REM  ###########
  530 REM 
  535 ON WARNING NEXT 
  540 CALL CLEAR 
  542 CALL SCREEN ( 5 ) 
  547 FOR I = 0 TO 14  :: CALL COLOR ( I , 16 , 1 )  :: NEXT I 
  550 CALL CHAR ( 64 , "3C4299A1A199423C" ) 
  560 DISPLAY AT ( 1 , 1 )  : "@ TI BENUETZER-CLUB SCHWEIZ"  :  : "****************************"  : TAB ( 9 )  ; "PRASENTIERT"  : "****************************" 
  570 FOR Z = 1 TO 100  :: NEXT Z 
  580 CALL COLOR ( 1 , 12 , 1 ) 
  590 DISPLAY AT ( 8 , 8 )  : "#################"  : TAB ( 7 )  ; "#               #"  : TAB ( 6 )  ; "#  BIORHYTHMUS  #"  : TAB ( 5 )  ; "#               #"  : TAB ( 4 )  ; "#################" 
  730 FOR Z = 1 TO 400 
  740 NEXT Z 
  750 CALL CLEAR 
  752 CALL CHARSET 
  754 CALL SCREEN ( 12 ) 
  756 RESTORE 
  770 DISPLAY "IHR NAME?:"  ; 
  775 ACCEPT BEEP VALIDATE ( UALPHA ) SIZE ( 11 )  : NAME$ 
  780 PRINT  :  : 
  785 IF NAME$ = "ENDE" THEN CALL CLEAR  :: STOP 
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
  995 A1 = AA  :: B1 = BB  :: C1 = CC 
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
 1205 IF TG < 1 OR TG > 30 THEN 1200
 1210 REM 
 1220 REM  ##########
 1230 REM  # GRAFIK #
 1240 REM  ##########
 1250 REM 
 1260 CALL CLEAR 
 1270 CALL SCREEN ( 5 ) 
 1280 FOR S = 3 TO TG + 2 
 1290 CALL VCHAR ( 2 , S , 122 , 21 ) 
 1300 NEXT S 
 1310 CALL CHAR ( 121 , "0C0C0C7C7C0C0C0C" ) 
 1320 CALL VCHAR ( 2 , 2 , 121 , 21 ) 
 1330 CALL HCHAR ( 2 , 1 , 43 ) 
 1340 CALL HCHAR ( 12 , 1 , 48 ) 
 1350 CALL HCHAR ( 22 , 1 , 45 ) 
 1360 CALL CHAR ( 120 , "101010FFFF101010" ) 
 1370 Z$ = "387CFEFEFE7C3800" 
 1380 CALL CHAR ( 96 , Z$ , 104 , Z$ , 112 , Z$ , 136 , Z$ ) 
 1400 CALL CHAR ( 122 , "101010101010101" ) 
 1410 CALL HCHAR ( 12 , 3 , 120 , TG ) 
 1420 FOR I = 0 TO 8 
 1430 CALL COLOR ( I , 16 , 1 ) 
 1440 NEXT I 
 1450 CALL COLOR ( 9 , 4 , 1 ) 
 1460 CALL COLOR ( 10 , 10 , 1 ) 
 1470 CALL COLOR ( 11 , 8 , 1 ) 
 1475 CALL COLOR ( 14 , 12 , 1 ) 
 1480 CALL COLOR ( 7 , 16 , 1 ) 
 1490 CALL COLOR ( 12 , 16 , 1 ) 
 1500 DISPLAY AT ( 1 , 1 )  : "`PHYSISCHhEMOTIONALpGEISTIG" 
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
 1740 CALL GCHAR ( Y , X , Z1 ) 
 1741 IF Z1 < > 96 AND Z1 < > 104 AND Z1 < > 112 AND Z1 < > 136 THEN Z1 = 96 ELSE Z1 = 136 
 1745 CALL HCHAR ( Y , X , Z1 ) 
 1747 CALL SOUND ( - 200 , Z1 * 2 , 10 ) 
 1750 REM 
 1760 REM  ################
 1770 REM  # EMOT. ZYKLUS #
 1780 REM  ################
 1790 REM 
 1800 Z = 28 
 1810 GOSUB 2010
 1820 DEF EZ = APL 
 1830 CALL GCHAR ( Y , X , Z1 ) 
 1831 IF Z1 < > 96 AND Z1 < > 104 AND Z1 < > 112 AND Z1 < > 136 THEN Z1 = 104 ELSE Z1 = 136 
 1835 CALL HCHAR ( Y , X , Z1 ) 
 1837 CALL SOUND ( - 200 , Z1 * 2 , 10 ) 
 1840 REM 
 1850 REM  ################
 1860 REM  # GEIST.ZYKLUS #
 1870 REM  ################
 1880 REM 
 1890 Z = 33 
 1900 GOSUB 2010
 1910 DEF GZ = APL 
 1920 CALL GCHAR ( Y , X , Z1 ) 
 1921 IF Z1 < > 96 AND Z1 < > 104 AND Z1 < > 112 AND Z1 < > 136 THEN Z1 = 112 ELSE Z1 = 136 
 1925 CALL HCHAR ( Y , X , Z1 ) 
 1927 CALL SOUND ( - 200 , Z1 * 2 , 10 ) 
 1930 NEXT A 
 1940 Z1$ = "DAUER " & STR$ ( TG ) & " TAGE."  :: Z2$ = "(AB " & STR$ ( A1 ) & "." & STR$ ( B1 ) & "." & STR$ ( C1 ) & ")" 
 1945 IF LEN ( Z1$ ) + LEN ( Z2$ ) < = 28 THEN Z1$ = Z1$ & Z2$ 
 1950 DISPLAY AT ( 23 , 1 )  : "BIORHYTHMUS FUER "  ; NAME$  : Z1$ 
 1960 CALL KEY ( 0 , CODE , STAT ) 
 1970 IF CODE < > 13 THEN 1960ELSE 750
 1980 STOP 
 1990 REM 
 2000 REM  ################
 2010 REM  # BERECHN.ZYKL.#
 2020 REM  ################
 2030 REM 
 2040 APL = SIN ( ( ( TSG / Z ) * 360 ) * ( 4 * ATN ( 1 ) ) / 180 ) 
 2050 Y = ABS ( INT ( APL * 10 ) - 12 ) 
 2060 RETURN 
 2070 END 
