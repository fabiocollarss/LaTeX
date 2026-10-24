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

= Esercizi  
In questa sezione sono presenti alcuni esercizi di Fisica Matematica riguardanti i principali argomenti del corso. 

In particolare gli esercizi sono presi dalle schede di esercizi del corso di Fisica Matematica 2025/2026 Canale I (Basile)

== Corda vibrante in dimensione 1


#pagebreak(weak : true)
== Corda vibrante in dimensione $d>1$

*Foglio 6 - Esercizio 1* \
  Dat il problema di Cauchy 
  $ cases( 
      put2(x,t) eq 3 laplace u(x,t) &"per" (x,t) in RR^3 times RR_+,
      u(x,0) eq (1 + x_3abs(x)^2)e^(- abs(x)^2)"," quad put(x,0) eq 0"," qquad &x in RR^3 
  ) $

  Determinare la soluzione per $x eq 0, t in RR_+$

  *Svolgimento*

  Per trovare la solzione del problema, determino la soluzione generale attraverso la formula Kirchhoff. \

  $ u(x,t) &eq par/(par t) [1/(4pi c^2 t)int_(S_(c t)(x)) (1 + x_3 abs(x)^2)e^(-abs(x)^2) dif sigma] qquad& (abs(x)eq t sqrt(3), space x_3 eq abs(x)cos phi) \ 
  &eq par/(par t) [1/(4pi c^2 t) int_(S_(c t)(x)) (1 + (sqrt(3) t)^3 cos phi)e^(- 3t) dif sigma ] &(dif x dif y dif z eq rho^2 sin phi dif rho dif theta dif phi) \ 
  &eq par/(par t) [1/(4pi c^2 t) int^(2pi)_0 dif theta int^pi_0 dif phi  (1 + (sqrt(3) t)^3 cos phi)e^(- 3t)]3 t^2 sin phi \
  &eq par/(par t) [ 1/(4 pi c^2 t)2pi 3 t^2 e^(-3 t) int_0^pi dif phi sin phi + int^pi_0 dif phi (sqrt(3)t)^3 cos phi sin phi] \ 
  &eq  par/(par t) [1/(4pi c^2 t) 2 pi 3 t^2 e^(-3 t)dot 2] & (c eq sqrt(3)) \
  &eq par/(par t) [12 pi t^2 e^(-3 t)/(12 pi t)] \
  &eq par/(par t) [t e^(-3  t)] \
  &eq (1 - 2 t)e^(- 3t) $

#pagebreak(weak : true)
== Calore

*Foglio 7 - Esercizio 3* \
  Determinare la soluzione del problema di Cauchy-Neumann omogeneo per la sbarra limitata
  $ cases( 
      put eq D pux2"," &(t,x) in R_+ times (0,1),
      u(0,x) eq cos^2 (pi x)"," qquad &x in [0,1],
      pux(t,0) eq pux(t,1) eq 0 &forall t >=0
  ) $

  *Svolgimento* \ 
  Come al solito, per il metodo di Fourier, suppongo che la soluzione $u$ si possa scrivere come serie dei prodotti di funzioni ortogonali $u(x,t) eq sum_(n in ZZ_(>=0))W_n (x) v(t)$ \
  In questo caso, per l'equazione del calore, ho 

  $ W(x) v'(t) eq D W''(x)v(t) $

  Con 

  $ (v'(t))/(D v(t)) eq lambda eq (W''(x))/(W(x))  $

  Dunque 

  $ v'(t) eq lambda D v(t), qquad W''(x) eq lambda W(x) $

  Ragionando sulle $W$, ottengo che le uniche solzioni non banali sono date per $lambda eq -k^2 <0.$ \ La soluzione associata a tale equazione differnziale è 

  $ W(x) eq A sin(k x)+B cos(k x) $

  Derivo rispetto ad $x$ e ottengo 
  
  $ W'(x) eq A k cos(k x) - B k sin(k x) $

  Ora utilizzo le condizioni al contorno e ottengo 

  $ &W'(0) eq A k eq 0, qquad &Arrow A eq 0 \ &W'(1) eq B k sin (k) eq 0 qquad &Arrow "quindi sol non banali per" k eq n pi  $
  
  Per quanto riguarda $v$ invece, ho che 

  $ v(t) eq e^(- n^2 pi^2 D t) $

  Quindi scrivo la soluzione come 

  $ u(x,t) eq sum_(n >=0) cos(n pi x)e^(- n^2 pi^2 D t) $

  Uso la condizione su $u(0,x)$ e sostituendo ottengo 

  $ u(x,0) eq sum_(n>=0) B_n cos(n pi x) eq cos^2(x) eq^"identità" (1 + cos(2 pi x))/2 $

  Da cui si ottiene che ù

  $ B_0 eq 1/2, B_1 eq 1/2, B_k eq 0 quad forall k >= 1 $

#pagebreak(weak : true)
== Laplace e Poisson
