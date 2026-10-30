#import "template.typ": *

#set heading(numbering: "1.1")
// Mostra la numerazione per capitolo sulle equazioni matematiche
#show math.equation: i-figured.show-equation//.with(only-labeled: false) 
#show heading: i-figured.reset-counters

#set align(left)
#show: great-theorems-init
#show link: text.with(fill: blue)

#let lag = $scr(L)$
#let az = $scr(A)$
#let pv = $cal(H_0)$
#let ep = $epsilon$
#let put = $(partial u)/(partial t)$ 
#let pux = $(partial u)/(partial x)$
#let par = $partial$
#let put2 = $(par^2 u)/(par t^2)$
#let pux2 = $(par^2 u)/(par x^2)$ 
#let int = $integral$
#let inf = $infinity$ 
#let qquad = $quad quad quad$
#let Arrow = $arrow.double$
#let ps(u,v) = $lr(chevron.l #u , #v chevron.r)$

= Equazione del calore

== Introduzione 

  L'equazione del calore (o $italic("della diffusione")$) ha  la forma 

  $ put(x,t) eq D laplace u(x,t) $

  Dove $u(x,t) "è la funzione incognita," x in RR^d "con" d eq 1,2,3, space t in RR_+, "e" D>0 "una costante assegnata, detta"$ *coefficiente di diffusione*.

  Una particolarità dell'equazione del calore è che non è invariante sotto riflessioni del tempo, infatti

  $v(x,t) eq u(x, -t)$ è soluzione dell'equazione aggiunta $(par v)/(par t) + D laplace v eq 0$. 

  Ossia, esiste una direzione privilegiata del tempo, e dunque l'equazione del calore descrive fenomeni irreversibili.

#pagebreak(weak : true)
== Derivazione euristica

  Considero un solido omogeneo ed isotropo di densità $rho$ costante. \ Sia $r eq r(x,t)$ il tasso di calore scambiato per unità di massa con una sorgente esterna. \ Assumo inoltre che oltre elemento di volume del solido sia in equilibrio termico locale. \ L'energia interna per un volumetto attorno ad $x "al tempo" t "è" e(x,t)$. \ Tale energia è proporzionale alla temperatura $theta(x,t)$ dell'elemento. \ La costante di proporzionalità $C_v$ è assunta indipendente dal tempo, cosicché 

  $ e(x,t) eq C_v theta (x,t) $

  Per il primo Principio della Termodinamica, poché non si compie lavoro sul solido, la variazione di energia di un volume $V$ interno al solido è pari al flusso di calore che attraversa la frontiera $par V$ sommato al calore scambiato in $V$ con la sorgente esterna. \ Indicando quindi con $J(x,t) in RR^2 times RR$ il flusso di calore, si ha 

  $ dif /(dif t) int_V rho e dif x eq - int _(par V)J dot v dif sigma + int_V rho r dif x $

  Poiché $int_(par V) J dot v dif sigma eq int_V div J dif x$, (Teorema divergenza), si ha che 

  $ int_V rho (par e)/(par t) + div J - rho r dif x eq 0 qquad forall space V subset.eq "volume del solido" $

  Da cui ricavo che 

  $ rho (par e)/(par t)(x,t) + grad J (x,t)eq rho r (x,t) $

  Ovvero 

  $ (par theta)/(par t) (x,t) + 1/(rho C_v) grad J (x,t) eq f(x,t) qquad ("con " f(x,t) eq (r(x,t))/C_v ) $

  Suppongo, per "validità cieca" della legge di Fourier, che esista una costante $K>0$ detta *conducibilità termica*, che dipende solo dal materiale del solido, tale che 

  $ J(x,t) eq - K grad theta(x,t) $

  Sostituisco ora nell'equazione precedente e ottengo

  $ (par theta)/(par t) eq D grad theta(x,t) + f(x,t) qquad ("con" D :eq K/(rho C_v))  $

#oss(title : "Equazione generale del calore")[\
    Se il solido considerato è disomogeneo e in caso di anisotropia, allora \ $C_v eq C_v (x) "e" K eq K(x) "è una matrice" d times d$. \ Dunque l'equaione di diffusione del calore assume la forma più generale 

    $ (par theta)/(par t)(x,t) eq 1/(rho C_v (x))div[K(x) grad theta(x,t)] + f(x,t) $
  ]

