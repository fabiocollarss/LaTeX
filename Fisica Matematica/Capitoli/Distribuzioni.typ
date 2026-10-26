#import "template.typ": *

#set heading(numbering: "1.1")
#set align(left)
#show: great-theorems-init
#show link: text.with(fill: blue)

= Distribuzioni

== Introduzione alle distribuzioni

Per comprendere euristicamente il concetto di distribuzione, partiamo dal seguente esempio.
#xpl[\
 Consideriamo la funzione di Heaviside. 
  $ H(x) := cases(0 "se" x<0, 1 "se" x >= 0,) $
  Questa è non derivabile nell'origine, tuttavia possiamo definire il rapporto incrementale vicino all'origine, che vale: 
  $ I_epsilon (x) = (H(x+epsilon)-H(x-epsilon))/(2epsilon) = cases(1/(2epsilon) wide x in [-epsilon , epsilon], 0 wide "altrove") $
  Da cui otteniamo due risultati.\
  $ integral_RR d x I_epsilon (x)=1 wide "e" wide lim_(epsilon->0)=cases(0 quad x!=0, +infinity quad x=0) $
]

#def(title: "Supporto")[\
  Sia $Omega subset.eq RR^n "un aperto e" v:Omega arrow RR "una funzione"$.

  1. Si dice *supporto della funzione $v$* l'insieme $ "supp"(v) := dash({x in Omega | v(x)!=0}) $

  2. La funzione $v$ si dice *a supporto compatto* se $"supp"(v) "è un sottoinsieme compatto di" Omega$
] 

#def(title:"Funzioni Test")[\
  Sia $C^infinity_0(Omega) "l'insieme delle funzioni in" C^infinity (Omega) "a supporto compatto."$

  Le funzioni in $C^infinity_0(Omega)$ sono dette *funzioni test*.
]

#prop[\
  L'insieme $C^infinity_0 (Omega) "è denso in" L^p (Omega), space 1<=p<=infinity$, ossia\
  se $f in L^p (Omega) "allora esiste" f_k in C^infinity_0 (Omega) "t.c." norm(f - f_k)_(L^p) arrow_(k arrow infinity) 0.$
]

*Notazione:* Siano $alpha = (alpha_1, dots, alpha_n) in NN^n, space |alpha|=alpha_1 + dots + alpha_n.$ \ 
Denoto con $D^alpha := (partial^(alpha_1))/(partial x_1^(alpha_1)) dot dots dot (partial^(alpha_n))/(partial x_n^(alpha_n)) $ la generica derivata di ordine $|alpha|$.

#def(title: $"Covergenza in " C^infinity_0(Omega)$  )[\
  Siano $phi.alt, phi.alt_k in C^infinity_0(Omega)$. Allora $lim_(k arrow infinity)phi.alt_k eq phi.alt "in" C^infinity_0(Omega)$ se
  
  1. $exists T subset.eq Omega "compatto t.c. supp" phi.alt_k subset.eq T$

  2. $D^alpha phi.alt_k "converge uniformemente " D^alpha phi.alt "in" Omega "per ogni" alpha in NN^n$
]\
#oss[Il limite, se esiste, è unico.]\
#def(title: $D(Omega)$)[\
  L'insieme $C^infinity_0(Omega)$ munito della convergenza appena definita, viene denotato con $D(Omega) $\
]\
*Notazione:* Per indicare tale convergenza scriverò $phi.alt_k arrow phi.alt "in" D(Omega)$ \
\
#def(title: "Funzionale Lineare")[\
  Un *funzionale lineare* su $D(Omega)$ è un'applicazione $F:D(Omega) -> RR$ tale che
  $ F(a phi.alt_1 +b phi.alt_2)=a F(phi.alt_1)+b F(phi.alt_2) wide,wide a,b in RR,quad phi.alt_2,phi.alt_1 in D(Omega) $
  \Si dice inoltre *Continuo*, se\ $ phi.alt_k --> phi.alt quad arrow.double quad F(phi.alt_k) -->F(phi.alt) $
]\
*Notazione:* D'ora in poi denoto $F(phi.alt)" con " <F,phi.alt>$. Si legge "F applicato a phi" :)\
\
#def(title: "Distribuzione")[\
  Un funzionale lineare su $D(Omega)$ è detto *distribuzione* su $Omega$.
]\
*Notazione:* Denoto con $D'(Omega)$ l'insieme delle distribuzioni in $Omega$.\
\
\
#oss[$D'(Omega)$ è duale di $D(Omega)$, nonché anche uno spazio vettoriale.]
#def(title: $"Convergenza in "D'(Omega)$)[\
  Siano $F,(F_k) in D'(Omega)$, si che $F_k --> F$ se $ <F_k,phi.alt>quad-->quad<F,phi.alt> wide forall phi.alt in D(Omega) $
]\
#xpl(title: "Delta di Dirac")[\
  Sia $phi.alt in D(RR^n)$, definisco  
  $ delta_y:phi.alt --> <delta_y,phi.alt>quad:=quad phi.alt(y) $
  dove $y in RR^n$ è detto *supporto della Delta di Dirac*.\
  Il funzionale è lineare, la verifica è banale.\
  Mostro che il funzionale è continuo.\
  Mostro che il funzionale è ottenuto come limite di una successione di funzionali.

  In atri termini, la delta di Dirac in $y$ si può pensare come limite di funzioni che si stringono in $y$, con la peculiarità che il loro integrale su $RR^n$ valga 1, e il cui valore in $y$ diverga a $+infinity$.\
  Questo ragionamento rende ragionevole la scrittura che si trova spesso nei testi di fisica:
  $ <delta_y , phi.alt> space = integral dif x space delta(y-x) phi.alt(x) $
]

