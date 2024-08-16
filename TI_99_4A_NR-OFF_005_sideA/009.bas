    5 CALL SCREEN ( 12 ) 
   10 CALL CLEAR  :: T$ = "Ihr ganz persoenlicher"  :: TL$ = "Luegendetektor"  :: L1 = LEN ( T$ )  :: L2 = LEN ( TL$ )  :: DEF FNC ( X ) = INT ( ( 28 - X ) / 2 ) 
   20 DISPLAY AT ( 2 , FNC ( L1 ) )  : T$  :: DISPLAY AT ( 3 , FNC ( L1 ) )  : RPT$ ( "=" , L1 ) 
   30 DISPLAY AT ( 6 , FNC ( L2 ) )  : TL$  :: DISPLAY AT ( 7 , FNC ( L2 ) )  : RPT$ ( "=" , L2 ) 
   40 U1$ = "Der Computer hilft Ihnen"  :: U2$ = "herauszufinden, wie sie zu"  :: U3$ = "einer wichtigen persoenl."  :: U4$ = "Frage tatsaechlich stehen." 
   50 UA = LEN ( U1$ )  :: UB = LEN ( U2$ )  :: UC = LEN ( U3$ )  :: UD = LEN ( U4$ )  :: U1 = FNC ( UA )  :: U2 = FNC ( UB )  :: U3 = FNC ( UC )  :: U4 = FNC ( UD ) 
   60 DISPLAY AT ( 16 , U1 )  : U1$  :: DISPLAY AT ( 18 , U2 )  : U2$  :: DISPLAY AT ( 20 , U3 )  : U3$  :: DISPLAY AT ( 22 , U4 )  : U4$ 
   70 CALL KEY ( 0 , K , S )  :: IF S = 0 THEN 70
   80 CALL CLEAR  :: DIM A$ ( 51 ) 
   90 FOR I = 1 TO 50  :: READ A$ ( I )  :: NEXT I 
  100 DATA Hat es gestern geregnet ? , Kennen Sie Pinocchio ? , Sind Ihre Augen blau ? , Moegen Sie Kartoffelknoedel? , War Picasso ein guter Maler? 
  110 DATA Liegt San Remo an der       Riveria ? , Wissen Sie was ein Pansch   ist ? , Braucht Ihr Fahrrad neue    Pneus ? 
  115 DATA Schmecken Aepfel besser als Birnen ? , Haben Sie schon einem Otter beim Spielen zugeschaut ? , Sind gestreifte Tapeten     ertraeglich? 
  120 DATA Hat ein Stier zwei Hoerner ? , Hiess Einstein mit Vornamen Albert ? , Gibt es Pflanzen mit roten  Blaettern ? 
  125 DATA Ist 'PERKUSSION' ein        Fremndwort ? , Besitzen Sie mehr als zehn  Buecher ? , Haben Sie schon mal einen   Apfelstrudel zubereitet? 
  130 DATA Gab es Napoleon IV. ? , Liegt auf dem KilimandscharoSchnee ? , Ist die BOA CONSTRICTOR eineSchlange ? 
  135 DATA Wuerden Sie gern ein        Inkunabel bestitzen ? , Gibt es bei uns zuwenig     Autobahnen ? , Sammeln Sie Briefmarken ? 
  140 DATA Ist Spinat fuer Babys gesund , Liegt Charlottenburg in Ost-Berlin ? , Erfand Benjamin Franklin denBlitzableiter ? 
  150 DATA Ist Zuppa Romana eine Suppe? , Waren Sie schon einmal in   Bern ? , Ist Bismarck ein Fisch ? , War Beethoven blind ? 
  155 DATA Ist es am Nordpol warm ? , Ist Bayreuth eine Festspielstadt? , Passen die Farben Rot und   Violett zusammen ? 
  160 DATA Ist "Dick" ohne "Doof"      denkbar ? , Kommen Roulettespieler ohne Zero aus ? , Liegt Miami in Florida ? 
  165 DATA Hat der Union Jack mit      England zu tun ? , War adenauer schon vor 1933 Politiker ? , Liegt kairo am Nil ? 
  170 DATA Ist Wiese das gleiche wie   Rasen ? , War Fangio ein Rennfahrer ? , Macht man Sliwowitz aus     Pflaumen ? , War Carl Schurz             US-praesident ? 
  175 DATA Besitzen Sie einen Loden-   mantel ? , Waren Sie im Urlaub im      Ausland ? , Dauerte die Neusteinzeit    hunderttausend jahre ? 
  180 DATA Schlafen Sie im Nachthemd ? , Essen Sie gern Marmorkuchen? , Geht der 40. Breitengrad    durch Deutschland ? 
  185 DATA War Augustus ein roemischer Kaiser ? , Gehoert in den Grog ein     irischer Whiskey ? , Steht die Geschichte vom    Turm von Babel im neuen     Testament ? 
  190 DATA Gibt es im Schach           Hochspringer ? , Ist Glanzpapier teurer als  Zeitungspapier ? , War Caesar Koenig ? 
  192 DATA Ist Rotkohl das selbe wie   Blaukraut ? , Lieben Sie Mozart ? , Liegt Reutlingen in Bayern ? , Gibt es Urnen nur bei Wahlen ? 
  194 DATA Sind Rosen immer rot ? , Fuehlen Sie sich gerade wohl? , Sind Wiener Schnitzel das   gleich wie Steaks ? 
  196 DATA Streicheln Sie gern Katzen ? , Benuetzen Sie Spikes-Reifen? 
  260 RANDOMIZE 
  270 DISPLAY AT ( 21 , 2 ) ERASE ALL  : "Geben Sie nun bitte Ihre    Frage ein:"  :: LINPUT A$ ( 51 ) 
  280 RANDOMIZE  :: FOR K = 1 TO 100000 
  290 ZL = INT ( RND * 51 ) + 1  :: DISPLAY AT ( 12 , 1 ) ERASE ALL  : A$ ( ZL ) 
  300 CALL KEY ( 0 , KEY , ST )  :: IF ST = 0 THEN 300
  310 IF ZL = 51 THEN 330
  320 NEXT K 
  330 DISPLAY AT ( 10 , 1 ) ERASE ALL  : "Sie haben soeben die ihnen  wichtige Frage mit" 
  340 IF KEY = ASC ( "j" ) OR KEY = ASC ( "J" ) THEN DISPLAY AT ( 12 , 1 )  : "JA beantwortet." ELSE IF KEY = ASC ( "n" ) OR KEY = ASC ( "N" ) THEN DISPLAY AT ( 12 , 1 )  : "NEIN beantwortet." 
  370 CALL KEY ( 0 , K , S )  :: IF S < = 0 THEN 370
  380 CALL CLEAR 
  390 END 
