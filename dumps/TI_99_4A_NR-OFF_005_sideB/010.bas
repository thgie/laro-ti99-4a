  100 CALL CLEAR 
  105 CALL SCREEN ( 5 ) 
  110 DIM L$ ( 6 , 2 ) 
  120 FOR I = 1 TO 6 
  130 FOR J = 1 TO 2 
  140 READ Z1$ , Z2$ 
  150 L$ ( I , J ) = Z1$ & Z2$ 
  160 Z1$ , Z2$ = "" 
  170 NEXT J 
  180 NEXT I 
  190 DATA ```````````ab  cd```````````eeeeeeeeeibfg``hfcjeeeeeeeeefffffffkl`fg````hf`mnfffffff 
  200 DATA fffffkl```g``````h```mnfffffooopl````rffffffffs````mqooo`abf````rffffffffffs````fcd` 
  210 DATA bfff```rffffffffffffs```fffcffff``rffffffffffffffs``ffffffff`rffffffffffffffffs`ffff 
  220 DATA ffffrffffffffffffffffffsfffffffg````````````````````hfffffg``````````````````````hfffg````````````````````````hf 
  230 DATA ooooooooooopl  mqooooooooooo`````````abfrffsfcd`````````eeeeeeeibffg````hffcjeeeeeee 
  240 DATA fffffkl`ffg``````hff`mnffffffffkl```fg````````hf```mnffffkl`````g``````````h`````mnf 
  250 DATA l``````rffffffffffffs``````m``````rffffffffffffffs```````````rffffffffffffffffs````` 
  260 DATA ````rffffffffffffffffffs```````rffffffffffffffffffffs`````rffffffffffffffffffffffs```rffffffffffffffffffffffffs` 
  270 DATA fffffffffffkl  mnfffffffffff`````````ab`rffs`cd````````````````abffrffffsffcd``````` 
  280 DATA eeeeeibfffg``````hfffcjeeeeefffkl`fffg````````hfff`mnffffkl```ffg``````````hff```mnf 
  290 DATA l`````fg````````````hf`````m``````g``````````````h```````````rffffffffffffffffs````` 
  300 DATA ````rffffffffffffffffffs```````rffffffffffffffffffffs`````rffffffffffffffffffffffs```rffffffffffffffffffffffffs` 
  310 DATA fffffffffffkl  mnfffffffffffooooooooopl`rffs`mqooooooooo```````abf`rffffs`fcd``````` 
  320 DATA `````abfffrffffffsfffcd`````eeeibffffg````````hffffcjeeefkl`ffffg``````````hffff`mnf 
  330 DATA l```fffg````````````hfff```m````ffg``````````````hff````````fg````````````````hf```` 
  340 DATA ````g``````````````````h```````rffffffffffffffffffffs`````rffffffffffffffffffffffs```rffffffffffffffffffffffffs` 
  350 DATA eeeeeeeeeeeib  cjeeeeeeeeeeefffffffffkl`g``h`mnfffffffffooooooopl``rffffs``mqooooooo 
  360 DATA `````abf``rffffffs``fcd````````abfff`rffffffffs`fffcd````abfffffrffffffffffsfffffcd` 
  370 DATA bffffffg````````````hffffffcffffffg``````````````hfffffffffffg````````````````hfffff 
  380 DATA ffffg``````````````````hfffffffg````````````````````hfffffg``````````````````````hfffg````````````````````````hf 
  390 DATA ```````````ab  cd```````````fffffffffklfg``hfmnffffffffffffffffkl``g````h``mnfffffff 
  400 DATA ooooopl```rffffffs```mqooooo```abf```rffffffffs```fcd````abfff``rffffffffffs``fffcd` 
  410 DATA bfffff`rffffffffffffs`fffffcffffffrffffffffffffffsfffffffffffg````````````````hfffff 
  420 DATA ffffg``````````````````hfffffffg````````````````````hfffffg``````````````````````hfffg````````````````````````hf 
  430 CALL COLOR ( 1 , 16 , 2 , 9 , 13 , 4 , 10 , 13 , 4 , 11 , 13 , 4 , 12 , 16 , 2 ) 
  440 CALL CHAR ( 96 , "FFFFFFFFFFFFFFFFFFFFFFFFFCF0C000FCF0C000000000003F0F03" ) 
  450 CALL CHAR ( 100 , "FFFFFFFF3F0F0300FFFFFFFF0000000000000000000000000103070F1F3F7FFF" ) 
  460 CALL CHAR ( 104 , "80C0E0F0F8FCFEFFFFFFFFFF030F3FFFFFFFFFFFC0F0FCFF00000000030F3FFF" ) 
  470 CALL CHAR ( 108 , "030F3FFFFFFFFFFFC0F0FCFFFFFFFFFF00000000C0F0FCFF00000000FFFFFFFF" ) 
  480 CALL CHAR ( 112 , "00000000FCF0C000000000003F0F0300FEFCF8F0E0C080007F3F1F0F07030100" ) 
  490 CALL CHAR ( 116 , "000C18303063677E7E67633030180C000030180C0CC6E67E7EE6C60C0C183" ) 
  500 CALL CHAR ( 120 , "0000000000000001010000000000000000000000000000808" ) 
  510 CALL CHAR ( 124 , "000410073006540B214E2036012600000000A02C883090C4B0CCA04C20085" ) 
  520 CALL CHAR ( 128 , "FFFFFFFF7F7F7F3F3F1F1F0F07010000FFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0F" ) 
  530 CALL CHAR ( 132 , "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF0FFFFFFFFFEFEFEFCFCF8F8F0E08" ) 
  540 CALL CHAR ( 136 , "00000000000205030305020000000000000000000040A0C0C0A04" ) 
  550 CALL CHAR ( 140 , "181C0FC7EF7F3F3F3F3F7FEFC70F1C181838F0E3F7FEFCFCFCFCFEF7E3F03818" ) 
  580  ! *** START ***
  581 ZA , U = 0 
  582 CALL CLEAR 
  583 CALL VCHAR ( 1 , 31 , 31 , 96 ) 
  590 DISPLAY AT ( 1 , 1 )  : "x            y          z          {       xz   x         y            y{              z     xz        y   z          {  y{  {" 
  592 DISPLAY AT ( 6 , 1 )  : " x               z       y       xz     y           x        y{                                     z  x {  y      x     {" 
  594 DISPLAY AT ( 11 , 1 )  : " z     { {         x             y                 x      z          {            y               xz                          y{" 
  596 DISPLAY AT ( 15 , 1 )  : "                     x            y  {         z      z     x            {{                x               y                y      zx" 
  598 DISPLAY AT ( 19 , 1 )  : " y        z                    {                z  z                 x   x         y    {                y        z" 
  600 CALL MAGNIFY ( 3 ) 
  607 CALL SPRITE ( # 1 , 116 , 16 , 105 , 121 , 0 , 0 ) 
  609 GOSUB 11000
  610 CALL SPRITE ( # 20 , 128 , 8 , 1 , 21 , 0 , 1 , # 21 , 132 , 8 , 1 , 37 , 0 , 1 , # 10 , 120 , 16 , 145 , 121 , 0 , 0 ) 
  613 CALL POSITION ( # 1 , P , Q )  :: IF P = 0 AND Q = 0 THEN 640
  615 IF Q < 57 OR Q > 185 THEN IF P < 100 THEN M = 109 ELSE 2000ELSE IF P > 139 THEN 2000ELSE M = 145 
  616 CALL LOCATE ( # 10 , M , Q ) 
  618 CALL COINC ( ALL , O )  :: IF O THEN CALL SOUND ( 100 , 220 , 10 ) 
  620 CALL JOYST ( 1 , X , Y ) 
  625 IF Q < 33 AND X = - 4 THEN X = 0 ELSE IF Q > 208 AND X = 4 THEN X = 0 
  630 CALL MOTION ( # 1 , - Y , X , # 10 , 0 , X ) 
  632 CALL KEY ( 1 , K , S ) 
  634 IF K = 18 AND SH = 0 OR SH THEN 3000
  640 GOSUB 10000
  650 CALL POSITION ( # 20 , E , F ) 
  660 IF F < 102 THEN 613
  665 CALL MOTION ( # 20 , 0 , 0 , # 21 , 0 , 0 )  :: CALL LOCATE ( # 20 , 1 , 113 , # 21 , 1 , 129 ) 
  670 ZA = ZA + 1 
  675 IF ZA > 3 THEN 700
  677 CALL SOUND ( - 200 , 330 , 5 ) 
  680 IF ZA < 3 THEN 613
  690 CALL SPRITE ( # 5 , 140 , 16 , 240 , 121 , - 8 , 0 ) 
  700 IF SH THEN CALL COINC ( # 10 , # 5 , 16 , O )  :: IF O THEN 4000
  710 CALL POSITION ( # 5 , K , L ) 
  711 CALL SOUND ( - 1000 , 220 - K / 5 , 5 ) 
  712 IF K > 130 THEN 720
  714 IF K < 70 THEN 718
  716 CALL PATTERN ( # 5 , 136 )  :: CALL MOTION ( # 5 , - 4 , 0 )  :: GOTO 720
  718 CALL PATTERN ( # 5 , 120 )  :: CALL MOTION ( # 5 , - 3 , 0 ) 
  720 CALL COINC ( # 5 , # 20 , 20 , O )  :: IF NOT O THEN 613
  725 CALL DELSPRITE ( # 5 ) 
  730 CALL SOUND ( - 1000 , - 7 , 5 ) 
  740 CALL SPRITE ( # 20 , 124 , 10 , 1 , 121 , 1 , - 2 , # 21 , 124 , 10 , 1 , 121 , 2 , - 1 , # 22 , 124 , 10 , 1 , 121 , 2 , 1 , # 23 , 124 , 10 , 1 , 121 , 1 , 2 ) 
  750 FOR I = 1 TO 10 
  760 GOSUB 10000
  770 NEXT I 
  780 CALL DELSPRITE ( ALL ) 
  790 FOR I = 1 TO 10  :: GOSUB 10000 :: NEXT I 
  800 GOTO 580
 1990  !  *** EXPLOSION ***
 2000 CALL MOTION ( # 1 , 0 , 0 , # 10 , 0 , 0 ) 
 2005 CALL DELSPRITE ( # 10 ) 
 2010 CALL SOUND ( 500 , - 6 , 5 ) 
 2020 CALL COLOR ( # 1 , 5 ) 
 2025 GOSUB 10000
 2030 CALL PATTERN ( # 1 , 124 ) 
 2035 FOR I = 2 TO 16  :: CALL COLOR ( # 1 , I )  :: NEXT I  :: CALL COLOR ( # 1 , 7 ) 
 2040 GOSUB 10000
 2050 CALL DELSPRITE ( # 1 ) 
 2055 IF F < 90 THEN CALL MOTION ( # 20 , 0 , 6 , # 21 , 0 , 6 ) 
 2060 GOSUB 10000
 2070 GOTO 613
 3000 SH = SH + 1  :: IF SH > 3 THEN 3100ELSE IF SH > 1 THEN 640
 3010 CALL SOUND ( - 1250 , - 6 , 10 ) 
 3020 CALL COLOR ( # 10 , 2 ) 
 3030 CALL PATTERN ( # 10 , 136 ) 
 3040 GOTO 640
 3100 SH = 0 
 3110 CALL COLOR ( # 10 , 16 ) 
 3120 CALL PATTERN ( # 10 , 120 ) 
 3130 GOTO 640
 4000 CALL MOTION ( # 5 , 0 , 0 )  :: CALL SOUND ( - 4250 , - 7 , 10 ) 
 4010 FOR I = 1 TO 5  :: FOR J = 2 TO 16  :: CALL COLOR ( # 5 , J )  :: NEXT J  :: GOSUB 10000 :: NEXT I 
 4020 CALL DELSPRITE ( # 5 ) 
 4025 CALL MOTION ( # 20 , 0 , 5 , # 21 , 0 , 5 ) 
 4027 GOSUB 10000 :: CALL POSITION ( # 20 , E , F )  :: IF F < 200 THEN 4027
 4028 CALL MOTION ( # 20 , 0 , 0 , # 21 , 0 , 0 ) 
 4030 CALL LOCATE ( # 20 , 1 , 17 , # 21 , 1 , 33 )  :: CALL MOTION ( # 20 , 0 , 1 , # 21 , 0 , 1 ) 
 4035 ZA = 0  :: CALL SOUND ( - 100 , 440 , 5 ) 
 4040 GOTO 613
 9980 STOP 
 9990  !  3-D EFFEKT
10000 U = U + 1  :: IF U > 6 THEN U = 1 
10010 DISPLAY AT ( 12 , 1 )  : L$ ( U , 1 )  ; L$ ( U , 2 ) 
10020 RETURN 
10990  !  * BEGINN 3-D *
11000 SO = 440 
11005 FOR I = 1 TO 2 
11010 FOR J = 1 TO 6 
11012 IF I = 1 AND J = 5 THEN 11015
11013 FOR K = 1 TO 50  :: NEXT K 
11015 Z1$ = L$ ( 1 , I - 1 )  :: Z2$ = SEG$ ( L$ ( 1 , I ) , 1 , J * 28 ) 
11020 DISPLAY AT ( 25 - ( I - 1 ) * 6 - J , 1 )  : Z1$  ; Z2$ 
11025 CALL SOUND ( - 1000 , SO , 5 ) 
11027 SO = SO / 2 ^ ( 1 / 12 ) 
11040 NEXT J 
11050 NEXT I 
11055 Z1$ , Z2$ = "" 
11060 RETURN 
