   10 CALL CLEAR  :: CALL SCREEN ( 2 )  :: RANDOMIZE 
   20 DIM PLN ( 9 , 1 ) 
   30 FOR X = 1 TO 9  :: FOR X1 = 0 TO 1  :: READ PLN ( X , X1 )  :: NEXT X1  :: NEXT X 
  120 DEF BU$ = CHR$ ( INT ( 26 * RND + 65 ) ) 
  130 DEF ZA$ = CHR$ ( INT ( 10 * RND + 48 ) ) 
  140 DEF ZE$ = CHR$ ( INT ( 4 * RND + 44 ) ) 
  150 CALL CLEAR  :: CALL CHARSET  :: FOR X = 0 TO 8  :: CALL COLOR ( X , 16 , 1 )  :: NEXT X 
  160 DISPLAY AT ( 2 , 1 ) ERASE ALL  : " GALAKTISCHE ENZYKLOPAEDIE"  : " "  ; RPT$ ( "-" , 25 )  : "(AUSGABE FUER PLANET "ERDE")" 
  170 DISPLAY AT ( 12 , 1 )  : "FALLS BEREIT,ERBITTE        PLANETNENNAMEN:" 
  180 ACCEPT AT ( 13 , 16 ) VALIDATE ( UALPHA , DIGIT , "!?\[]{}" )  : A$ 
  181 RESTORE 10000
  182 FOR X = 1 TO 9  :: READ PL$  :: IF A$ = PL$ THEN 186
  184 NEXT X  :: GOTO 190
  186 DISPLAY AT ( 20 , 1 )  : "BEZEICHNUNG:PLANET SOL/0" & STR$ ( X ) & ",Z" & STR$ ( - 3 * ( X = 3 ) ) 
  188 GOTO 210
  190 DISPLAY AT ( 20 , 1 )  : "BEZEICHNUNG:PLANET "  ; BU$  ; BU$  ; BU$  ; ZE$  ; ZA$  ; ZA$  ; ZE$  ; BU$  ; ZA$ 
  200 GOTO 300
  210 CALL KEY ( 0 , K , S )  :: IF S = 0 THEN 210
  220 CALL CLEAR 
  240 FOR X1 = 1 TO 8  :: CALL COLOR ( X1 , PLN ( X , 0 ) , 2 )  :: NEXT X1 
  250 FOR X1 = 9 TO 14  :: CALL COLOR ( X1 , PLN ( X , 1 ) , PLN ( X , 0 ) )  :: NEXT X1 
  260 GOTO 400
  300 CALL KEY ( 0 , K , S )  :: IF NOT S THEN 300
  310 CALL CLEAR  :: R = INT ( 14 * RND + 3 ) 
  320 FOR X = 1 TO 8  :: CALL COLOR ( X , R , 1 )  :: NEXT X 
  330 FOR X = 9 TO 14  :: CALL COLOR ( X , INT ( 15 * RND + 1 ) , R )  :: NEXT X 
  400 RESTORE 10020
  420 READ Z , Z$  :: IF Z THEN CALL CHAR ( Z , Z$ )  :: GOTO 420
  430 RESTORE 20000
  440 FOR X = 1 TO 24  :: READ A$  :: DISPLAY AT ( X , 3 )  : A$  :: NEXT X  :: A$ = "" 
  450 FOR X = 2 TO 23 
  460 G = ABS ( SIN ( PI / 180 * ( ( X - 2 ) / 21 * 180 ) ) ) * 10 
  465 FOR X1 = 1 TO G 
  470 R = INT ( ( G * 2 + 1 ) * RND + 1 ) - G 
  480 DISPLAY AT ( X , R + 13 ) SIZE ( 1 )  : CHR$ ( INT ( 24 * RND + 120 ) ) 
  485 NEXT X1 
  490 NEXT X 
  500 CALL KEY ( 0 , K , S )  :: IF S THEN 510ELSE 500
  510 INPUT A$ 
 9990 DATA 7 , 2 , 16 , 15 , 6 , 16 , 10 , 12 , 7 , 11 , 11 , 7 , 4 , 12 , 8 , 15 , 15 , 2 
10000 DATA MERKUR , VENUS , ERDE , MARS , JUPITER , SATURN , URANUS , NEPTUN , PLUTO 
10010 DATA 7 , 16 , 6 , 10 , 7 , 11 , 4 , 8 , 15 
10020 DATA 33 , 000000000000030F000000000FFFFFFF00000FFFFFFFFFFF000FFFFFFFFFFFFF 
10030 DATA 37 , FFFFFFFFFFFFFFFF00F0FFFFFFFFFFFF0000F0FFFFFFFFFF00000000F0FFFFFF 
10040 DATA 41 , 000000000000C0F00000030F3FFFFFFF3FFFFFFFFFFFFFFFFCFFFFFFFFFFFFFF 
10050 DATA 45 , 0000C0F0FCFFFFFF00000103070F1F3F000080C0E0F0F8FC 
10060 DATA 0 , 
10070 DATA 
10080 DATA 
10090 DATA 
10100 DATA 
10110 DATA 
10120 DATA 
10130 DATA 
10140 DATA 
10150 DATA 
10160 DATA 
10170 DATA 
10180 DATA 
10190 DATA 
10200 DATA 
10210 DATA 
10220 DATA 
10230 DATA 
10240 DATA 
10250 DATA 
20000 DATA "       !"#$%%&'()      " 
20010 DATA "     !*+%%%%%%%%,-)    " 
20020 DATA "    .+%%%%%%%%%%%%,/   " 
20030 DATA "   %%%%%%%%%%%%%%%%%%  " 
20040 DATA "  %%%%%%%%%%%%%%%%%%%% " 
20050 DATA " %%%%%%%%%%%%%%%%%%%%%%" 
20060 DATA " %%%%%%%%%%%%%%%%%%%%%%" 
20070 DATA "%%%%%%%%%%%%%%%%%%%%%%%%" 
20080 DATA "%%%%%%%%%%%%%%%%%%%%%%%%" 
20090 DATA "%%%%%%%%%%%%%%%%%%%%%%%%" 
20100 DATA "%%%%%%%%%%%%%%%%%%%%%%%%" 
20110 DATA "%%%%%%%%%%%%%%%%%%%%%%%%" 
20120 DATA "%%%%%%%%%%%%%%%%%%%%%%%%" 
20130 DATA "%%%%%%%%%%%%%%%%%%%%%%%%" 
20140 DATA "%%%%%%%%%%%%%%%%%%%%%%%%" 
20150 DATA "%%%%%%%%%%%%%%%%%%%%%%%%" 
20160 DATA "%%%%%%%%%%%%%%%%%%%%%%%%" 
20170 DATA " %%%%%%%%%%%%%%%%%%%%%%" 
20180 DATA " %%%%%%%%%%%%%%%%%%%%%%" 
20190 DATA "  %%%%%%%%%%%%%%%%%%%% " 
20200 DATA "   %%%%%%%%%%%%%%%%%%  " 
20210 DATA "    %%%%%%%%%%%%%%%%   " 
20220 DATA "     %%%%%%%%%%%%%%    " 
20230 DATA "       %%%%%%%%%%      " 
20240 DATA 
