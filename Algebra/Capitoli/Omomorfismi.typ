//PACCHEETTI
#import "@preview/i-figured:0.2.4"
#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.1": *
#import "@preview/physica:0.9.8": *
#import "template.typ": *
#import "variabili.typ": *

//set
#set page(paper: "a4")

#set heading(numbering: "1.1.1")

#set align(left)

//SHOW
//SHOW
#show link: text.with(fill: blue)
#show ref: text.with(fill: blue.darken(50%))

#show math.equation: i-figured.show-equation.with(only-labeled: true)
#show heading: i-figured.reset-counters

#show: great-theorems-init 

//TESTO

= Omomorfismi di gruppi 

#prop(title : "Caratterizzazione dei sottogruppi normali")[
  Sia $(G, compose)$ un gruppo e $N lt.eq G$ un suo sottogruppo, allora sono equivalenti 

  + $g N g^(-1) subset.eq N$ per ogni $g in G$

  + $g N g^(-1) eq N$ per ogni $g in G$ 
  + $N$ è normale 
  + E' ben posta per ogni $f,g in G$ l'operazione 
    $ 
      compose : &(N backslash G) times (N backslash G) &&arrow.long  N backslash G \ 
                &(N f) compose (N g) &&arrow.long N(f compose g)
    $
]
#proof[\
  *$(1 Aa 2)$*\ Verifico che $N subset.eq g N g^(-1) space forall g in G$.\ Siano $g in G, space n in N$, allora $n eq g^(-1) (g n g^(-1)) g$.\ Mi basta quindi mostrare che $g^(-1) n g in N$. Ma questo segue dall'ipotesi!

  *$(2 Aa 3)$*\ Verifico che $g N eq N g space forall g in G$.\ Per ogni $n in N$ si ha che $g n g^(-1) in g N g^(-1) eq N$. Da ciò segue che 

  $ cases(g n in N g, n g^(-1) in g^(-1) N) quad Aa quad cases(g N subset.eq N g, N g^(-1) subset.eq g^(-1)N) $

  Visto che l'applicazione $g aa g^(-1)$ è una biiezione (in quanto $G$ è un gruppo) si ottiene la tesi.

  *$(3 Aa 4)$*\ Si ha che $(N f)(N g) eq (f N)(N g) eq f N g eq (f N) g eq (N f)g eq N f g quad forall f,g in G$

  *$(4 Aa 1)$*\ Suppongo che l'operazione sull'insieme dei laterali destri sia ben posta.\ Allora per ogni $f,g in G, space n,n' in N$ si ha\ $ (n f)(n' g) in N f g $
  Scegliendo $g eq f^(-1)$ segue $quad n f n' f^(-1) in N Aa f n' f^(-1) in N Aa f N f^(-1) subset.eq N$
]

#oss[
  La proposizione appena dimostrata mostra che i sottogruppi normali sono quelli per i quali l'operazione del gruppo $G$ discende in modo naturale all'insieme delle classi laterali (destre o sinistre). 
]

#oss[
  - Sia $N lt.eq G$ tale che $[G : N] eq 2$, allora $N$ è un sottogruppo normale.\ Infatti si hanno solo $e N, N e$ e i loro complementari. 

  - Se $G$ è un gruppo abeliano, ogni suo sottogruppo è normale!
]

#ex[
  Sia $Q_8 eq {plus.minus 1, plus.minus i, plus.minus j, plus.minus k}$ il gruppo moltiplicativo delle unità quaternionali, i cui elementi soddisfano le relazioni $ i^2 eq -1,quad j^2 eq -1,quad k^2 eq -1,quad i j k eq -1 $
  Dimostrare che 
  + $Q_8$ non è abeliano
  + tutti i sottogruppi di $Q_8$ sono normali 
]
#proof[\
  #text(fill : red, [da fare!])
]

#def[Un gruppo $G$ è detto\
  - *Gruppo di Dedekind* se ogni suo sottogruppo è normale
  - *Gruppo di Hamilton* se $G$ è un gruppo di Dedekind *non* abeliano 
]



