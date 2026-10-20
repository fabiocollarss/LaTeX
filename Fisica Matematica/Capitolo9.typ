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

= Il metodo di Fourier 

== Problema in dimensione finita 

Il metodo di Fourier è utilizzato, in queste note, per trovare le soluzione dell'equazione della cora vibrante in vari casi in cui la corda abbia lunghezza finita $L$. \ 
La risoluzione si basa ovviamente sull'utilizzo delle serie di Fourier, e quindi si utilizzano spazi di funzioni infinito dimensionali.

Prima di analizzare il problema in dimensione infinita, che è quello che ci servirà per risolvere l'equazione delle onde, ha senso richiamare alcuni degli elementi principali in dimensione finita. 

Cosa che scrverò semmai avrò tempo di farlo :)

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
Imponendo le condizioni al bordo $ v(0) eq v(L) eq 0$, si ha che le soluzioni sono banali per $lambda >=0$.\
Rimane quindi da verificare il caso $lambda <=0$. \
La condizione al bordo $v(0) eq 0$ implica che $C_1 eq 0$, e quindi rimane

$ v(L) eq sin(k L)eq 0quad  "che implica" quad k eq plus.minus (n pi)/L $ 

Ossia l'insieme delle soluioni è dato da 

$ lambda_n eq - (n^2 pi^2)/(L^2), qquad v_n(x) eq sin((n pi)/L x)  $

Voglio allora esprimere la soluzione del @eqt:pbmCDomo[problema di Caughy-Dirichlet omogeneo] nella forma

$ u(x,t) eq sum_(n>=1) W_n (t)v_n (x) $

Cosicché le condizioni al bordo siano soddisfatte. 

Sostituendo nell'equazione della corda si ha

$
  &put2 eq c^2 pux2 \
  &arrow.double sum_(n>=1) par^2_t W_n (t)v_n (x) eq c^2 sum_(n>=1) W_n (t) par^2_x v_n (x) \ 
  &arrow.double sum_(n>=!) par^2_t W_n (t) v_n (x) eq sum_(n>=1)(-(n^2 pi^2 c^2)/L^2) W_n (t) v_n (x)
$

Ora fisso $k>=1$, moltiplico ambo i membri per $v_k (x)$ e intengro in $(0,L)$.\
Usando l'ortogonalità delle funzioni $(v_n)_n$ ottengo 

$ par^2_t W_k (t) eq - omega^2_k W_k (t), qquad omega_k :eq (k pi c)/(L) $

Che è l'equazione di un oscillatore armonico, il cui integrale generale è 

$ W_k (t) eq A_k cos(omega_k t) + B_k sin(omega_k t), qquad A_k , B_k in RR $

Quindi posso scrivere la soluzione $u$ neòòa forma 

$ u(x,t) eq sum_(n>=1) [ A_n cos(omega_n t) + B_n sin(omega_n t) ]sin((n pi)/L x) $

E la sua derivata parziale rispetto al tempo è

$ put (x,t) eq sum_(n=1) [ - A_n omega_n cos(omega_n t) + B_n omega_n sin(omega_n t) ]sin((n pi)/L x) $ 

Per determinare $A_k "e" B_k $ impongo le condizioni iniziali con $g "e" h$

$ g(x) eq u(x,0) eq sum_(n>=1) A_n sin((n pi)/L x), \ h(x) eq put(x,0)eq sum_(n>=1) B_n omega_n sin((n pi)/L x) $

Di nuovo applico lo stesso metodo di prima, fisso $k >=1$, moltiplico ambo i membri per $v_k (x)$ ed integro in $(0,L)$. 
Sempre per ortogonalità deve aversi 

$ A_k eq 2/L int^L_0 g(x) sin((k pi)/L x) dif x, \
B_k eq 2/(omega_k L) int^L_0 h(x) sin((k pi)/L x) dif x $ 

#oss[
  Se volessimo utilizzare il metodo delle riflessioni, e quindi prolungare nell'intervallo $(-L,L) "usando" tilde(h) "e" tilde(g) $, i coefficienti si scriverebbero come 

  $
    A_n eq 1/L int^L_(-L) dots dif x, qquad B_n eq 1/(omega_n L) int^L_(-L) dots dif x 
  $

  Quindi il fattore $2$ se ne va per via del prolungamento
]

== Problema di Cauchy-Neumann omogeneo 

Considero il problema di Cauchy-Neumann omogeneo 

$ cases(
    put2 eq c^2 pux2 & (0,L) times RR_+,
    u(x,0) eq g(x) "," qquad put(x,0) eq h(x) qquad & x in [0,L],
    pux(0,t) eq 0 "," quad pux(L,t) eq 0 & t>=0 
) $

In questo caso il problema agli autovalori associato consiste nel determinare autovalore e relative autofunzioni dell'operatore $(dif^2)/(dif x^2) $ sull'intervallo $[0,L]$ con condizioni al bordo di Neumann omogenee. \
Dunque cerco le coppie $(lambda, v(x))$ tali che 

$ cases(
    v''(x) eq lambda v(x) qquad x in (0,L),
    v'(0) eq v'(L) eq 0
) $<pbmautass2>

L'integrale generale di questo problema ha la forma 

