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

= Equazione del calore

== Introduzione 

L'equazione del calore (o $italic("della diffusione")$) ha  la forma 

$ put(x,t) eq D laplace u(x,t) $

Dove $u(x,t) "è la funzione incognita," x in RR^d "con" d eq 1,2,3, space t in RR_+, "e" D>0 "una costante assegnata, detta"$ *coefficiente di diffusione*.

Una particolarità dell'equazione del calore è che non è invariante sotto riflessioni del tempo, infatti

$v(x,t) eq u(x, -t)$ è soluzione dell'equazione aggiunta $(par v)/(par t) + D laplace v eq 0$. 

Ossia, esiste una direzione privilegiata del tempo, e dunque l'equazione del calore descrive fenomeni irreversibili.

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

== Principio del massimo parabolico

I teoremi di unicità per l'equazione del calore sono basati su una proprietà fondamentale delle soluzioni, detta *Principio del massimo parabolico*, che è conseguenza delle leggi di Fourier/Fick. \ Questa legge, euristicamente, dice che il calore si trasmette verso regioni a temperatura più bassa. Analogamente un fluido viaggia verso una regione ad altitudine minore. 

In seguito indico con $C^(2,1)(Q_T)$ le funzioni che sono differenziabili due volte rispetto alle variabili spaziali, ed una volta rispetto al tempo. \
Con $C(dash(Q_T))$ indico le funzioni continue fino alla frontiera, con $C^1(dash(Q_T))$ qualle anche derivabili con continuità. 

#theo(title : "Principio del massimo parabolico")[\
  sia $w in C^(2,1)(Q_T) inter C(dash(Q_T))$ tale che 

  $ (par w)/(par t)- D laplace w <= 0 quad "in" Q_T $

  Allora il massimo di $w$ è assunto sulla frontiera parabolica, ovvero 

  $ max_(dash(Q_T)) w eq max_(par_p Q_t) w $
]
#proof[

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