#pagebreak(weak : true)

== Passeggiata aleatoria  
I teoremi del limite centrale sono una famiglia di teoremi della Teoria della probabilità. \ In questo contesto, con teorema del limite centrale, ci riferiamo al risultato di Lindeberg-Lévy. 

#theo(title : "Teorema del limite centrale (o Lindeberg-Lévy)")[\
  Sia data una famiglia di variabili indipendenti tra loro ${x_j}_(j eq 1)^n$ e identicamente distribuite. \ Si definisce la variabile casuale complessiva

  $ x^* eq 1/sqrt(n) sum_(j eq 1)^n x_j$

  Allora la variabile complessiva $x^*$ converge in distribuzione alla gaussiana con valore atteso 0 e varianza 1, ossia 

  $ lim_(n arrow inf) x^* eq (e^(-1/2 x^2))/(sqrt(2pi)) $
]
#proof[
  La seguente dimotrazione fa uso della funzione caratteristica della $x^*$, definibile in modo equivalente come una funzione $italic("valore atteso")$ o come la $italic("trasformata di Fourier")$ di una funzione di densità $f_(x^*)$. 

  $ phi_(x^*) (t) eq 1/sqrt(2pi) int_RR e^(-i t x^*) f_(x^*)(x^*) dif x^* $

  Per ora mi dimentico del fattore moltiplicativo $1/sqrt(2pi)$ e lo agguingo alla fine

  Sviluppo secondo McLaurin il termine esponenziale e ottengo

  $ e^(-i t x) eq 1 - i t x - (t^2 x^2)/2 +o(t^2 x^2) $

  Sostituisco questo sviluppo nell'integrale e ottengo 

  $ phi_(x) (t) eq int_(-inf)^(+inf) f_(x) (x) dif x + i t int_(-inf)^(+inf) x f_(x) (x) dif x -t^2/2 int_(-inf)^(+inf) x^2 f_(x) (x) dif x +o(t^2) qquad $

  (*N.B:* si sta sviluppando solo secondo una qualsiasi $x_i "e non secodno" x^*$)

  Per la regola del calcolo del valore si ha, si ha che ognuno dei rispettivi integrali vale 
  
  - $EE[1] eq 1$

  - $EE[x_i] eq 0$

  - $EE[x_i^2] eq 1$

  Quindi ottengo 

  $ phi_(x^*)(t) eq 1 + t^2/2 + o(t^2) $

  Dal teorema di convoluzione, si ha che la densità di una somma di variabili indipendenti corrisponde al prodotto delle loro traformate.
  
  Definisco quindi $S_n eq sum_(i eq 1)^n x_i$. La trasformata richiede n-1 convoluzioni, quindi ottengo 

  $ phi_(S_n)(t) eq sqrt(2pi)^(n-1) product_(i eq 1)^n phi_(x_i)(t) $

  Ora introduco $x^*$, reintroduco il fattore moltiplicativo che avevo lasciato prima, e ottengo 

  $ phi_(x^*) (t) &eq sqrt(2pi)^(n-1) lr([ 1/sqrt(2pi) phi_(x_i) (t)]^n) \ &eq 1/sqrt(2pi) lr([1 - t^2/(2n)]^n) quad arrow_(n arrow inf) quad 1/sqrt(2pi) e^(-t^2/2) $

  /*L'enunciato del teorema, ossia 

  $ lim_(n arrow inf) f(x_n^*) eq (e^(-1/2 x^*^2))/sqrt(2pi) $

  E' equivalente a richiedere 

  $ lim_(n arrow inf) phi_(x^*) (t) eq e^(-t^2/2) quad forall f(x^*)$

  Noto che il secondo membro, una gaussiana, è proprio la funzione caratteristica della distribuzione normale. \ Nel caso presente si ha: 

  $ 
    phi_(x^*) (t) &eq  int_RR e^(-i t x^*) f(x^*) dif x^* \ 
    &eq int_RR e^(-i t/sqrt(n) sum_(j eq 1)^n y_j) dif x^* \
    &eq product_(j eq 1)^n int_RR e^(- (i t)/sqrt(n) y_j) dif x^*
  $

  Sviluppando ogni termine della produttoria con McLaurin si ha

  $ int_RR e^(- i t/sqrt(n) y_j)dif x^* &eq int_RR 1 - i/sqrt(n) t y_j - 1/n t^2/2 y^2_j + o(t^2y^2_j) dif x^* \ &eq 1 -1/n t^2/2  $*/ 
] 

