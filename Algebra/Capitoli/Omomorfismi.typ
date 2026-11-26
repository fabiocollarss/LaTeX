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

= Caratterizzazione sottogruppi normali 

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
]<Car_Subn>
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
  Considero l'equazione $i j k = -1$. Allora significa che, moltiplicando in un caso per $-i$ a sinistra, e e in un caso per per $-k$ a destra, si ottengono: 

  $  j k eq i wide ; wide i j eq k $

  A questo punto basta osservare che $j(j k) eq j i Aa j i eq -k$. Questa identità conferma che invertire l'ordine degli elementi del gruppo non è irrilevante, ossia il gruppo *non* è abeliano. 
]

#def[Un gruppo $G$ è detto\
  - *Gruppo di Dedekind* se ogni suo sottogruppo è normale
  - *Gruppo di Hamilton* se $G$ è un gruppo di Dedekind *non* abeliano 
]

#prop[
  Sia $G$ un gruppo e $N subn G$.\ Allora l'operazione definita nella @Car_Subn[proposizione] Definisce una struttura di gruppo 
]
#proof[ L'operazione è ben definita in $G slash N eq N backslash G$ poiché $N$ è normale. Rimane da verificare gli assiomi di gruppo. 
  - L'operazione indotta è associativa, infatti:\ $(N f N g)N h eq (N f g) N h eq N f g h eq (N f)(N g h) eq (N f)(N g N h) $
  - L'elemento neutro è dato dal laterale $N e eq e N$
  - L'inverso di $N g$ è dato da $N g^(-1)$
]

#def(title : "Normalizzatore")[
  Dato un gruppo $G$ e $H lt.eq G$ un suo sottogruppo, è definito il *Normalizzatore di H in G* come l'insieme 

  $ N(H):eq {g in G | g^(-1)H g eq H} $
]

#oss[Data la precedente definizione, si ha che $H subset.eq N(H) subset.eq G$]

#pagebreak(weak : true)

#ex[Sia $G$ un gruppo e $H lt.eq G$. Dimostrare che $H subn N(H)$]

#proof[
  Sia $H$ un sottogruppo di $G$. Allora $H$ è sottogruppo normale di $N(H)$ per definizione. Infatti preso comunque $f in N(H)$ si ha che $f^(-1) H f eq H $, che per la caratterizzazione dei gruppi normali è equivalente alla normalità di $H$.  
]

#pagebreak(weak : true)

= Omomorfismo di gruppi

#def()[
  SIano $(G_1, compose), (G_2, star)$ due gruppi.\ Diremmo che un'applicazione $phi : G_1 aa G_2$ è un *omorfismo* se e solo se il seguente diagramma commuta. 

  $ 
    G_1 &times G_1 wide arrow.long^compose wide &&G_1 \
    phi times phi &arrow.b &&arrow.b phi \
    G_2 &times G_2 wide arrow.long^star wide &&G_2
  $

  Ossia se vale $phi(g_1 compose g_2) eq phi(g_1) star phi(g_2) quad forall g_1,g_2 in G_1 $
]

#def[
  Siano $G_1, G_2$ due gruppi e $phi : G_1 aa G_2$ un omomorfismo.\ Se $phi$ è invertibile allora è detto *isomorfismo*
]

#prop[
  Composizione di omomorfismi di gruppi è un omomorfismo.
]
#proof[
  Siano $(G_1, circle.filled.small), (G_2, dot),  (G_3,star)$ tre gruppi, $phi : G_1 aa G_2 "e" psi: G_2 aa G_3$ omomorfismi di gruppi. Presi $g_1, g_2 in G_1$ si ha 
  $ psi compose phi (g_1 circle.filled.small g_2) eq psi (phi(g_1) dot phi(g_2)) eq psi compose phi (g_1) star psi compose phi (g_2) $
]

#prop[Siano $(G_1, compose),(G_2, dot)$ due gruppi, $phi$ un omorfimso da $G_1 "in" G_2$. Allora 
  + $phi(e_1) eq e_2$
  + $phi(g^(1)) eq phi(g)^(-1) quad forall g in G_1$
]
#proof[\
  + Basta osservare che $phi(g) eq phi(g compose e_1) eq phi(g) dot phi(e_1)$

  + Basta osservare che $phi(e_1) eq phi(g^(-1) compose g) eq phi(g^(-1)) dot phi(g) eq e_2$
]

#xpl[
  SIa $(G, dot)$ un gruppo e $N subn G$.\ Definisco $pi : G aa G slash N$ come $pi(g) eq g N eq N g$.\ Allora $pi$ è un omomorfismo di gruppi. 
]

#pagebreak(weak : true)

