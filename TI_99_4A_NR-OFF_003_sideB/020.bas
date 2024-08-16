   10 CALL CLEAR 
   20 CALL SCREEN ( 5 ) 
   30 FOR I = 0 TO 14  :: CALL COLOR ( I , 16 , 1 )  :: NEXT I 
  100 A = 6  :: B = 0 
  110 CALL RECHTECK ( 0 , 0 , A , A , B ) 
  120 A = A + 3 
  130 B = B + 22.5  :: IF B < = 270 THEN 110
  140 ACCEPT AT ( 1 , 1 ) SIZE ( - 28 )  : A$ 
  150 CALL KEY ( 0 , K , S )  :: IF S < 1 THEN 150
  160  ! 
  170  ! 
  180  ! 
  190  ! 
20000 SUB LINIE ( Y , X , A , L ) 
20060 Q = A * PI / 180  :: V = SIN ( Q )  :: W = COS ( Q ) 
20140 FOR I = 1 TO L  :: CALL PLOT ( INT ( Y + .5 ) , INT ( X + .5 ) )  :: Y = Y + V  :: X = X + W  :: NEXT I 
20240 SUBEND 
21000 SUB GERADE ( Y1 , X1 , Y2 , X2 ) 
21060 YD = Y2 - Y1  :: XD = X2 - X1  :: SW = MAX ( ABS ( YD ) , ABS ( XD ) )  :: SY = YD / SW  :: SX = XD / SW 
21180 FOR I = 1 TO SW  :: CALL PLOT ( Y1 , X1 )  :: Y1 = Y1 + SY  :: X1 = X1 + SX  :: NEXT I 
21280 SUBEND 
22000 SUB RECHTECK ( Y , X , M , N , A ) 
22020 CALL LINIE ( Y , X , A , M ) 
22030 CALL LINIE ( Y , X , A + 270 , N ) 
22040 CALL LINIE ( Y , X , A + 180 , M ) 
22050 CALL LINIE ( Y , X , A + 90 , N ) 
22070 SUBEND 
23000 SUB BOGEN ( Y , X , R , A , E ) 
23060 A = A * PI / 180  :: E = E * PI / 180 
23130 FOR AL = A TO E STEP 1 / R  :: Y1 = INT ( R * SIN ( AL ) + .5 ) + Y  :: X1 = INT ( R * COS ( AL ) + .5 ) + X  :: CALL PLOT ( Y1 , X1 )  :: NEXT AL 
23230 SUBEND 
24000 SUB KREIS ( Y , X , R ) 
24020 CALL BOGEN ( Y , X , R , 0 , 360 ) 
24040 SUBEND 
27000 SUB PLOT ( Y1 , X1 ) 
27060 IF Y1 < - 95 THEN SUBEXIT 
27070 IF X1 < - 127 THEN SUBEXIT 
27080 IF Y1 > 96 THEN SUBEXIT 
27090 IF X1 > 128 THEN SUBEXIT 
27150 Y = - INT ( Y1 - 1 ) + 95  :: X = INT ( X1 ) + 127 
27220 IF F = 0 THEN 27810
27280 XS = INT ( X / 8 ) + 1  :: YS = INT ( Y / 8 ) + 1  :: XP = 8 * ( ( X / 8 ) - INT ( X / 8 ) )  :: YP = 8 * ( ( Y / 8 ) - INT ( Y / 8 ) )  :: XH = ( YP * 2 + 1 ) + INT ( XP / 4 )  :: XB = 3 - ( XP - INT ( XP / 4 ) * 4 ) 
27390 CALL GCHAR ( YS , XS , Z )  :: IF Z > 32 THEN 27540
27410 ZE = ZE - 1 
27420 Z = ZE 
27480 IF ZE < 33 THEN SUBEXIT 
27540 CALL CHARPAT ( Z , H$ ) 
27550 G$ = SEG$ ( H$ , XH , 1 ) 
27560 G = POS ( HX$ , G$ , 1 ) - 1 
27570 Q = 2 ^ XB OR G 
27580 G$ = SEG$ ( HX$ , Q + 1 , 1 ) 
27640 B$ = SEG$ ( H$ , 1 , XH - 1 ) 
27650 C$ = SEG$ ( H$ , XH + 1 , 16 - XH ) 
27660 H$ = B$ & G$ & C$ 
27720 CALL CHAR ( Z , H$ )  :: CALL HCHAR ( YS , XS , Z )  :: GOTO 27930
27810 ZE = 144  :: F = 1 
27820 HX$ = "0123456789ABCDEF" 
27830 FOR I = 33 TO 143  :: CALL CHAR ( I , "" )  :: NEXT I  :: GOTO 27280
27930 SUBEND 