Questo risultato, apparentemente lontano dalla fisica matematica, è in realtà profondamente legato all'equazione del calore. \ Metre quest'ultima descrive macroscopicamente il comportamento del calore, il teorema del limite centrale lo descrive come somma di infiniti urti casuali. Questo metodo di ricavazione dell'equazione del calore è anche detto *passeggiata aleatoria*. 

Immagino una particella in movimento confinata a muoversi su di una retta. \ Ad ogni intervallo di tempo $Delta t$ la particella si potrà spostare di una distanza $Delta x$ a sinistra o a destra della posizione di partenza, in entrambi i casi con probabilità $1/2$. \ Sia $u(x,t)$ la densità di probabilità di trovare la particella nella posizione $x "al tempo" t$.

A questo punto osservo che la probabilità della particella di trovarsi in $x$ al tempo $t + Delta t$ dipende unicamente da dove si trovava al tempo precedente $t$, ossia 

$ u(x,t + Delta t) eq 1/2 u(x- Delta x,t) + 1/2 u(x + Delta x, t) $

Ora sviluppo il termine di sinistra rispetto al tempo, ottenendo 

$ u(x, t + Delta t) eq u(x,t) + put Delta t + O(Delta t ^2)  $

Invece i termini di destra li sviluppo rispetto allo spazio 

$
  &u(x + Delta x,t) eq u(x,t) + pux Delta x + 1/2 pux2 Delta x^2 + O(Delta x^3)   \

  &u(x - Delta x,t) eq u(x,t) - pux Delta x + 1/2 pux2 Delta x^2 - O(Delta x^3)
$

Ottengo quindi 

$ &u(x,t) + put Delta t tilde.eq 1/2 [2 u(x,t) + pux2 Delta x^2]  \ 
&Arrow put (x,t) Delta t tilde.eq 1/2 pux2 Delta x^2 \ 
&Arrow put tilde.eq pux2 dot (Delta x^2)/(2 Delta t) qquad (D :eq (Delta x^2)/(2 Delta t) )\ 
&Arrow put tilde.eq D pux2   $ 

#pagebreak(weak : true)
== Problema ben posti 

  Nel caso dell'equazione del calore, in quanto del primo ordine rispetto alla variabile del tempo $t$, basta assegnare il valore della funzione $u "per" t eq 0$. \ Le condizioni al bordo, per un dominio limitato $Omega$, di Dirichlet e Neumann, si traducono euristicamente nell'assegnare la temperatura sul bordo $par Omega$, ovvero il flusso di calore attraverso il bordo. \ Nel seguito indichiamo con $Q_T$ il prodotto cartesiano $Omega times (0,T)$ . \ Sono quindi ben posti i problemi \  

  1. *Problema di Cauchy globale*

    $ cases( 
      put eq D grad u + f"," qquad &"in" RR^d times RR_+, 
      u(x,0) eq g(x) &"per" x in RR^d
    ) $

  2. *Problema di Cauchy-Dirichlet*
    
    Sia $a(x,t)$ il valore preassegnato di $u$ sulla frontiera, allora il problema si scrive 
    
    $ cases( 
      put eq D grad u + f qquad &"in" Q_T,
      u(x,0) eq g(x) &x in dash(Omega),
      u(x,t) eq a(x,t) &(x,t) in par Omega times [0,T) 
    ) $
      
  3. *Problema di Cauchy-Neumann*

    Sia $b(x,t)$ il valore preassegnato della derivata normale di $u$ sulla frontiera, allora il problema si scrive 
    
    $ cases( 
      put eq D grad u + f qquad &"in" Q_T,
      u(x,0) eq g(x) &x in dash(Omega),
      (par u)/(par v)(x,t) eq b(x,t) &(x,t) in par Omega times [0,T) 
  ) $

#pagebreak(weak : true)