#ex[
  Sia $n gt.eq 1, KK$ un campo.\ Considero l'applicazione $det : G L_n (KK) aa KK^ast$. Si mostri che $det$ è un omomorfismo. 
]
#sol[
  Considero le operazione sugli insiemi come il prodotto adeguato nel rispettivo caso.\ Per le proprietà del determinante si ha che\ 
  $det(A_1 dot A_2) eq det(A_1) dot det(A_2)$.\
  Da cui la tesi.
]

#ex[
  Mostrare che il logaritmo naturale è un omomorfismo da $(R_+, dot) "in" (RR, +)$.  
]
#sol[
  La tesi è banalmente verificata dalla relazione $ln(a dot b) eq ln(a)+ln(b)$
]

#def[
  sia $phi: G_1 aa G_2$ un omorfismo di gruppi. Il *nucleo di $phi$* è definito come $ ker(phi) :eq {g in G_1 | phi(g) eq e_2} $
]

#ex[
  Il nucleo di $phi$ è un sottogruppo normale di $G_1$
]
#sol[
  Sia $H eq ker(phi) subset.eq G_1$ dove $phi: G_1 aa G_2$ omomorfismo. Allora preso $g in G_1, h in H$ si ha\
  $ phi(g^(-1) h g) eq phi(g^(-1)) phi(h) phi(g) eq phi(g)^(-1) e_2 phi(g) eq e_2 $
  Quindi se ne deduce che $ g^(-1) h g in ker(phi) quad Aa quad g^(-1)H g subset.eq ker(phi) wide arrow.double^"prop" wide H "normale" $ 
]

#prop[
  Sia $(G, dot)$ un gruppo e sia $N lt.eq G$ un sottogruppo. Allora\ $ N subn G wide "se e solo se" wide exists phi: G aa G_2 "omom t.c." N eq ker(phi) $
]
#proof[
  Abbiamo già verificato che se $n$ è nucleo di un omomorfismo allora è normale in $G$.\ Viceversa, se $N subn G$ allora la proiezione $pi : G aa G slash G$ è un omomorfismo. Il suo nucleo è tale che 
  $ ker(pi) eq {g in G | pi(g) eq N}eq{g in G | g N eq N} eq {g in G | g in N} eq N $
]

#pagebreak(weak : true)

#ex[
  Sia $phi : G_1 aa G_2$ un omomorfismo di gruppi. Dimostrare che $phi$ è iniettivo se e solo se $ker(phi) eq e_1$.
]
#proof[\
  ($1 Aa 2$)\ Si ha che $e_1 in ker(phi)$. Se inoltre $phi$ iniettivo allora ${e_1} eq ker(phi)$
  
  ($2 Aa 1$)\ Siano $f,g in G_1 | phi(f) eq phi(g)$. Allora\ $phi(f^(-1) g) eq e_2 Aa f^(-1) g eq e_1 Aa f eq g$
]

#def[Sia $phi : G_1 aa G_2$ omomorfismo di gruppi. *L'immagine di $phi$* è il sottoinsieme 
  $ Im(phi) eq {f in G_2 | exists g in G_1 "t.c." phi(g) eq f} subset.eq G_2 $
]

#ex[Sia $(g,dot)$ gurrpo, sia $g in G$.
  - Dimostrare che $phi : ZZ aa G "definita da" n aa g^n$ è un omomorfismo.
  - Determinare nucleo e immagine di tale applicazione 
]

#prop[
  Sia $phi : G_1 aa G_2$ un omomorfismo di gruppi.
  + Se $H_1 lt.eq G_1$ allora $phi(H_1) lt.eq G_2$. Inoltre se $H_1 subn G_1$ allora $phi(H_1) subn phi(G_2)$.
  + Se $H_2 lt.eq G_2$ allora $phi^(-1)(H_2) lt.eq G_1$. Inoltre se $H_2 subn G_2$ allora $phi^(-1)(H_2) subn G_1$. 
]
#proof[
  + La prima parte è immediata. Per la seconda, si prendono $g in G_1, h in H_1$ e si ha\ 
    $phi(g)phi(h)phi(g)^(-1) subn phi(H_1)$, da cui la tesi. 

  + La prima parte è immediata. Per la seconda, invece, considero l'omomorfismo\ 
    $G_1 aa^phi G_2 aa^pi G_2 slash H_2 $, ossia $phi eq pi compose phi$.\ 
    Questo è un omomorfismo il cui nucleo è\
    $ ker(pi compose phi) &eq {g in G_1 | pi compose phi(g) eq H_2} \ &eq {g in G_1 | phi(g)H_2 eq H_2}\ &eq {g in G_1 | phi(g) in H_2} eq phi^(-1)(H_2) $
]

#cor[Sia $phi: G_1 aa G_2$ omomorfismo di gruppi. Allora $phi(G_1) lt.eq G_2$ ]

#ex[Esibire un omomorfismo di gruppi tale che $N subn G_1$ ma $phi(N)$ non è sottogruppo normale di $G_2$]
