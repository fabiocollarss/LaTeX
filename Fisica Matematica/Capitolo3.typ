#import "template.typ": *

#set heading(numbering: "1.1")
#set align(left)
#show: great-theorems-init
#show link: text.with(fill: blue)

= Distribuzioni
Per comprendere euristicamente il concetto di distribuzione, partiamo dal seguente esempio.
#xpl[\
 Consideriamo la funzione di Heaviside. 
  $ H(x) := cases(0 "se" x<0, 1 "se" x >= 0,) $
  Questa è non derivabile nell'origine, tuttavia possiamo definire il rapporto incrementale vicino all'origine, che vale: 
  $ I_epsilon (x) = (H(x-epsilon)-H(x-epsilon))/(2epsilon) = cases(1/(2epsilon) wide x in [-epsilon , epsilon], 0 wide "altrove") $
  Da cui otteniamo due risultati.\
  $ integral_RR d x I_epsilon (x)=1 wide "e" wide lim_(epsilon->0)=cases(0 quad x!=0, +infinity quad x=0) $
]
\
#def(title: $D(Omega)$)[\ paragrafo funzioni test
]\
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
  $ <delta_y,phi.alt> = integral d x delta(y-x)phi.alt(x) $
]

