  100 CALL CLEAR 
  110  ! CALL SCREEN(2)
  120  ! FOR I=0 TO 14 :: CALL COLOR(I,16,2):: NEXT I
  125 CALL HCHAR ( 1 , 1 , 32 , 64 ) 
  130 CALL DISPLAY ( 1 , 1 , "LOGON?:" )  :: ACCEPT AT ( 1 , 8 )  : A$ 
  135 CALL HCHAR ( 2 , 1 , 32 , 256 ) 
  140 IF A$ = "JOSHUA" THEN 1000
  150  ! 
  160 CALL DISPLAY ( 5 , 1 , " INCORRECT INDENTIFICATION" ) 
  170 CALL DISPLAY ( 7 , 1 , "***************************" ) 
  180 CALL DISPLAY ( 9 , 1 , " CONNECTION INTERRUPTED" ) 
  190 GOTO 125
 1000 CALL CLEAR 
 1010 DISPLAY AT ( 10 , 1 )  : "****************************FOR                         176286878@!@@@!@# 4!@$!  2$ 12$!@ 1241@$ 4 2 2 4 1 24@ 31232BBB12212*!@*@#1@!2 3 123" 
 1020 PRINT  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :  :: CALL CLEAR 
 1030 CALL DISPLAY ( 1 , 1 , "GOOD MORNING, MR. FALKEN" ) 
 1040 CALL DISPLAY ( 5 , 1 , "SHALL WE PLAY A GAME?:" ) 
 1050 ACCEPT AT ( 5 , 23 )  : A$ 
 1060 IF A$ = "NO" THEN CALL CLEAR  :: STOP 
 1070 IF A$ < > "YES" THEN 2000
 1080 CALL CLEAR 
 1090 PRINT "GAME LIST"  : "*********" 
 1092 DATA CHESS , POKER , BATTLEFIELD , SOCCER , BACKGAMMON , REVERSI , UNIVERSAL 
 1095 DATA ARTILLERIE , CHEMICAL WAR , BAKTERILOGIC WAR , GLOBAL THERMONUCLEAR WAR 
 1100 RESTORE 1092
 1110 FOR I = 1 TO 10  :: READ S$  :: PRINT S$  :: NEXT I 
 1120 PRINT  :: READ S$  :: PRINT S$  :  : 
 1130 RESTORE 1092
 1140 PRINT "YOUR CHOICE?:" 
 1150 ACCEPT CH$ 
 1160 FOR I = 1 TO 10 
 1170 READ S$ 
 1180 IF S$ = CH$ THEN 1500
 1190 NEXT I 
 1200 READ S$ 
 1210 IF S$ = CH$ THEN 1300
 1220 GOTO 1600
 1300 CALL CLEAR 
 1310 FOR I = 1 TO 1000  :: NEXT I 
 1320 PRINT "GLOBAL THERMONUCLEAR WAR"  : "************************" 
 1330 PRINT 
 1340 PRINT "WHICH SIDE DO YOU WANT?" 
 1350 PRINT  : "1 UNITED STATES" 
 1360 PRINT  : "2 SOVJETUNION" 
 1370 PRINT  : "? "  ; 
 1380 ACCEPT SIDE 
 1390 FOR I = 1 TO 1000  :: NEXT I 
 1400 CALL CLEAR 
 1410 CALL SCREEN ( 16 ) 
 1420 FOR I = 1 TO 100  :: NEXT I 
 1430 CALL SCREEN ( 2 ) 
 1440 FOR I = 1 TO 200  :: NEXT I 
 1450 CALL SOUND ( - 4250 , - 7 , 0 ) 
 1460 FOR I = 1 TO 878  :: NEXT I 
 1470 GOTO 1450
 1500 IF I < > 1 THEN 1600
 1510 PRINT  : "THE CHESS-PROGRAMM IS ON    ANOTHER SOFTWARE-MODUL"  : "YOU HAVE TO CHANGE IT" 
 1520 PRINT  : "IF YOU DON'T LIKE TO PLAY   CHESS ENTER 'NO':"  ; 
 1530 ACCEPT N$ 
 1540 IF N$ = "NO" THEN 1080ELSE CALL CLEAR  :: STOP 
 1600 PRINT  : " GAME NOT FOUND"  : " **************"  :  :  : 
 1610 PRINT " CHOICE ANOTHER"  :  : 
 1620 GOTO 1090
 2000 GOTO 2000
10000 SUB DISPLAY ( A , B , A$ ) 
10002 B = B + 2 
10010 FOR I = 1 TO LEN ( A$ ) 
10020 CALL HCHAR ( A , B , 30 ) 
10030 Z = ASC ( SEG$ ( A$ , I , 1 ) ) 
10040 A1 = A  :: B1 = B 
10050 B = B + 1  :: IF B > 30 THEN B = 3  :: A = A + 1  :: IF A > 24 THEN A = 1 
10060 CALL HCHAR ( A1 , B1 , Z ) 
10070 NEXT I 
10080 SUBEND 
