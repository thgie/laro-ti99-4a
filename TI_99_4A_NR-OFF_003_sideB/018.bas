    1 GOTO 10 :: OPTION BASE 1  :: E , J , N , P , K1 , S$ , RD , S , S , SW , SP , HL , SCH , L , Y1 , Y2  :: DIM Q$ ( 6 ) , HH ( 7 ) , VV ( 6 ) , RR ( 6 ) , LL ( 6 ) , V$ ( 4 ) , OO ( 5 ) , PP ( 5 ) , TT ( 5 ) 
    2 GOTO 10 :: DIM GG ( 6 ) , QQ ( 6 ) , ZZ ( 6 ) , XX ( 6 ) , YY ( 6 ) , AA ( 6 ) , BB ( 6 ) , CC ( 6 ) , DD ( 6 ) , EE ( 6 ) , FF ( 6 ) , II ( 6 ) , NN ( 67 ) , MM ( 68 ) 
    3 GOTO 10 :: FL , QK , WW , A$ , ZA , ZI , CO , ANGR , AG$ , KX , DS , A , R , L , Q , X , EK , Z , Y , STA , KEY , K , I , K6 , K7 , H0 
    4 GOTO 10 :: CALL SPRITE  :: CALL KEY  :: CALL CLEAR  :: CALL DELSPRITE  :: CALL P  :: CALL HCHAR  :: CALL VCHAR 
    5  ! @P-
   10 ON BREAK NEXT  :: CALL CLEAR  :: RANDOMIZE  :: RESTORE  :: GOSUB 6000 :: GOSUB 6610 :: ON WARNING NEXT 
   40 INPUT "ANZAHL SPIELER(1-6)?:"  : S  :: IF S < 1 OR S > 6 OR S < > INT ( S ) THEN 40
   60 SP = S  :: INPUT "SCHWIERIGKEITSGRAD(1-3)?:"  : SW  :: IF SW < 1 OR SW > 3 OR SW < > INT ( SW ) THEN 60
   90 FOR X = 1 TO SP  :: PRINT  : "NAME DES"  ; X  ; ". SPIELERS"  :: ACCEPT SIZE ( 8 )  : Q$ ( X )  :: NEXT X  :: DISPLAY ERASE ALL  : "   ICH DENKE!"  :  :  :  :  :  :  : 
  170 HL = ( 23 AND SW = 1 ) + ( 43 AND SW = 2 ) + ( 67 AND SW = 3 )  :: P = ( 29 AND SW = 1 ) + ( 47 AND SW = 2 ) + ( 71 AND SW = 3 )  :: SCH = 500 * SW + INT ( RND * 100 ) * SW 
  190 L = 0  :: Y1 = INT ( ( HL - 1 ) * RND ) + 2 
  195 Y2 = INT ( ( HL - 1 ) * RND ) + 2  :: IF Y1 = Y2 THEN 195
  200 FOR X = 1 TO SP  :: GG ( X ) = INT ( 50 * RND ) + 100  :: NEXT X 
  240 FOR X = 4 TO HL + 1  :: RD = INT ( RND * 10 + 1 )  :: IF RD > 7 THEN MM ( X ) = 1 
  243 IF RD = 1 OR RD = 2 THEN MM ( X ) = 2 
  244 IF RD = 7 THEN MM ( X ) = 5 
  245 IF RD = 5 OR ( RD = 4 AND SP > 1 ) THEN MM ( X ) = 3 
  246 IF RD = 6 OR ( RD = 3 AND SP > 4 ) OR ( RD = 8 AND SP > 2 ) THEN MM ( X ) = 4 
  247 NEXT X  :: MM ( Y1 + 1 ) = 6  :: MM ( Y2 + 1 ) = 7  :: K1 = INT ( 100 * RND ) 
  300 E = INT ( HL * RND + 1 )  :: FOR J = E + 1 TO HL + 1  :: N = J  :: X = E * N - 1  :: IF INT ( X / P ) * P = X THEN 370
  350 NEXT J  :: GOTO 300
  370 FOR X = 1 TO SP  :: S$ = Q$ ( X ) 
  390 EK = 0  :: DISPLAY ERASE ALL 
  400 DISPLAY AT ( 1 , 1 )  : S$  ; " HAT"  ; GG ( X )  :  : "GOLDST]CKE."  :  : "WAS M\CHTE ER KAUFEN ?"  :: IF EK THEN 450
  420 VV ( X ) = 10  :: Z = SP - 1  :: DISPLAY AT ( 7 , 1 )  : "NR.MAX ARTIKEL       PREIS"  : RPT$ ( "_" , 28 )  : "0      NICHTS"  : "1 (20) ZAUBERSTEIN     15 G`" 
  434 DISPLAY AT ( 11 , 1 )  : "2 ( 1) ZAUBERFL]GEL  1248 G`3 ( "  ; STR$ ( Z )  ; ") WIRBELZAUBER    98 G`"  : "4 ( 5) HEILTRANK       25 G`5 " 
  437 DISPLAY AT ( 14 , 1 )  : "5 (10) GEGENZAUBER     49 G`6 ( 3) TELESPRUNG      29 G`7 ( "  ; STR$ ( Z )  ; ") KRANKZAUBER    148 G`"  : RPT$ ( "_" , 28 ) 
  441 EK = 1  :: Y = 6 
  450 ACCEPT AT ( 5 , 24 ) SIZE ( 1 ) VALIDATE ( "01234567" )  : K  :: IF K = 0 THEN 500
  485 Q = K  :: IF GG ( X ) - HH ( Q ) < - 100 THEN 450
  490 GG ( X ) = GG ( X ) - HH ( Q )  :: ON Q GOSUB 610, 620, 630, 640, 650, 660, 670 :: GOTO 400
  500 IF H0 THEN 3020
  520 NEXT X  :: GOTO 1010
  610 IF AA ( X ) < 20 THEN AA ( X ) = AA ( X ) + 1 
  615 RETURN 
  620 BB ( X ) = 1  :: RETURN 
  630 IF CC ( X ) < SP - 1 THEN CC ( X ) = CC ( X ) + 1 
  635 RETURN 
  640 IF DD ( X ) < 5 THEN DD ( X ) = DD ( X ) + 1 
  645 RETURN 
  650 IF EE ( X ) < 10 THEN EE ( X ) = EE ( X ) + 1 
  655 RETURN 
  660 IF FF ( X ) < 3 THEN FF ( X ) = FF ( X ) + 1 
  665 RETURN 
  670 IF II ( X ) < SP - 1 THEN II ( X ) = II ( X ) + 1 
  675 RETURN 
 1000 CALL P 
 1010 L = L + 1  :: IF L > SP THEN L = 1 
 1030 IF VV ( L ) < = 0 THEN 1010
 1050 S$ = Q$ ( L )  :: IF GG ( L ) < 0 THEN GG ( L ) = INT ( GG ( L ) + GG ( L ) / 10 ) 
 1052 IF GG ( L ) > 0 THEN GG ( L ) = INT ( GG ( L ) + GG ( L ) / 50 ) 
 1055 CALL DELSPRITE ( ALL )  :: R = 0  :: DISPLAY ERASE ALL AT ( 1 , 1 )  : S$  ; " IST IN H\HLE"  ; QQ ( L )  :  : "WOHIN GEHT "  ; S$  ; "?"  :: RR ( L ) = QQ ( L ) 
 1060 REM 
 1090 DISPLAY AT ( 10 , 1 )  : "VORW[RTS = E  R]CKW[RTS = X"  :  : "AKTION   = A  SEITW[RTS = D"  :  : TAB ( 7 )  ; "NICHTS = <SPACE>" 
 1100 CALL KEY ( 0 , K , STA )  :: IF STA < 1 THEN 1100
 1110 IF K = 15 THEN CALL CLEAR  :: BREAK  :: GOTO 1055
 1120 FOR I = 1 TO 5  :: IF K = TT ( I ) THEN 1130
 1125 NEXT I  :: GOTO 1100
 1130 R = K  :: A = ( QQ ( L ) * E AND R = TT ( 4 ) ) + ( QQ ( L ) * N AND R = TT ( 2 ) ) + ( P + 2 - QQ ( L ) AND R = TT ( 1 ) )  :: IF R = TT ( 5 ) THEN 1000
 1152 IF R = TT ( 3 ) THEN 8000
 1160 A = A - INT ( A / P ) * P  :: IF A < = HL THEN QQ ( L ) = A 
 1190 DISPLAY ERASE ALL  :: IF RND > .1 THEN 1220
 1200 PRINT S$  ; " IST GESTOLPERT,"  :  : "WAS SEINER GESUNDHEIT"  :  : "SCHADET. ER BLEIBT VORERST"  :  : "IN H\HLE"  ; RR ( L )  ; "."  :  :  : 
 1205 QQ ( L ) = RR ( L )  :: VV ( L ) = VV ( L ) - 1  :: IF VV ( L ) < = 0 THEN 9900
 1208 GOSUB 1215 :: GOTO 1010
 1215 DISPLAY AT ( 24 , 8 )  : "TASTE DR]CKEN" 
 1217 CALL KEY ( 0 , KEY , STA )  :: IF STA < 1 THEN 1217ELSE RETURN 
 1220 DISPLAY AT ( 1 , 1 )  : S$  ; " KOMMT AUS H\HLE"  ; RR ( L )  :: IF QQ ( L ) = RR ( L ) THEN DISPLAY AT ( 3 , 1 )  : "IN EINE SACKGASSE."  :: CALL P  :: GOTO 1000
 1240 DISPLAY AT ( 3 , 1 )  : "IN H\HLE"  ; QQ ( L )  ; "."  :: CALL P  :: GOSUB 3000 :: GOTO 1000
 3000 IF QQ ( L ) THEN 3010
 3002 IF ZZ ( L ) AND YY ( L ) THEN 9500
 3003 CALL CLEAR  :: X = L  :: H0 = 1  :: GOTO 390
 3010 DISPLAY ERASE ALL  :: FOR X = 7 TO 23  :: CALL HCHAR ( X , 3 , 132 , 28 )  :: NEXT X  :: DISPLAY AT ( 1 , 1 )  : S$  ; " SIEHT" 
 3017 ON MM ( QQ ( L ) + 1 ) + 1 GOSUB 3100, 3200, 3300, 3400, 3500, 3600, 3700, 3800 :: H0 = 0  :: RETURN 
 3020 H0 = 0  :: RETURN 
 3100 DISPLAY AT ( 3 , 1 )  : "EINEN LEEREN RAUM."  :: RETURN 
 3200 ANGR = ( 5 * RND + 4 ) * 10  :: IF ANGR > 70 THEN AG$ = " SCHRECKLICHES" ELSE AG$ = "" 
 3210 DISPLAY AT ( 3 , 1 )  : "EIN"  ; AG$  ; " MONSTER."  :: GOSUB 10000 :: ZA = 0 
 3230 CALL P  :: DISPLAY AT ( 1 , 1 )  : "WENDET "  ; S$  :  : "EINEN GEGENZAUBER AN ?"  :  : 
 3240 CALL KEY ( 0 , KEY , STA )  :: IF STA < 1 THEN 3240
 3245 IF KEY < > TT ( 5 ) THEN ON ZA + 1 GOTO 4100, 4500
 3251 IF EE ( L ) > 0 THEN 3260
 3252 DISPLAY AT ( 5 , 1 )  : "ER HAT KEINEN GEGENZAUBER !"  :: ON ZA + 1 GOTO 4100, 4500
 3260 DISPLAY AT ( 5 , 1 )  : "O.K."  :: EE ( L ) = EE ( L ) - 1  :: IF ZA THEN MM ( QQ ( L ) + 1 ) = 0 
 3280 RETURN 
 3300 ANGR = 5 * RND + 4  :: IF ANGR > 6 THEN AG$ = "TEUFELS" ELSE AG$ = "" 
 3310 DISPLAY AT ( 3 , 1 )  : "EINEN "  ; AG$  ; "ZAUBERER."  :: CALL P  :: GOSUB 10300 :: ZA = 1  :: GOTO 3230
 3400 DS = 0  :: GOTO 3510
 3500 DS = 1 
 3510 IF DS THEN AG$ = "DIAMANTEN" ELSE AG$ = "EINEN GOLDSCHATZ" 
 3512 DISPLAY AT ( 3 , 1 )  : AG$  ; " IM WERT VON"  :: IF NN ( QQ ( L ) ) = 0 THEN NN ( QQ ( L ) ) = SP * 100 + SP * 200 * DS + 10 * INT ( ( 50 + 100 * DS ) * RND ) 
 3530 CALL HCHAR ( 11 , 16 , 133 + DS )  :: IF NN ( QQ ( L ) ) > 200 THEN CALL HCHAR ( 12 , 15 , 133 + DS , 3 ) 
 3550 IF NN ( QQ ( L ) ) > 500 THEN CALL HCHAR ( 13 , 14 , 133 + DS , 5 ) 
 3560 IF NN ( QQ ( L ) ) > 1000 THEN CALL HCHAR ( 14 , 13 , 133 + DS , 7 ) 
 3561 DISPLAY AT ( 17 , 10 )  : NN ( QQ ( L ) )  ; " G`  "  ;  :: CALL P  :: DISPLAY AT ( 1 , 1 )  : "ZUVIEL B]CKEN SCHADET DER"  :  : "GESUNDHEIT. WIEVIEL NIMMT"  :  : S$  ; " MIT ?" 
 3570 ACCEPT AT ( 5 , 25 ) VALIDATE ( DIGIT )  : X  :: IF X > NN ( QQ ( L ) ) THEN 3570
 3575 GG ( L ) = GG ( L ) + X  :: NN ( QQ ( L ) ) = NN ( QQ ( L ) ) - X  :: IF NN ( QQ ( L ) ) = 0 THEN NN ( QQ ( L ) + 1 ) = 0 
 3578 IF X > 100 THEN VV ( L ) = VV ( L ) - X / 100 
 3579 IF VV ( L ) < = 0 THEN 9900
 3585 DISPLAY AT ( 17 , 10 )  : NN ( QQ ( L ) )  ; " G`  "  ;  :: RETURN 
 3600 DISPLAY AT ( 3 , 1 )  : "EINEN ZAUBERSTEIN."  :: CALL P  :: Q = QQ ( L )  :: QQ ( L ) = RR ( L )  :: DISPLAY AT ( 17 , 16 ) SIZE ( 2 )  : CHR$ ( 136 )  ; CHR$ ( 138 ) 
 3618 DISPLAY AT ( 18 , 16 ) SIZE ( 2 )  : CHR$ ( 137 )  ; CHR$ ( 139 )  :: DISPLAY AT ( 5 , 1 )  : "WENDET ER GEGENZAUBER AN ?" 
 3620 CALL KEY ( 0 , KEY , STA )  :: IF STA < 1 THEN 3620ELSE IF KEY < > TT ( 5 ) THEN 3680
 3640 IF EE ( L ) > 0 THEN 3660ELSE DISPLAY AT ( 1 , 1 )  : "ER HAT KEINEN GEGENZAUBER."  :: GOTO 3680
 3660 EE ( L ) = EE ( L ) - 1  :: MM ( Q + 1 ) = 0  :: DISPLAY AT ( 3 , 1 )  : "DER ZAUBER IST GEBROCHEN."  :  :  :  :: RETURN 
 3680 DISPLAY AT ( 3 , 1 )  : "DIE H\HLE IST UNPASSIERBAR."  :  :  :  :: RETURN 
 3700 DISPLAY AT ( 3 , 1 )  : "DEN ZAUBERSCHL]SSEL."  :: DISPLAY AT ( 17 , 14 )  : CHR$ ( 140 )  ; CHR$ ( 142 )  ;  :: DISPLAY AT ( 18 , 14 )  : CHR$ ( 141 )  ; CHR$ ( 143 )  ; K1  ; 
 3720 DISPLAY AT ( 5 , 1 )  : "DER SAGENHAFTE SCHATZ DES"  :  : "DRACHEN VON MORDOR IST IN"  :  : "H\HLE >"  ; Y2  ; "<."  :  :: XX ( L ) = 1  :: CALL P  :: RETURN 
 3800 IF ZZ ( L ) THEN 3900ELSE DISPLAY AT ( 3 , 1 )  : "EINE GESCHLOSSENE T]R." 
 3810 FOR X = 15 TO 18  :: CALL VCHAR ( 13 , X , 32 , 6 )  :: NEXT X  :: CALL HCHAR ( 16 , 18 , 97 )  :: IF XX ( L ) THEN 3850
 3840 DISPLAY AT ( 5 , 1 )  : "DA ER NICHT IM BESITZ DES"  :  : "MAGISCHEN SCHL]SSELS IST,"  :  : "N]TZT IHM DAS NICHTS."  :: CALL P  :: RETURN 
 3850 DISPLAY AT ( 5 , 1 )  : "NENNE DIE ZAHL DES MAGISCHEN"  :  : "SCHL]SSELS :"  :: ACCEPT AT ( 7 , 13 ) SIZE ( 2 )  : KX  :: IF KX = K1 THEN 3880
 3872 DISPLAY AT ( 5 , 1 )  : "DAS WAR FALSCH."  :  :  :  :  :: RETURN 
 3880 ZZ ( L ) = 1 
 3900 CALL HCHAR ( 2 , 1 , 134 , 736 ) 
 3910 DISPLAY AT ( 3 , 2 )  : ">> DEN SCHATZ VON MORDOR <<"  : RPT$ ( "`" , 28 )  :: IF YY ( L ) THEN RETURN 
 3940 IF GG ( L ) < SCH THEN 3960
 3942 YY ( L ) = 1  :: GG ( L ) = GG ( L ) - SCH  :: DISPLAY AT ( 6 , 1 )  : "DER SCHATZ IST ENTDECKT UND"  :  : "DIE"  ; SCH  ; "G` F]R DIE"  :  : "ERLAUBNIS, DER WELT DIES"  : "" 
 3947 DISPLAY AT ( 12 , 1 )  : "MITZUTEILEN, SIND BEZAHLT."  :  :  :: GOSUB 1215 :: RETURN 
 3960 DISPLAY AT ( 6 , 1 )  : "DER BEDAUERNSWERTE "  ; S$  :  : "HAT KEINE "  ; SCH  ; "G` MEHR,UM"  :  : "DIE ERLAUBNIS DAS GEHEIMNIS"  :  : "DES SCHATZES ZU BRECHEN,"  :  : "ZU ERHALTEN." 
 3963 DISPLAY AT ( 16 , 1 )  : "WENN "  ; S$  ; " DIE"  ; SCH  ; "G` HAT,"  :  : "SOLL ER WIEDER KOMMEN."  :: GOSUB 1215 :: RETURN 
 4100 A = INT ( RND * 10 ) + 48 
 4110 CALL HCHAR ( 8 , 16 , A ) 
 4130 FOR X = 1 TO 10  :: FOR J = 1 TO 20 
 4135 CALL KEY ( 0 , KEY , STA )  :: IF STA THEN 4140
 4137 NEXT J  :: GOTO 4155
 4140 IF KEY = A THEN 4200
 4155 VV ( L ) = VV ( L ) - .2  :: IF VV ( L ) < = 0 THEN 9900
 4165 NEXT X  :: GOTO 4100
 4200 ANGR = ANGR - 11 + X  :: IF ANGR > 0 THEN 4100
 4325 GOSUB 10200 :: IF RND < .3 THEN MM ( QQ ( L ) + 1 ) = 0 
 4326 AG$ = ""  :: IF VV ( L ) > 9 THEN AG$ = "TOPFIT"  :: GOTO 4335
 4327 IF VV ( L ) > 7 THEN AG$ = "LEICHT ANGEGRIFFEN"  :: GOTO 4335
 4328 IF VV ( L ) > 5 THEN AG$ = "LEICHT VERLETZT"  :: GOTO 4335
 4329 IF VV ( L ) > 2 THEN AG$ = "SCHWER VERLETZT"  :: GOTO 4335
 4330 IF VV ( L ) > .5 THEN AG$ = "IN LEBENSGEFAHR" 
 4335 DISPLAY AT ( 1 , 1 ) ERASE ALL  : S$  ; " IST "  ; AG$  :  :  :  :  :  :  :: AG$ = "" 
 4340 IF VV ( L ) > 7 THEN RETURN 
 4345 IF VV ( L ) < .5 THEN 9900
 4350 DISPLAY AT ( 5 , 1 )  : "NIMMT ER HEILTRANK ?" 
 4355 CALL KEY ( 0 , KEY , STA )  :: IF STA < 1 THEN 4355ELSE IF KEY < > TT ( 5 ) THEN RETURN 
 4375 IF DD ( L ) > 0 THEN 4400ELSE DISPLAY AT ( 5 , 1 )  : "ER HAT KEINEN HEILTRANK MEHR"  :: CALL P  :: RETURN 
 4400 DD ( L ) = DD ( L ) - 1  :: VV ( L ) = VV ( L ) + 4  :: GOTO 4326
 4500 A = INT ( RND * 4 + 1 )  :: ACCEPT AT ( 3 , 1 )  : A$  :: DISPLAY AT ( 22 , 14 )  : V$ ( A )  ;  :: IF A$ = V$ ( A ) THEN 4580ELSE DISPLAY AT ( 5 , 1 )  : "DAS WAR WOHL NICHTS !" 
 4561 VV ( L ) = VV ( L ) - 1  :: IF VV ( L ) < = 0 THEN 9900
 4565 QQ ( L ) = INT ( HL * RND + 1 )  :: GOTO 1000
 4580 DISPLAY AT ( 5 , 1 )  : "DU HAST GEWONNEN !"  :: GOTO 1000
 6000 FOR I = 1 TO 7  :: READ HH ( I )  :: NEXT I  :: K6 , K7 , H0 = 0 
 6040 DATA 15 , 1248 , 98 , 25 , 49 , 29 , 148 , O , N , W , S , 9 , 15 , 1 , 9 , 12 , 21 , 14 , 15 , 18 , 15 
 6130 FOR I = 1 TO 4  :: READ V$ ( I )  :: NEXT I  :: FOR I = 1 TO 5  :: READ OO ( I ) , PP ( I )  :: NEXT I  :: RETURN 
 6610 FOR I = 1 TO 5  :: READ TT ( I )  :: NEXT I  :: RETURN 
 6620 DATA 68 , 88 , 65 , 69 , 32 
 8000 DISPLAY ERASE ALL  : "WAS WILL "  ; S$  ; " TUN?"  :  : "(0)  NICHTS" 
 8012 IF AA ( L ) THEN PRINT  : "(1)  ZAUBERSTEIN" 
 8013 IF BB ( L ) THEN PRINT  : "(2)  ZAUBERFL]GEL" 
 8014 IF CC ( L ) THEN PRINT  : "(3)  WIRBELZAUBER" 
 8015 IF DD ( L ) THEN PRINT  : "(4)  HEILTRANK NEHMEN" 
 8016 IF FF ( L ) THEN PRINT  : "(5)  TELESPRUNG" 
 8017 IF DD ( L ) THEN PRINT  : "(6)  HEILTRANK ABGEBEN" 
 8018 IF II ( L ) THEN PRINT  : "(7)  KRANKZAUBER" 
 8019 PRINT  : "(8)  KONTOAUSZUG"  :  :  :  :  :: Y = 2  :: ACCEPT QK  :: IF QK < 1 OR QK > 8 THEN DISPLAY ERASE ALL  :: GOTO 1060
 8040 ON QK GOSUB 8100, 8200, 8300, 8400, 8500, 8600, 8700, 8800 :: DISPLAY ERASE ALL  :: IF QK = 2 OR QK = 5 THEN GOSUB 3000 :: GOTO 1000ELSE 1055
 8100 IF AA ( L ) = 0 THEN RETURN ELSE PRINT  : "WOHIN SOLL DER STEIN GELEGT WERDEN ( 1 -"  ; HL  ; ")?"  ;  :: ACCEPT K  :: IF K < 1 OR K > HL THEN RETURN 
 8128 HS = MM ( K + 1 )  :: IF HS < > 3 AND HS < > 4 AND HS < > 6 AND HS < > 7 THEN MM ( K + 1 ) = 5 
 8135 AA ( L ) = AA ( L ) - 1  :: RETURN 
 8200 DISPLAY ERASE ALL  :: IF BB ( L ) = 0 THEN RETURN 
 8210 PRINT "WOHIN SOLL ES GEHEN ?"  :  : "( 1 -"  ; HL  ; ") "  ;  :: ACCEPT K  :: IF K < 1 OR K > HL THEN RETURN ELSE BB ( L ) = 0  :: QQ ( L ) = K  :: RETURN 
 8300 IF CC ( L ) < 1 THEN RETURN 
 8305 IF SP = 1 THEN RETURN ELSE PRINT "WENN SOLL ES BETREFFEN?"  :  : "(0)=NIEMAND" 
 8320 FOR X = 1 TO SP  :: IF VV ( X ) > 0 AND X < > L THEN PRINT "("  ; STR$ ( X )  ; ")="  ; Q$ ( X ) 
 8350 NEXT X  :: Y = 15  :: ACCEPT X  :: IF X < 1 OR X > SP THEN RETURN ELSE IF X = L OR VV ( X ) < = 0 THEN RETURN ELSE IF K6 THEN 8645ELSE IF K7 THEN 8745ELSE QQ ( X ) = INT ( HL * RND + 1 )  :: CC ( L ) = CC ( L ) - 1  :: RETURN 
 8400 IF DD ( L ) = 0 THEN RETURN 
 8410 VV ( L ) = VV ( L ) + 4  :: IF VV ( L ) > 10 THEN VV ( L ) = 10 
 8420 DD ( L ) = DD ( L ) - 1  :: RETURN 
 8500 DISPLAY ERASE ALL  :: IF FF ( L ) = 0 THEN RETURN 
 8510 FF ( L ) = FF ( L ) - 1  :: QQ ( L ) = INT ( HL * RND ) + 1  :: RETURN 
 8600 IF DD ( L ) = 0 THEN RETURN 
 8610 K6 = 1  :: GOTO 8305
 8645 K6 = 0 
 8650 FL = ( GG ( X ) > 0 ) * - INT ( GG ( X ) / 3 * RND )  :: IF FL THEN PRINT  : Q$ ( X )  ; " ZAHLT AN "  ; S$  ; FL  ; "G` F]R DEN ZAUBERFLUG"  ; "IN H\HLE"  ; QQ ( X )  ; "UND DEN HEILTRANK."  :: CALL P 
 8670 GG ( X ) = GG ( X ) - FL  :: DD ( X ) = DD ( X ) + 1  :: DD ( L ) = DD ( L ) - 1  :: GG ( L ) = GG ( L ) + FL  :: QQ ( L ) = QQ ( X )  :: RETURN 
 8700 IF II ( L ) = 0 THEN RETURN 
 8705 K7 = 1  :: GOTO 8305
 8745 K7 = 0 
 8760 II ( L ) = II ( L ) - 1  :: VV ( X ) = VV ( X ) - 6  :: IF VV ( X ) < 1 THEN VV ( X ) = 1 
 8790 RETURN 
 8800 DISPLAY ERASE ALL  : RPT$ ( "`" , 28 )  :  : "  ` SPARKASSE MIRAKULAND `"  :  : "________KONTOAUSZUG_________"  :  : "NAME:"  ; S$  :  : "GOLDST]CKE"  ; GG ( L )  ; "G`"  :  : RPT$ ( "`" , 28 ) 
 8824 PRINT  :  : "> MATERIAL <"  :: IF AA ( L ) THEN PRINT AA ( L )  ; "ZAUBERSTEIN" 
 8835 IF BB ( L ) THEN PRINT BB ( L )  ; "ZAUBERFL]GEL" 
 8840 IF CC ( L ) THEN PRINT CC ( L )  ; "WIRBELZAUBER" 
 8845 IF DD ( L ) THEN PRINT DD ( L )  ; "HEILTRANK" 
 8850 IF EE ( L ) THEN PRINT EE ( L )  ; "GEGENZAUBER" 
 8855 IF FF ( L ) THEN PRINT FF ( L )  ; "TELESPRUNG" 
 8860 IF II ( L ) THEN PRINT II ( L )  ; "KRANKZAUBER" 
 8862 PRINT  :  : ">GESUNDHEIT<   "  ; STR$ ( INT ( VV ( L ) * 10 ) )  ; "%"  :: GOSUB 1215 :: RETURN 
 9500 DISPLAY ERASE ALL  : ">>>"  ; S$  ; "<<<"  :  : "L\STE DAS GEHEIMNIS DES"  :  : "SCHATZES DES DRACHEN"  :  : "MORDOR"  :  : "ER HAT NOCH"  ; GG ( L )  ; "G`" 
 9620 PRINT  :  :  : "NEUES SPIEL? (J/N)" 
 9630 CALL KEY ( 0 , KEY , STA )  :: IF STA < 1 THEN 9630
 9640 IF KEY = 74 THEN CALL CLEAR  :: RUN ELSE IF KEY = 78 THEN STOP ELSE 9630
 9900 DISPLAY ERASE ALL  : "DAS WAR ZUVIEL !"  :  : S$  ; " IST TOT."  :: CALL P  :: VV ( L ) = 0  :: FOR X = 1 TO SP  :: IF VV ( X ) > 0 THEN 1000
 9905 NEXT X  :: PRINT  :  : "KEIN SPIELER HAT ]BERLEBT"  :: GOTO 9620
