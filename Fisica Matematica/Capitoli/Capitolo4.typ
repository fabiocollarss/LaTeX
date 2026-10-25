#import "template.typ": *

#set heading(numbering: "1.1")
#set align(left)
#show: great-theorems-init
#show link: text.with(fill: blue)

= Trasformata di Fourier
== Definizione e primi risultati 
#def(title: "Trasformata di Fourier")[\
  Sia $f in L^1(RR)$, è detta *Trasformata di Fourier di $f$* la funzione
  $ hat(f)(lambda) := 1/sqrt(2pi)integral dd(x)e^(minus i lambda x)f(x) $
  In dimensione n, quindi se $f in L^1(RR^n)$, è definita come
  $ hat(f)(lambda) := 1/(2pi)^(n/2)integral dd(x)e^(minus i lambda dot x)f(x) $
]\
*Notazione:* Per indicare la trasformata di fourier di $f "valutata in" lambda "scriverò" (cal(F)f)(lambda)$
\
#rmk(title : "Formule di Eulero")[\ Sia $z in CC$ allora
  1. $sin(z) eq ( e^(i z) space - space  e^(-i z) )/(2i)$

  2. $cos(z) eq ( e^(i z) space + space  e^(-i z) )/2 $
]\
#theo(title:"Caratterizzazione delle Trasformate")[
  sia $f in L^1(RR)$, allora\
  1. $hat(f)$ è limitata e continua.\
  2. se $f_n in L^1(RR) and norm(f_n - f)_(L^1) ->0 quad arrow.double quad hat(f_n)->hat(f) "uniformemente"$\
  3. $lim_(lambda -> infinity) hat(f)(lambda) = 0$
]
#proof[\
  1. La *limitatezza* si dimostra facilmente, infatti:\
  $ 1/sqrt(2pi)|integral dd(x)e^(-i lambda x)f(x)|<=1/sqrt(2pi)integral dd(x) |e^(-i lambda x)f(x)|=1/sqrt(2pi)integral dd(x)f(x) $\
  Visto che $f in L^1(RR)$ la limitatezza è verificata.
  
  Per la *continuità*, invece, procedo come segue:\
  $ |hat(f)(lambda)-hat(f)(lambda_0)|=^("def")...<="coi moduli dentro" $\
  Inoltre, osservo che valgono:\ 
  a)$|e^(-i lambda x)-e^(-i lambda_0 x)||f(x)|-->_(lambda->lambda_0)0 "q.o."$\
  b)$|e^(-i lambda x)-e^(-i lambda_0 x)||f(x)|<=2|f(x)|$\
  Per convergenza dominata, segue la continuità.

  2. Ragiono sulla differenza in modulo:\
  $ |hat(f)_n (lambda)-hat(f)(lambda)|=^("def")...<="modulo dentro"= 1/sqrt(2pi) norm(f_n - f)_(L^1) $
  La convergenza in L1 di f implica quella uniforme di f cappuccio.

  3. Inizio considerando la funzione caratteristica $Chi_((a,b)) (x) $ e la sua Trasformata di Fourier.\
  La trasformata va a zero per Lambda divergente.\
  Visto che lo stesso vale anche per le funzioni semplici, e che posso scrivere una qualsiasi funzione come limite di una successione di funzioni semplici, ottengo la tesi.\
]\
== Formula di inversione 
#theo(title: "Formula di inversione")[\
  Sia $f in L^1(RR)$ e suppongo che valga la *Condizione del Dini*, ovvero:
  $ forall x in RR quad exists delta>0 quad t.c.quad integral^delta_(minus delta) (|f(x plus t)-f(x)|)/(|t|) dd(x) <= infinity $
  Allora 
  $ f(x)=1/(2pi)integral dif lambda e^(i lambda x) integral dif y e^(-i lambda y) f(y) $
]
#proof[\
  Per dimostrare il risultato inizio definendo 
  $ J_A (x) := 1/(2 pi) integral_(|lambda < A|) dif lambda space e^(i lambda x) integral dif y space e^(-i lambda y) f(y) $
  L'idea della dimostrazione si basa nel provare che $lim_(A arrow infinity) J_A (x) eq f(x) $. \ 
  Cambiando l'ordine di integrazione si ha 
  $ J_A (x) &eq 1/(2 pi) integral dif y space f(y) integral_(|lambda|<A)dif lambda space e^(i lambda (x-y)) \
  &eq 1/pi integral dif y space f(y) (sin (A (y-x)))/(y-x) quad quad & ("cambio variabile " arrow  z=y-x) \ 
  &eq 1/pi integral dif z space f(z+x) (sin (A z))/(z) & ("aggiungo e sottraggo " f(x)) \ 
  &eq 1/pi integral dif z space [f(x) + f(z+x) - f(x)]sin(A z)/z \ 
  &eq 1/pi f(x) integral dif z space sin(A z)/z space plus space 1/pi integral dif z ( f(z+x)-f(x) )/z sin(A z) & (1/pi integral dif z sin(A z)/z eq 1) \ 
  &eq f(x) +  1/pi integral dif z ( f(z+x)-f(x) )/z sin(A z) $

  Rimane da dimostrare che l'ultimo integrale va a zero per $A arrow infinity$. 

  $ & 1/pi integral dif z ( f(z+x)-f(x) )/z sin(A z) \ 
  &= 1/pi integral^delta_(-delta) dif z space ( f(z+x)-f(x) )/z sin(A z) + 1/pi integral_(|z|>delta) dif z space f(z+x)/z sin(A z) + f(x)/pi integral_(|z|>delta) dif z space sin(A z )/z $

  Definisco 
  $ g_1(z):= (Chi_delta (z)) / pi (f(z+x)-f(x))/(z) quad ; quad g_2(z):= (1 - Chi_delta (z))/pi f(z+x)/z $
  Dove $Chi_delta (z) " è la funzione caratteristica in " (-delta , delta)$. \ 
  Inoltre $g_1 in L^1 (RR) " per la condizione del Dini e " g_2 in L^1 (RR) " perché " f in L^1(RR) $. \
  A questo punto non rimane che valutare i tre integrali

  $ integral dif z space g_k (z) sin(A z) &= integral dif z space g_k (z) (e^(i A z)- e ^(-i A z))/(2i) \ 
  &= sqrt(2 pi)/(2i) 1/sqrt(2 pi) integral dif z space g_k (z) e^(i A z) minus sqrt(2 pi)/(2i) 1/sqrt(2 pi) integral dif z space g_k (z) e^(-i A z) \ 
  &= sqrt(2pi)/(2i) dash(hat(g)_k (A) ) - sqrt(2 pi)/(2i) hat(g)_k (A)  $

  Per il lemma di Riemann-Lebesgue sappiamo che $g_k (A) arrow_(A arrow infinity) 0$ quindi 
  $ lim_(A arrow infinity) integral dif z space g_k (z) sin(A z) = 0  $
  Questo annulla il famoso secondo membro nell'equazione precedente e quindi verifica la tesi. \
]\
#oss[ 
  1. Se $f in C^1$ a tratti e continua allora la condizione del Dini è soddisfatta, quindi vale la formula di inversione
  2. Una proprieta’ importante della trasformata di Fourier e’ quella di trasformare l’operazione di derivata nell’operazione di moltiplicazione per la variabile indipendente. Tale proprieta’ sara’ ampiamente sfruttata nei capitoli seguenti.
]\
#prop(title : $"trasformata di Fourier di " f'$)[\
  Sia $f in L^1(RR) "continua e differenziabile e" f' in L^1(RR)$, allora vale 
  $ (cal(F)f')(lambda) eq i lambda (cal(F)f)(lambda) $
]
#proof[\
  Osservo innanzitutto che $f(x) eq f(0) plus integral^x_0 dif y space f'(y)$. \ 
  Siccome $f' in L^1(RR)$ allora il secondo membro è limitato per $|x|arrow infinity$.\
  Ma allora anche $f(x)$ è limitato per $|x| arrow infinity$. \ 
  Se tale limite non fosse diverso da zero si avrebbe $f in.not L^1(RR) $. \ 
  Dunque ottengo che $ lim_(|x| arrow infinity) f(x) eq 0 $
  
  Ora calcolo la trasformata di $f'$
  $ (cal(F)f')(lambda) &eq 1/sqrt(2 pi) integral dif x space e^(.i lambda x) f'(x) \
  &eq 1/sqrt(2 pi) lim_(R arrow infinity) ( integral^R_(-R)dif x space e^(-i lambda x)f'(x) quad quad & ("integrazione per parti") \ 
  &eq 1/sqrt(2 pi) lim_(R arrow infinity) ( [e^(-i lambda x)f(x)]^R_(-R) - integral^R_(-R)dif x ( dif/(dif x)e^(-i lambda x) )f(x) \
  &eq 1/sqrt(2 pi) i lambda integral dif x space e^(-i lambda x)f(x) \
  &eq i lambda (cal(F)f)(lambda) $
]\
#oss[\
  1. Se $f$ è sufficientemente regolare il metodo si può reiterare. In particolare si ottiene
  $ (cal(F)f^k)(lambda) eq (i lambda)^k (cal(F)f)(lambda) $
  2. Dall'osservazione precedente ottengo che più una funzione è regolare, più velocemente la sua trasformata tenderà a zero velocemente per $|lambda| arrow infinity$.
]\
#prop[\
  sia $f in L^1(RR), space f in C^k(RR), space quad f', f^2, dots, f^k in L^1(RR)$, allora 
  $ |(cal(F)f)(lambda)| eq (|(cal(F)f^k)(lambda)|)/(|lambda|^k) $
]\
== Derivabilità di una trasformata 
#prop[\
  Sia $f in L^1(RR) "e" x f in L^1(RR). "Allora" cal(F)f $ è derivabile e 
  $ (cal(F)f)'(lambda) eq -i (cal(F)(x f(x)))(lambda) $
]
#proof[\
  Calcolo il rapporto incrementale 
  $ ((cal(F)f )(lambda) - (cal(F)f) (lambda_0))/(lambda  - lambda_0) &eq 1/sqrt(2 pi) integral dif x space (e^(-i lambda x) e^(-i lambda_0 x)/(lambda - lambda_0) f(x) \
  &= 1/sqrt(2 pi)integral dif x space e^(-i lambda x) (1 - e^(-i (lambda - lambda_0) x ) )/(lambda - lambda_0)f(x) $
  osservo il membro dentro l'integrale
  $ e^(-i lambda x) (1 - e^(-i (lambda - lambda_0) x ) )/(lambda - lambda_0)f(x) arrow_(lambda arrow lambda_0) e^(-i lambda_0 x)(-i x)f(x) "q.o." $
  Ed inoltre 
  $ abs(e^(-i lambda x) (1 - e^(-i (lambda - lambda_0) x ) )/(lambda - lambda_0)f(x)) <= |x||f(x)| $
  Quindi, per convergenza dominata, risulta 
  $ lim_(lambda arrow lambda_0)((cal(F)f )(lambda) - (cal(F)f) (lambda_0))/(lambda  - lambda_0) &eq 1/sqrt(2 pi) integral dif x space e^(-i lambda_0 x)(-i x)f(x) \
  &eq -i(cal(F)(x f(x))(lambda_0) $
]\
#prop[\
  Siano $f,x f, dots, x^k f in L^1(RR)$. Allora
  $ cal(F)f in C^k(RR) quad "e" quad (cal(F)f)^p (lambda) eq (cal(F)((-i x)^p f)(lambda), quad quad p=1,dots,k  $
]\
#oss[\
I risultati valgono in dimensione n. Con le opportune ipotesi di regolarità, infatti, si ha: 
$ cal(F)((partial f)/(partial x_j))(lambda) eq i lambda_j (cal(F)f)(lambda) \ 
  cal(F)( (partial^k f)/(partial x_j^k))(lambda) eq (i lambda_j)^k (cal(F)f)(lambda) \
  partial/(partial x_j) (cal(F)f) (lambda) eq cal(F)(-i x_j f(x))(lambda) \ 
  partial^k/(partial x_j^k)lr( (cal(F)f) (lambda) ) eq cal(F)((i x_j)^k f(x)) (lambda) \
  lr( [cal(F) (Delta f) ] (lambda)) eq lr( - abs(lambda)^2 [cal(F)f] (lambda) ) $

]\
== Convoluzione e trasformata 
Un’altra importante proprieta’ della trasformata di Fourier e’ quella di trasformare una convoluzione di funzioni in un prodotto.
#def(title : "Convoluzione")[\
  Siano $f "e" g in L^1(RR)$, si dice *convoluzione di $f,g$* la funzione
  $ f(x):= integral dif xi space f(xi)g(x - xi) =: (f * g)(x)  $
]\
#prop[\
  $cal(F)(f * g) = sqrt(2 pi) ( cal(F)f dot cal(F) g )$
]
#proof[\
  $ 1/sqrt(2 pi)integral dif x space e^(-i lambda x) integral dif xi space f(xi)g(x-xi) &= 1/sqrt(2 pi) integral dif xi space f(xi)integral dif x space e^(-i lambda x)g(x-xi) quad quad & ("cambio variabile" eta eq x minus xi) \ 
  &= 1/sqrt(2 pi) integral dif xi f(xi)integral dif eta e^(-i lambda (eta + xi)) g(eta) \ 
  &= 1/sqrt(2 pi) integral dif xi e^(-i lambda xi)f(xi)integral dif eta e^(-i lambda eta)g(eta) $
]\
#oss[In dimensione n risultata 

  $ cal(F)(f * g) eq (2pi)^(n/2) (cal(F)f dot cal(F)g ) $
]\
== Trasformata in $S(RR^n)$
#def()[\
  E' detto *Spazio di Schwartz in dimensione uno* l'insieme di funzioni
  $ bold(S(RR)) eq { f:RR arrow CC, space f in c^infinity (RR) space "t.c." space sup_x abs(x^p f^((q))(x)) < infinity quad forall p,q in NN } $ 

  Analogamente, in dimensione n, si ha 
  $ S(RR^n) eq {f:RR^n arrow CC, space f in c^infinity (RR^n) space "t.c." sup_x abs(x^(beta_1)_1 dot dot dot x^(beta_n)_n D^alpha f(x))<infinity quad \ forall beta_1,dots,beta_n in NN, alpha in NN^n } $
]\
#rmk[$ D^alpha f(x) eq (partial^abs(alpha) f(x))/(partial x^(alpha_1)_1 dot dot dot partial x^(alpha_n)_n ) quad quad quad abs(alpha) eq alpha_1 plus dots plus alpha_n $]\
#oss[$D(Omega) subset S(RR^n)$]\
#def(title : $"Convergenza in" S(RR^n)$)[\
  Siano $v_k, v in S(RR^n). "Allora" v_k arrow v "in" S "se"$
  $ x^(beta_1)_1 dot dot dot x^(beta_n)_n D^alpha v_k(x) quad arrow_k quad  x^(beta_1)_1 dot dot dot x^(beta_n)_n D^alpha v(x) quad quad quad "uniformemente in" RR^n $
]\
#oss[se $v_k, v in D(Omega) "e" v_k arrow v "in" D(Omega) space " allora " space v_k arrow v in S(RR^n) $]\
#prop[\
  $cal(F) $ è un'applicazione biunivoca da $S(RR^n) "in" S(RR^n) $
]
#proof[\
  Prima o poi la scriverò 
]\
#prop[\
  Siano $f,g in S(RR^n)$. Allora
  $ integral dif x space dash(f(x)) space g(x) eq integral dif lambda space dash(hat(f)(lambda)) space hat(g)(lambda) $
]
#proof[\
  Prima o poi la scriverò 
]\
#pagebreak(weak : false)

