    5 CALL CLEAR 
    7 RANDOMIZE 
   10 PRINT TAB ( 9 )  ; "HAMMURABI" 
   20 PRINT "    CREATIVE COMPUTING       MORRISTOWN,NEW JERSEY,USA" 
   30 PRINT  :  :  : 
   80 PRINT "VERSUCHE DEIN GLUECK BEIM   REGIEREN DES ALTEN SUMMERIA FUER ZEHN JAHRE."  :  : 
   90 FOR JJ = 1 TO 1000  :: NEXT JJ 
   95 D1 , P1 = 0 
  100 Z = 0  :: P = 95  :: S = 2800  :: H = 3000  :: E = H - S 
  110 Y = 3  :: A = H / Y  :: I = 5  :: Q = 1 
  210 D = 0 
  215 Z = Z + 1  :: PRINT  :  :  : "HAMURABI:ICH MUSS DIR MIT-  TEILEN,DASS IM JAHRE"  ; Z  ; ","  : D  ; "MENSCHEN VERHUNGERTEN,"  : I  ; "KAMEN IN DIE STADT," 
  218 P = P + I 
  227 IF Q > 0 THEN 230
  228 P = INT ( P / 2 ) 
  229 PRINT "EINE SCHRECKLICHE LANDPLAGE KAM! DIE HALBE BEVOELKERUNG STARB." 
  230 PRINT "DIE BEVOELKERUNG IST JETZT"  ; P 
  232 PRINT "DIE STADT BESITZT JETZT"  ; A  ; "MORGEN." 
  235 PRINT "DU HAST"  ; Y  ; "SCHEFFEL PRO"  : "MORGEN GEERNTET." 
  250 PRINT "DIE RATTEN FRASSEN"  ; E  ; "SCHEFFEL." 
  260 PRINT "DU HAST JETZT"  ; S  ; "SCHEFFEL"  : "VORRAT."  :  : 
  270 IF Z = 11 THEN 860
  310 C = INT ( 10 * RND )  :: Y = C + 17 
  312 PRINT "LAND KOSTET"  ; Y  ; "SCHEFFEL"  : "PRO MORGEN." 
  320 INPUT "WIEVIELE MORGEN MOECHTEST DUKAUFEN?:"  : Q  :: IF Q < 0 THEN 850
  322 IF Y * Q < = S THEN 330
  323 GOSUB 710
  324 GOTO 320
  330 IF Q = 0 THEN 340
  331 A = A + Q  :: S = S - Y * Q  :: C = 0 
  334 GOTO 400
  340 INPUT "WIEVIELE MORGEN MOECHTEST DUVERKAUFEN?:"  : Q  :: IF Q < 0 THEN 850
  342 IF Q < A THEN 350
  343 GOSUB 720
  344 GOTO 340
  350 A = A - Q  :: S = S + Y * Q  :: C = 0 
  400 PRINT 
  410 INPUT "WIEVIELE SCHEFFEL MOECHTEST DU FUER NAHRUNG AUSGEBEN?:  "  : Q  :: IF Q < 0 THEN 850
  418  !  VERSUCHT MEHR KORN ZU    VERWENDEN ALS VORHANDEN
  420 IF Q < = S THEN 430
  421 GOSUB 710
  422 GOTO 410
  430 S = S - Q  :: C = 1  :: PRINT 
  440 INPUT "AUF WIEVIELEN MORGEN        MOECHTEST DU KORN SAEHEN?:  "  : D  :: IF D = 0 THEN 511
  442 IF D < 0 THEN 850
  444  !  MEHR MORGEN BEPFLANZEN ALS IM BESITZ.
  445 IF D < = A THEN 450
  446 GOSUB 720
  447 GOTO 440
  449  !  GENUEGEND KORN ZUM    SAEHEN?
  450 IF INT ( D / 2 ) < = S THEN 455
  452 GOSUB 710
  453 GOTO 440
  454  !  GENUEGEND ARBEITER?
  455 IF D < 10 * P THEN 510
  460 PRINT "ABER DU HAST NUR"  ; P  ; "ARBEITER"  ; "UM NACH DEN FELDER ZU SEHEN!ALSO," 
  470 GOTO 440
  510 S = S - INT ( D / 2 ) 
  511 GOSUB 800
  512  !  EINE GUTE ERNTE
  515 Y = C  :: H = D * Y  :: E = 0 
  521 GOSUB 800
  522 IF INT ( C / 2 ) < > C / 2 THEN 530
  523  !  RATTEN VERMEHREN SICH IM UEBERMASS
  525 E = INT ( S / C ) 
  530 S = S - E + H 
  531 GOSUB 800
  532  !  WIR HABEN EIN PAAR KINDER
  533 I = INT ( C * ( 20 * A + S ) / P / 100 + 1 ) 
  539  !  WIEVIELE UNTERTANEN   KONNTEN SICH SATT ESSEN?
  540 C = INT ( Q / 20 ) 
  541  !  15%-LANDPLAGE
  542 Q = INT ( 10 * ( 2 * RND - .3 ) ) 
  550 IF P < C THEN 210
  551  !  ANKLAGE?
  552 D = P - C  :: IF D > .45 * P THEN 560
  553 P1 = ( ( Z - 1 ) * P1 + D * 100 / P ) / Z 
  555 P = C  :: D1 = D1 + D  :: GOTO 215
  560 PRINT  : D  ; "UNTERTANEN VERHUNGERTEN"  : "IN EINEM JAHR!!!" 
  565 PRINT "WEGEN DIES. AUSSERORDENTLICHSCHLECHTEN VERWALTUNG WIRST" 
  570 PRINT "DU NICHT NUR ANGEKLAGT,     SONDERN AUCH ALS NATIONALER VERAETER ERKLAERT!!!"  :: GOTO 990
  710 PRINT "HAMURABI:UEBERLEGE NOCH MAL,DU HAST  NUR"  ; S  ; "SCHEFFEL"  : "KORN,ALSO," 
  712 RETURN 
  720 PRINT "HAMURABI:UEBERLEGE NOCH MAL,DU BESITZT NUR"  ; A  ; "MORGEN.ALSO," 
  730 RETURN 
  800 C = INT ( RND * 5 ) + 1 
  801 RETURN 
  850 PRINT "HAMURABI:ICH KANN DEINEN    WUNSCH NICHT AUSFUEHREN,    SUCHE DIR EINEN ANDEREN     DIENER!!!!"  :: GOTO 990
  860 FOR II = 1 TO 6000  :: NEXT II  :: PRINT "IN DEN LETZTEN 10 JAHREN    DEINER VERWALTUNG VERHUNGER-TEN IM DURCHSCHNITT"  ; P1  ; "PROZENT DER BEVOELKERUNG PROJAHR. D.H. ES STARBEN" 
  865 PRINT "INSGESAMMT"  ; D1  ; "UNTERTANEN."  :: L = A / P 
  870 PRINT "DU HAST MIT 10 MORGEN PRO   PERSON ANGEFANGEN UND MIT"  ; L  ; "MORGEN PRO PERSON"  : "AUFGEHOERT."  :  :  :: FOR II = 1 TO 4000  :: NEXT II 
  880 IF P1 > 33 THEN 565
  885 IF L < 7 THEN 565
  890 IF P1 > 10 THEN 940
  892 IF L < 9 THEN 940
  895 IF P1 > 3 THEN 960
  896 IF L < 10 THEN 960
  900 PRINT "EINE FANTASTISCHE HANDLUNG!!CHARLEMANGE,DISRAELI UND    JEFFERSON ZUSAMMEN KOENNTEN ES NICHT BESSER TUN!"  :: GOTO 990
  940 PRINT "DEINE UNGESCHICKTE HANDLUNGSWEISE STELLT NERO UND       IVAN IV IN DEN SCHATTEN UND DIE (VERBLIEBENEN)UNTERTANENSEHEN DICH ALS EINEN" 
  950 PRINT "UNBELIEBTEN FUEHRER AN.     OFFEN GESAGT:SIE HASSEN DICH!!"  :: GOTO 990
  960 PRINT "DU HAETTEST ES BESSER TUN   KOENNEN,ABER ES WAR NICHT ZUSCHLECHT."  ; INT ( P * .8 * RND )  ; "UNTERTANEN"  : "WUERDEN DICH WIRKLICH GERNE" 
  970 PRINT "ERMORDET SEHEN,ABER WIR     HABEN ALLE UNSERE KLEINEN   PROBLEME." 
  990 PRINT  :: FOR N = 1 TO 10  :: PRINT CHR$ ( 62 )  ;  :: NEXT N 
  995 PRINT "BIS SPAETER" 
  999 END 
