  520 CALL CLEAR 
  530 PRINT "TI BENUTZER-CLUB SCHWEIZ"  :  :  :  :  :  :  : 
  540 PRINT "         TI-99/4A"  :  :  : 
  550 PRINT "   MONOPHON-SYNTHESIZER" 
  560 PRINT  :  :  :  :  :  :  : "     ENDE MIT <ENTER>" 
  570 CALL KEY ( 0 , K , S ) 
  580 IF S = 0 THEN 570
  590 IF K = 13 THEN 1340
  595 IF K < 44 THEN 570
  600 IF K > 90 THEN 570
  610 IF K > 67 THEN 630
  620 ON K - 43 GOTO 1260, 570, 1300, 980, 940, 570, 660, 700, 570, 760, 800, 840, 570, 900, 570, 1320, 570, 570, 570, 570, 570, 1000, 1160, 1100
  630 ON K - 67 GOTO 1080, 720, 570, 1140, 1180, 880, 570, 1240, 1280, 1220, 1200, 920, 960, 640, 740, 1040, 780, 860, 1120, 680, 1060, 820, 1020
  640 CALL SOUND ( - 500 , 131 , 0 ) 
  650 GOTO 570
  660 CALL SOUND ( - 500 , 139 , 0 ) 
  670 GOTO 570
  680 CALL SOUND ( - 500 , 147 , 0 ) 
  690 GOTO 570
  700 CALL SOUND ( - 500 , 156 , 0 ) 
  710 GOTO 570
  720 CALL SOUND ( - 500 , 165 , 0 ) 
  730 GOTO 570
  740 CALL SOUND ( - 500 , 175 , 0 ) 
  750 GOTO 570
  760 CALL SOUND ( - 500 , 185 , 0 ) 
  770 GOTO 570
  780 CALL SOUND ( - 500 , 196 , 0 ) 
  790 GOTO 570
  800 CALL SOUND ( - 500 , 208 , 0 ) 
  810 GOTO 570
  820 CALL SOUND ( - 500 , 220 , 0 ) 
  830 GOTO 570
  840 CALL SOUND ( - 500 , 233 , 0 ) 
  850 GOTO 570
  860 CALL SOUND ( - 500 , 247 , 0 ) 
  870 GOTO 570
  880 CALL SOUND ( - 500 , 262 , 0 ) 
  890 GOTO 570
  900 CALL SOUND ( - 500 , 277 , 0 ) 
  910 GOTO 570
  920 CALL SOUND ( - 500 , 294 , 0 ) 
  930 GOTO 570
  940 CALL SOUND ( - 500 , 311 , 0 ) 
  950 GOTO 570
  960 CALL SOUND ( - 500 , 330 , 0 ) 
  970 GOTO 570
  980 CALL SOUND ( - 500 , 349 , 0 ) 
  990 GOTO 570
 1000 CALL SOUND ( - 500 , 370 , 0 ) 
 1010 GOTO 570
 1020 CALL SOUND ( - 500 , 392 , 0 ) 
 1030 GOTO 570
 1040 CALL SOUND ( - 500 , 415 , 0 ) 
 1050 GOTO 570
 1060 CALL SOUND ( - 500 , 440 , 0 ) 
 1070 GOTO 570
 1080 CALL SOUND ( - 500 , 466 , 0 ) 
 1090 GOTO 570
 1100 CALL SOUND ( - 500 , 494 , 0 ) 
 1110 GOTO 570
 1120 CALL SOUND ( - 500 , 523 , 0 ) 
 1130 GOTO 570
 1140 CALL SOUND ( - 500 , 554 , 0 ) 
 1150 GOTO 570
 1160 CALL SOUND ( - 500 , 587 , 0 ) 
 1170 GOTO 570
 1180 CALL SOUND ( - 500 , 622 , 0 ) 
 1190 GOTO 570
 1200 CALL SOUND ( - 500 , 659 , 0 ) 
 1210 GOTO 570
 1220 CALL SOUND ( - 500 , 698 , 0 ) 
 1230 GOTO 570
 1240 CALL SOUND ( - 500 , 740 , 0 ) 
 1250 GOTO 570
 1260 CALL SOUND ( - 500 , 784 , 0 ) 
 1270 GOTO 570
 1280 CALL SOUND ( - 500 , 831 , 0 ) 
 1290 GOTO 570
 1300 CALL SOUND ( - 500 , 880 , 0 ) 
 1310 GOTO 570
 1320 CALL SOUND ( - 500 , 932 , 0 ) 
 1330 GOTO 570
 1340 CALL CLEAR 
 1350 END 
