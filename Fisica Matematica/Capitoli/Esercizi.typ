#import "template.typ": *

#set heading(numbering: "1.1")
// Mostra la numerazione per capitolo sulle equazioni matematiche
#show math.equation: i-figured.show-equation.with(only-labeled: true) 
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
\
*Foglio 3 - Esercizio 1*
  Risolvere il seguente problema di C-N
  
  $ cases( 
    put2 eq pux2 &(x,t) in (0,pi)times RR_+,
    u(x,0) eq 1"," quad put(x,0) eq cos x qquad &forall x in [0,pi],
    pux(0,t) eq pux(pi,t) eq 0 &forall t>=0 
  ) $

  *Svolgimento* \
  Dal metodo di Fourier segue la determinazione di $lambda_n, w_n "e" v_n (x)$.

  $ 
    &lambda_n eq - (pi^2 n^2)/(L^2) quad eq^((L eq pi)) quad -n^2 \
    &omega_n eq (n pi c)/L quad eq^((L eq pi, c eq 1)) quad n \  
    &v_n (x) eq cos((n pi)/L x) eq^((L eq pi)) cos(n x) 
  $

  Ora, usando anche le condizioni su $g "e" h$ posso determinare i coefficienti

  $ u(x,t) eq 1/2(A_0 + B_0 t) + sum_(n in ZZ_(>0)) [A_n cos(n t) + B_n sin(n t)]cos(n x)  $

  quindi, dalle condizioni, so che $u(x,0) eq g(x) eq 1$

  $ 
  &u(x,0) eq 1/2 A_0 sum_(n in ZZ_(>0)) A_n cos(n x) eq 1 \
  &Arrow A_0 eq 2, quad A_n eq 0 qquad forall n != 2 
  $
  
  La derivata temporale di $u$ è invece 

  $ put (x,t) eq 1/2 B_0 + sum_(n in ZZ_(>0)) [-n A_n sin(n t) + n B_n cos(n t)]cos(n x) $

  Visto che $put(x,0) eq h(x) eq cos x$, allora 

  $ 
    &put(x,0) eq 1/2 B_0 + sum_(n in ZZ_(>0)) n B_n cos (n x) eq cos x \
    & Arrow B_1 eq 1, quad B_n eq 0 "se" n != 1 
  $
    
  E quindi si ottiene la soluzione 
    
  $ u(x,t) eq 1 + cos(x)sin(t) $

#pagebreak(weak : true)

*Foglio 3 - Esercizio 2* \
  Determinare la soluzione e l'energia 
  $ cases( 
    put2 eq pux2 &(x,t) in (0,pi)times RR_+,
    u(x,0) eq cos x"," quad put(x,0) eq sin^2 x qquad &forall x in [0,pi],
    pux(0,t) eq pux(pi,t) eq 0 &forall t>=0 
  ) $

  *Svolgimento* \
  1. Soluzione del problema 
  Dal metodo di Fourier segue la determinazione di $lambda_n, w_n "e" v_n (x)$.

  $
    lambda_n eq - n^2 \
    v_n (x) eq cos(n x) \
    omega_n eq n 
  $

  Di nuovo come nell'esercizio precedente

  $ 
    u(x,0) &eq cos x quad Arrow quad A_1 eq 1,quad A_n eq 0 "se" n != 1 \
    put(x,0) &eq sin^2 x eq^"formula"_"duplicazione" (1 - cos(2 x))/2 \
    &Arrow quad B_0 eq 1, quad B_2 eq -1/4, quad B_n eq 0 "se" n != 0,2  
  $

  E quindi la soluzione è 

  $ u(x,t) eq 1/2 t + cos t cos x - 1/4 sin(2t)cos(2x) $
  
  2. Energia 
  Per determinare l'energia, calcolo le derivate parziali 

  $ 
    &put(x,t) eq 1/2 - sin t cos x - 2 cos(2t) cos(2x) \
    &pux(x,t) eq -cos t sin x + 2 sin(2 t)sin(2 x)  
  $

  Dalla formula $E eq T + U$ ricavo 

  $ 
    E(t,u(x,t)) &eq int_0^pi (put)^2 + (pux)^2 dif x \ 
    &"... calcoli ..." \
    &eq pi/4 + pi/2 + 2pi + "termini che si annullano" \
    &eq 11/4 pi
  $

#pagebreak(weak : true)

*Foglio 3 - Esercizio 3* \
  Determinare la soluzione del seguente problema di C-N 

  $ cases( 
    put2 eq pux2 &(x,t) in (0,pi)times RR_+,
    u(x,0) eq 3"," quad put(x,0) eq 3 + cos^2 x qquad &forall x in [0,pi],
    pux(0,t) eq pux(pi,t) eq 0 &forall t>=0 
  ) $
  
  *Svolgimento* 

  $ 
    &lambda_k eq - k^2, quad v_k (x) eq cos(k x), quad w_k eq k \ 
    &u(x,0) eq 3 quad Arrow quad 1/2 A_0 eq 3 quad Arrow quad A_0 eq 6 \
    &par_t u (x,0) eq 3 + cos^2 x eq 7/2 + cos(2 x)/2  quad Arrow quad B_2 eq 1/4, quad B_0 eq 7 \
    "Da cui la soluzione" \
    &u(x,t) eq 1/2 (3 + 7t)+(sin(2t)cos(2t))/4
  $

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
  &eq  par/(par t) [1/(4pi c^2 t) 2 pi 3 t^2 e^(-3 t)dot (2 + 0)] & (c eq sqrt(3)) \
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
//== Laplace e Poisson
