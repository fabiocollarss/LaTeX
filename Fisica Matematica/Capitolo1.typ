#import "@preview/great-theorems:0.1.2": *
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
)

#let lemma = mathblock(
  blocktitle: "Lemma",
  counter: mathcounter,
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
)

#let proof = proofblock()

= EDP

#def(title: "EDP")[
   
  Sia $u : D -> RR,$ dove $D subset.eq RR^N$ è un aperto. 

  Un'equazione alle derivate parziali di ordine $k$ nell'incognita $u$ è una funzione del tipo:

  $ Phi(y,u(y),D u(y),\_,D^k u(y))=0, wide y in D $

  dove con $D^p$ si intendono le derivate di ordine $p$ di $u(y).$

  Infatti si ha che il la dimensione di $Phi$ sia: 

  $ Phi:D times RR times RR^N times ... times RR^(N^k) -> RR $
]

#v(1cm)

#def(title: "EDP Lineare")[
  
  Una EDP è detta *lineare* se $Phi$ è funzione lineare di $u$ e delle sue derivate.

  Per lineare si intende che $u$ e le sue derivate hanno esponente 1.\
  Sono quindi della forma:
  $ Phi(y,D^2 u(y))= sum_(i,j)a_(i,j)(y) (partial^2 u)/(partial y_i partial y_j) (y) + f(y) = 0 $
]

#xpl[
  
  La funzione $ Phi(y,D^2 u(y))= 3partial^2_y_1 u +y partial^2_y_2 u - 4y^3 $

  E' una EDP lineare.
]

#v(1cm)

#def(title: "EDP Semilineare")[
  
  Una EDP si dice *semilineare* se *$Phi$* è funzione lineare delle derivate di ordine massimo $k$, con coefficienti funzioni di $y$.\
  Sono quindi della forma:
   $ Phi(y,u(y),D u(y),D^2 u(y))=sum_(i,j)a_(i,j)(y)(partial^2 u)/(partial y_i partial y_j) + f(y,u(y),D u(y)) =0 $

]

#xpl[

  La funzione 
  $ Phi(y,u(y),D u(y),D^2 u(y))= (partial^2 u) / (partial x^2) +((partial u)/(partial x))^2, wide "dove" x=y_1  $
  E' una EDP semilineare.
]

#def(title: "EDP Quasilineare")[
  
  Una EDP è detta *quasilineare* se *$Phi$* è funzione lineare delle derivate di ordine massimo $k$, con coefficienti funzioni di $y,u,D u,...,D^(k-1) u$.  
]

#xpl[
  La funzione 
  $ Phi(y,u(y),D u(y),D^2 u(y))= ((partial u)/(partial x))^2(partial^2 u) / (partial x^2) +4((partial u)/(partial x))^2 $
]

\

#oss(title: "EDP Lineare I Ordine")[

  Una EDP lineare del primo ordine si scrive come:

  $ Phi(y,u(y),D u(y))= sum_i a_i (y)(partial u)/(partial y_i) (y)+b(y)u(y)+f(y) $  
]

#def(title: "EDP Omogenea")[

  Una EDP si dice *omogenea* se *$f=0$*.
]

\
\
\
*In questo corso ci occuperemo di trovare soluzioni per EDP lineari del secondo ordine!.*\
Ciò significa che tutte le altre definizioni viste sino ad ora sono sostanzialmente inutili.\
Mannaggia ai pescetti!
\
\
\

#theo(number: "A")[
  This is a theorem with a custom number.
] <mythm>

#lemma[
  This is a lemma. Maybe it's used to prove @mythm.
]

#theo(title: "some title")[
  This is a theorem with a title.
] <thm2>

#proof(of: <thm2>)[
  This is a proof of the theorem which has a title.
]

#pagebreak(weak: true)

= EDP lineari di II ordine

#rmk(title: "Espressione EDP lineare II Ordine")[

  Una generica EDP lineare del secondo ordine si scrive come: 
  $ Phi(y,u(y),D u(y), D^2 u(y))= sum_(i,j)A_(i,j)(y)(partial^2 u)/(partial y_i partial y_j)(y) + sum_i B_i (y)     (partial u)/(partial y_i) (y) + C(y) u(y) + f(y) $
] <edp>

\

#prop[
  La matrice di funzioni $A_(i j)$ è simmetrica.
]
#proof[
  $ sum_(i j)A_(i j)(partial^2 u)/(partial y_i partial y_j) = 1/2 sum_(i j)A_(i j)(partial^2 u)/(partial y_i partial y_j) + 1/2 sum_(i j)A_(i j)(partial^2 u)/(partial y_i partial y_j) \ = 1/2 sum_(i j)A_(i j)(partial^2 u)/(partial y_i partial y_j) + 1/2 sum_(j i)A_(j i)(partial^2 u)/(partial y_j partial y_i) \ = 1/2 sum_(i j)(A_(i j)+A_(j i))(partial^2 u)/(partial y_i partial y_j) $
  Visto che la matrice $A "di coefficienti" A_(i j)+A_(j i)$ è simmetrica, il risultato è provato \ 
]
\
#rmk(title: "Autovaloris")[

  Come è noto, gli autovalori di una matrice di una matrice simmetrica sono valori in $RR$.\
  Siano:

  $n_0 ="#autovalori nulli"\
  n_+="#autovalori positivi"\
  n_-="#autovalori negativi"$
]
\
#def(title: "Classificazione EDP lineari" )[

  Una EDP lineare è detta:
  
  *Ellittica* se: $quad n_+(y)=n quad or quad  n_-(y)=n$

  *Iperbolica* se: $quad n_0(y)=0 quad and quad  n_+(y)-n_-(y)!= plus.minus n$

  *Parabolica* se: $quad n_0(y)>0$
]
#pagebreak(weak: true)
#prop(title: "Principio di Sovrapposizione")[
  
  Una Combinazione lineare di soluzioni di una EDP omogenea è anch'essa soluzione.
  #proof[\
   Siano $u_1,...,u_m "soluzioni della EDP."$\
   Definisco la comb lineare $u=sum^m_(i=1)a_i u_i, wide "dove" a_1,...,a_m in RR$\
   Esprimo dapprima $u$ come visto con @edp.\
   Non rimane che espandere $u$ come combinazione di $u_1,...,u_m$.\
  ]
]
\