$ cases(
   sqrt(lambda)(C_1 e^(sqrt(lambda) x)-C_2 e^(-sqrt(lambda)x)) & lambda > 0,
   C_2 & lambda eq 0,
   k[C_1 sin(k x)+C_2 cos(k x)] qquad & lambda eq - k^2 <0 
) $

Anche in questo caso cerco soluzioni non banali.\
Osservo che le soluzioni sono identicamente nulle per $lambda >=0$. \
Nel terzo caso, la condizione al bordo $v'(0)$ implica $C_2 eq 0$, quindi si ha che $v(x) eq C_1 cos(k x)$. \
Per avere soluzioni non banali, quindi $C_1 != 0$, è necessario che $sin(k L) eq 0, "ovvero" k eq plus.minus (n pi)/L, quad n in NN$ \
Quindi le soluzi del @eqt:pbmautass2[Problema agli autovalori] associato è  

$ lambda_n eq -(pi^2 n^2)/L^2, qquad v_n(x) eq cos((n pi)/L x), qquad n in ZZ_(>= 0) $

Ha senso osservare che questa volta ho anche l'autovalore $lambda_0$ e l'autofunzione associata $v_0(x) eq 1$.

Cerco di nuovo la soluzione $u(x,t)$ nella forma 

$ u(x,t) eq 1/2 W_0 (t) + sum_(n>=1) W_n (t) v_n (x) $

A questo punto, dunque sostituisco nell'equazione della corda 

$
  put2 eq c^2 pux2 \
  Arrow 1/2 par^2_t W_0 + sum_(n>=1)par^2_t W_n (t) v_n (x) eq - sum_(n>=0) W_n (t) par^2_x v_n (x) \
  Arrow 1/2 par^2_t W_0 + sum_(n>=1)par^2_t W_n (t) v_n (x) eq - sum_(n>=0) (n^2 pi^2 c^2)/L^2 W_n (t) v_n (x)
$ 

Osservo che la sommatoria di destra può partire da zero, perché tanto il termine è nullo per $n=0$.

Come fatto in precedenza, fisso $k>=0$, moltiplico ambo i membri per $v_k (x)$ ed intengro il $(0,L)$. 
Ottengo in questo modo 

$ par^2_t W_k (t) eq -omega_k W_k (t), qquad "dove" quad omega_k :eq (k pi c)/L $ 

Questa è l'equazione di un oscillatore armonico per $k>=1$ e del moto libero per $k eq 0$.\
Quindi posso scrivere la soluzione come 

$ u(x,t) eq 1/2 (A_0 + B_0 t) + sum_(n>=1)[A_n cos(omega_n t)+ B_n sin(omega_n t)]cos((n pi/L x)) $

Per determinare i coefficienti devo imporre le condizioni iniziali usando $g$ e $h$. \
Poi nuovamente fisso $k>=0$, moltiplico per $v_k$ ed integro in $(0,L)$ ottenendo 

$ &A_k eq 2/L int^L_0 g(x) cos((k pi)/L x) dif x &k>=0 \
  &B_k eq cases( 
    2/L int^L_0 h(x) dif x  &k eq 0 ,
    2/(omega_k L) int^L_0 h(x)cos((k pi)/L x) dif x qquad &k>=1
) $


== Vibrazioni forzate 
Studiamo ora le vibrazioni forzate di una corda con estremi fissati, dunque il seguente problema di Cauchy-Dirichlet 

$ cases( 
    put2 eq c^2 pux2 + f & (0,L) times RR_+,
    u(x,0) eq g(x) "," qquad put(x,0) eq h(x) "," qquad &x in RR,
    u(0,t) eq 0 "," quad u(L,t) eq 0 &x in RR "," t>=0
) $

Come nel caso della corda infinita, la soluzione si ottiene come somma della soluzione del problema omogeneo (senza forzante) e di quello con la forzante ma con $g eq h eq 0$. 
Siamo interessati a trovare la soluzione del secondo di questi problemi, dunque 

$ cases( 
    put2 eq c^2 pux2 + f & (0,L) times RR_+,
    u(x,0) eq 0 "," qquad put(x,0) eq 0 "," qquad &x in RR,
    u(0,t) eq 0 "," quad u(L,t) eq 0 &x in RR "," t>=0
) $

Cerco sempre una soluzione nella forma 

$ u(x,t) eq sum_(n>=1) W_n(t) sin((n pi)/L x) $

Suppongo inoltre che sia ben ddefinito lo sviluppo in serie di deni della forzante, Ossia

$ f(x,t) eq sum_(n>= 1) f_n (t) sin((n pi)/L x), qquad "con" quad f_n(t) :eq 2/L int^L_0 f(y,t)sin((n pi)/L y) dif y $

A questo punto considero le condizioni iniziali ($g = h = 0$), e quelle del bordo e ottengo che 

$ W_n (t) &eq int^t_0 (f_n(s))/(omega_n)sin( omega_n (t-s) ) dif s \ 
&eq 2/(omega_n L) int^t_0 int^L_0 f(y,t) sin((n pi)/L x) sin ( omega_n (t-s)) dif y dif s $

Analogamente a questo metodo si possono risolvere altri problemi con condizioni al bordo omogenee

== Problema misto 

== Equazione delle onde generalizzata 


