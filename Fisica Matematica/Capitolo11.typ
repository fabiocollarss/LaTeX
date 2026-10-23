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

= Soluzione dei problemi 

== Separazione delle variabili per problemi in domini limitati 
Per i problemi di C-D e C-N omogenei ($gamma eq f eq 0$) in un dominio $Omega subset RR^d$ si procede "come" nel caso unidimensionale, usando il metodo di Fourier. \ Si cerca pertanto la soluzione come espansione in un sistema di autofunzione per il corrispondete problema agli autovalori

$ "C-D" arrow  cases( 
    laplace v eq lambda v"," & "in" Omega,
    v(x) eq 0"," qquad & x in par Omega 
) $

$ "C-N" arrow  cases( 
    laplace v eq lambda v"," & "in" Omega,
    (par v)/(par n)(x) eq 0"," qquad & x in par Omega 
) $

Cerchiamo la soluzione nella forma 

$ u(x,t) eq sum_n W_n (t) v_n (x) $

Dove $W_n$ è soluzione di $dot.double(W) (t) eq lambda_n c^2 W_n (t)$. \ Determino le condizioni iniziali $W_n (0), dot(W)_n (0)$ richiedendo  

$ g(x) eq u(x,0) eq sum_n W_n (0) v_n (x) \ h(x) eq put (x,0) eq sum_n dot(W)_n (0) v_n (x) $

A questo punto c'è una cosa che non dimostro, ma si ootiene che i problemi agli autovalori ammettono un sistema di autofunzioni e autovalori $(v_n (x), lambda_n)_n$ con le seguenti proprietà

$
"(C-D)" qquad &1.) qquad 0>lambda_1>lambda_2> dots >lambda_n arrow - inf \
&2.) qquad int_Omega v_j (x) v_k (x) dif x eq 0 qquad  "se" j != k 
$

$
"(C-N)" qquad & 1.) qquad 0 eq lambda_0 > lambda_1 >dots> lambda_n arrow - inf \
&2.) qquad v_0 (x) eq 1 \
&3.) qquad int_Omega dif x v_j (x) v_k (x) eq 0 qquad "se" j != k 
$

In particolare, per $ n >= 1$ sono oscillatori armonici di frequenza 

$ omega_n eq sqrt(- lambda_n c^2) $

Inoltre, per l'ortogonalità delle autofunzioni i dati iniziali di $W_n (0) "e" dot(W)_n (0)$ sono effettivamente determinati in termini di $g "e" h$. 

$ W_n (0) eq (int_Omega g v_n dif x )/(int_Omega v^2_n dif x ) \ 
dot(W)_n (0) eq (int_Omega h v_n dif x)/([delta_(n,0) + (1- delta_(n,0))omega_n]int_Omega v^2_n dif x ) $ 


== Formula di Kirchoff 

La formula di Kirchhoff offre la soluzione esplicita del problema di Cauchy globlale omogeneo 
#theo(title : "Formula di Kirchhoff")[\
  Siano $g in C^3(RR^3) "e" g in C^2(RR^3)$. Allora l'unica soluzione in $C^2(RR^3 times [0. inf))$ del problema di Cauchy globale omogeneo 

  $ cases( 
    put2 eq c^2 laplace u &"in" RR^3 times RR_+,
    u(x,0) eq g(x)","quad  put(x,0) eq h(x) qquad &"per" x in RR^3
) $

E' data dalla formula di Kirchhoff 

$ u(x,t) eq par/(par t)[ 1/(4 pi c^2 t) int_(S_(c t)(x)) dif sigma(y)g(y)] + 1/(4 pi c^2 t)int_(S_(c t)(x))dif sigma(y) h(y)  $
]
#proof[Due lemmi successivi]

Premettiamo all'enunciazione dei due lemmi la seguente definizione 

#def[sia $phi in C(RR^3)$. \ La *media artimetica* della fuzione $phi$ sulla superficie sferica $S_(r)(x)$ è

  $ M_phi (x,r) :eq 1/(4 pi r^2)int_(S_r (x)) dif sigma(y)phi(y) $
]

#lemma[\
  Sia $phi in C^2(RR^3)$. Allora l'unica soluzione del problema di Cauchy

  $ cases( 
      put2 eq laplace u,
      u(x,0) eq 0, put(x,0) eq phi(x)
  ) $
  
  E' $W_phi (x,t) :eq t M_phi (x,c t) $
]
#proof[ Da dimostrare :)

]

#lemma[ Se $W_phi in C^3 (RR^3 times RR_+)$ allora $v(x,t) eq (par W_phi)/(par t) "è l'unica soluzione in" C^2$ del problema 

  $ cases( 
    (par^2 v)/(par t^2) eq c^2 laplace v,
    v(x,0) eq phi(x)"," quad (par v)/(par t)(x,0) eq 0 
  ) $
]
#proof[ Da dimostrare :)
  
]

#proof[(Dimostrazione della Formula di Kirchhoff)\ 
  
]

#oss(title : "Espressione della formula di Kirchhoff in termini della soluzione fondamentale")[\
    
]

== Formula di Poisson 
  Dalla formula di Kirchhoff segue anche la formula risolutiva per l'eqauzione delle onde in dimensione $d eq 2$. 
== Potenziali ritardati 

== Sulla velocità di propagazione 
