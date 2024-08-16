    5  !   *********************
   10  !  * TI BENUETZER-CLUB *
   15  !  *     SCHWEIZ       *
   20  !  * ----------------- *
   25  !  * ADRESS-DATEI OHNE *
   30  !  *  BILDSCHIRMROLLEN *
   35  !  * ----------------- *
   40  !  * VON PETER MUELLER *
   45  !  *    (JULI 1983)    *
   50  !  *********************
   55  ! 
   60  !  **DATEI (MIT MASKE)**
   65  ! 
   70  !  >>TI EXTENDED BASIC<<
   75  ! 
   80  !  ERFORD. KONFIGURATION:
   85  !  KASSTTEN-REKORDER
   90  ! 
   95 CALL CLEAR  :: DIM M$ ( 100 , 10 )  :: I = 0 
  100 DATA FFFF , 80808080808080FF , 00000000000000FF , 7E , 808080808080808 
  105 FOR X = 35 TO 39  :: READ Z$  :: CALL CHAR ( X , Z$ )  :: NEXT X  :: GOTO 275
  110 CALL CLEAR  :: DISPLAY AT ( 20 , 7 )  : "AUF WIEDERSEHEN"  :: STOP 
  115 HV = I 
  120 CALL CLEAR  :: DISPLAY AT ( 6 , 3 )  : "AUF WELCHEN REKORDER"  :: DISPLAY AT ( 8 , 3 )  : "SOLL DIE DATEI" 
  125 DISPLAY AT ( 10 , 3 )  : "GELADEN WERDEN(1/2)?"  :: ACCEPT AT ( 10 , 25 ) VALIDATE ( "12" )  : CS  :: CS$ = "CS" & STR$ ( CS ) 
  130 OPEN # 1  : CS$ , OUTPUT , INTERNAL , FIXED 64 
  135 PRINT # 1  : HV 
  140 FOR P = 1 TO HV  :: FOR J = 1 TO 10  :: PRINT # 1  : M$ ( P , J )  :: NEXT J  :: NEXT P 
  145 CLOSE # 1  :: GOTO 275
  150 CALL CLEAR  :: I = 0  :: DISPLAY AT ( 6 , 3 )  : "VON WELCHEM REKORDER"  :: DISPLAY AT ( 8 , 3 )  : "SOLL DIE DATEI" 
  155 DISPLAY AT ( 10 , 3 )  : "GELESEN WERDEN (1/2)?"  :: ACCEPT AT ( 10 , 25 ) VALIDATE ( "12" )  : CS  :: CS$ = "CS" & STR$ ( CS ) 
  160 OPEN # 1  : CS$ , INPUT , INTERNAL , FIXED 64 
  165 INPUT # 1  : HV 
  170 FOR I = 1 TO HV  :: FOR J = 1 TO 10  :: INPUT # 1  : M$ ( I , J )  :: NEXT J  :: NEXT I 
  175 CLOSE # 1 
  180 DISPLAY AT ( 2 , 26 )  : I  :: DISPLAY AT ( 23 , 1 )  :: J = 1 
  185 ACCEPT AT ( 2 , 9 ) VALIDATE ( UALPHA ) SIZE ( - 4 )  : M$ ( I , J )  :: J = 2 
  190 ACCEPT AT ( 4 , 9 ) SIZE ( - 18 )  : M$ ( I , J )  :: J = 3 
  195 ACCEPT AT ( 6 , 9 ) SIZE ( - 18 )  : M$ ( I , J )  :: J = 4 
  200 ACCEPT AT ( 9 , 9 ) VALIDATE ( DIGIT ) SIZE ( - 4 )  : M$ ( I , J )  :: J = 5 
  205 ACCEPT AT ( 9 , 14 ) SIZE ( - 13 )  : M$ ( I , J )  :: J = 6 
  210 ACCEPT AT ( 12 , 9 ) VALIDATE ( NUMERIC , " /" ) SIZE ( - 13 )  : M$ ( I , J )  :: J = 7 
  215 ACCEPT AT ( 14 , 9 ) VALIDATE ( NUMERIC , " /" ) SIZE ( - 13 )  : M$ ( I , J )  :: J = 8 
  220 ACCEPT AT ( 17 , 9 ) SIZE ( - 19 )  : M$ ( I , J )  :: J = 9 
  225 ACCEPT AT ( 19 , 9 ) SIZE ( - 19 )  : M$ ( I , J )  :: J = 10 
  230 ACCEPT AT ( 21 , 9 ) SIZE ( - 19 )  : M$ ( I , J ) 
  235 DISPLAY AT ( 23 , 1 )  : "WEITERE EINGABEN?(J/N)" 
  240 RETURN 
  245 DISPLAY AT ( 2 , 26 )  : A 
  250 DISPLAY AT ( 2 , 9 ) SIZE ( 4 )  : M$ ( A , 1 )  :: DISPLAY AT ( 4 , 9 )  : M$ ( A , 2 )  :: DISPLAY AT ( 6 , 9 )  : M$ ( A , 3 ) 
  255 DISPLAY AT ( 9 , 9 )  : M$ ( A , 4 )  :: DISPLAY AT ( 9 , 14 )  : M$ ( A , 5 )  :: DISPLAY AT ( 12 , 9 )  : M$ ( A , 6 )  :: DISPLAY AT ( 14 , 9 )  : M$ ( A , 7 ) 
  260 DISPLAY AT ( 17 , 9 )  : M$ ( A , 8 )  :: DISPLAY AT ( 19 , 9 )  : M$ ( A , 9 )  :: DISPLAY AT ( 21 , 9 )  : A$ ( A , 10 ) 
  265 DISPLAY AT ( 23 , 1 ) BEEP  : "WEITERE DATEN? (J/N)" 
  270 RETURN 
  275 CALL HCHAR ( 15 , 5 , 35 , 10 ) 
  280 CALL HPTMENUE  :: I = HV 
  285 CALL KEY ( 0 , K , S ) 
  290 IF S = 0 OR K < 49 OR K > 53 THEN 285
  295 ON K - 48 GOTO 150, 325, 365, 115, 110
  325 CALL MASKE 
  330 CALL MASKELEER  :: I = I + 1 
  335 GOSUB 180
  340 CALL KEY ( 0 , K , S ) 
  345 IF S = 0 THEN 340
  350 IF K < > 74 AND K < > 78 THEN 340
  355 IF K = 78 THEN 360ELSE 330
  360 HV = I  :: GOTO 280
  365 CALL MENUEAUS 
  370 ACCEPT AT ( 18 , 14 ) BEEP VALIDATE ( DIGIT ) SIZE ( - 2 )  : A 
  375 CALL MASKE 
  380 GOSUB 245
  385 CALL KEY ( 0 , K , S ) 
  390 IF S = 0 THEN 385
  395 IF K < > 74 AND K < > 78 THEN 385
  400 IF K = 78 THEN 280ELSE 365
  405 SUB MENUEAUS 
  410 CALL CLEAR 
  415 DISPLAY AT ( 5 , 7 )  : "***************" 
  420 DISPLAY AT ( 8 , 7 )  : "BITTE GEBEN SIE" 
  425 DISPLAY AT ( 11 , 8 )  : "DATENSATZNR." 
  430 DISPLAY AT ( 14 , 13 )  : "EIN" 
  435 DISPLAY AT ( 17 , 7 )  : "***************" 
  440 DISPLAY AT ( 19 , 7 )  : "***************" 
  445 SUBEND 
  450 SUB MASKELEER 
  455 DISPLAY AT ( 2 , 9 ) SIZE ( - 4 )  :: DISPLAY AT ( 4 , 9 )  :: DISPLAY AT ( 6 , 9 )  :: DISPLAY AT ( 9 , 9 ) 
  460 DISPLAY AT ( 12 , 9 )  :: DISPLAY AT ( 14 , 9 )  :: DISPLAY AT ( 17 , 9 )  :: DISPLAY AT ( 19 , 9 )  :: DISPLAY AT ( 21 , 9 ) 
  465 SUBEND 
  470 SUB HPTMENUE 
  475 CALL CLEAR 
  480 DISPLAY AT ( 1 , 6 )  : "_________________" 
  485 DISPLAY AT ( 3 , 6 )  : "*** M E N U E ***" 
  490 DISPLAY AT ( 4 , 6 )  : "_________________" 
  495 DISPLAY AT ( 6 , 6 )  : "(1)  -  EINLESEN" 
  500 DISPLAY AT ( 8 , 6 )  : "(2)  -  EINGABE" 
  505 DISPLAY AT ( 10 , 6 )  : "(3)  -  AUSGABE" 
  510 DISPLAY AT ( 12 , 6 )  : "(4)  -  SPEICHERN" 
  515 DISPLAY AT ( 14 , 6 )  : "(5)  -  BEENDEN" 
  520 DISPLAY AT ( 17 , 6 )  : "TREFFEN SIE IHRE" 
  525 DISPLAY AT ( 19 , 11 )  : "W A H L" 
  530 DISPLAY AT ( 21 , 6 ) BEEP  : "_________________" 
  535 SUBEND 
  540 SUB MASKE  :: CALL CLEAR 
  545 CALL VCHAR ( 1 , 27 , 39 , 2 ) 
  550 CALL HCHAR ( 3 , 27 , 36 ) 
  555 CALL HCHAR ( 3 , 28 , 37 , 5 ) 
  560 CALL HCHAR ( 3 , 11 , 38 , 4 ) 
  565 CALL HCHAR ( 5 , 11 , 38 , 18 ) 
  570 CALL HCHAR ( 7 , 11 , 38 , 18 ) 
  575 CALL HCHAR ( 10 , 11 , 38 , 4 ) 
  580 CALL HCHAR ( 10 , 16 , 35 , 13 ) 
  585 FOR X = 13 TO 15 STEP 2 
  590 CALL HCHAR ( X , 11 , 38 , 3 ) 
  595 CALL HCHAR ( X , 15 , 38 , 3 ) 
  600 CALL HCHAR ( X , 19 , 38 , 2 ) 
  605 CALL HCHAR ( X , 22 , 38 , 2 ) 
  610 NEXT X 
  615 FOR X = 18 TO 22 STEP 2 
  620 CALL HCHAR ( X , 11 , 38 , 19 ) 
  625 NEXT X 
  630 DISPLAY AT ( 2 , 1 ) SIZE ( 8 )  : "ANREDE :" 
  635 DISPLAY AT ( 4 , 1 )  : "NAME   :" 
  640 DISPLAY AT ( 6 , 1 )  : "STRASSE:" 
  645 DISPLAY AT ( 9 , 1 )  : "PLZ/ORT:" 
  650 DISPLAY AT ( 12 , 1 )  : "TEL/P. :" 
  655 DISPLAY AT ( 14 , 1 )  : "TEL/G. :" 
  660 DISPLAY AT ( 17 , 1 )  : "BEM. 1 :" 
  665 DISPLAY AT ( 19 , 1 )  : "BEM. 2 :" 
  670 DISPLAY AT ( 21 , 1 )  : "BEM. 3 :" 
  675 SUBEND 
