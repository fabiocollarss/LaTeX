/*#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.1": *
#import "@preview/physica:0.9.8": *

#set heading(numbering: "1.1")
#show: great-theorems-init

#show link: text.with(fill: blue)

#let mathcounter = rich-counter(
  identifier: "mathblocks",
  inherited_levels: 1
)

#let theo = mathblock(
  blocktitle: "Theorem",
  counter: mathcounter,
  inset: 10pt,
  stroke: 1pt,
  radius: 10pt,

)

#let lemma = mathblock(
  blocktitle: "Lemma",
  counter: mathcounter,
  inset: 10pt,
  stroke: 1pt,
  radius: 10pt,

)

#let rmk = mathblock(
  blocktitle: "Remark",
  //prefix: [_Remark._], con questo non funziona il counter.
  counter: mathcounter,
  inset: 5pt,
  fill: lime.lighten(80%),
  radius: 5pt,
)

#let def = mathblock(
  blocktitle: "Definition",
  counter: mathcounter, 
  inset: 10pt,
  stroke: 1pt,
  radius: 10pt,
)

#let xpl = mathblock(
  blocktitle: "Example",
)

#let oss = mathblock(
  blocktitle: "Oss",
)

#let prop = mathblock(
  blocktitle: "Proposition",
  inset: 10pt,
  stroke: 1pt,
  radius: 10pt,
)

#let proof = proofblock()*/

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
