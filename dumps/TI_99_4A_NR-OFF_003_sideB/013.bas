  100 CALL CLEAR  :: CALL DELSPRITE ( ALL )  :: DISPLAY AT ( 3 , 1 )  : "*************************** *                         * *  C H A R   E D I T O R  *" 
  110 DISPLAY AT ( 6 , 1 )  : "*                         * ***************************" 
  120 DISPLAY AT ( 13 , 4 )  : "1 STRING ERSTELLEN"  :: DISPLAY AT ( 17 , 4 )  : "2 STRING EINGEBEN" 
  130 CALL KEY ( 0 , K , S )  :: IF S < 1 THEN 130 :: IF K = 49 THEN 140ELSE IF K = 50 THEN 680ELSE CALL SOUND ( 20 , 200 , 5 )  :: GOTO 130
  140 REM  SPRITE EDITOR
  150 IF GG = 1 THEN 510
  160 PIXEL = 100  :: DIM B ( 16 , 16 )  :: SC , Z , S , M = 1  :: C1 = 2  :: GG = 0  :: HEX$ = "0123456789ABCDEF" 
  170 CALL CHAR ( 100 , "0000000000000000FFFFFFFFFFFFFFFFFFFFC3C3C3C3FFFF" ) 
  180 CALL COLOR ( 9 , 2 , 16 )  :: CALL CLEAR  :: DISPLAY AT ( 1 , 10 )  : "CHAR EDITOR" 
  190 FOR Z = 1 TO 16  :: CALL HCHAR ( 4 + Z , 2 , 100 , 16 )  :: NEXT Z 
  200 CALL MAGNIFY ( 1 )  :: IF GG = 1 THEN 680ELSE IF K = 84 THEN 210ELSE CALL SCREEN ( 8 ) 
  210 CALL DELSPRITE ( ALL )  :: CALL SPRITE ( # 6 , 102 , 14 , 32 , 8 )  :: CALL HCHAR ( 21 , 1 , 32 , 93 ) 
  220 DISPLAY AT ( 22 , 2 )  : "E=UP,X=DOWN,S=LEFT,D=RIGHT"  :: DISPLAY AT ( 23 , 2 )  : "1 = PIXEL ON  0 = OFF"  :: DISPLAY AT ( 24 , 2 )  : "5 = MUSTERCODE AUSGEBEN" 
  230 CALL KEY ( 0 , K , SS )  :: IF SS = 0 THEN 230
  240 IF K = 48 THEN PIXEL = 100 ELSE IF K = 49 THEN PIXEL = 101 ELSE IF K = 53 THEN 310
  250 IF K = 83 THEN S = S - 1  :: GOTO 290
  260 IF K = 68 THEN S = S + 1  :: GOTO 290
  270 IF K = 69 THEN Z = Z - 1  :: GOTO 290
  280 IF K = 88 THEN Z = Z + 1 
  290 IF S < 1 THEN S = 16 ELSE IF S > 16 THEN S = 1 ELSE IF Z < 1 THEN Z = 16 ELSE IF Z > 16 THEN Z = 1 
  300 CALL LOCATE ( # 6 , ( 8 * Z ) + 25 , 8 * S + 1 )  :: CALL HCHAR ( 4 + Z , 1 + S , PIXEL )  :: CALL SOUND ( 20 , 200 , 5 )  :: GOTO 230
  310 CALL DELSPRITE ( ALL )  :: CALL HCHAR ( 21 , 1 , 32 , 128 )  :: DISPLAY AT ( 23 , 2 )  : "B I T T E   W A R T E N" 
  320 FOR Z = 1 TO 16  :: FOR S = 1 TO 16  :: CALL GCHAR ( 4 + Z , 1 + S , GC )  :: GC = GC - 100  :: B ( Z , S ) = GC  :: NEXT S  :: NEXT Z  :: M$ = "" 
  330 FOR Z = 1 TO 16 
  340 LOW = B ( Z , 5 ) * 8 + B ( Z , 6 ) * 4 + B ( Z , 7 ) * 2 + B ( Z , 8 ) + 1 
  350 HIGH = B ( Z , 1 ) * 8 + B ( Z , 2 ) * 4 + B ( Z , 3 ) * 2 + B ( Z , 4 ) + 1 
  360 M$ = M$ & SEG$ ( HEX$ , HIGH , 1 ) & SEG$ ( HEX$ , LOW , 1 ) 
  370 NEXT Z 
  380 FOR Z = 1 TO 16 
  390 LOW = B ( Z , 13 ) * 8 + B ( Z , 14 ) * 4 + B ( Z , 15 ) * 2 + B ( Z , 16 ) + 1 
  400 HIGH = B ( Z , 9 ) * 8 + B ( Z , 10 ) * 4 + B ( Z , 11 ) * 2 + B ( Z , 12 ) + 1 
  410 M$ = M$ & SEG$ ( HEX$ , HIGH , 1 ) & SEG$ ( HEX$ , LOW , 1 ) 
  420 NEXT Z 
  430 DISPLAY AT ( 22 , 2 )  : "C=COLOR  M=MAGNIFY  T=EDIT"  :: DISPLAY AT ( 23 , 2 )  : "A=ERASE,Q=QUIT,B=BACKCOLOR" 
  440 DISPLAY AT ( 24 , 5 )  : "L=LIST MUSTERCODE" 
  450 CALL CHAR ( 104 , M$ )  :: A = 0 
  460 A = A + 1  :: IF A = 1 OR A = 2 THEN CALL MAGNIFY ( M )  :: CALL DELSPRITE ( # 5 )  :: M = 2 
  470 IF A = 1 THEN CALL SPRITE ( # 1 , 104 , C1 , 40 , 170 , 0 , 0 , # 3 , 106 , C1 , 40 , 195 , 0 , 0 , # 2 , 105 , C1 , 70 , 170 , 0 , 0 , # 4 , 107 , C1 , 70 , 195 , 0 , 0 ) 
  480 IF A = 3 THEN M = 3  :: CALL DELSPRITE ( ALL )  :: CALL SPRITE ( # 5 , 104 , C1 , 100 , 180 , 0 , 0 ) 
  490 IF A = 3 OR A = 4 THEN CALL MAGNIFY ( M )  :: M = 4 
  500 IF A = 4 THEN A = 0  :: M = 1 
  510 CALL KEY ( 0 , K , SS )  :: IF SS = 0 THEN 510
  520 IF K = 67 THEN 550ELSE IF K = 77 THEN 460ELSE IF K = 84 THEN Z = 1  :: GOTO 200ELSE IF K = 65 THEN 140ELSE IF K = 81 THEN GG = 0  :: GOTO 100
  530 IF K = 66 THEN 580ELSE IF K = 76 THEN 600
  540 GOTO 510
  550 C1 = C1 + 1  :: IF C1 > 16 THEN 570
  560 CALL COLOR ( # 1 , C1 , # 2 , C1 , # 3 , C1 , # 4 , C1 , # 5 , C1 )  :: GOTO 510
  570 C1 = 2  :: GOTO 560
  580 SC = SC + 1  :: IF SC = 17 THEN SC = 2 
  590 CALL SCREEN ( SC )  :: GOTO 510
  600 CALL CLEAR  :: CALL DELSPRITE ( ALL )  :: DISPLAY AT ( 1 , 17 )  : "PROGRAMM LISTING" 
  610 DISPLAY AT ( 5 , 1 )  : "HEXADEZIMAL CODE :"  :: DISPLAY AT ( 7 , 1 )  : M$ 
  620 M1$ = SEG$ ( M$ , 1 , 16 )  :: M3$ = SEG$ ( M$ , 17 , 16 )  :: M2$ = SEG$ ( M$ , 33 , 16 )  :: M4$ = SEG$ ( M$ , 49 , 16 ) 
  630 DISPLAY AT ( 11 , 1 )  : "FELD 1 "  ; M1$  :: DISPLAY AT ( 12 , 1 )  : "FELD 2 "  ; M2$  :: DISPLAY AT ( 13 , 1 )  : "FELD 3 "  ; M3$  :: DISPLAY AT ( 14 , 1 )  : "FELD 4 "  ; M4$ 
  640 DISPLAY AT ( 17 , 1 )  : "SCREEN  "  ; SC  : "COLOR   "  ; C1 
  650 DISPLAY AT ( 24 , 6 )  : "#=DRUCKER,Q=QUIT" 
  660 CALL KEY ( 0 , K , SS )  :: IF SS = 0 THEN 660 :: IF K = 68 THEN 660ELSE IF K = 81 THEN GG = 0  :: GOTO 100ELSE 660 ! ELSE IF K<>65 THEN 660
  670 OPEN # 1  : "PIO"  :: CALL CLEAR  :: DISPLAY AT ( 15 , 4 )  : "DRUCKER EINSCHALTEN"  :: PRINT # 1  : "104 "  ; M$  :: CLOSE # 1  :: GOTO 100
  680 CALL CLEAR  :: CALL DELSPRITE ( ALL ) 
  690 SC , M = 1  :: C1 = 2  :: G1 , G2 , G3 , GG = 0  :: M$ , M1$ , M2$ , M3$ , M4$ = "" 
  700 DISPLAY AT ( 1 , 8 )  : "STRING EINGEBEN"  :: DISPLAY AT ( 5 , 1 )  : "INPUT STRING ?" 
  710 ACCEPT AT ( 8 , 1 ) SIZE ( 16 ) VALIDATE ( "0123456789ABCDEF" ) BEEP  : M1$  :: ACCEPT AT ( 10 , 1 ) SIZE ( 16 ) VALIDATE ( "0123456789ABCDEF" ) BEEP  : M2$ 
  720 ACCEPT AT ( 12 , 1 ) SIZE ( 16 ) VALIDATE ( "0123456789ABCDEF" ) BEEP  : M3$  :: ACCEPT AT ( 14 , 1 ) SIZE ( 16 ) VALIDATE ( "0123456789ABCDEF" ) BEEP  : M4$ 
  730 CALL GCHAR ( 10 , 3 , G1 )  :: CALL GCHAR ( 12 , 3 , G2 )  :: CALL GCHAR ( 14 , 3 , G3 ) 
  740 IF G1 = 32 THEN M2$ = RPT$ ( "0" , 16 ) 
  750 IF G2 = 32 THEN M3$ = RPT$ ( "0" , 16 ) 
  760 IF G3 = 32 THEN M4$ = RPT$ ( "0" , 16 ) 
  770 M$ = M1$ & M2$ & M3$ & M4$ 
  780 GG = 1  :: GOTO 430
