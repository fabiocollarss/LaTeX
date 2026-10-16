#import "template.typ": *

#set heading(numbering: "1.1")
#set math.equation(numbering: "(1)")
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

= Problemi ben posti e metodo dell'energia

== Problemi ben posti 

Attraverso il principio variazionale abbiamo caratterizzato il moto della corda in un intervallo di tempo $[0,T]$.
Dati un profilo iniziale e uno finale 

$ cases(
  u_0 (x) #h(2em)&"per" t=0,
  u_T (x) &"per" t eq L,
) $

Come ci insegna la meccanica razionale, vorremmo anche trovare le soluzioni nel tempo date "solo" le condizioni al tempo $t eq 0$. \
In questo caso avremo bisogno del profilo iniziale della corda e quello della velocità, ossia

$  
u(x,0) eq g(x), #h(4em) put(x,0) eq h(x)
$

Dove $g "e" h$ sono funzioni note.\
Affinché le soluzioni siano univocamente determinate, è anche necessario che siano esplicitate le condizioni agli estremi della corda, che chiamo "condizioni al bordo".\
In particolare, in base alle condizioni al bordo, ho 4 categorie di problemi.

1. *Problema di Cauchy globale* 
Suppongo che la corda sia infinita 

$ cases(
    put2 eq c^2 pux2 - gamma u + f #h(8em) & RR times RR_+  ,
    u(x,0) eq g(x) "," put (x,0) eq h(x) & x in RR,
  ) 
$

2. *Problema di Cauchy-Dirichlet*
Supppongo che la corda sia finita e che i due estremi siano vincolati a seguire il moto trasversale descritto dalle funzioni $a(t) "e" b(t)$.\
Il problema corrispondente è pertanto

$ cases( 
    put2(x,t) eq pux2(x,t) minus gamma u plus f #h(8em) & (0,L)times RR_+ ,
    u(x,0) eq g(x) "," put(x,0) eq h(x) & x in RR,
    u(0,t)eq a(t) "," u(L,t) eq b(t) & t in RR_+
  )
$

3. *Problema di Cauchy-Neumann* 
Suppongo che agli estermi della corda ci siano due tensioni $f_0 (t) "e" f_T (t)$.\ 
Le riscrivo come $alpha(t) eq (f_0 (t)) / tau "e" beta(t) eq (f_L (t))/tau$.\
Ottengo così il problema 

$ cases( 
    put2(x,t) eq pux2(x,t) minus gamma u plus f #h(8em) & (0,L)times RR_+ ,
    u(x,0) eq g(x) "," put(x,0) eq h(x) & x in RR,
    pux(0,t)eq alpha(t) "," pux(L,t) eq beta(t) & t in RR_+
  )
$

4. *Problema di Cauchy con condizioni periodiche* 

$ cases( 
    put2(x,t) eq pux2(x,t) minus gamma u plus f #h(8em) & (0,L)times RR_+ ,
    u(x,0) eq g(x) "," put(x,0) eq h(x) & x in RR,
    u(x,t) eq u(x+L, t) & x in RR "," t in RR_+
  )
$

== Metodo dell'energia
In questa sezione sono interessato a dimostrare per quale motivo, i problemi descritti in precedenza 
sono ben posti, ossia se esiste ed è unica la soluzione. 

In seguito utilizzerò $H(u,t) eq T+U$ per l'energia meccanica totale, e $E(u,t) eq H/tau$ 

#theo(title : "Energia costante per i problemi (2), (3) e (4)")[\
  Sia $T > 0, space Q_T eq (0,L) times (0,T), "e sia" u in C^2(dash(Q_T))$ soluzione dell'equazione omogenea

  $ put2 eq c^2 pux2 - gamma u, quad quad (x,t) in Q_T  $
  
  Con condizioni al bordo di Dirichlet omogenee o Neumann omogenee o periodiche. Allora 

  $E(u,0) eq E(u,t) quad forall t in [0,T]$.
]<encost>
#proof[L'idea è dimostrare che $dif/(dif t)E(u,t) eq 0 "in" [0,T]$. 
  
]

#theo(title : "unicità dei problemi (2), (3) e (4)")[\
  Siano condiioni come in @encost. Allora esiste al più una soluzione in $C^2(dash(Q_T))$.
]
#proof[Suppongo $u_1, u_2$ due soluzioni del problema e verifico che $u_1 - u_2 equiv 0$. 

]\