== Unicità problema di Cauchy-Dirichlet 

  I teoremi di unicità per l'equazione del calore sono basati su una proprietà fondamentale delle soluzioni, detta *Principio del massimo parabolico*, che è conseguenza delle leggi di Fourier/Fick. \ Questa legge, euristicamente, dice che il calore si trasmette verso regioni a temperatura più bassa. Analogamente un fluido viaggia verso una regione ad altitudine minore. 

  #def[
    Definisco la *Frontiera parabolica di $Q_T$* l'insieme 
    $ par_p Q_T :&eq (dash(Omega) times {t eq 0}) union (par Omega times [0,T]) \ &eq {(x,t) "t.c." x in dash(Omega), t eq 0} union {(x,t) "t.c." x in par Omega , t in [0,T)} $
  ]

  #figure(
    image("images/Frontiera_Parabolica.jpg" , width : 90% ),
  )

  In seguito indico con $C^(2,1)(Q_T)$ le funzioni che sono differenziabili due volte rispetto alle variabili spaziali, ed una volta rispetto al tempo. \
  Con $C(dash(Q_T))$ indico le funzioni continue fino alla frontiera, con $C^1(dash(Q_T))$ qualle anche derivabili con continuità. 

#theo(title : "Principio del massimo parabolico")[\
  sia $w in C^(2,1)(Q_T) inter C(dash(Q_T))$ tale che 

  $ (par w)/(par t)- D laplace w <= 0 quad "in" Q_T $

  Allora il massimo di $w$ è assunto sulla frontiera parabolica, ovvero 

  $ max_(dash(Q_T)) w eq max_(par_p Q_t) w $
  ]
#proof[ Per continuità, batsa dimostrare che il massimo è sul bordo parabolico per ogni $T' in (0, T)$. \ Sia quindi, per assurdo, $M :eq max_(dash(Q)_T') w > max_(par_p Q_t) w =: m$. \ Fisso $ep in (0, (M-m)/T')$. \ Definisco 

  $ u(x,t) eq w(x,t) + ep (T' - t)$

  Quindi $ u(x,t) >= w(x,t) Arrow M_u >= M$, Dove $M_u$ è il massimo di $u$. 
  
  Visto che $M_u$ è interno al dominio, esiste $(x_0, t_0)$ tale che $u(x_0,t_0) = M_u$. 

  In quanto punto di massimo, ciò significa che 

  - La derivata temporale $put(x_0, t_0)$ è nulla se $t_0 in (0,T')$ e non negativa solo per $t eq T'$. 

  - Il laplaciano rispetto allo spazio è non positivo, ossia $laplace u (x_0, t_0) >= 0$. 

  Questo significa che $put(x_0,t_0) - D laplace u (x_0,t_0) >=0 $

  A questo punto esprimo $w$ come $u - ep(T'-t)$ e ottengo $ par_t w (x_0,t_0) - D laplace w (x_0,t_0) >= ep $

  Che è un assurdo con l'ipotesi di partenza dell'enunciato.
]

#theo(title : "Corollario del principio del massimo parabolico")[\
  sia $w in C^(2,1)(Q_T) inter C(dash(Q_T))$ tale che 

  $ (par w)/(par t)- D laplace w >= 0 quad "in" Q_T $

  Allora il minimo di $w$ è assunto sulla frontiera parabolica, ovvero 

  $ min_(dash(Q_T)) w eq min_(par_p Q_t) w $
  ]
#proof[
  Stessa dimostrazione del teorema precedente con la funzione $-w$.
  ]

#prop[
  sia $w in C^(2,1)(Q_T) inter C(dash(Q_T))$ soluzione dell'equazione del calore omogenea. Allora 

  $ min_(par_p Q_T) w <= w(x,t) <= max_(par p Q_T) w qquad forall (x,t) in dash(Q_T) $
]
#proof[Banale conseguenza del teorema e corollario precedente.]

