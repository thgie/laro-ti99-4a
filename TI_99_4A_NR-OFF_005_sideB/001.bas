  220 GOTO 500 :: DIM M$ ( 100 , 10 ) , PT ( 100 ) 
  230 A$ , SUCH$ , A , HV , I , K , OG , P , S , UG , Y , FN 
  240 CALL CHAR  :: CALL CLEAR  :: CALL HPTMENUE  :: CALL KEY  :: CALL MASKE  :: CALL MASKELEER  :: CALL SOUND 
  250 DATA 0000FFFF , 80808080808080FF , 00000000000000FF , 00007E , 8080808080808080 
  260  ! @P-
  500  !  BEGINN
  505 CALL CLEAR  :: I = 0  :: Y = 2 
  510  ! 
  515 FOR I = 1 TO 100  :: PT ( I ) = I 
  520 NEXT I 
  525 FOR I = 35 TO 39  :: READ A$  :: CALL CHAR ( I , A$ )  :: NEXT I  :: GOTO 820
  530 DISPLAY AT ( 20 , 7 ) ERASE ALL  : "AUF WIEDERSEHEN"  :: STOP 
  535 IF HV = 0 THEN 820
  540 DISPLAY AT ( 6 , 1 ) ERASE ALL BEEP  : "GANZE DATEI SPEICHERN?(J/N)" 
  545 A = 1  :: I = HV 
  550 CALL KEY ( 0 , K , S )  :: IF K < > 74 AND K < > 78 THEN 550ELSE IF K = 74 THEN 580
  555 DISPLAY AT ( 6 , 1 )  : "VON :       BIS :" 
  560 ACCEPT AT ( 6 , 7 ) BEEP VALIDATE ( DIGIT ) SIZE ( 3 )  : A$ 
  565 ON ERROR 1030 :: A = 0  :: A = VAL ( A$ )  :: IF A = 0 OR A > HV THEN 560
  570 ACCEPT AT ( 6 , 19 ) BEEP VALIDATE ( DIGIT ) SIZE ( 3 )  : A$ 
  575 ON ERROR 1030 :: I = 0  :: I = VAL ( A$ )  :: IF A = 0 OR A > HV THEN 560
  580 DISPLAY AT ( 8 , 3 )  : "NAME DER OUTPUT-DATEI :" 
  585 ACCEPT AT ( 10 , 7 ) SIZE ( 15 )  : A$  :: ON ERROR 610
  590 OPEN # 1  : A$ , INTERNAL , OUTPUT , FIXED 192 
  595 PRINT # 1  : I - A + 1 , Y 
  600 FOR P = A TO I  :: FOR FN = 1 TO 9  :: PRINT # 1  : M$ ( PT ( P ) , FN ) ,  :: NEXT FN 
  605 PRINT # 1  : M$ ( PT ( P ) , 10 )  :: NEXT P  :: CLOSE # 1  :: GOTO 815
  610 DISPLAY AT ( 24 , 1 )  : "FALSCHER DATEI-NAME !" 
  615 FOR I = 110 TO 550 STEP 10  :: CALL SOUND ( - 90 , I , 5 )  :: NEXT I  :: RETURN 815
  620 CALL CLEAR  :: I = 0  :: IF HV = 0 THEN 635
  625 DISPLAY AT ( 6 , 1 )  : "VORHANDENE DATEI UND INPUT- DATEI MISCHEN ? (J/N)" 
  630 CALL KEY ( 0 , K , S )  :: IF K < > 74 AND K < > 78 THEN 630ELSE IF K = 74 THEN I = HV 
  635 DISPLAY AT ( 9 , 3 )  : "NAME DER INPUT-DATEI:" 
  640 ACCEPT AT ( 10 , 7 ) SIZE ( 15 )  : A$  :: ON ERROR 610
  645 OPEN # 1  : A$ , INTERNAL , INPUT , FIXED 192 
  650 INPUT # 1  : HV , A 
  655 IF I = 0 THEN Y = A ELSE IF HV + I > 100 THEN CLOSE # 1  :: GOTO 815
  660 FOR P = I + 1 TO I + HV  :: FOR FN = 1 TO 9  :: INPUT # 1  : M$ ( PT ( P ) , FN ) ,  :: NEXT FN 
  665 INPUT # 1  : M$ ( PT ( P ) , 10 )  :: NEXT P  :: CLOSE # 1  :: HV = P - 1  :: IF I = 0 THEN 815
  670 DISPLAY AT ( 23 , 1 )  : "DATEN WERDEN GEMISCHT       BITTE WARTEN ..." 
  675 FOR P = I + 1 TO HV 
  680 FOR A = P TO 2 STEP - 1  :: IF M$ ( PT ( A ) , Y ) < M$ ( PT ( A - 1 ) , Y ) THEN I = PT ( A )  :: PT ( A ) = PT ( A - 1 )  :: PT ( A - 1 ) = I ELSE 690
  685 NEXT A 
  690 NEXT P 
  695 GOTO 815
  700 IF HV = 100 THEN 785ELSE HV = HV + 1 
  705 DISPLAY AT ( 2 , 26 )  : HV  :: DISPLAY AT ( 23 , 1 ) 
  710 ACCEPT AT ( 2 , 9 ) VALIDATE ( UALPHA ) SIZE ( - 4 )  : M$ ( PT ( HV ) , 1 ) 
  715 ACCEPT AT ( 4 , 9 ) SIZE ( - 18 )  : M$ ( PT ( HV ) , 2 ) 
  720 ACCEPT AT ( 6 , 9 ) SIZE ( - 18 )  : M$ ( PT ( HV ) , 3 ) 
  725 ACCEPT AT ( 9 , 9 ) VALIDATE ( DIGIT ) SIZE ( - 4 )  : M$ ( PT ( HV ) , 4 ) 
  730 ACCEPT AT ( 9 , 14 ) SIZE ( - 13 )  : M$ ( PT ( HV ) , 5 ) 
  735 ACCEPT AT ( 12 , 9 ) VALIDATE ( NUMERIC , " /" ) SIZE ( - 13 )  : M$ ( PT ( HV ) , 6 ) 
  740 ACCEPT AT ( 14 , 9 ) VALIDATE ( NUMERIC , " /" ) SIZE ( - 13 )  : M$ ( PT ( HV ) , 7 ) 
  745 ACCEPT AT ( 17 , 9 ) SIZE ( - 19 )  : M$ ( PT ( HV ) , 8 ) 
  750 ACCEPT AT ( 19 , 9 ) SIZE ( - 19 )  : M$ ( PT ( HV ) , 9 ) 
  755 ACCEPT AT ( 21 , 9 ) SIZE ( - 19 )  : M$ ( PT ( HV ) , 10 ) 
  760 FOR I = 1 TO HV - 1  :: IF M$ ( PT ( I ) , Y ) > M$ ( PT ( HV ) , Y ) THEN 770
  765 NEXT I 
  770 PT ( 0 ) = PT ( HV ) 
  775 FOR P = HV TO I + 1 STEP - 1  :: PT ( P ) = PT ( P - 1 )  :: NEXT P  :: PT ( I ) = PT ( 0 ) 
  780 RETURN 
  785 DISPLAY AT ( 23 , 1 )  : "DATEI GEFUELLT -> TASTE 'N'"  :: DISPLAY AT ( 24 , 19 )  : "DRUECKEN"  :: RETURN 
  790 DISPLAY AT ( 2 , 26 )  : A 
  795 DISPLAY AT ( 2 , 9 ) SIZE ( 4 )  : M$ ( PT ( A ) , 1 )  :: DISPLAY AT ( 4 , 9 )  : M$ ( PT ( A ) , 2 )  :: DISPLAY AT ( 6 , 9 )  : M$ ( PT ( A ) , 3 ) 
  800 DISPLAY AT ( 9 , 9 )  : M$ ( PT ( A ) , 4 )  :: DISPLAY AT ( 9 , 14 )  : M$ ( PT ( A ) , 5 )  :: DISPLAY AT ( 12 , 9 )  : M$ ( PT ( A ) , 6 )  :: DISPLAY AT ( 14 , 9 )  : M$ ( PT ( A ) , 7 ) 
  805 DISPLAY AT ( 17 , 9 )  : M$ ( PT ( A ) , 8 )  :: DISPLAY AT ( 19 , 9 )  : M$ ( PT ( A ) , 9 )  :: DISPLAY AT ( 21 , 9 )  : M$ ( PT ( A ) , 10 ) 
  810 RETURN 
  815 ON ERROR STOP 
  820 CALL HPTMENUE  :: I = HV 
  825 CALL KEY ( 0 , K , S )  :: IF K < 49 OR K > 55 THEN 825
  830 ON K - 48 GOTO 620, 835, 860, 1105, 535, 1210, 530
  835 CALL MASKE 
  840 CALL MASKELEER 
  845 GOSUB 700
  850 DISPLAY AT ( 23 , 1 )  : "WEITERE EINGABEN? (J/N)" 
  855 CALL KEY ( 0 , K , S )  :: IF K < > 74 AND K < > 78 THEN 855ELSE IF K = 74 THEN 840ELSE 820
  860 IF HV = 0 THEN 820
  865 CALL MASKE 
  870 CALL MASKELEER 
  875 DISPLAY AT ( 23 , 1 )  : "SUCHEN NAME=(1) NUMMER=(2)" 
  880 DISPLAY AT ( 24 , 1 ) BEEP  : "BLAETTERN=(3) MENUE =(4)" 
  885 CALL KEY ( 0 , K , S )  :: IF K < 49 OR K > 52 THEN 885
  890 ON K - 48 GOTO 895, 990, 1035, 820
  895  ! 
  900 ACCEPT AT ( 2 * Y - ( Y = 4 OR Y > 7 ) + ( Y = 5 ) , 9 - ( Y = 5 ) * 5 ) SIZE ( - ( Y = 1 OR Y = 4 ) * 4 - 18 * ( Y = 2 OR Y = 3 ) - 13 * ( Y > 4 AND Y < 8 ) - 19 * ( Y > 7 ) )  : SUCH$ 
  905 CALL MASKELEER 
  910 UG = 1  :: OG = HV  :: P = LEN ( SUCH$ ) 
  915 IF HV = 0 THEN 820
  920 I = INT ( ( OG + UG ) / 2 ) 
  925 IF SUCH$ < SEG$ ( M$ ( PT ( I ) , Y ) , 1 , P ) THEN OG = I - 1 ELSE IF SUCH$ > SEG$ ( M$ ( PT ( I ) , Y ) , 1 , P ) THEN UG = I + 1 ELSE 945
  930 IF UG < = OG THEN 920
  935 DISPLAY AT ( 23 , 1 ) BEEP  : "KEINE WEITEREN ADRESSEN MEHR   WEITERSUCHEN (J/N)?" 
  940 CALL KEY ( 0 , K , S )  :: IF K < > 74 AND K < > 78 THEN 940ELSE IF K = 74 THEN 870ELSE 820
  945 FOR A = I TO 1 STEP - 1 
  950 IF SUCH$ < > SEG$ ( M$ ( PT ( A ) , Y ) , 1 , P ) THEN 960
  955 NEXT A 
  960 A = A + 1 
  965 GOSUB 790
  970 DISPLAY AT ( 23 , 1 ) BEEP  : "WEITERE ADRESSEN UNTER"  : "DIESEM NAMEN SUCHEN (J/N)?" 
  975 CALL KEY ( 0 , K , S )  :: IF K < > 74 AND K < > 78 THEN 975ELSE IF K = 78 THEN 870
  980 IF A + 1 > HV THEN 935
  985 IF SUCH$ < > SEG$ ( M$ ( PT ( A + 1 ) , Y ) , 1 , P ) THEN 935ELSE 960
  990  ! 
  995 IF HV = 0 THEN 820
 1000 CALL MASKELEER 
 1005 DISPLAY AT ( 23 , 1 )  :: ACCEPT AT ( 2 , 26 ) BEEP VALIDATE ( DIGIT )  : A$ 
 1010 ON ERROR 1030 :: A = 0  :: A = VAL ( A$ )  :: IF A = 0 OR A > HV THEN 1005
 1015 GOSUB 790
 1020 DISPLAY AT ( 23 , 1 ) BEEP  :  : "WEITERE NUMMERN (J/N)?" 
 1025 CALL KEY ( 0 , K , S )  :: IF K < > 74 AND K < > 78 THEN 1025ELSE IF K = 78 THEN 815ELSE 990
 1030 RETURN NEXT 
 1035  ! 
 1040 DISPLAY AT ( 23 , 1 ) BEEP  : "STARTNUMMER EINGEBEN !"  : "VORWAERTS (D)/ RUECKW. (S)" 
 1045 ACCEPT AT ( 2 , 26 ) BEEP VALIDATE ( DIGIT )  : A$ 
 1050 ON ERROR 1030 :: A = 0  :: A = VAL ( A$ )  :: IF A = 0 OR A > HV THEN 1045
 1055 DISPLAY AT ( 23 , 1 )  : "MENUE     (E) STARTNR. (X)" 
 1060 CALL MASKELEER 
 1065 GOSUB 790
 1070 CALL KEY ( 0 , K , S )  :: IF S = 0 THEN 1070
 1075 IF K = 68 THEN 1095
 1080 IF K = 83 THEN 1100
 1085 IF K = 88 THEN 1045
 1090 IF K = 69 THEN 820ELSE 1070
 1095 A = A + 1  :: IF A > HV THEN CALL SOUND ( 50 , 110 , 1 )  :: GOTO 1100ELSE 1060
 1100 A = A - 1  :: IF A < 1 THEN CALL SOUND ( 50 , 110 , 1 )  :: GOTO 1095ELSE 1060
 1105  ! 
 1110 IF HV = 0 THEN 820
 1115 CALL MASKE 
 1120 CALL MASKELEER  :: DISPLAY AT ( 23 , 1 ) BEEP  : "AENDERN (A)    LOESCHEN (L) MENUE   (E)" 
 1125 CALL KEY ( 0 , K , S )  :: IF K < > 65 AND K < > 69 AND K < > 76 THEN 1125ELSE IF K = 69 THEN 820
 1130 DISPLAY AT ( 23 , 1 ) BEEP  : "NUMMER EINGEBEN"  : 
 1135 ACCEPT AT ( 2 , 26 ) BEEP VALIDATE ( DIGIT )  : A$ 
 1140 ON ERROR 1030 :: A = 0  :: A = VAL ( A$ )  :: IF A = 0 OR A > HV THEN 1135
 1145 GOSUB 790
 1150 IF K = 76 THEN 1180
 1155 DISPLAY AT ( 23 , 1 ) 
 1160 PT ( 0 ) = PT ( A )  :: FOR I = A + 1 TO HV  :: PT ( I - 1 ) = PT ( I )  :: NEXT I  :: PT ( HV ) = PT ( 0 )  :: HV = HV - 1 
 1165 GOSUB 700
 1170 DISPLAY AT ( 23 , 1 ) BEEP  : "WEITERE AENDERUNGEN ? (J/N)" 
 1175 CALL KEY ( 0 , K , S )  :: IF K < > 74 AND K < > 78 THEN 1175ELSE IF K = 74 THEN CALL MASKELEER  :: GOTO 1130ELSE 820
 1180 DISPLAY AT ( 23 , 1 ) BEEP  : "WIRKLICH LOESCHEN ?(J/N)" 
 1185 CALL KEY ( 0 , K , S )  :: IF K < > 74 AND K < > 78 THEN 1185ELSE IF K = 78 THEN 1200
 1190 CALL MASKELEER  :: DISPLAY AT ( 24 , 1 )  : "WARTEN ..." 
 1195 PT ( 0 ) = PT ( A )  :: FOR I = A + 1 TO HV  :: PT ( I - 1 ) = PT ( I )  :: NEXT I  :: PT ( HV ) = PT ( 0 )  :: HV = HV - 1 ) 
 1200 DISPLAY AT ( 23 , 1 ) BEEP  : "WEITERE LOESCHUNGEN ? (J/N)"  : 
 1205 CALL KEY ( 0 , K , S )  :: IF K < > 74 AND K < > 78 THEN 1205ELSE IF K = 74 THEN K = 76  :: CALL MASKELEER  :: GOTO 1130ELSE 820
 1210  ! 
 1215 IF HV = 0 THEN 820
 1220 DISPLAY AT ( 1 , 1 ) ERASE ALL  : "SORTIERERKRITERIUM :" 
 1225 DISPLAY AT ( 4 , 1 )  : "(0) ANREDE"  :  : "(1) NAME"  :  : "(2) STRASSE"  :  : "(3) PLZ"  :  : "(4) ORT"  :  : "(5) TEL/P."  :  : "(6) TEL/G."  :  : "(7) BEM. 1" 
 1230 DISPLAY AT ( 20 , 1 )  : "(8) BEM. 2"  :  : "(9) BEM. 3"  :  : "IHRE W A H L ?" 
 1235 DISPLAY AT ( 2 + Y * 2 , 14 )  : "** AKTUELLES"  :: DISPLAY AT ( 3 + Y * 2 , 17 ) BEEP  : "SORTIERKRIT." 
 1240 CALL KEY ( 0 , K , S )  :: IF K < 48 OR K > 57 THEN 1240
 1245 DISPLAY AT ( 2 + Y * 2 , 14 )  : ""  : ""  :: DISPLAY AT ( K * 2 - 92 , 14 )  : "** AKTUELLES"  :: DISPLAY AT ( K * 2 - 91 , 17 )  : "SORTIERKRIT."  :: IF K - 47 = Y THEN 820ELSE Y = K - 47 
 1250 DISPLAY AT ( 24 , 1 )  : "BITTE WARTEN ..." 
 1255 FOR I = HV TO 2 STEP - 1  :: P = 1  :: FOR A = 2 TO I 
 1260 IF M$ ( PT ( A ) , Y ) < M$ ( PT ( A - 1 ) , Y ) THEN K = PT ( A )  :: PT ( A ) = PT ( A - 1 )  :: PT ( A - 1 ) = K  :: P = 0 
 1265 NEXT A  :: IF P THEN 820
 1270 NEXT I  :: GOTO 820
 1273  ! @P+
 1275 SUB MASKELEER 
 1280 DISPLAY AT ( 2 , 9 ) SIZE ( - 4 )  :: DISPLAY AT ( 4 , 9 )  :: DISPLAY AT ( 6 , 9 )  :: DISPLAY AT ( 9 , 9 ) 
 1285 DISPLAY AT ( 12 , 9 )  :: DISPLAY AT ( 14 , 9 )  :: DISPLAY AT ( 17 , 9 )  :: DISPLAY AT ( 19 , 9 )  :: DISPLAY AT ( 21 , 9 ) 
 1290 SUBEND 
 1295 SUB HPTMENUE 
 1300 CALL CLEAR 
 1305 DISPLAY AT ( 1 , 6 )  : "_________________" 
 1310 DISPLAY AT ( 3 , 6 )  : "*** M E N U E ***" 
 1315 DISPLAY AT ( 4 , 6 )  : "_________________" 
 1320 DISPLAY AT ( 6 , 6 )  : "(1)  -  EINLESEN" 
 1325 DISPLAY AT ( 8 , 6 )  : "(2)  -  EINGABE" 
 1330 DISPLAY AT ( 10 , 6 )  : "(3)  -  AUSGABE" 
 1335 DISPLAY AT ( 12 , 6 )  : "(4)  -  AENDERUNGEN" 
 1340 DISPLAY AT ( 14 , 6 )  : "(5)  -  SPEICHERN" 
 1345 DISPLAY AT ( 16 , 6 )  : "(6)  -  SORTIEREN" 
 1350 DISPLAY AT ( 18 , 6 )  : "(7)  -  BEENDEN" 
 1355 DISPLAY AT ( 21 , 6 )  : "TREFFEN SIE IHRE" 
 1360 DISPLAY AT ( 23 , 6 )  : "W A H L" 
 1365 DISPLAY AT ( 24 , 6 ) BEEP  : "_________________" 
 1370 SUBEND 
 1375 SUB MASKE  :: CALL CLEAR 
 1380 CALL VCHAR ( 1 , 27 , 39 , 2 ) 
 1385 CALL HCHAR ( 3 , 27 , 36 ) 
 1390 CALL HCHAR ( 3 , 28 , 37 , 5 ) 
 1395 CALL HCHAR ( 3 , 11 , 38 , 4 ) 
 1400 CALL HCHAR ( 5 , 11 , 38 , 18 ) 
 1405 CALL HCHAR ( 7 , 11 , 38 , 18 ) 
 1410 CALL HCHAR ( 10 , 11 , 38 , 4 ) 
 1415 CALL HCHAR ( 10 , 16 , 35 , 13 ) 
 1420 FOR X = 13 TO 15 STEP 2 
 1425 CALL HCHAR ( X , 11 , 38 , 3 ) 
 1430 CALL HCHAR ( X , 15 , 38 , 3 ) 
 1435 CALL HCHAR ( X , 19 , 38 , 2 ) 
 1440 CALL HCHAR ( X , 22 , 38 , 2 ) 
 1445 NEXT X 
 1450 FOR X = 18 TO 22 STEP 2 
 1455 CALL HCHAR ( X , 11 , 38 , 19 ) 
 1460 NEXT X 
 1465 DISPLAY AT ( 2 , 1 ) SIZE ( 8 )  : "ANREDE:" 
 1470 DISPLAY AT ( 4 , 1 )  : "NAME   :" 
 1475 DISPLAY AT ( 6 , 1 )  : "STRASSE:" 
 1480 DISPLAY AT ( 9 , 1 )  : "PLZ/ORT:" 
 1485 DISPLAY AT ( 12 , 1 )  : "TEL/P. :" 
 1490 DISPLAY AT ( 14 , 1 )  : "TEL/G. :" 
 1495 DISPLAY AT ( 17 , 1 )  : "BEM. 1 :" 
 1500 DISPLAY AT ( 19 , 1 )  : "BEM. 2 :" 
 1505 DISPLAY AT ( 21 , 1 )  : "BEM. 3 :" 
 1510 SUBEND 