== Derivata di una distribuzione 
In questo paragrafo introduciamo in concetto di derivata di una distribuzione.\
L'euristica è quella di scaricare la derivata sulla funzione test.\
Otteniamo quindi uno sviluppo simile all'integrazione per parti, e teniamo conto che la funzione $phi.alt in D(Omega)$ è nulla su $partial Omega$. 

#def(title : "Derivata di una distribuzione")[\
  Sia $F in D'(Omega)$, si dice derivata (nel senso delle distribuzioni) di $F$ rispetto a $x_i$ la distribuzione $partial_(x_i)F$ data data
  $ <partial_(x_i)F, phi.alt> = - <F, partial_(x_i)phi.alt>, quad forall phi.alt in D(Omega) $
]\
#oss[
  Dato che le funzioni test sono in $C^infinity (Omega)$ si possono continuare a reiterare le derivazioni, e quindi anche le distribuzioni sono "infinitamente derivabili" visto che 
  $ <partial^2_(x_i)F, phi.alt> eq minus <partial_(x_i) F, partial_x_i phi.alt> = <F, partial^2_x_i phi.alt> $
  Quindi risulta anche
  $ < Delta F , phi.alt > eq <F, Delta phi.alt> $ 
]\

#xpl(title : "Derivata della funzione di Heaviside" )[\
  Sia $H$ la funzione di Heaviside. 
  Come distribuzione essa è data da: 
  $ <H,phi.alt> = integral dif x H(x)phi.alt(x) eq integral^infinity_0 dif x phi.alt(x) $
  Dunque la sua derivata nel senso delle distribuzioni è data da:
  $ <H',phi.alt> &= -<H,phi.alt'> \ &= - integral dif x H(x)phi.alt'(x) \ &eq - integral^infinity_0 dif x phi.alt'(x) 
  \ &eq - [phi.alt(infinity) - phi.alt(0)] 
  \ &eq phi.alt(0) $
  Come introdotto nell'esempio all'inizio del capitolo, la derivata di $H$ è la delta di dirac valutata in zero $delta_0$.
]\

#xpl(title : "Derivata della delta di Dirac")[\
  Come sappiamo $<delta_y, phi.alt> eq phi.alt(y)$. Da questo deduciamo che 

  $ <delta'_y, phi.alt> eq minus <delta_y, phi.alt'> eq minus phi.alt'(y) $
  ragionando allo stesso modo per la derivata seconda, si ottiene: 
  $ <delta''_y, phi.alt> space eq space <delta_y, phi.alt''> space eq space phi.alt''(y) $
  Si procede allo stesso modo per le derivate successive. 
]\

== Moltiplicazione per una funzione $C^infinity$
  
#def(title : $"Distribuzione" u F$)[\
  Sia $F in D'(Omega) " e " u in C^infinity (Omega)$. Allora la distribuzione $u F$ è definita da 
  $ <u F, phi.alt> space eq space <F, u phi.alt>, quad forall phi.alt in D(Omega) $
]\

#oss[
 1. La funzione $u phi.alt$ è ancora in $D(Omega)$
 2. Vale la regola di Leibniz, ossia 
 $ <partial_x_i u F , phi.alt> space &eq space minus <u F, partial_x_i phi.alt > \
  &eq space minus < F,u partial_x_i phi.alt > \ 
  &eq space minus < F , partial_x_i (u phi.alt) > plus <F,(partial_x_i u) phi.alt> \ 
  &eq space <partial_x_i F, u phi.alt > plus < partial_x_i u dot F, phi.alt> \
  &eq space <partial_x_i u dot F + u dot partial_x_i F space,space phi.alt > $
]\
#oss[*NON* è definito il prodotto tra due distribuzioni, infatti la proprieta' $<F*G,phi.alt>$
non è sempre verificata. 
]
#pagebreak(weak : false)
== Esercizio sulle distribuzioni
#xpl(title : $"Esercizio 1, funzione di Green per l'operatore di Laplace in d=1"$)[\
  Sia $ G_y (x) = 1/2 |x-y|, x,y in RR $
  Verificare che per ogni $y in RR "si ha"$ $ dif^2/(dif x^2)G_y  = delta_y " in " D'(RR) $
]
#proof[\
  Per iniziare considero la sola derivata prima, il cui calcolo esplicito è: 
  
  $ dif/(dif x)G_y (x) &eq 1/2 (dif)/(dif x)|x-y| \ 
  &= 1/2 (x-y)/(|x-y|) \
  &= cases(1/2 quad quad & x >= y, -1/2 & x<=y) $ 

  Ora considero una funzione test $phi.alt in D(Omega)$.
  $ < dif^2/(dif x^2) G_y (x),phi.alt(x)> space &eq space - < dif/(dif x) G_y (x),  dif/(dif x) phi.alt(x)> \
  &= - integral^infinity_(-infinity) dif x quad 1/2(x-y)/(|x-y|)phi.alt'(x) \
  &= - 1/2 ( integral^infinity_y phi.alt'(x) dif x - integral^y_(-infinity)phi.alt'(x)dif x ) \
  &= -1/2 (-phi.alt(y) - phi.alt(y)) \
  &= phi.alt(y) \ 
  &= <delta_y, phi.alt  > $
]\