== Trasformata in $L^2(RR^n)$
In generale *non* possiamo assicurare che le funzioni in $L^2(RR^n) "siano sempre in" L^1(RR^n)$ \
Per questo innanzitutto enunciamo il seguente risultao
#theo(title : "Teorema di Plancherel")[\
  sia $f in L^2(RR^n), " sia" f_N eq Chi_N f in L^1(RR^n)inter L^2(RR^n), " dove" Chi_N $ è la funzione caratteristica della palla centrata in zero di raggio N. Allora

  $i) quad hat(f)_N in L^2(RR^n) "e" norm(f_N)_(L^2) eq norm(hat(f)_N)_(L^2)  $

  $i i) exists g in L^2(RR^n) "t.c. " norm(hat(f)_N -g )_(L^2) arrow 0$  

  $i i i) norm(g)_(L^2) eq norm(f)_(L^2) $

  $i v) "se" f in L^1(RR^n) inter L^2(RR^n) " allora " g eq cal(F)f $
]
#proof[(Non è da sapere per l'esame)

]\
#def()[\
  Si dice *Trasformata di Fourier di $f in L^2(RR^n)$* la fuzione
  $ hat(f) :eq lim_N hat(Chi_N f) $
  Dove il limite è inteso nella topologia di $L^2$.
]\
#pagebreak(weak : true)
== Trasformata di una distribuzione 
Data una funzione $F in D'(Omega)$, voglio definire la sua trasformata di Fourier $hat(cal(F))F$ scaricando 
l'operazione di trasformata sulla fuzione test nel solito modo, ossia 
$ <hat(F), phi> space eq space <F,hat(phi)> $
Questa operazione, però, non è sempre possibile, infatti *non* è sempre vero che la trasformata di una funzione in $D(Omega)$ sia sempre a supporto compatto.

