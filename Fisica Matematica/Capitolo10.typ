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

= Equazione delle onde in dimensione $d>1$

L'equazione delle onde in dimensione $d eq 2,3$ è idonea a descrivere diversi fenomeni fisici, ad esempio membrane elastiche, la propagazione del campo elettromagnetico nel vuoto, delle onde sonore in un fluido, o ancora di budini su un piatto d'argento. 

== Problemi ben posti

Nel seguito defiamo \
$Omega subset RR^d $ Dominio regolare con bordo $par Omega$ di classe $C^2$ \
$Q_T eq Omega times (0,T)$


I tre classici problemi nel caso dell'equazione dell'onda generalizzata sono 

1. *Problema di Cauchy globale* 

$ cases( 
    put2 eq c^2 Delta u - gamma u + f"," & RR^d times RR_+,
    u(x,0) eq g(x)"," quad put(x,0)eq h(x)"," qquad & x in RR^d 
) $

2. *Problema di Cauchy-Dirichlet* 

$ cases( 
    put2 eq c^2 Delta u - gamma u + f"," & Q_T,
    u(x,0) eq g(x)"," quad put(x,0)eq h(x)"," qquad & x in dash(Omega), 
    u(x,t)eq a(x,t)"," &(x,t) in par Omega times [0,T)
) $

3. *Problema di Cauchy-Neumann* 

$ cases( 
    put2 eq c^2 Delta u - gamma u + f"," & Q_T,
    u(x,0) eq g(x)"," quad put(x,0)eq h(x)"," qquad & x in dash(Omega), 
    (par u)/(par v)(x,t)eq b(x,t)"," &(x,t) in par Omega times [0,T)
) $

#rmk[sia $v(x)$ vettore normale al bordo $par Omega$, allora la derivata direzionale lungo $v$ di $u$ è 

$ (par u)/(par v)(x) :eq v dot grad u (x) $
]

== Esistenza ed unicità delle soluzioni

#theo(title : "integrale primo dei problemi (2) e (3) ")[\
  Sia $T >0,quad Q_T eq Omega times (0,L), quad u in C^2(Omega) $ soluzione dell'equazione omogenea dei problemi (2) e (3), allora

  $ E(u,t) eq E(u,0) qquad forall t in [0,T] $
]
#proof[
  Dimostro che la derivata temporale dell'energia è nulla per $t in [0,T]$. 
  
]

#theo(title : "unicità nei problemi (2) e (3) ")[\
  Per $T>0$, fissati i dati iniziali e al bordo, esiste al più una soluzione per i problei (2) e (3)
]
#proof[
  La dimostrazione è sulla falsa riga di quella unidimensionale. \
  Si prendono dunque due soluzione $u_1, u_2$ dello stesso problema, e si dimostra che $u_1 - u_2$ è nulla.  
]

#theo(title : "unicità del problema (1) ")[\
  Esiste al più una soluzione in $C^2(Omega times [0, inf))$ per il problema (1). 
]
#proof[

]
