    1 CALL CLEAR  :: CALL SCREEN ( 11 )  :: FOR Z = 0 TO 14  :: CALL COLOR ( Z , 2 , 12 )  :: NEXT Z 
    2 DISPLAY AT ( 10 , 11 )  : "KOENIG"  : "    CREATIVE COMPUTING"  : "MORRISTOWN, NEW JERSEY, USA"  :: ON WARNING NEXT 
    4 DISPLAY AT ( 16 , 1 )  : "MOECHTEST DU ANWEISUNGEN?   (J/N):J"  :: ACCEPT AT ( 17 , 7 ) BEEP SIZE ( - 8 ) VALIDATE ( UALPHA )  : Z$ 
    6 N5 = 8 
   10 IF Z$ = "N" THEN 50
   11 IF Z$ = "NOCHMALS" THEN 1960
   20 PRINT "GRATULIERE!"  : "DU WURDEST GERADE ZUM"  : "PRAESIDENTEN SETATS DETINU  GEWAEHLT, EINER KLEINEN,"  : "KOMMUNISTISCHEN INSEL, DIE" 
   24 PRINT "30 KM BREIT UND 70 KM LANG  IST. ES IST DEINE AUFGABE   DEN HAUSHALTSPLAN DES LANDESZU BESTIMMEN,SOWIE DIE" 
   27 PRINT "GEMEINDEMITGLIEDER AUS DER  GEMEINKASSE ZU BEZAHLEN."  : "DIE WAEHRUNG HEISST RALLODS UND JEDER BENOETIGT ZUM" 
   30 PRINT "UEBERLEBEN 100 RALLODS IM   JAHR."  : "DAS STAATSEINKOMMEN KOMMT   VON LANDWIRTSCHATFLICHEN"  : "PRODUKTEN UND VON TOURISTEN."  :  : 
   31 GOSUB 47
   32 PRINT  : "DIE HAELFTE DES LANDES IST  FARMLAND,KANN ABER AUCH AN  DIE AUSLAENDISCHE INDUSTRIE VERKAUFT WERDEN." 
   38 PRINT "DIESE FIRMEN IMPORTIEREN    ARBEITER UND NAHRUNG FUER   IHRE VERSORGUNG SELBST."  :  : "DAS ANPFLANZEN VON GETREIDE" 
   40 PRINT "KOSTET ZWISCHEN 10 UND 15   RALLODS PRO QKM"  :  : "ES IST DEINE AUFGABE"  ; N5  ; "JAHRE IM AMT DURCHZUSTEHEN."  : " VIEL GLUECK"  :  : 
   41 GOSUB 47
   46 CALL CLEAR  :: GOTO 50
   47 DISPLAY AT ( 24 , 1 )  : "    WEITER MIT ENTER" 
   48 CALL KEY ( 0 , K , S )  :: IF K < > 13 THEN 48
   49 RETURN 
   50 A = INT ( 60000 + ( 1000 * RND - 1000 * RND ) ) 
   55 B = INT ( 500 + ( 10 * RND ) - ( 10 * RND ) ) 
   65 D = 2000 
  100 W = INT ( 10 * RND + 95 ) 
  102 PRINT  :  : "UEBERSICHT"  :  : A  ; "RALLODS"  :  : INT ( B )  ; "LANDSLEUTE" 
  115 V9 = INT ( ( RND / 2 ) * 10 + 10 ) 
  120 IF C = 0 THEN 140
  130 PRINT  : INT ( C )  ; "AUSLAENDISCHE "  ; TAB ( 20 )  ; "ARBEITER" 
  140 PRINT  : INT ( D )  ; "QKM LAND" 
  150 PRINT  : "INDUSTRIE KAUFT LAND FUER"  : W  ; "RALLODS PRO QKM." 
  155 PRINT  : "ANPFLANZEN KOSTET"  : V9  ; "RALLODS PRO QKM."  :  : 
  200 INPUT "WIVIELE QKM LAND AN INDUSTR.VERKAUFEN?:"  : H 
  215 IF H < 0 THEN 200
  220 IF H < = D - 1000 THEN 300
  230 PRINT  : "DU HAST NUR"  ; D - 1000  ; "QKM"  ; " LAND."  :  : 
  240 IF X THEN 200
  250 PRINT "(AUSLAENDISCHE INDUSTRIE"  ; " KAUFT NUR FARMLAND,DA"  ; " WAELDER WEGEN DER BAEUME    UND DICKER OBERSCHICHT" 
  260 PRINT " UNWIRTSCHAFTLICH FUER"  : " OBERFLAECHENABBAU SIND..)" 
  280 X = 1 
  299 GOTO 200
  300 D = INT ( D - H ) 
  310 A = INT ( A + ( H * W ) ) 
  320 PRINT  : "(DU HAST "  ; STR$ ( A )  ; " RALLODS)" 
  340 INPUT "WIEVIEL RALLODS WERDEN UNTERDEN LANDSLEUTEN VERTEILT?   :"  : I 
  342 IF I < 0 THEN 320
  350 IF I < A THEN 400
  360 IF A = I THEN 380
  370 PRINT  : "DU HAST NUR "  ; STR$ ( A )  ; " RALLODS!"  :  : 
  375 GOTO 340
  380 J = 0 
  390 K = 0 
  395 A = 0 
  399 GOTO 1000
  400 A = INT ( A - I ) 
  410 INPUT "WIEVIELE QKM LAND ANPFLANZEN?:"  : J 
  421 IF J < 0 THEN 410
  422 IF J < = B * 2 THEN 426
  423 PRINT  : "EIN LANDSMANN KANN NUR 2 QKMLAND ANPFLANZEN!"  :  : 
  424 GOTO 410
  426 IF J < = D - 1000 THEN 430
  427 PRINT  : "DU HAST NUR"  ; D - 1000  ; "QKM"  ; " FARMLAND!"  :  : 
  428 GOTO 410
  430 U1 = INT ( J * V9 ) 
  435 IF U1 < A THEN 500
  440 IF U1 = A THEN 490
  450 PRINT  : "DU HAST NUR"  ; A  ; "RALLODS!"  :  : 
  460 GOTO 410
  490 K = 0 
  495 A = 0 
  499 GOTO 1000
  500 A = A - U1 
  510 INPUT "WIEVIELE RALLODS WILLST DU  FUER UMWELTKONTROLLE AUS-   GEBEN?:"  : K 
  522 IF K < 0 THEN 510
  530 IF K < = A THEN 1000
  540 PRINT  : "DU HAST NUR"  ; A  ; "RALLODS!" 
  550 GOTO 510
  600 IF H < > 0 OR I < > 0 OR J < > 0 OR K < > 0 THEN 1002
  612 PRINT  : " AUF WIEDERSEHEN!"  : "(WENN DU DIESES SPIEL"  : " SPAETER FORFUEHREN"  : " MOECHTEST,DANN ANTWORTE"  : "'NOCHMALS' AUF DIE FRAGE" 
  613 PRINT "'MOECHTEST DU ANWEISUNGEN?')" 
  618 GOTO 2046
 1000 GOTO 600
 1002 PRINT  :  : 
 1010 A = INT ( A - K ) 
 1020 A4 = A 
 1100 IF INT ( I / 100 - B ) > = 0 THEN 1120
 1105 IF I / 100 < 50 THEN 1700
 1110 PRINT INT ( B - I / 100 )  ; "LANDSLEUTE "  ; "VERHUNGERTEN."  :  : 
 1120 F1 = INT ( RND * ( 2000 - D ) ) 
 1122 IF K < 25 THEN 1130
 1125 F1 = INT ( F1 / K * 25 ) 
 1130 IF F1 < = 0 THEN 1150
 1140 PRINT  : F1  ; "LANDSLEUTE STARBEN"  : "AN KOHLENMONOXID- UND STAUB-INHALATIONEN"  :  : 
 1150 IF INT ( ( I / 100 ) - B ) < 0 THEN 1170
 1160 IF F1 > 0 THEN 1180
 1165 GOTO 1200
 1170 PRINT  : "MAN ZWANG DICH"  : INT ( ( F1 + ( B - I / 100 ) ) * 9 )  ; "RALLODS"  : "AN BEERDIGUNGSKOSTEN ZU"  : "ZAHLEN!"  :  : 
 1174 B5 = INT ( F1 + B - I / 100 ) 
 1175 A = INT ( A - ( ( F1 + B - I / 100 ) * 9 ) ) 
 1176 GOTO 1185
 1180 PRINT  : "MAN ZWANG DICH"  : INT ( F1 * 9 )  ; "RALLODS"  : "AN BEERDIGUNGSKOSTEN ZU"  : "ZAHLEN!"  :  : 
 1182 B5 = F1 
 1183 A = INT ( A - F1 * 9 ) 
 1185 IF A > = 0 THEN 1194
 1187 PRINT  : "UNGENUEGNDE RUECKLAGEN!"  : "LAND MUSSTE VERKAUFT WERDEN,UM DIE UNKOSTEN ZU DECKEN."  :  : 
 1189 D = INT ( D + A / W ) 
 1190 A = 0 
 1194 B = INT ( B - B5 ) 
 1200 IF H = 0 THEN 1250
 1220 C1 = INT ( H + RND * 10 - RND * 20 ) 
 1224 IF C > 0 THEN 1230
 1226 C1 = C1 + 20 
 1230 PRINT C1  ; "ARBEITER KAMEN INS"  ; " LAND UND" 
 1250 P1 = INT ( ( ( I / 100 - B ) / 10 ) + ( K / 25 ) - ( ( 2000 - D ) / 50 ) - ( F1 / 2 ) ) 
 1255 PRINT ABS ( P1 )  ; "LANDSLEUTE "  ; 
 1260 IF P1 < 0 THEN 1275
 1265 PRINT "KAMEN AUF"  ; 
 1270 GOTO 1280
 1275 PRINT "VERLIESSEN"  ; 
 1280 PRINT " DIE INSEL."  :  : 
 1285 GOSUB 47
 1290 B = INT ( B + P1 ) 
 1292 C = INT ( C + C1 ) 
 1305 U2 = INT ( ( 2000 - D ) * ( ( RND + 1.5 ) / 2 ) ) 
 1320 PRINT  : "VON"  ; INT ( J )  ; "GEPFLANZTEN "  ; "QKM,"  ; 
 1324 IF J > U2 THEN 1330
 1326 U2 = J 
 1330 PRINT "HAST DU"  ; INT ( J - U2 )  ; "QKM"  ; " MIT GETREIDE GEERNTET." 
 1340 IF U2 = 0 OR T1 > = 2 THEN 1370
 1350 PRINT "(WEGEN "  ; 
 1355 IF T1 = 0 THEN 1365
 1360 PRINT "STEIGENDER " 
 1365 PRINT "LUFT-"  : " UND WASSERVERSCHMUTZUNG     DURCH AUSLAENDISCHE"  : " INDUSTRIE.)" 
 1370 Q = INT ( ( J - U2 ) * W / 2 ) 
 1380 PRINT  : "DU VERDIENTEST"  ; INT ( Q )  ; "RALLODS." 
 1390 A = INT ( A + Q ) 
 1400 V1 = INT ( ( B - P1 ) * 22 + RND * 500 ) 
 1405 V2 = INT ( ( 2000 - D ) * 15 ) 
 1410 PRINT  : "DU HAST"  ; ABS ( INT ( V1 - V2 ) )  ; "RALLODS VOM"  : "TOURISTENHANDEL VERDIENT." 
 1420 IF V2 = 0 THEN 1450
 1425 IF V1 - V2 > = V3 THEN 1450
 1430 PRINT "ABNAHME,DA" 
 1435 G1 = 10 * RND 
 1440 IF G1 < = 2 THEN 1460
 1442 IF G1 < = 4 THEN 1465
 1444 IF G1 < = 6 THEN 1470
 1446 IF G1 < = 8 THEN 1475
 1448 IF G1 < = 10 THEN 1480
 1450 V3 = INT ( A + V3 ) 
 1451 A = INT ( A + V3 ) 
 1452 GOSUB 47 :: GOTO 1500
 1460 PRINT "DIE FISCHVERMEHRUNG AUFGRUNDDER WASSERVERSCHMUTZUNG"  : "ZURUECKGEGANGEN IST." 
 1462 GOTO 1450
 1465 PRINT "DIE LUFTVERSCHMUTZUNG DIE   VERMEHRUNG VON WILDVOEGELN  ZERSTOERT." 
 1467 GOTO 1450
 1470 PRINT "MINERALBAEDER DURCH WASSER- VERSCHMUTZUNG VERSEUCHT     SIND." 
 1472 GOTO 1450
 1475 PRINT "UNSCHOENER SMOG SONNENBADER ENTMUTIGT." 
 1477 GOTO 1450
 1480 PRINT "HOTELS WEGEN SMOG SCHMUTZIG AUSSEHEN." 
 1482 GOTO 1450
 1500 IF B5 > 200 THEN 1600
 1505 IF B < 343 THEN 1700
 1510 IF A4 / 100 > 5 THEN 1800
 1515 IF C > B THEN 1550
 1520 IF N5 - 1 = X5 THEN 1900
 1545 GOTO 2000
 1550  ! 
 1560 PRINT  :  : "DIE ANZAHL DER AUSLAENDER   HAT DIE ZAHL LANDSLEUTE     UEBERTROFFEN.DA SIE IN DER  MEHRHEIT SIND, HABEN SIE" 
 1564 PRINT "REVOLTIERT UND DIE FUEHRUNG IM LAND UEBERNOMMEN." 
 1570 IF RND > .5 THEN 1580
 1574 PRINT "DU WURDEST AUS DEM AMT ENT- FERNT UND BEFINDEST DICH    JETZT IM GEFAENGNIS." 
 1578 GOTO 1590
 1580 PRINT "DU WURDEST ERMORDET." 
 1590 PRINT  :  : 
 1591 F = 1200  :: I = 2 ^ ( 1 / 12 ) 
 1592 FOR X = 1 TO 40 
 1593 CALL SOUND ( 80 , F , 5 ) 
 1594 F = F / I  :: NEXT X 
 1595 CALL SOUND ( 100 , 220 , 5 ) 
 1596 GOSUB 47 :: STOP 
 1600 PRINT 
 1602  ! 
 1610 PRINT B5  ; "LANDSLEUTE STARBEN"  : "IN EINEM JAHR!!!!!"  : "WEGEN AUSSERORDENTLICH"  : "SCHLECHTER BEWIRTSCHAFTUNG  WURDEST DU NICHT NUR" 
 1615 PRINT "ANGEKLAGT, SONDER AUCH AUS  DEM AMT ENTFERNT. AUSSERDEM" 
 1622 M6 = INT ( RND * 10 ) 
 1625 IF M6 < = 3 THEN 1670
 1630 IF M6 < = 6 THEN 1680
 1635 IF M6 < = 10 THEN 1690
 1670 PRINT "IST DEIN LINKES AUGE"  : "AUSGESTOCHEN." 
 1672 GOTO 1590
 1680 PRINT "HAST DU AUCH EINEN"  : "SCHLECHTEN RUF BEKOMMEN." 
 1682 GOTO 1590
 1690 PRINT "WURDEST DU AUCH ZUM"  : "NATIONALEN FREIVOGEL"  : "ERKLAERT." 
 1692 GOTO 1590
 1700 PRINT 
 1702  ! 
 1710 PRINT "SEIT DEINEM AMTSANTRITT     STARBEN UEBER EIN DRITTEL   DER GESAMMTEN BEVOELKERUNG. DIE (VERBLIEBENEN)UNTERTANENHASSEN DICH." 
 1730 GOTO 1570
 1800 IF B5 - F1 < 2 THEN 1515
 2000 X5 = X5 + 1 
 2020 B5 = 0 
 2030 GOSUB 47
 2040 GOTO 100
 2050 END 
