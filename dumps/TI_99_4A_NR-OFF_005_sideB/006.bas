  100 CALL CLEAR 
  110 DIM CD$ ( 16 ) , ERG ( 16 ) 
  111 RESTORE 
  112 UN$ = "" 
  113 LGS = 0 
  117 CALL SCREEN ( 16 ) 
  120 WAAG$ = "000000FFFF" 
  122 SENK$ = "1818181818181818" 
  124 SCHIEF$ = "8040201008040201" 
  130 LU$ = "0000001F1F181818" 
  132 LO$ = "1818181F1F" 
  134 RU$ = "000000F8F8181818" 
  136 RO$ = "181818F8F8" 
  140 MITTR$ = "1818181F1F181818" 
  142 MITTL$ = "181818F8F8181818" 
  144 MITTO$ = "1818181818187E7E" 
  146 MITTU$ = "7E7E181818181818" 
  150 CALL CHAR ( 120 , WAAG$ ) 
  151 CALL CHAR ( 121 , SENK$ ) 
  153 CALL CHAR ( 122 , SCHIEF$ ) 
  155 CALL CHAR ( 123 , LU$ ) 
  158 CALL CHAR ( 124 , LO$ ) 
  159 CALL CHAR ( 125 , RU$ ) 
  160 CALL CHAR ( 126 , RO$ ) 
  161 CALL CHAR ( 127 , MITTR$ ) 
  162 CALL CHAR ( 128 , MITTL$ ) 
  163 CALL CHAR ( 129 , MITTO$ ) 
  164 CALL CHAR ( 130 , MITTU$ ) 
  170 CALL CHAR ( 96 , WAAG$ ) 
  171 CALL CHAR ( 97 , SENK$ ) 
  172 CALL CHAR ( 98 , SCHIEF$ ) 
  173 CALL CHAR ( 99 , LU$ ) 
  174 CALL CHAR ( 100 , LO$ ) 
  175 CALL CHAR ( 101 , RU$ ) 
  176 CALL CHAR ( 102 , RO$ ) 
  177 CALL CHAR ( 103 , MITTR$ ) 
  178 CALL CHAR ( 104 , MITTL$ ) 
  179 CALL CHAR ( 105 , MITTO$ ) 
  180 CALL CHAR ( 106 , MITTU$ ) 
  190 CALL COLOR ( 9 , 2 , 16 ) 
  191 CALL COLOR ( 10 , 2 , 16 ) 
  192 CALL COLOR ( 12 , 12 , 16 ) 
  193 CALL COLOR ( 13 , 12 , 16 ) 
  200 CALL CHAR ( 112 , "FFFFFFFFFFFFFFFF" ) 
  202 CALL CHAR ( 136 , "FFFFFFFFFFFFFFFF" ) 
  210 CALL COLOR ( 11 , 8 , 16 ) 
  212 CALL COLOR ( 14 , 4 , 16 ) 
  220 A$ = "EIN VIER-BIT-ADDIERER" 
  222 LA = LEN ( A$ ) 
  230 W = ( 29 - LA ) / 2 
  236 DISPLAY AT ( 2 , W )  : A$  : TAB ( W )  ; RPT$ ( "=" , LA ) 
  240 FOR K = 1 TO 4 
  250 FOR I = 1 TO 2 
  260 WERT = K * 7 + I 
  270 CALL VCHAR ( 9 , - 2 + WERT , 112 , 2 ) 
  274 IF K > = 4 THEN 280
  275 CALL HCHAR ( 13 , 2 + WERT , 105 ) 
  276 CALL VCHAR ( 14 , 2 + WERT , 112 , 2 ) 
  278 CALL VCHAR ( 18 , - 2 + WERT , 136 ) 
  279 CALL HCHAR ( 17 , - 2 + WERT , 105 ) 
  280 IF ( K < 4 ) + ( I = 1 ) < > - 2 THEN 300
  290 CALL HCHAR ( 19 , - 2 + WERT , 106 ) 
  300 CALL HCHAR ( 8 , - 2 + WERT , 105 ) 
  305 CALL HCHAR ( 11 , - 2 + WERT , 106 ) 
  310 IF ( I > 1 ) + ( K < 4 ) < > - 2 THEN 330
  320 CALL HCHAR ( 12 , - 2 + WERT , 100 ) 
  330 IF ( I = 2 ) + ( K < 4 ) < > - 2 THEN 340
  335 CALL HCHAR ( 12 , - 2 + WERT , 100 ) 
  340 IF ( I = 1 ) + ( K < 4 ) < > - 2 THEN 350
  345 CALL VCHAR ( 12 , - 2 + WERT , 97 , 5 ) 
  350 IF ( I = 2 ) + ( K = 4 ) < > - 2 THEN 360
  355 CALL VCHAR ( 12 , - 2 + WERT , 97 , 10 ) 
  360 IF ( I = 1 ) + ( K = 4 ) < > - 2 THEN 370
  365 CALL HCHAR ( 12 , - 2 + WERT , 102 ) 
  370 IF K > = 4 THEN 380
  375 CALL HCHAR ( 16 , 2 + WERT , 106 ) 
  376 CALL HCHAR ( 13 , 2 + WERT , 105 ) 
  380 IF ( K < 4 ) + ( I > 1 ) < > - 2 THEN 390
  385 CALL HCHAR ( 12 , - 1 + WERT , 96 , 2 ) 
  387 CALL HCHAR ( 12 , 1 + WERT , 101 ) 
  390 IF ( K < 3 ) + ( I > 1 ) < > - 2 THEN 400
  395 CALL HCHAR ( 12 , 2 + WERT , 99 ) 
  397 CALL HCHAR ( 12 , 3 + WERT , 101 ) 
  399 CALL VCHAR ( 13 , 3 + WERT , 97 , 7 ) 
  400 IF ( K = 3 ) + ( I = 2 ) < > - 2 THEN 410
  402 CALL HCHAR ( 12 , 2 + WERT , 99 ) 
  404 CALL HCHAR ( 12 , 3 + WERT , 96 ) 
  410 IF I < > 1 THEN 420
  412 CALL VCHAR ( 6 , - 2 + WERT , 97 , 2 ) 
  420 CALL VCHAR ( 7 , - 2 + WERT , 97 ) 
  422 IF ( K < 3 ) + ( I = 2 ) < > - 2 THEN 430
  424 CALL HCHAR ( 20 , 3 + WERT , 100 ) 
  426 CALL HCHAR ( 20 , 4 + WERT , 102 ) 
  430 IF ( K < 4 ) + ( I = 2 ) < > - 2 THEN 450
  432 CALL VCHAR ( 17 , 2 + WERT , 97 , 5 ) 
  434 CALL HCHAR ( 16 , - 2 + WERT , 99 ) 
  436 CALL HCHAR ( 16 , - 1 + WERT , 101 ) 
  442 CALL HCHAR ( 16 , - 1 + WERT , 101 ) 
  444 CALL HCHAR ( 17 , - 1 + WERT , 100 ) 
  446 CALL HCHAR ( 17 , WERT , 96 ) 
  447 CALL HCHAR ( 17 , 1 + WERT , 102 ) 
  450 IF ( K = 1 ) + ( I = 1 ) < > - 2 THEN 460
  452 CALL HCHAR ( 20 , - 2 + WERT , 102 ) 
  460 NEXT I 
  470 NEXT K 
  471 BB$ = "VIER VOLLADDIERER NEBENEIN- " 
  472 BC$ = "ANDER. GRUEN: "ODER-GATTER"." 
  480 DISPLAY AT ( 23 , 1 )  : BB$  : BC$ 
  500 CALL KEY ( 0 , KEY , STATUS ) 
  505 IF STATUS = 0 THEN 500
  510 CALL HCHAR ( 2 , 1 , 32 , 28 ) 
  512 CALL HCHAR ( 3 , 1 , 32 , 28 ) 
  514 AV$ = "BITTE TIPPEN SIE JETZT ZWEI " 
  519 BV$ = "ZAHLEN (0-15) EIN !" 
  520 DISPLAY AT ( 23 , 1 )  : AV$  : BV$ 
  524 WA$ = "EZ=" 
  525 WB$ = "ZZ=" 
  528 DISPLAY AT ( 2 , 1 )  : WA$  : WB$ 
  530 ACCEPT AT ( 2 , 4 ) BEEP VALIDATE ( DIGIT ) SIZE ( 2 )  : EZ 
  535 IF EZ > 15 THEN 530
  540 ACCEPT AT ( 3 , 4 ) BEEP VALIDATE ( DIGIT ) SIZE ( 2 )  : ZZ 
  545 IF ZZ > 15 THEN 540
  547 CALL HCHAR ( 23 , 1 , 32 , 64 ) 
  550 FOR I = 0 TO 15 
  552 READ CD$ ( I ) 
  554 NEXT I 
  560 DATA 0000 , 0001 , 0010 , 0011 , 0100 , 0101 , 0110 , 0111 , 1000 , 1001 , 1010 , 1011 , 1100 , 1101 , 1110 , 1111 
  570 EZ$ = CD$ ( EZ ) 
  572 ZZ$ = CD$ ( ZZ ) 
  580 EA$ = SEG$ ( EZ$ , 1 , 1 ) 
  581 EB$ = SEG$ ( EZ$ , 2 , 1 ) 
  582 EC$ = SEG$ ( EZ$ , 3 , 1 ) 
  583 ED$ = SEG$ ( EZ$ , 4 , 1 ) 
  584 ZA$ = SEG$ ( ZZ$ , 1 , 1 ) 
  585 ZB$ = SEG$ ( ZZ$ , 2 , 1 ) 
  586 ZC$ = SEG$ ( ZZ$ , 3 , 1 ) 
  587 ZD$ = SEG$ ( ZZ$ , 4 , 1 ) 
  598 AAA = ASC ( EA$ ) 
  600 CALL HCHAR ( 2 , 1 , 32 , 10 ) 
  602 CALL HCHAR ( 3 , 1 , 32 , 10 ) 
  604 CALL HCHAR ( 2 , 6 , AAA ) 
  606 AAA = ASC ( EB$ ) 
  608 CALL HCHAR ( 2 , 13 , AAA ) 
  609 AAA = ASC ( EC$ ) 
  610 CALL HCHAR ( 2 , 20 , AAA ) 
  611 AAA = ASC ( ED$ ) 
  612 CALL HCHAR ( 2 , 27 , AAA ) 
  614 AAA = ASC ( ZA$ ) 
  616 CALL HCHAR ( 4 , 7 , AAA ) 
  618 AAA = ASC ( ZB$ ) 
  620 CALL HCHAR ( 4 , 14 , AAA ) 
  622 AAA = ASC ( ZC$ ) 
  624 CALL HCHAR ( 4 , 21 , AAA ) 
  626 AAA = ASC ( ZD$ ) 
  628 CALL HCHAR ( 4 , 28 , AAA ) 
  630 DISPLAY AT ( 2 , 1 ) SIZE ( 2 )  : STR$ ( EZ ) 
  634 DISPLAY AT ( 4 , 1 ) SIZE ( 2 )  : STR$ ( ZZ ) 
  640 IF EA$ < > "1" THEN 650
  641 CALL VCHAR ( 6 , 6 , 121 , 2 ) 
  642 CALL HCHAR ( 8 , 6 , 129 ) 
  650 IF EB$ < > "1" THEN 660
  652 CALL VCHAR ( 6 , 13 , 121 , 2 ) 
  654 CALL HCHAR ( 8 , 13 , 129 ) 
  660 IF EC$ < > "1" THEN 670
  662 CALL VCHAR ( 6 , 20 , 121 , 2 ) 
  664 CALL HCHAR ( 8 , 20 , 129 ) 
  670 IF ED$ < > "1" THEN 680
  672 CALL VCHAR ( 6 , 27 , 121 , 2 ) 
  674 CALL VCHAR ( 8 , 27 , 129 ) 
  680 IF ZA$ < > "1" THEN 690
  682 CALL VCHAR ( 7 , 7 , 121 ) 
  684 CALL HCHAR ( 8 , 7 , 129 ) 
  690 IF ZB$ < > "1" THEN 700
  692 CALL HCHAR ( 7 , 14 , 121 ) 
  694 CALL HCHAR ( 8 , 14 , 129 ) 
  700 IF ZC$ < > "1" THEN 710
  702 CALL HCHAR ( 7 , 21 , 121 ) 
  704 CALL HCHAR ( 8 , 21 , 129 ) 
  710 IF ZD$ < > "1" THEN 720
  712 CALL HCHAR ( 7 , 28 , 121 ) 
  714 CALL HCHAR ( 8 , 28 , 129 ) 
  720 ERG ( 1 ) = VAL ( ED$ ) + VAL ( ZD$ ) 
  722 IF ERG ( 1 ) < > 1 THEN 730
  724 CALL VCHAR ( 11 , 28 , 130 ) 
  726 CALL VCHAR ( 12 , 28 , 121 , 10 ) 
  730 IF ERG ( 1 ) < > 2 THEN 760
  732 CALL HCHAR ( 11 , 27 , 130 ) 
  734 CALL HCHAR ( 12 , 26 , 120 ) 
  736 CALL HCHAR ( 12 , 25 , 123 ) 
  738 CALL HCHAR ( 13 , 25 , 129 ) 
  740 CALL HCHAR ( 12 , 27 , 126 ) 
  760 ERG ( 2 ) = VAL ( EC$ ) + VAL ( ZC$ ) 
  762 ERG ( 3 ) = VAL ( EB$ ) + VAL ( ZB$ ) 
  764 ERG ( 4 ) = VAL ( EA$ ) + VAL ( ZA$ ) 
  766 ERG ( 5 ) = ( ( ERG ( 1 ) = 2 ) + ( ERG ( 2 ) = 2 ) ) * - 1 
  768 ERG ( 6 ) = ( ERG ( 3 ) = 1 ) * - 1 
  770 ERG ( 7 ) = ( ERG ( 4 ) = 1 ) * - 1 
  772 ERG ( 8 ) = ( ( ERG ( 5 ) = 2 ) + ( ERG ( 2 ) = 2 ) ) * - 1 
  790 IF ERG ( 8 ) < = 0 THEN 800
  795 ERG ( 6 ) = ERG ( 6 ) + 1 
  800 ERG ( 9 ) = ( ( ERG ( 6 ) = 2 ) + ( ERG ( 3 ) = 2 ) ) * - 1 
  802 IF ERG ( 9 ) < = 0 THEN 810
  807 ERG ( 7 ) = ERG ( 7 ) + 1 
  810 ERG ( 10 ) = ( ( ERG ( 7 ) = 2 ) + ( ERG ( 4 ) = 2 ) ) * - 1 
  820 FOR K = 2 TO 4 
  830 IF ERG ( K ) < > 1 THEN 840
  831 CALL HCHAR ( 11 , 35 - K * 7 , 130 ) 
  833 CALL HCHAR ( 12 , 35 - K * 7 , 124 ) 
  835 CALL HCHAR ( 12 , 36 - K * 7 , 120 , 2 ) 
  836 CALL HCHAR ( 16 , 39 - K * 7 , 130 )  :: CALL VCHAR ( 17 , 39 - K * 7 , 121 , 5 ) 
  837 CALL HCHAR ( 12 , 38 - K * 7 , 125 ) 
  838 CALL HCHAR ( 13 , 38 - K * 7 , 129 ) 
  840 IF ERG ( K ) < > 2 THEN 850
  841 CALL HCHAR ( 11 , 34 - K * 7 , 130 ) 
  843 CALL VCHAR ( 12 , 34 - K * 7 , 121 , 5 ) 
  845 CALL HCHAR ( 17 , 34 - K * 7 , 129 ) 
  850 FOR WART = 1 TO LGS 
  860 NEXT WART 
  870 NEXT K 
  880 FOR R = 5 TO 7 
  890 SB = R - 4 
  892 SB = SB * 7 
  900 IF ERG ( R ) < > 2 THEN 910
  902 CALL HCHAR ( 16 , 31 - SB , 130 ) 
  904 CALL HCHAR ( 17 , 31 - SB , 126 ) 
  906 CALL HCHAR ( 17 , 30 - SB , 120 ) 
  907 CALL HCHAR ( 17 , 29 - SB , 124 ) 
  910 IF ERG ( R ) < > 2 THEN 920
  912 CALL HCHAR ( 16 , 29 - SB , 125 ) 
  914 CALL HCHAR ( 16 , 28 - SB , 123 ) 
  916 CALL HCHAR ( 17 , 28 - SB , 129 ) 
  920 FOR WART = 1 TO LGS 
  922 NEXT WART 
  930 NEXT R 
  940 IF ERG ( 8 ) < = 0 THEN 970
  942 CALL HCHAR ( 19 , 20 , 130 ) 
  952 CALL HCHAR ( 20 , 20 , 126 ) 
  954 CALL HCHAR ( 20 , 19 , 124 ) 
  956 CALL HCHAR ( 12 , 19 , 125 ) 
  957 CALL HCHAR ( 12 , 18 , 123 ) 
  959 CALL HCHAR ( 13 , 18 , 129 ) 
  960 CALL VCHAR ( 13 , 19 , 121 , 7 ) 
  970 IF ERG ( 9 ) < = 0 THEN 990
  972 CALL HCHAR ( 19 , 13 , 130 ) 
  974 CALL HCHAR ( 20 , 13 , 126 ) 
  976 CALL HCHAR ( 20 , 12 , 124 ) 
  978 CALL VCHAR ( 13 , 12 , 121 , 7 ) 
  980 CALL VCHAR ( 12 , 12 , 125 ) 
  982 CALL HCHAR ( 12 , 11 , 123 ) 
  984 CALL HCHAR ( 13 , 11 , 129 ) 
  990 FOR WART = 1 TO LGS 
  992 NEXT WART 
 1000 FOR R = 5 TO 7 
 1010 SB = R - 4 
 1012 SB = SB * 7 
 1020 IF ERG ( R ) < > 1 THEN 1030
 1022 CALL HCHAR ( 16 , 32 - SB , 130 ) 
 1024 CALL VCHAR ( 17 , 32 - SB , 121 , 5 ) 
 1030 NEXT R 
 1040 FOR WART = 1 TO LGS 
 1042 NEXT WART 
 1050 IF ERG ( 10 ) < = 0 THEN 1060
 1052 CALL HCHAR ( 19 , 6 , 130 ) 
 1054 CALL HCHAR ( 20 , 6 , 126 ) 
 1060 LA$ = "VERGLEICHEN SIE BITTE, OB" 
 1062 LB$ = "DAS ERGEBNIS RICHTIG IST." 
 1065 DISPLAY AT ( 23 , 1 )  : LA$  : LB$ 
 1080 DISPLAY AT ( 21 , 27 ) SIZE ( 1 )  : "1" 
 1082 DISPLAY AT ( 21 , 22 ) SIZE ( 1 )  : "2" 
 1084 DISPLAY AT ( 21 , 15 ) SIZE ( 1 )  : "4" 
 1086 DISPLAY AT ( 21 , 8 ) SIZE ( 1 )  : "8" 
 1088 DISPLAY AT ( 19 , 1 ) SIZE ( 2 )  : "16" 
 1100 CALL KEY ( 0 , KEY , STATUS ) 
 1110 IF STATUS = 0 THEN 1100
 1120 CALL CLEAR 
 1130 END 
