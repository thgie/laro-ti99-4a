   70  ! PFERDERENNEN
   80 RANDOMIZE 
   90 CALL CLEAR  :: CALL SCREEN ( 12 )  :: FOR I = 0 TO 14  :: CALL COLOR ( I , 2 , 12 )  :: NEXT I 
  100 PRINT TAB ( 8 )  ; "PFERDERENNEN"  : "    CREATIVE COMPUTING"  : "MORRISTOWN, NEW JERSEY, USA"  :  :  :  :  :  :  :  :  : 
  210 DIM S ( 8 ) 
  220 PRINT "WILLKOMMEN ZUM SUED-PORTLANDRENNKURS"  : "  ...IM BESITZ VON"  : "        AURIE CHEVALIER." 
  240 PRINT  : "MOECHTEST DU ANWEISUNGEN?:"  ;  :: ACCEPT SIZE ( 1 ) BEEP VALIDATE ( "JN" )  : X$ 
  260 IF X$ = "N" THEN 320
  270 PRINT "ES KOENNEN BIS ZU 10 SPIELERTEILNEHMEN. EINE WETTTABELLEWIRD AUSGEDRUCKT. DU KANNST JEDEN POSITIVEN BETRAG BIS" 
  280 PRINT "ZU 100'000 FR. PRO PFERD    WETTEN. WAEHREND DES RENNENSWIRD JEDES PFERD DURCH SEINENUMMER DARGESTELLT. DIE"  : "PFERDE LAUFEN VON OBEN NACH UNTEN." 
  320 PRINT "WIEVIELE MOECHTEN WETTEN?:"  ;  :: ACCEPT SIZE ( 2 ) BEEP VALIDATE ( DIGIT )  : C 
  350 FOR A = 1 TO C 
  360 LINPUT "NAME " & STR$ ( A ) & "?:"  : W$ ( A ) 
  370 NEXT A 
  380 IMAGE ##############  #   ##.###:1 
  390 PRINT  : "PFERD       NUMMER  WETTE"  :  : 
  410 FOR I = 1 TO 8  :: S ( I ) = 0  :: NEXT I 
  420 R = 0 
  430 FOR A = 1 TO 8 
  440 D ( A ) = INT ( 10 * RND ) + 1 
  450 NEXT A 
  460 FOR A = 1 TO 8 
  470 R = R + D ( A ) 
  480 NEXT A 
  490 V$ ( 1 ) = "JOE MAW" 
  500 V$ ( 2 ) = "L.B.J." 
  510 V$ ( 3 ) = "HERR WASHBURN" 
  520 V$ ( 4 ) = "FRL. KAREN" 
  530 V$ ( 5 ) = "FROEHLICH" 
  540 V$ ( 6 ) = "PFERD" 
  550 V$ ( 7 ) = "OTANNENBAUM" 
  560 V$ ( 8 ) = "MITTERNACHT" 
  570 FOR N = 1 TO 8 
  580 PRINT USING 380 : V$ ( N ) , N , R / D ( N ) 
  590 NEXT N 
  595 N = 8 
  600 PRINT RPT$ ( "-" , 28 ) 
  610 PRINT  : "SCHLIESSE WETTEN AB..."  : "PFERDNR.,DANN BETRAG" 
  620 FOR J = 1 TO C 
  630 PRINT W$ ( J )  ; 
  640 INPUT Q ( J ) , P ( J ) 
  650 IF P ( J ) < 1 THEN 670
  660 IF P ( J ) < 100000 THEN 690
  670 PRINT  : " DAS KANNST DU NICHT TUN." 
  680 GOTO 630
  690 NEXT J 
  710 PRINT  : "1 2 3 4 5 6 7 8" 
  720 PRINT "XXXXXSTARTXXXXX" 
  730 FOR I = 1 TO N 
  740 MM = I 
  750 M ( I ) = MM 
  760 Y ( M ( I ) ) = INT ( 100 * RND + 1 ) 
  770 IF Y ( M ( I ) ) < 10 THEN 860
  780 SS = INT ( R / D ( I ) + .5 ) 
  790 IF Y ( M ( I ) ) < SS + 17 THEN 880
  800 IF Y ( M ( I ) ) < SS + 37 THEN 900
  810 IF Y ( M ( I ) ) < SS + 57 THEN 920
  820 IF Y ( M ( I ) ) < SS + 77 THEN 940
  830 IF Y ( M ( I ) ) < SS + 92 THEN 960
  840 Y ( M ( I ) ) = 7 
  850 GOTO 970
  860 Y ( M ( I ) ) = 1 
  870 GOTO 970
  880 Y ( M ( I ) ) = 2 
  890 GOTO 970
  900 Y ( M ( I ) ) = 3 
  910 GOTO 970
  920 Y ( M ( I ) ) = 4 
  930 GOTO 970
  940 Y ( M ( I ) ) = 5 
  950 GOTO 970
  960 Y ( M ( I ) ) = 6 
  970 NEXT I 
  980 MM = 1 
  990 FOR I = 1 TO 8 
 1000 S ( M ( I ) ) = S ( M ( I ) ) + Y ( M ( I ) ) 
 1010 NEXT I 
 1020 I = 1 
 1030 FOR L = 1 TO 8 
 1040 FOR I = 1 TO 8 - L 
 1050 IF S ( M ( I ) ) < S ( M ( I + 1 ) ) THEN 1090
 1060 H = M ( I ) 
 1070 M ( I ) = M ( I + 1 ) 
 1080 M ( I + 1 ) = H 
 1090 NEXT I 
 1100 NEXT L 
 1110 T = S ( M ( 8 ) ) 
 1120 FOR I = 1 TO 8 
 1130 B = S ( M ( I ) ) - S ( M ( I - 1 ) ) 
 1140 IF B = 0 THEN 1190
 1150 FOR A = 1 TO B 
 1160 PRINT 
 1170 IF S ( M ( I ) ) > 23 THEN 1240
 1180 NEXT A 
 1190 PRINT M ( I )  ; 
 1200 NEXT I 
 1210 FOR A = 1 TO 24 - T 
 1220 PRINT 
 1230 NEXT A 
 1240 PRINT "XXXXXZIELXXXXX" 
 1244 PRINT  :  :  : RPT$ ( "-" , 28 )  :  : 
 1250 IF T < 24 THEN 720
 1260 IMAGE # PL. PFERD NR # MIT ##.##:1 
 1270 PRINT "DAS RENNERGEBNIS IST:" 
 1272 Z9 = 1 
 1280 FOR I = 8 TO 1 STEP - 1 
 1290 F = M ( I ) 
 1310 PRINT USING 1260 : Z9 , F , R / D ( F ) 
 1312 Z9 = Z9 + 1 
 1320 NEXT I 
 1330 FOR J = 1 TO C 
 1340 IF Q ( J ) < > M ( 8 ) THEN 1370
 1350 N = Q ( J ) 
 1360 PRINT W$ ( J )  ; " GEWINNT FR."  ; ( R / D ( N ) ) * P ( J ) 
 1370 NEXT J 
 1372 PRINT "MOECHTEST DU AUF DAS"  : "NAECHSTE RENNEN SETZEN?:"  ;  :: ACCEPT BEEP SIZE ( 1 ) VALIDATE ( "JN" )  : O$ 
 1376 IF O$ = "J" THEN 380
 1380 END 
