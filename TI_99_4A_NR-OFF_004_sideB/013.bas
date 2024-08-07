    1 CALL CLEAR  :: CALL SCREEN ( 14 )  :: FOR I = 0 TO 14  :: CALL COLOR ( I , 16 , 14 )  :: NEXT I 
    2 DISPLAY AT ( 1 , 9 )  : "TIC-TAC-TOE"  : "    CREATIVE COMPUTING"  : "MORRISTOWN, NEW JERSEY, USA" 
    8 DISPLAY AT ( 5 , 1 )  : " DAS BRETT WIRD NUMERIERT:"  :  : TAB ( 12 )  ; "1 2 3"  :  : TAB ( 12 )  ; "4 5 6"  :  : TAB ( 12 )  ; "7 8 9" 
   10 CALL CHAR ( 96 , "FF818181818181FF814224181824428100000000FF" , 99 , "1010101010101010" ) 
   12 CALL CHAR ( 100 , "10101010FF101010" ) 
   20 DIM S ( 9 ) 
   50 DISPLAY AT ( 14 , 1 )  : "MOECHTEST DU 'X' ODER 'O'?:O"  :: ACCEPT AT ( 14 , 28 ) BEEP SIZE ( - 1 ) VALIDATE ( "OX" )  : C$ 
   52 CALL HCHAR ( 5 , 1 , 32 , 320 ) 
   53 DISPLAY AT ( 9 , 1 )  : "   c   c"  : "   c   c"  : "   c   c"  : "bbbdbbbdbbb"  : "   c   c"  : "   c   c"  : "   c   c"  : "bbbdbbbdbbb" 
   54 DISPLAY AT ( 17 , 1 )  : "   c   c"  : "   c   c"  : "   c   c" 
   55 IF C$ = "X" THEN 475
   60 P$ = "`"  :: Q$ = "a" 
  100 G = - 1  :: H = 1  :: IF S ( 5 ) THEN 103
  102 S ( 5 ) = - 1  :: GOTO 195
  103 IF S ( 5 ) < > 1 THEN 106
  104 IF S ( 1 ) THEN 110
  105 S ( 1 ) = - 1  :: GOTO 195
  106 IF S ( 2 ) = 1 AND S ( 1 ) = 0 THEN 181
  107 IF S ( 4 ) = 1 AND S ( 1 ) = 0 THEN 181
  108 IF S ( 6 ) = 1 AND S ( 9 ) = 0 THEN 189
  109 IF S ( 8 ) = 1 AND S ( 9 ) = 0 THEN 189
  110 IF G = 1 THEN 112
  111 GOTO 118
  112 J = 3 * INT ( ( M - 1 ) / 3 ) + 1 
  113 IF 3 * INT ( ( M - 1 ) / 3 ) + 1 = M THEN K = 1 
  114 IF 3 * INT ( ( M - 1 ) / 3 ) + 2 = M THEN K = 2 
  115 IF 3 * INT ( ( M - 1 ) / 3 ) + 3 = M THEN K = 3 
  116 GOTO 120
  118 FOR J = 1 TO 7 STEP 3  :: FOR K = 1 TO 3 
  120 IF S ( J ) < > G THEN 130
  122 IF S ( J + 2 ) < > G THEN 135
  126 IF S ( J + 1 ) THEN 150
  128 S ( J + 1 ) = - 1  :: GOTO 195
  130 IF S ( J ) = H THEN 150
  131 IF S ( J + 2 ) < > G THEN 150
  132 IF S ( J + 1 ) < > G THEN 150
  133 S ( J ) = - 1  :: GOTO 195
  135 IF S ( J + 2 ) THEN 150
  136 IF S ( J + 1 ) < > G THEN 150
  138 S ( J + 2 ) = - 1  :: GOTO 195
  150 IF S ( K ) < > G THEN 160
  152 IF S ( K + 6 ) < > G THEN 165
  156 IF S ( K + 3 ) THEN 170
  158 S ( K + 3 ) = - 1  :: GOTO 195
  160 IF S ( K ) = H THEN 170
  161 IF S ( K + 6 ) < > G THEN 170
  162 IF S ( K + 3 ) < > G THEN 170
  163 S ( K ) = - 1  :: GOTO 195
  165 IF S ( K + G ) THEN 170
  166 IF S ( K + 3 ) < > G THEN 170
  168 S ( K + 6 ) = - 1  :: GOTO 195
  170 GOTO 450
  171 IF S ( 3 ) = G AND S ( 7 ) = 0 THEN 187
  172 IF S ( 9 ) = G AND S ( 1 ) = 0 THEN 181
  173 IF S ( 7 ) = G AND S ( 3 ) = 0 THEN 183
  174 IF S ( 9 ) = 0 AND S ( 1 ) = G THEN 189
  175 IF G = - 1 THEN G = 1  :: H = - 1  :: GOTO 110
  176 IF S ( 9 ) = 1 AND S ( 3 ) = 0 THEN 182
  177 FOR I = 2 TO 9  :: IF S ( I ) THEN 179
  178 S ( I ) = - 1  :: GOTO 195
  179 NEXT I 
  181 S ( 1 ) = - 1  :: GOTO 195
  182 IF S ( 1 ) = 1 THEN 177
  183 S ( 3 ) = - 1  :: GOTO 195
  187 S ( 7 ) = - 1  :: GOTO 195
  189 S ( 9 ) = - 1 
  195 DISPLAY AT ( 22 , 1 )  : "DER COMPUTER ZIEHT NACH" 
  202 GOSUB 1000
  205 GOTO 500
  450 IF G = 1 THEN 465
  455 IF J = 7 AND K = 3 THEN 465
  460 NEXT K  :: NEXT J 
  465 IF S ( 5 ) = G THEN 171
  467 GOTO 175
  475 P$ = "a"  :: Q$ = "`" 
  500 DISPLAY AT ( 6 , 1 )  : "WOHIN ZIEHST DU?:0"  :: ACCEPT AT ( 6 , 18 ) BEEP SIZE ( - 1 ) VALIDATE ( DIGIT )  : M 
  501 DISPLAY AT ( 8 , 1 ) 
  502 IF M = 0 THEN DISPLAY AT ( 8 , 1 )  : "DANKE FUER DAS SPIEL."  :: GOTO 2000
  505 IF S ( M ) = 0 THEN 510
  506 DISPLAY AT ( 8 , 1 )  : "DIESES FELD IST BESETZT."  :: GOTO 500
  510 G = 1  :: S ( M ) = 1 
  520 GOSUB 1000
  530 GOTO 100
 1000 FOR I = 1 TO 9  :: WA = 10 + INT ( ( I - 1 ) / 3 ) * 4  :: SE = ( ( I - 1 ) / 3 - INT ( ( I - 1 ) / 3 ) ) * 12 + 2  :: IF S ( I ) < > - 1 THEN 1014
 1012 DISPLAY AT ( WA , SE ) SIZE ( 1 )  : Q$  :: GOTO 1020
 1014 IF S ( I ) THEN 1018
 1016 DISPLAY AT ( WA , SE ) SIZE ( 1 )  : " "  :: GOTO 1020
 1018 DISPLAY AT ( WA , SE ) SIZE ( 1 )  : P$ 
 1020 NEXT I  :: DISPLAY AT ( 22 , 1 ) 
 1095 FOR I = 1 TO 7 STEP 3 
 1100 IF S ( I ) < > S ( I + 1 ) THEN 1115
 1105 IF S ( I ) < > S ( I + 2 ) THEN 1115
 1110 IF S ( I ) = - 1 THEN 1350
 1112 IF S ( I ) = 1 THEN 1200
 1115 NEXT I  :: FOR I = 1 TO 3  :: IF S ( I ) < > S ( I + 3 ) THEN 1150
 1130 IF S ( I ) < > S ( I + 6 ) THEN 1150
 1135 IF S ( I ) = - 1 THEN 1350
 1137 IF S ( I ) = 1 THEN 1200
 1150 NEXT I  :: FOR I = 1 TO 9  :: IF S ( I ) = 0 THEN 1155
 1152 NEXT I  :: GOTO 1400
 1155 IF S ( 9 ) < > G THEN 1170
 1160 IF S ( 1 ) = G AND S ( 9 ) = G THEN 1180
 1165 IF S ( 3 ) = G AND S ( 7 ) = G THEN 1180
 1170 RETURN 
 1180 IF G = - 1 THEN 350
 1200 DISPLAY AT ( 23 , 1 )  : "DU HAST MICH GESCHLAGEN!"  : "GUTES SPIEL!!"  :: GOTO 2000
 1350 DISPLAY AT ( 23 , 1 )  : "ICH GEWINNE(JUBEL!HURRA!!)  SCHWAECHLING."  :: GOTO 2000
 1400 DISPLAY AT ( 23 , 1 )  : "UNENTSCHIEDEN DANKE" 
 2000 CALL SOUND ( 500 , 880 , 10 ) 
 2100 FOR I = 1 TO 1000  :: NEXT I 
 2200 END 