10000 ZI = 100  :: CO = INT ( 14 * RND + 3 )  :: GOSUB 10100 :: RETURN 
10100 CALL SPRITE ( # 1 , ZI , CO , 90 , 90 , # 2 , ZI + 4 , CO , 90 , 122 , # 3 , ZI + 8 , CO , 122 , 90 , # 4 , ZI + 12 , CO , 122 , 122 )  :: RETURN 
10200 CALL DELSPRITE ( ALL )  :: DISPLAY ERASE ALL  : "DAS MONSTER IST TOT"  :  :  :  : 
10210 FOR WW = 1 TO 2  :: PRINT TAB ( 14 )  ; CHR$ ( 132 )  ; CHR$ ( 132 )  :: NEXT WW 
10220 FOR WW = 1 TO 2  :: PRINT TAB ( 11 )  ; RPT$ ( CHR$ ( 132 ) , 8 )  :: NEXT WW 
10230 FOR WW = 1 TO 6  :: PRINT TAB ( 14 )  ; CHR$ ( 132 )  ; CHR$ ( 132 )  :: NEXT WW 
10240 PRINT  : TAB ( 13 )  ; "RIP"  :  :  :  :  :  :  :: CALL P  :: RETURN 
10300 ZI = 116  :: CO = INT ( 9 * RND + 8 )  :: GOSUB 10100 :: RETURN 
19999  ! @P+
20000 SUB P  :: FOR I = 1 TO 800  :: NEXT I  :: SUBEND 
