    1 PRINT TAB ( 6 )  ; "RUSSISCHES ROULETTE" 
    2 PRINT "     CREATIVE COMPUTING         MORRISTOWN,NEW JERSEY" 
    3 PRINT  :  :  : 
    4 RANDOMIZE 
    5 PRINT "HIER IST DAS                >>>>RUSSISCHE ROULETTE-SPIEL" 
   10 PRINT  :  : "HIER IST EIN REVOLVER" 
   20 PRINT "TIPPE '1' UM DIE TROMMEL ZU DREHEN UND ABZUDRUECKEN."  :  : 
   22 PRINT "TIPPE '2' UM AUFZUGEBEN."  :  : 
   23 PRINT "LOS"  ; 
   25 N = 0 
   30 INPUT I 
   31 IF I < > 2 THEN 35
   32 PRINT  :  : "ANGSTHASE!!" 
   33 GOTO 72
   35 N = N + 1 
   40 IF RND > .8333333333 THEN 70
   45 IF N > 10 THEN 80
   50 PRINT  :  : "- KLICK -" 
   60 PRINT  :: GOTO 30
   70 PRINT " PAENG!!!!!!! DU BIST TOT!!" 
   71 PRINT  :  : "BEILEIDSBRIEFE WERDEN AN    DEINE VERWANDTEN GESCHICKT." 
   72 PRINT  :  :  : 
   75 PRINT "...NAECHSTES OPFER..."  :: GOTO 20
   80 PRINT "<<<<< DU GEWINNST! >>>>>" 
   85 PRINT "(jemand anders wird dir      sicher eine kugel durch denkopf jagen.)" 
   90 GOTO 10
   99 END 