Per questo motivo allargo lo spazio delle funzioni test a $S(RR^n)$, in modo da restringere lo spazio dei funzionali lineari. 

#def[\
  Una distribuzione si dice *distribuzione temperata* se si può estendere ad un funzionale lineare e continuo su $S(RR^n)$

  Lo spazio delle distribuzioni temperate di denota con $S'(RR^n)$.
]\
#def[\
  Sia $F in S'(RR^n)$. Allora $hat(F) eq cal(F)F$ è la distribuzione temperata definita da 
  $ <hat(F), phi> space eq space <F,hat(phi)> quad quad quad forall phi in S(RR^n) $
]\
#pagebreak(weak : false)
== Esercizi
#xpl(title : "Esercizio 2")[\ Si considera la funzione
  $ f(x) = cases(1 quad quad & x >=0, 0 & x<=0 ) $
  Verificare che la sua trasformata di Fourier è la distribuzione definita da: 
  $ hat(f) eq - (i)/(sqrt(2 pi)) cal(P)(1/x) + sqrt(pi/2)delta_0  $
  Dove la distribuzione $cal(P) (1/x)$ è definita come segue
  $ <cal(P)(1/x),phi> space eq space integral_(abs(x)<=1) dif x space (phi(x) minus phi(0) )/(x) plus integral_(abs(x)>1) dif x space phi(x)/x $
]
#proof[
  $ <cal(F)f,phi> space  &eq integral dif lambda space phi(lambda) 1/sqrt(2pi) integral dif x space e^(-i lambda x)f(x) \ 
  &eq 1/sqrt(2pi) integral dif lambda space phi(lambda)  integral_(x >=0) dif x space e^(-i lambda x) \
  &eq 1/sqrt(2pi) integral dif lambda space phi(lambda) $
]







