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

= Il metodo di Fourier 

== Problema in dimensione finita 
Prima di analizzare il problema in dimensione infinita, che è quello che ci servirà per risolvere l'equazione delle onde, ha senso richiamare alcuni degli elementi principali in dimensione finita. 

== Problema di Cauchy-Dirichlet omogeneo
Vogliamo ora appplicare la precedente strategia nel caso dell'equazione delle onde. \
In particolare studieremo il metodo per risolvere il problea di Cauchy-Dirichlet omogeneo 

$ cases(
    put2 eq c^2 pux2 & (0,L) times RR_+,
    u(x,0) eq g(x) "," quad put(x,0) eq h(x)"," qquad & x in [0,L],
    u(0,t) eq 0 "," quad u(L,t) eq 0 & t >= 0
) $<pbmCDomo>

Cerco le coppie $(lambda, v(x))$ tali che 

$ cases( 
    v''(x) eq lambda v(x) qquad "se" x in (0,L),
    v(0) eq v(L) eq 0 
) $<pbmautass>

#oss[le soluzioni sono uniche a meno di un fattore moltiplicativo, nel senso che se $(lambda, v(x))$ è soluzione, allora lo è anche $(lambda, C v(x)), qquad C in RR$
]

osservo innanzitutto che l'integrale generale di $v''(x) eq lambda v(x)$ è 

$ v(x) eq cases(
    C_1 e^(sqrt(lambda)x) + C_2 e^(-sqrt(lambda)x) & lambda > 0, 
    C_1 + C_2x & lambda eq 0,
    C_1 cos(k x) + C_2 sin (k x) qquad & lambda eq - k^2 < 0  
) $

Dove $C_1 "e" C_2$ sono costanti arbitrarie in $RR$.

A questo punto verifico quali delle soluzioni del @eqt:pbmautass[problema agli autovalori associati] sono banali e quali non lo sono.\
Imponendo le condizioni al bordo $ v(0) eq v(L) eq 0$si ha che le soluzioni sono banali per $lambda >=0$.\
Rimane quindi da verificare il caso $lambda <=0$. \
La condizione al bordo $v(0) eq 0$ implica che $C_1 eq 0$, e quindi rimane

$ v(L) eq sin(k L)eq 0quad  "che implica" quad k eq plus.minus (n pi)/L $ 

Ossia l'insieme delle soluioni è dato da 

$ lambda_n eq - (n^2 pi^2)/(L^2), qquad v_n(x) eq sin((n pi)/L x)  $

Voglio allora esprimere la soluzione del @eqt:pbmCDomo[problema di Caughy-Dirichlet omogeneo] nella forma

$ u(x,t) eq sum_(n>=1) W_n (t)v_n (x) $

Cosicché le condizioni al bordo siano soddisfatte. 
