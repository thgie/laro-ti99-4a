    5 CALL CLEAR  :: CALL SCREEN ( 4 )  :: CALL CHAR ( 96 , "" , 97 , "003F06030100000003C3000080C1FFFFFFFF7860C080C0C00000183C3C18" ) 
    6 CALL CHAR ( 104 , "00071F3CC0603018FFFFC3C3427E3C0000E0F83C03060C18FFFFFFFF" )  :: CALL COLOR ( 9 , 12 , 2 , 10 , 8 , 2 , 11 , 8 , 2 ) 
    7 CALL CHAR ( 101 , "C0E0F0BFBFF0E0C07EFFC3DBDBC3FF7E03070FFDFD0F0703" ) 
    8 CALL CHAR ( 108 , "00000000FFFFFFFFF0F0F0F0F0F0F0F00F0F0F0F0F0F0F0FFFFFFFFFF0F0F0F0" ) 
    9 CALL CHAR ( 112 , "FFFFFFFF0F0F0F0FF0F0F0F0FFFFFFFF0F0F0F0FFFFFFFFF" ) 
   10 RANDOMIZE  :: OPTION BASE 1  :: DIM G ( 8 , 8 ) , C ( 9 , 2 ) , K ( 3 , 3 ) , N ( 3 ) , D ( 8 ) 
  370 T , T0 = INT ( RND * 20 + 20 ) * 100  :: T9 = 25 + INT ( RND * 10 )  :: D0 = 0  :: E , E0 = 3000  :: S9 = 200  :: S , B9 , K9 = 0  :: X$ = ""  :: X0$ = " IST" 
  470 DEF FND = SQR ( ( K ( I , 1 ) - S1 ) ^ 2 + ( K ( I , 2 ) - S2 ) ^ 2 ) 
  475 DEF FNR = INT ( RND * 7.98 + 1.01 ) 
  490 Q1 = FNR  :: Q2 = FNR  :: S1 = FNR  :: S2 = FNR 
  530 FOR I = 1 TO 9  :: C ( I , 1 ) , C ( I , 2 ) = 0  :: NEXT I 
  540 C ( 3 , 1 ) , C ( 2 , 1 ) , C ( 4 , 1 ) , C ( 4 , 2 ) , C ( 5 , 2 ) , C ( 6 , 2 ) = - 1 
  600 C ( 1 , 2 ) , C ( 2 , 2 ) , C ( 6 , 1 ) , C ( 7 , 1 ) , C ( 8 , 1 ) , C ( 8 , 2 ) , C ( 9 , 2 ) = 1 
  670 FOR I = 1 TO 8  :: D ( I ) = 0  :: NEXT I 
  710 A1$ = "NAVSRSLRSPHATORSHEDAMCOMXXX" 
  820 FOR I = 1 TO 8  :: FOR J = 1 TO 8  :: K3 = 0  :: G ( I , J ) = INT ( G ( I , J ) )  :: R1 = RND 
  850 IF R1 > .98 THEN K3 = 3  :: K9 = K9 + 3  :: GOTO 980
  860 IF R1 > .95 THEN K3 = 2  :: K9 = K9 + 2  :: GOTO 980
  870 IF R1 > .8 THEN K3 = 1  :: K9 = K9 + 1 
  980 B3 = 0  :: IF RND > .96 THEN B3 = 1  :: B9 = B9 + 1 
 1040 G ( I , J ) = K3 * 100 + B3 * 10 + FNR  :: NEXT J  :: NEXT I  :: IF K9 > T9 THEN T9 = K9 + 1 
 1100 IF B9 THEN 1200
 1150 IF G ( Q1 , Q2 ) < 200 THEN G ( Q1 , Q2 ) = G ( Q1 , Q2 ) + 100  :: K9 = K9 + 1 
 1160 B9 = 1  :: G ( Q1 , Q2 ) = G ( Q1 , Q2 ) + 10  :: Q1 = FNR  :: Q2 = FNR 
 1200 K7 = K9  :: IF B9 < > 1 THEN X$ = "S"  :: X0$ = " SIND" 
 1230 PRINT "DEINE ORDER:" 
 1240 PRINT "ZERSTOERE DIE"  ; K9  ; "KLINGON-RAUMSCHIFFE," 
 1250 PRINT "BEVOR SIE DAS HAUPTQUARTIER DER FOEDERATION AM STERNTAG"  ; T0 + T9  ; "ANGREIFEN KOENNEN." 
 1260 PRINT "ES BLEIBEN DIR"  ; T9  ; "TAGE."  : "ES"  ; X0$  ; B9  ; "RAUMSTATIONEN"  : "VORHANDEN." 
 1300 CALL KEY ( 0 , @ , [ )  :: IF [ = 0 THEN 1300
 1320 Z4 = Q1  :: Z5 = Q2  :: K3 , B3 , S3 , G5 = 0  :: D4 = .5 * RND  :: G ( Q1 , Q2 ) = INT ( G ( Q1 , Q2 ) ) + .1 
 1390 IF Q1 < 1 OR Q1 > 8 OR Q2 < 1 OR Q2 > 8 THEN 1600
 1430 GOSUB 9030 :: PRINT  :: IF T0 < > T THEN 1490
 1460 PRINT "ZU BEGINN DER MISSION       BEFINDET SICH DAS RAUMSCHIFFIM QUADRANTEN "  ; G2$  ; "."  :: GOTO 1500
 1490 PRINT "QUADRANT "  ; G2$  :  : 
 1500 K3 = INT ( G ( Q1 , Q2 ) * .01 )  :: B3 = INT ( G ( Q1 , Q2 ) * .1 ) - 10 * K3 
 1540 S3 = G ( Q1 , Q2 ) - 100 * K3 - 10 * B3  :: IF K3 = 0 THEN 1590
 1560 PRINT "KAMPFBEREICH"  :: IF S > 200 THEN 1590
 1580 PRINT "ABWEHRSCHILDE ZU NIEDRIG" 
 1590 FOR I = 1 TO 3  :: K ( I , 1 ) , K ( I , 2 ) = 0  :: NEXT I 
 1600 FOR I = 1 TO 3  :: K ( I , 3 ) = 0  :: NEXT I  :: Q$ = RPT$ ( "`" , 192 ) 
 1680 A$ = "abc"  :: Z1 = S1  :: Z2 = S2  :: GOSUB 8670 :: IF K3 < 1 THEN 1820
 1720 FOR I = 1 TO K3  :: GOSUB 8590 :: A$ = "hij"  :: Z1 = R1  :: Z2 = R2 
 1780 GOSUB 8670 :: K ( I , 1 ) = R1  :: K ( I , 2 ) = R2  :: K ( I , 3 ) = S9 * ( .5 * RND )  :: NEXT I 
 1820 IF B3 < 1 THEN 1910
 1880 GOSUB 8590 :: A$ = "efg"  :: Z1 , B4 = R1  :: Z2 , B5 = R2  :: GOSUB 8670
 1910 FOR I = 1 TO S3  :: GOSUB 8590 :: A$ = "`d`"  :: Z1 = R1  :: Z2 = R2  :: GOSUB 8670 :: NEXT I 
 1980 GOSUB 6430
 1990 IF S + E > 10 THEN IF E > 10 OR D ( 7 ) = 0 THEN 2060
 2020 PRINT  :  : "**** ACHTUNG ****"  : "ZU WENIG ENERGIE VORHANDEN. STRANDUNG IM RAUM." 
 2030 GOTO 6220
 2060 PRINT  :: LINPUT "BEFEHL?:"  : A$ 
 2080 FOR I = 1 TO 9  :: IF SEG$ ( A$ , 1 , 3 ) < > SEG$ ( A1$ , 3 * I - 2 , 3 ) THEN 2160
 2140 ON I GOTO 2300, 1980, 4000, 4260, 4700, 5530, 5690, 7290, 6270
 2160 NEXT I  :: PRINT "UNGUELTIG."  :: GOTO 1990
 2300 INPUT "KURS(1-9)?:"  : C1  :: IF C1 = 9 THEN C1 = 1 
 2310 IF C1 > = 1 AND C1 < 8.5 THEN 2350
 2330 PRINT "LEUTNANT SULU:"  : "'FALSCHE KURSDATEN,SIR'"  :: GOTO 1990
 2350 X$ = "8"  :: IF D ( 1 ) < 0 THEN X$ = "0.2" 
 2360 INPUT "FAKTOR(0-" & X$ & ")?:"  : W1  :: IF D ( 1 ) < 0 AND W1 > .2 THEN 2470
 2380 IF W1 > 0 AND W1 < = 8 THEN 2490
 2390 IF W1 = 0 THEN 1990
 2420 PRINT "CHEFINGENIEUR KOCH:"  : "'FAKTOR"  ; W1  ; "ZU GROSS,SIR'"  :: GOTO 1990
 2470 PRINT "TRIEBWERKE ZERSTOERT."  :: GOTO 1990
 2490 NN = INT ( W1 * 8 + .5 )  :: IF E - NN > = 0 THEN 2590
 2500 PRINT "UNGENUEGEND ENERGIE FUER    DIESES MANOEVER." 
 2530 IF S < NN - E OR D ( 7 ) < 0 THEN 1990
 2550 PRINT S  ; "ENERGIEHEITEN FUER"  ; "SCHILDE." 
 2570 GOTO 1990
 2590 FOR I = 1 TO K3  :: IF K ( I , 3 ) = 0 THEN 2700
 2610 A$ = "```"  :: Z1 = K ( I , 1 )  :: Z2 = K ( I , 2 )  :: GOSUB 8670 :: GOSUB 8590
 2660 K ( I , 1 ) = Z1  :: K ( I , 2 ) = Z2  :: A$ = "hij"  :: GOSUB 8670
 2700 NEXT I  :: GOSUB 6000 :: D1 = 0  :: D6 = W1  :: IF W1 > = 1 THEN D6 = 1 
 2770 FOR I = 1 TO 8  :: IF D ( I ) > = 0 THEN 2880
 2790 D ( I ) = D ( I ) + D6  :: IF D ( I ) > - .1 AND D ( I ) < 0 THEN D ( I ) = - .1  :: GOTO 2880
 2800 IF D ( I ) < 0 THEN 2880
 2810 D1 = 1  :: PRINT  : "BERICHT:" 
 2840 PRINT TAB ( 1 )  ;  :: R1 = I  :: GOSUB 8790 :: PRINT G2$  ; "REPERATUR FERTIG" 
 2880 NEXT I  :: IF RND > .2 THEN 3070
 2910 R1 = FNR  :: IF RND > = .6 THEN 3000
 2930 D ( R1 ) = D ( R1 ) - ( RND * 5 + 1 )  :: PRINT  : "BERICHT:" 
 2960 GOSUB 8790 :: PRINT G2$  ; " ZERSTOERT"  :  :  :: GOTO 3070
 3000 D ( R1 ) = D ( R1 ) + RND * 3 + 1  :: PRINT  : "BERICHT:" 
 3030 GOSUB 8790 :: PRINT G2$  ; " VERBESSERT"  :  : 
 3070 A$ = "```"  :: Z1 = INT ( S1 )  :: Z2 = INT ( S2 )  :: GOSUB 8670
 3110 X1 = C ( C1 , 1 ) - ( C ( C1 + 1 , 1 ) - C ( C1 , 1 ) ) * ( C1 - INT ( C1 ) )  :: X = S1  :: Y = S2 
 3140 X2 = C ( C1 , 2 ) - ( C ( C1 + 1 , 2 ) - C ( C1 , 2 ) ) * ( C1 - INT ( C1 ) )  :: Q4 = Q1  :: Q5 = Q2 
 3170 FOR I = 1 TO NN  :: S1 = S1 + X1  :: S2 = S2 + X2  :: IF S1 < 1 OR S1 > = 9 OR S2 < 1 OR S2 > = 9 THEN 3500
 3240 S8 = INT ( S1 ) * 24 + INT ( S2 ) * 3 - 26  :: IF SEG$ ( Q$ , S8 , 2 ) = "``" THEN 3360
 3320 S1 = INT ( S1 - X1 )  :: S2 = INT ( S2 - X2 )  :: PRINT  : "TRIEBWERKE AUSGESCHALTEN" 
 3350 PRINT "WEGEN SCHLECHTER NAVIGATION"  :: GOTO 3370
 3360 NEXT I  :: S1 = INT ( S1 )  :: S2 = INT ( S2 ) 
 3370 A$ = "abc"  :: Z1 = INT ( S1 )  :: Z2 = INT ( S2 )  :: GOSUB 8670 :: GOSUB 3910 :: T8 = 1 
 3430 IF W1 < 1 THEN T8 = .1 * INT ( 10 * W1 ) 
 3450 T = T + T8  :: IF T > T0 + T9 THEN 6220
 3480 GOTO 1980
 3500 X = 8 * Q1 + X + NN * X1  :: Y = 8 * Q2 + Y + NN * X2  :: Q1 = INT ( X / 8 )  :: Q2 = INT ( Y / 8 )  :: S1 = INT ( X - Q1 * 8 )  :: S2 = INT ( Y - Q2 * 8 )  :: IF S1 = 0 THEN Q1 = Q1 - 1  :: S1 = 8 
 3590 IF S2 = 0 THEN Q2 = Q2 - 1  :: S2 = 8 
 3620 X5 = 0  :: IF Q1 < 1 THEN X5 , Q1 , S1 = 1 
 3670 IF Q1 > 8 THEN X5 = 1  :: Q1 , S1 = 8 
 3710 IF Q2 < 1 THEN X5 , Q2 , S2 = 1 
 3750 IF Q2 > 8 THEN X5 = 1  :: Q2 , S2 = 8 
 3790 IF X5 = 0 THEN 3860
 3800 PRINT  :  : "GRENZEN DES WELTALLS DUERFENNICHT VERLASSEN WERDEN."  : "** TRIEBWERKE AUS **" 
 3820 PRINT  : "IM SEKTOR"  ; S1  ; ","  ; S2  ; "DES QUADRANTEN"  ; Q1  ; ","  ; Q2  ; "." 
 3850 IF T > T0 + T9 THEN 6220
 3860 IF 8 * Q1 + Q2 = 8 * Q4 + Q5 THEN 3370
 3870 T = T + 1  :: GOSUB 3910 :: GOTO 1320
 3910 E = E - NN - 10  :: IF E > = 0 THEN RETURN 
 3930 PRINT "SCHILDE GEBEN ENERGIE AB,   UM MANOEVER ABZUSCHLIESSEN." 
 3940 S = S + E  :: E = 0  :: IF S < = 0 THEN S = 0 
 3980 RETURN 
 4000 IF D ( 3 ) < 0 THEN PRINT "####"  :: GOTO 1990
 4030 PRINT "UEBERSICHT FUER QUADRANT"  : Q1  ; ","  ; Q2 
 4040 O1$ = RPT$ ( "-" , 19 )  :: PRINT O1$ 
 4060 FOR I = Q1 - 1 TO Q1 + 1  :: N ( 1 ) = - 1  :: N ( 2 ) = - 2  :: N ( 3 ) = - 3  :: FOR J = Q2 - 1 TO Q2 + 1 
 4120 IF I > 0 AND I < 9 AND J > 0 AND J < 9 THEN N ( J - Q2 + 2 ) = G ( I , J )  :: G ( I , J ) = INT ( G ( I , J ) ) + .1 
 4180 NEXT J  :: FOR L = 1 TO 3  :: PRINT ": "  ;  :: IF N ( L ) < = 0 THEN PRINT "*** "  ;  :: GOTO 4230
 4210 PRINT SEG$ ( STR$ ( N ( L ) + 1000 ) , 2 , 3 )  ; " "  ; 
 4230 NEXT L  :: PRINT ":"  : O1$  :: NEXT I  :: GOTO 1990
 4260 IF D ( 4 ) < 0 THEN PRINT "####"  :: GOTO 1990
 4265 IF K3 > 0 THEN 4330
 4270 PRINT  : "FUEHLER ZEIGEN KEINE"  : "KLINGONEN IM QUADRANTEN"  :: GOTO 1990
 4330 IF D ( 8 ) < 0 THEN PRINT "COMPUTER ####" 
 4350 PRINT "VERFUEGBARE ENERGIE"  : E 
 4370 INPUT "WIEVIEL ABSCHIESSEN?:"  : X  :: IF X < = 0 THEN 1990
 4400 IF E - X < 0 THEN 4350
 4410 E = E - X  :: IF D ( 7 ) < 0 THEN X = X * RND 
 4450 H1 = INT ( X / K3 )  :: FOR I = 1 TO 3  :: IF K ( I , 3 ) < = 0 THEN 4670
 4480 H = INT ( ( H1 / FND ) * ( RND + 2 ) )  :: IF H > .15 * K ( I , 3 ) THEN 4530
 4500 PRINT  : "KEINE BESCHAEDIGUNG"  : "VON KLINGON"  ; I  :: GOTO 4670
 4530 K ( I , 3 ) = K ( I , 3 ) - H  :: PRINT  : "KLINGON"  ; I  ; "GETROFFEN." 
 4550 IF K ( I , 3 ) < = 0 THEN PRINT  : "***KLINGON ZERSTOERT***"  :: GOTO 4580
 4560 GOTO 4670
 4580 K3 = K3 - 1  :: K9 = K9 - 1  :: Z1 = K ( I , 1 )  :: Z2 = K ( I , 2 )  :: A$ = "```"  :: GOSUB 8670
 4650 K ( I , 3 ) = 0  :: G ( Q1 , Q2 ) = G ( Q1 , Q2 ) - 100  :: IF K9 < = 0 THEN 6370
 4670 NEXT I  :: GOSUB 6000 :: GOTO 1990
 4700 PRINT "####"  :: GOTO 1990
 5530 IF D ( 7 ) < 0 THEN PRINT "####"  :: GOTO 1990
 5560 PRINT "VERFUEGBARE ENERGIE="  ; E + S  ;  :: INPUT "SCHILDE?:"  : X 
 5580 IF X < 0 OR S = X THEN 5610
 5590 IF X < = E + S THEN 5630
 5600 PRINT "ZU VIEL !!!" 
 5610 PRINT "<SCHILDE UNVERAENDERT>"  :: GOTO 1990
 5630 E = E + S - X  :: S = X 
 5660 PRINT "SCHILDE SIND AUF"  ; INT ( S )  :: GOTO 1990
 5690 IF D ( 6 ) > = 0 THEN 5910
 5700 PRINT "####"  :: IF D0 = 0 THEN 1990
 5720 D3 = 0  :: FOR I = 1 TO 8  :: IF D ( I ) < 0 THEN D3 = D3 + .1 
 5760 NEXT I  :: IF D3 = 0 THEN 1990
 5780 PRINT  :: D3 = D3 + D4  :: IF D3 > = 1 THEN D3 = .9 
 5810 PRINT  : "GESCHAETZTE REPARATUR DES   RAUMSCHIFFES:"  ; .01 * INT ( 100 * D3 )  ; "STERNENTAGE" 
 5840 INPUT "GENEHMIGUNG?:"  : A$  :: IF A$ < > "J" THEN 1990
 5870 FOR I = 1 TO 8  :: IF D ( I ) < 0 THEN D ( I ) = 0 
 5890 NEXT I  :: T = T + D3 + .1 
 5910 PRINT  : "GERAET           ZUSTAND"  :: FOR R1 = 1 TO 8 
 5920 GOSUB 8790 :: PRINT G2$  ; TAB ( 21 )  ; INT ( D ( R1 ) * 100 ) * .01 
 5950 NEXT R1  :: IF D0 THEN 5720ELSE 1990
 6000 IF K3 < = 0 THEN RETURN 
 6010 IF D0 < > 0 THEN PRINT "SCHILDE DER STATION"  : "SCHUETZEN DIE ENTERPRISE"  :: RETURN 
 6040 FOR I = 1 TO 3  :: IF K ( I , 3 ) < = 0 THEN 6200
 6060 H = INT ( ( K ( I , 3 ) / FND ) * ( 2 + RND ) )  :: S = S - H  :: K ( I , 3 ) = K ( I , 3 ) / ( 3 + RND ) 
 6080 PRINT  : "RAUMSCHIFF WURDE VON"  : "KLINGON"  ; I  ; "GETROFFEN" 
 6090 IF S < = 0 THEN 6240
 6100 PRINT  : "<SCHILDE AUF"  ; S  ; "E.>"  :: IF H < 20 THEN 6200
 6120 IF RND > .6 OR H / S < = .02 THEN 6200
 6140 R1 = FNR  :: D ( R1 ) = D ( R1 ) - H / S - .5 * RND  :: GOSUB 8790
 6170 PRINT  : "BERICHT:"  :  : G2$  ; "DURCH TREFFER BESCHAEDIGT" 
 6200 NEXT I  :: RETURN 
 6220 PRINT  :  : "AM STERNENTAG"  ; T  :: GOTO 6270
 6240 PRINT  :  : "DIE ENTERPRISE WURDE"  : "ZERSTOERT.DIE FOEDERATION   WIRD EROBERT"  :: GOTO 6220
 6270 PRINT "AM ENDE DER MISSION SIND    NOCH"  ; K9  ; "KLINGON-"  : "SCHLACHTSCHIFFE UEBRIG." 
 6290 PRINT  :  :  :: IF B9 = 0 THEN 6360
 6330 INPUT "NOCH EIN SPIEL ?:"  : A$  :: IF A$ = "JA" THEN 10
 6360 STOP 
 6370 PRINT  : "GRATULIERE KAPITAEN!"  : "DAS LETZTE SCHLACHTSCHIFF   DER KLINGONS,DAS DIE"  : "FOEDERATION BEDROHTE,WURDE  ZERSTOERT." 
 6400 PRINT "DEINE ERFOLGSBEWERTUNG IST"  : 1000 * ( K7 / ( T - T0 ) ) ^ 2  :: GOTO 6290
 6430 FOR I = S1 - 1 TO S1 + 1  :: FOR J = S2 - 1 TO S2 + 1 
 6450 IF INT ( I + .5 ) < 1 OR INT ( I + .5 ) > 8 OR INT ( J + .5 ) < 1 OR INT ( J + .5 ) > 8 THEN 6540
 6490 A$ = "efg"  :: Z1 = I  :: Z2 = J  :: GOSUB 8830 :: IF Z3 = 1 THEN 6580
 6540 NEXT J  :: NEXT I  :: D0 = 0  :: GOTO 6650
 6580 D0 = 1  :: C$ = " ANGELEGT"  :: E = E0 
 6620 PRINT "SCHILDE FUER ANLEGEMANOEVER GESENKT"  :: S = 0  :: GOTO 6720
 6650 IF K3 > 0 THEN C$ = " *ROT*"  :: GOTO 6720
 6660 C$ = " GRUEN"  :: IF E < E0 * .1 THEN C$ = " GELB" 
 6720 IF D ( 2 ) > = 0 THEN 6770
 6730 PRINT "KURZBEREICHSFUEHLER"  : "AUSGEFALLEN"  :  :  :: RETURN 
 6770 PRINT  : " o"  ; RPT$ ( "k" , 24 )  ; "p"  :: FOR I = 0 TO 7 
 6820 PRINT " m"  ; SEG$ ( Q$ , I * 24 + 1 , 24 )  ; "n"  :: NEXT I  :: PRINT " q"  ; RPT$ ( "l" , 24 )  ; "r" 
 6850 PRINT  : "STERNENTAG" , INT ( T * 10 ) * .1  : "ZUSTAND" , C$  : "QUADRANT" , Q1  ; ","  ; Q2  : "SEKTOR" , S1  ; ","  ; S2  : "GESAMTENERGIE" , INT ( E + S ) 
 7180 PRINT "SCHILDE" , INT ( S )  : "KLINGONS NOCH" , INT ( K9 )  :: RETURN 
 7290 IF D ( 8 ) < 0 THEN PRINT "####"  :: GOTO 1990
 7550 PRINT  : "QUADRANT"  ; Q1  ; ","  ; Q2  :  : "    1  2  3  4  5  6  7  8" 
 7560 O1$ = "   " & RPT$ ( "---___" , 4 ) 
 7570 PRINT O1$  :: FOR I = 1 TO 8  :: PRINT I  ; 
 7630 FOR J = 1 TO 8  :: IF G ( I , J ) = INT ( G ( I , J ) ) THEN PRINT "***"  ;  :: GOTO 7720
 7700 PRINT SEG$ ( STR$ ( G ( I , J ) + 1000 ) , 2 , 3 )  ; 
 7720 NEXT J  :: GOTO 7850
 7850 PRINT  : O1$  :: NEXT I  :: PRINT  :: GOTO 1990
 8590 R1 , Z1 = FNR  :: R2 , Z2 = FNR  :: A$ = "```"  :: GOSUB 8830 :: IF Z3 = 0 THEN 8590
 8600 RETURN 
 8670 S8 = INT ( Z2 - .5 ) * 3 + INT ( Z1 - .5 ) * 24 + 1 
 8675 IF LEN ( A$ ) < > 3 THEN STOP 
 8680 IF S8 = 1 THEN Q$ = A$ & SEG$ ( Q$ , LEN ( Q$ ) - 188 , 189 )  :: RETURN 
 8690 IF S8 = 190 THEN Q$ = SEG$ ( Q$ , 1 , 189 ) & A$  :: RETURN 
 8700 Q$ = SEG$ ( Q$ , 1 , S8 - 1 ) & A$ & SEG$ ( Q$ , LEN ( Q$ ) - 189 + S8 , 190 - S8 )  :: RETURN 
 8790 ON R1 GOTO 8792, 8794, 8796, 8798, 8800, 8802, 8804, 8806
 8792 G2$ = "TRIEBWERKE"  :: RETURN 
 8794 G2$ = "NAHBEREICHSFUEHLER"  :: RETURN 
 8796 G2$ = "FERNBEREICHSFUEHLER"  :: RETURN 
 8798 G2$ = "PHASER "  :: RETURN 
 8800 G2$ = "PHOTONEN "  :: RETURN 
 8802 G2$ = "WARTUNGSBERICHT "  :: RETURN 
 8804 G2$ = "SCHILDER "  :: RETURN 
 8806 G2$ = "COMPUTER "  :: RETURN 
 8830 Z1 = INT ( Z1 + .5 )  :: Z2 = INT ( Z2 + .5 )  :: S8 = ( Z2 - 1 ) * 3 + ( Z1 - 1 ) * 24 + 1  :: Z3 = 0 
 8890 IF SEG$ ( Q$ , S8 , 3 ) < > A$ THEN RETURN 
 8900 Z3 = 1  :: RETURN 
 9030 IF Z5 < = 4 THEN ON Z4 GOTO 9040, 9050, 9060, 9070, 9080, 9090, 9100, 9110
 9035 GOTO 9120
 9040 G2$ = "ANTARES"  :: GOTO 9210
 9050 G2$ = "RIGEL"  :: GOTO 9210
 9060 G2$ = "PROCYON"  :: GOTO 9210
 9070 G2$ = "VEGA"  :: GOTO 9210
 9080 G2$ = "CANOPUS"  :: GOTO 9210
 9090 G2$ = "ALTAIR"  :: GOTO 9210
 9100 G2$ = "SAGITTARIUS"  :: GOTO 9210
 9110 G2$ = "POLLUX"  :: GOTO 9210
 9120 ON Z4 GOTO 9130, 9140, 9150, 9160, 9170, 9180, 9190, 9200
 9130 G2$ = "SIRIUS"  :: GOTO 9210
 9140 G2$ = "DENEB"  :: GOTO 9210
 9150 G2$ = "CAPELLA"  :: GOTO 9210
 9160 G2$ = "BETEIGEUZE"  :: GOTO 9210
 9170 G2$ = "ALDEBARAN"  :: GOTO 9210
 9180 G2$ = "REGULUS"  :: GOTO 9210
 9190 G2$ = "ARTURUS"  :: GOTO 9210
 9200 G2$ = "SPICA" 
 9210 IF G5 < > 1 THEN ON Z5 GOTO 9230, 9240, 9250, 9260, 9230, 9240, 9250, 9260
 9220 RETURN 
 9230 G2$ = G2$ & " I"  :: RETURN 
 9240 G2$ = G2$ & " II"  :: RETURN 
 9250 G2$ = G2$ & " III"  :: RETURN 
 9260 G2$ = G2$ & " IV"  :: RETURN 
 9270 END 