#theo()[\ 
  Siano $u_1, u_2 in C^(2,1)(Q_T) inter C(dash(Q_T))$ soluzioni dell'equazione del calore con stesso coefficiente di diffusione del calore $D$, ma forzanti diverse $f_1, f_2 in C(dash(Q_T))$. \ Allora vale la stima 

  $ max_(dash(Q_T)) abs(u_1 - u_2) <= max_(par_p Q_T) abs(u_1-u_2) + T max_dash(Q_T) abs(f_1 - f_2) $
]
#proof[
  Siano $ M :eq lr( max_(dash(Q_T)) abs(f_1 - f_2)) $  $ u_(plus.minus)(x,t) :eq u_1 - u_2 plus.minus M t $
  Cosicché 
  $ par_t u_(plus.minus) (x,t) - laplace u_(plus.minus) (x,t) eq f_1 - f_2 plus.minus M $
  Dalla definizione di $M$ si ottiene 

  $ par_t u_- - D laplace u_- <= 0, qquad par_t u_+ - D laplace u_+ >=0, qquad "in" Q_T $

  Per i teoremi del massimo e del minimo parabolico si ha 

  $ &max_dash(Q_T) (u_1 - u_2 - M t) eq max_(par_p Q_T)(u_1 - u_2 - M t) \ &min_dash(Q_T) (u_1 - u_2 + M t) eq min_(par_p Q_T)(u_1 - u_2 + M t) $

  Da cui 

  $ abs(u_1 - u_2) <= max_(par_p Q_T)abs(u_1 - u_2 ) + M t $
]
#theo(title : "Unicità del problema di Cauchy-Dirichlet")[\
  Il problema di Cauchy-Dirichlet ammette al più una soluzione $u  in C^(2,1)(Q_T) inter C(dash(Q_T))$
]
#proof[Banale conseguenza della stima del teorema precedente]

#pagebreak(weak : true)

== Unicità problema Cauchy globale 

Per dimostrare l'unicità del problema di Cauchy globale, facciamo uso del seguente teorema, di cui mostro solo l'enunciato. 

#theo(title : "Principio del massimo globale")[\ 
  sia $w in C^(2,1)(RR^d times (0,T) inter C(RR^d times [0,T])$ tale che 
  $ par_t w - D laplace w <= 0 qquad "in" RR^d times (0,T) "e con" D>0 $
  Supongo inoltre che 
  $ exists C > 0 quad "tale che" w <= C qquad "in" RR^d times [0,T] $
  Allora
  $ sup_(RR^d times [0,T]) w eq sup_(RR^d) w(x,0) $
]
#oss[
  Come conseguenza del teorema, vale anche 

  $ "inf"_(RR^d times [0,T]) w eq "inf"_(RR^d) w(x,0) $
]

#theo(title : "Unicità della soluzione del problema di Cauchy globale")[\
  Sia dato il problema di Cauchy globale. \ Allora esiste al più una soluzione $u in C^(2,1)(RR^d times (0,T) inter C(RR^d times [0,T])$
]
#proof[Basta considerare $w eq u_1 - u_2$ soluzione del problema di Cauchy omogeneo di dati iniziali $w(x,0) eq 0$. \ Per le stime dei teoremi precedenti si ottiene $w(x,t) equiv 0 "in" RR^d times [0,t] $ 
]

#pagebreak(weak : true)

== Soluzione fondamentale del problema di Cauchy globale 

Considero inizialmente il problema di Cauchy globale omogeneo in dimensione $d eq 1$. 

$ cases(
  put eq D pux "," qquad &(x,t) in RR times RR_+,
  u(x,0) eq g(x)"," &x in RR 
)
$<Pbm-C-G-O>

In analogia con il caso dell'equazione delle onde, voglio scrivere la soluzione nella forma 

$ u(x,t) eq int Gamma_1(x,y,t)g(y) dif y $

Dove l'1 a pedice indica la dimensione del problema. \ $Gamma_1(x,y,t)g(y) dif y$, inteso come nucleo, rappresenta la concentrazione di fluido in $x$ al tempo $t$ dovuta alla diffusione di massa infinitesima $g(y) dif y$ posta, nel tempo $t eq 0$, nell'intervallo $(y, y + dif y)$. \ Per il principio di sovrapposizione, integrando nella variabile $y$, trovo la concentrazione dovuta alla massa ottale distribuita al tempo iniziale secondo la densità $g$.

Visto che $u$ risolve il problema di Cauchy globale, deve verificare i due risultati 
1. $ 0 &eq put (x,t) - D pux2 (x,t) \ &eq lr( int par_t [Gamma_1 (x,y,t) - D par^2_x Gamma_1(x,y,t)]g(y) dif y) $
2. $ lim_(t arrow 0^+) int dif y Gamma_1(x,y,t) g(y) eq g(x)  $

Per l'arbitrarietà su $g$, il nucleo $Gamma_1(x,y,t)$ deve soddisfare il problema 

$ cases(
  par_t Gamma_1 (x,y,t) - D par^2_x Gamma_1 (x,y,t) eq 0 qquad &"per" (x,y,t) in RR times RR times RR_+,
  Gamma_1 (x,y,0) eq delta_y (x) &"per" (x,y) in RR times RR 
)
$

