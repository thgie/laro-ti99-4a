    5 CALL CLEAR  :: RANDOMIZE 
   10 PRINT TAB ( 11 )  ; "PLATSCH" 
   20 PRINT "     CREATIVE COMPUTING      MORRISTOWN,NEW JERSEY,USA" 
   40 PRINT  :  :  : 
   50 DIM A ( 42 ) 
   95 PRINT "WILLKOMMEN ZUM PLATSCH-SPIELES SIMULIERT EINEN FALL-    SCHIRMSPRUNG.VERSUCHE DEN   SCHIRM IM LETZTEN AUGENBLICK" 
   97 PRINT "ZU OEFFNEN,OHNE AUFZUSCHLA- GEN." 
  118 PRINT  :  :  :: D1 , V , AA , N , M = 0  :: D1 = INT ( 9001 * RND + 1000 ) 
  119 INPUT "WAEHLST DU DIE ENDGESCHWIN- DIGKEIT SELBST?  (JA ODER   NEIN)"  : A1$ 
  120 IF A1$ = "NEIN" THEN 128
  121 IF A1$ < > "JA" THEN INPUT "JA ODER NEIN?:"  : A1$  :: GOTO 120
  123 INPUT "WELCHE ENDGESCHWINDIGKEIT?  (KM/H):"  : V1 
  125 V1 = V1 * INT ( 5280 / 3600 )  :: V = V1 + ( ( V1 * RND ) / 20 ) - ( ( V1 * RND ) / 20 )  :: GOTO 135
  128 V1 = INT ( 1000 * RND ) 
  130 PRINT "FEIN.ENDGESCHWINDIGKEIT="  ; V1  ; "KM/H" 
  131 GOTO 125
  135 INPUT "WAEHLST DU DIE VON DER ERD- SCHWERE ABHAENGIGE          BESCHLEUNIGUNG(JA ODER NEIN):"  : B1$ 
  140 IF B1$ = "NEIN" THEN 150
  141 IF B1$ < > "JA" THEN INPUT "JA ODER NEIN?:"  : B1$  :: GOTO 140
  143 INPUT "WELCHE BESCHLEUNIGUNG?      (M/SEK/SEK):"  : A2 
  145 AA = A2 + ( ( A2 * RND ) / 20 ) - ( ( A2 * RND ) / 20 )  :: GOTO 205
  150 ON INT ( 1 + ( 10 * RND ) ) GOTO 151, 152, 153, 154, 155, 156, 157, 158, 159, 160
  151 PRINT "FEIN.DU BIST AUF DEM MERKUR.BESCHLEUNIGUNG=3.7 M/SEK/SEK"  :: GOTO 161
  152 PRINT "GUT.DU BIST AUF DER VENUS.  BESCHLEUNIGUNG=8.6 M/SEK/SEK"  :: GOTO 162
  153 PRINT "DANN BIST DU AUF DER ERDE.  BESCHLEUNIGUNG=9.8 M/SEK/SEK"  :: GOTO 163
  154 PRINT "FEIN.DU BIST AUF DEM MOND.  BESCHLEUNIGUNG=1.65M/SEK/SEK"  :: GOTO 164
  155 PRINT "GUT.DU BIST AUF DEM MARS.   BESCHLEUNIGUNG=3.8 M/SEK/SEK"  :: GOTO 165
  156 PRINT "DANN BIST DU AUF DEM JUPITERBESCHLEUNIGUNG=26 M/SEK/SEK"  :: GOTO 166
  157 PRINT "FEIN.DU BIST AUF DEM SATURN.BESCHLEUNIGUNG=11.5M/SEK/SEK"  :: GOTO 167
  158 PRINT "GUT.DU BIST AUF DEM URANUS. BESCHLEUNIGUNG=10.3M/SEK/SEK"  :: GOTO 168
  159 PRINT "DANN BIST DU AUF DEM NEPTUN.BESCHLEUNIGUNG=12.1M/SEK/SEK"  :: GOTO 169
  160 PRINT "FEIN.DU BIST AUF DER SONNE. BESCHLEUNIGUNG=273 M/SEK/SEK"  :: GOTO 170
  161 A2 = 3.7  :: GOTO 145
  162 A2 = 8.6  :: GOTO 145
  163 A2 = 9.8  :: GOTO 145
  164 A2 = 1.6  :: GOTO 145
  165 A2 = 3.8  :: GOTO 145
  166 A2 = 26  :: GOTO 145
  167 A2 = 11.5  :: GOTO 145
  168 A2 = 10.3  :: GOTO 145
  169 A2 = 12.1  :: GOTO 145
  170 A2 = 273  :: GOTO 145
  205 PRINT  : "  HOEHE   ="  ; D1  ; "M" 
  207 PRINT "ENDGESCHW.="  ; V1  ; "M/SEK +-5%" 
  208 PRINT "BESCHLEUN.="  ; A2  ; "M/S/S +-5%" 
  210 PRINT "STELLE DIE STOPPUHR FUER DENFREIFALL." 
  211 INPUT "WIEVIELE SEKUNDEN?:"  : T 
  215 PRINT "WIR SPRINGEN AB." 
  218 PRINT  : "ZEIT(SEK) VERBLEIB. FALLSTR." 
  219 PRINT "========= ==================" 
  300 FOR I = 0 TO T STEP ( T / 8 ) 
  310 IF I > V / AA THEN 400
  320 D = D1 - ( ( AA / 2 ) * I ^ 2 ) 
  330 IF D < = 0 THEN 1000
  340 PRINT I  ; TAB ( 11 )  ; D 
  350 NEXT I 
  360 GOTO 500
  400 PRINT "ENDGESCHWINDIGKEIT NACH T   PLUS"  ; V / AA  ; "SEKUNDEN"  ; " ERREICHT." 
  405 FOR I = I TO T STEP ( T / 8 ) 
  410 D = D1 - ( ( V ^ 2 / ( 2 * AA ) ) + ( V * ( I - ( V / AA ) ) ) ) 
  420 IF D < = 0 THEN 1010
  430 PRINT I  ; TAB ( 11 )  ; D 
  440 NEXT I 
  500 PRINT "SCHIRM OFFEN" 
  510 K , K1 = 0 
  550 FOR J = 0 TO 42 
  555 IF A ( J ) = 0 THEN 620
  560 K = K + 1 
  570 IF D > = A ( J ) THEN 600
  580 K1 = K1 + 1 
  600 NEXT J 
  610 GOTO 740
  620 A ( J ) = D 
  630 IF J > 2 THEN 650
  635 PRINT "ERSTAUNLICH!! NICHT SCHLECHTFUER DEN "  ; 
  636 IF J = 0 THEN PRINT "ERSTEN" 
  637 IF J = 1 THEN PRINT "ZWEITEN" 
  638 IF J = 2 THEN PRINT "DRITTEN" 
  639 PRINT "ERFOLGREICHEN SPRUNG!!!"  :: GOTO 2000
  650 IF K - K1 < = .1 * K THEN 700
  660 IF K - K1 < = .25 * K THEN 710
  670 IF K - K1 < = .5 * K THEN 720
  680 IF K - K1 < = .75 * K THEN 730
  690 IF K - K1 < = .9 * K THEN 740
  695 GOTO 750
  700 PRINT "WAU! GUTE SPRUENGE. VON DEN"  ; K  ; "ERFOLGREICHEN"  ; "SPRUENGEN"  ; "OEFFNETEN NUR"  ; K - K1  ; "IHREN SCHIRM NIEDRIGER ALS  DU." 
  703 GOTO 2000
  710 PRINT "GUT!!"  ; K  ; "ERFOLGREICHE"  : "SPRUENGE GAB ES VOR DEINEN. NUR"  ; K - K1  ; "KAMEN TIEFER ALS DU,"  ; "BEVOR IHR SCHIRM OEFFNETE." 
  712 GOTO 2000
  720 PRINT "NICHT SCHLECHT. ES GAB"  ; K  ; "ERFOLGREICHE SPRUENGE VON   DIR.DU WURDEST IN"  ; K - K1  ; "DAVON UEBERTROFFEN."  :: GOTO 2000
  730 PRINT "DU BIST NOCH ZURUECKHALTEND!DU HAST NUR"  ; K - K1  ; "VON DEN"  ; K  ; "ERFOLGREICHEN SPRUENGEN GUT GESPRUNGEN."  :: GOTO 2000
  740 PRINT "HMMM!!  HAST DU KEINEN      SPORTSGEIST? ES GAB"  ; K  ; "BESSERE SPRUENGE ALS DEINE  UND DU HAST"  ; K1  ; "SPRUENGE" 
  741 PRINT "BESSER ALS DIE SCHLECHTESTEN,RAFFE DICH AUF!!!"  :: GOTO 2000
  750 PRINT "HEI! DU HAST VIEL ZU FRUEH  AN DER LEINE GEZOGEN. "  ; K  ; "ERFOLGREICHE SPRUENGE KAMEN VON DIR UND DU BIST AUF     PLATZ"  ; K - K1 
  751 GOTO 2000
  800 PRINT "REQUIESCAT IN PACE."  :: GOTO 1950
  801 PRINT "AUF DASS DICH DIE ENGEL INS PARADIES FUEHREN."  :: GOTO 1950
  802 PRINT "RUHE IN FRIEDEN."  :: GOTO 1950
  803 PRINT "SOHN EINER KUGEL."  :: GOTO 1950
  804 PRINT "#$&*##!@%!"  :: GOTO 1950
  805 PRINT "SO GRAUSAM IST DIE WELT.    (SCHLUCHZ)"  :: GOTO 1950
  806 PRINT "HMMM. DU SOLLTEST EINE      KUERZERE ZEIT WAEHLEN."  :: GOTO 1950
  807 PRINT "MUTTER.MUTTER.MUTTER."  :: GOTO 1950
  808 PRINT "GEHST DU BLUMEN PFLUECKEN."  :: GOTO 1950
  809 PRINT "SIE KOMMEN UND GEHEN."  :: GOTO 1950
 1000 PRINT SQR ( 2 * D1 / AA )  ; TAB ( 14 )  ; "PLATSCH" 
 1005 ON INT ( 1 + ( 10 * RND ) ) GOTO 800, 801, 802, 803, 804, 805, 806, 807, 808, 809
 1010 PRINT ( V / AA ) + ( ( D1 - ( V ^ 2 / ( 2 * AA ) ) ) / V )  ; TAB ( 14 )  ; "PLATSCH" 
 1020 GOTO 1005
 1950 PRINT "ICH GEBE DIR NOCH EINE      CHANCE." 
 2000 INPUT "MOECHTEST DU NOCH EINMAL    SPIELEN?:"  : Z$ 
 2001 IF Z$ = "JA" THEN 118
 2002 IF Z$ = "NEIN" THEN 2005
 2003 INPUT "JA ODER NEIN?:"  : Z$  :: GOTO 2001
 2005 INPUT "BITTE!:"  : Z$  :: IF Z$ = "JA" THEN 118
 2006 IF Z$ < > "NEIN" THEN INPUT "JA ODER NEIN?:"  : Z$  :: IF Z$ = "JA" THEN 118ELSE 2006
 2007 PRINT "SSSSSSSSSSSS." 
 2046 END 