Quindi in sostanza ho che 

$ Gamma_1 (x,y,t) eq Gamma_1(x - y,t) $

Dove $Gamma_1(x,t)$ risolve il problema 

$ cases(
  par_t Gamma_1 (x,t) - D par^2_x Gamma_1 (x,t) eq 0 "," qquad &"per" (x,t) in RR times RR_+,
  Gamma_1 (x,0) eq delta(x) &"per" x in RR
)
$

#rmk(title : "Proprietà di invarianza sotto silatazioni paraboliche")[\
  Sia $alpha > 0$, se $u(x,t)$ è soluzione del @eqt:Pbm-C-G-O[problema], allora 

  $ u^alpha := u(alpha x, alpha^2 t) $

  è soluzione del problema di Cauchy globale con dato iniziale $g^alpha (x) eq g(alpha x)$.
]

Poiché la soluzione al @eqt:Pbm-C-G-O[problema] si scrive 

$ u(x,t) eq int Gamma_1 (x-y,t)g(y) dif y $

Allora deve aversi, per la proprietà di invarianza sotto dilatazioni paraboliche, che 

$ int Gamma_1 (alpha x - y, alpha^2 t)g(y) dif y eq int Gamma_1(x-y, t)g(alpha y) dif y $

Per arbitrarietà della scelta di $g$ si dovrà avere 

$ alpha Gamma_1 (alpha x, alpha^2 t) eq Gamma_1(x,t) $

In particolare, per $alpha eq 1/sqrt(t)$ si ha che 

$ Gamma_1 (x,t) eq 1/sqrt(t) Gamma_1(x/sqrt(t), 1) $

Ossia il suo profilo spaziale rimane simile nel tempo. 

Visto che inoltre l'equazione conserva la massa totale, deve verificare 

$ int dif x int dif y Gamma_1(x-y,t)g(y) eq int dif y g(y) $

Per il teorema di Fubini-Tonelli posso riscrivere 

$ int dif x int dif y Gamma_1(x-y,t) g(y) & eq int dif y g(y) int dif x Gamma_1(x-y,t) \ &eq int dif y g(y) int dif z Gamma_1(z,t) $ 

Per l'arbitrarietà di $g$ deve aversi 

$ int dif x Gamma_1 (x,t) eq 1 $

Infine, per soddisfare il principio del massimo, richiedo $Gamma_1 (x-y,t) >= 0$. \ Sotto queste ipotesi scritte sino ad ora, la soluzione è univocamente determinata. 

Definsico $Phi(xi) :eq Gamma_1 (xi,1)$. Allora $Gamma_1 (x,t) eq 1/sqrt(t)Phi(x/sqrt(t))$

L'equazione del calore per $Gamma_1 (x,t)$ si scrive 

$ 0 &eq par_t Gamma_1 (x,t) - D par^2_t Gamma_1 (x,t) \ &eq -1/(2t sqrt(t)) Phi(x/sqrt(t)) - 1/(2 t sqrt(t))x/sqrt(t) Phi'(x/sqrt(t)) - D/(t sqrt(t)) Phi''(x/sqrt(t)) \ &eq lr(1/(t sqrt(t))[1/2 Phi(x/sqrt(t)) + 1/2 x/sqrt(t) Phi'(x/sqrt(t)) - D Phi''(x/sqrt(t))]) $

Per l'arbitrarietà del parametro $xi eq x/sqrt(t)$, allora $Phi(xi)$ deve risolvere 

$ &D Phi''(xi) + 1/2 Phi'(xi) + 1/2 Phi(xi) eq 0 qquad (Phi(xi) + xi Phi'(xi) eq dif/(dif xi) xi Phi(xi)) \ &Arrow D Phi'(xi) +1/2 xi Phi(xi) eq C_1 $

Con il metodo della variazione delle costanti si ottiene 

$ Phi(xi) eq C_0 e^(- xi^2 / (4D)) + C_1 e^(- xi^2/(4D))int_0^xi dif eta space e^(eta^2 / (4D)) $

Le condizioni sono in questo caso $ Phi(xi) >=0, qquad int dif xi Phi(xi) eq int dif xi Gamma(xi,1) eq 1 $

La positività implica $C_1 eq 0$

La seconda condizione invece determina $C_0$ che vale 

$ C_0 &eq lr(( int dif xi e ^(-xi^2 /(4 D)))^(-1) \ &eq 1/(2 sqrt(D)int dif z e^(-z^2)) ) \ &eq 1/sqrt(4pi D) $

Ottengo quindi in definitiva 

$ Gamma_1 (x,t) eq 1/sqrt(4pi D) e^(-x^2/(4 D t)) $

Che è una gaussiana centralizzata nell'origine e normalizzata per avere integrali pari ad 1. 

- * Soluzione per dimensione $d >1$ *

Nel caso di dimensione maggiore, basta ragionare per separazione delle variabili, così da ottenendo

$ Gamma_d (x,t) :eq product_(i=1)^d Gamma_1(x_i,t) eq 1/(4 pi D t)^(d/2) e^(- abs(x)^2 / (4 D t)), qquad x eq (x_1,dots,x_d) $

#lemma[
  La funzione $ Gamma_d (x,y,t) eq Gamma_d(x-y,t) eq 1/(4D pi t)^(d/2) e^(- abs(x-y)^2 / (4D t))  $
  gode delle seguenti proprietà 

  1. $Gamma_d (x,y,t) > 0 qquad forall (x,y,t) in RR^d times RR^d times RR_+ $

  2. $Gamma_d (x,y,t) eq Gamma_d (y,x,t)$ 

  3. $Gamma_d in C^inf$

  4. $(x,t) arrow Gamma_d (x,y,t)$ è sol classica dell'equazione del calore 

  5. Sia $g in C(RR^d)$ limitata, allora valgono i limiti  

    - $ lim_(t arrow o^+) int dif  y Gamma_d (x,y,t)g(y) eq g(x) $ 

    - $ lim_(t arrow o^+) int dif  x Gamma_d (x,y,t)g(x) eq g(y) $ 
]
#proof[
  I punti 1,2,3,4 seguono dalla forma esplicita di $Gamma_d (x,y,t)$. \ Vista la simmetria, inoltre, basta dimostrare solo il primo dei due integrali. Con il cambiamento di varabile $z eq (y-x)/sqrt(4 D t)$ ottengo 

  $ int dif y Gamma_d (x,y,t) g(y) eq 1/pi^(d/2) int dif z e ^(- abs(z)^2) g(x + z sqrt(4 D t)) $
  Per convergenza dominata si ottiene la tesi.
]

#oss[
  $Gamma_d (x,t) $ è detta *soluzione fondamentale* e risolve il problema di Cauchy omogeneo 

  $ cases(
    par_t Gamma_d (x,t) eq D laplace Gamma_d (x,t) qquad &"per" (x,t) in RR^d times RR_+, 
    Gamma_d (x,0) eq delta(x) &"per" x in RR^d 
  )
  $
]

#theo[
  Assegnata la $g in C(RR^d)$ limitata, il problema di Cauchy globale omogeneo con dato iniziale $g(x)$ ha un'unica soluzione dello spazio delle funzioni 

  $ lr({ w in C^(2,1)(RR^d times R_+) inter C(RR^d times [0, inf)space) quad | quad sup_(RR^d times [0,T])abs(w(x,t)) < inf quad forall T>0 }) $

  Tale soluzione è inoltre data dalla seguente formula integrale 

  $ (x,t) eq int Gamma_d (x-y,t)g(y) dif y  $
]

#pagebreak(weak : true) 

== Metodo di Fourier
Anche in questo caso si ricerca la soluzione nella forma 

$ u(x,t) eq sum_n W_n (t) v_n (x) $

Come al solito il nostro caro ${v_n (x), lambda_n}$ è l'incommensurabile sistem completo nonché spazio delle funzioni.

In questo caso $W_n (x)$ è soluzione del problema 

$ dot(W)_n (t) eq lambda_n D W_n (t)  $

Ossia 

$ W_n (t) eq W_n (0) e^(lambda_n D t) $

Le condizioni su $W_n (0)$ sono determinate dal dato iniziale 

$ g(x) eq u(x,0) eq sum_n W_k (0) v_n (x) $

E quindi, per l'ortogonalità delle funzioni, ho 

$ W_n (0) eq (int_Omega dif x g v_n)/(int_Omega dif x v^2_n) $



