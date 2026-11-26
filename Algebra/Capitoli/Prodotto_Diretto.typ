//PACCHEETTI
#import "@preview/i-figured:0.2.4"
#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.1": *
#import "@preview/physica:0.9.8": *
#import "template.typ": *
#import "variabili.typ": *
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

//set
#set page(paper: "a4")

#set heading(numbering: "1.1.1")

#set align(left)

//SHOW
#show link: text.with(fill: blue)
#show ref: text.with(fill: blue.darken(50%))

#show math.equation: i-figured.show-equation.with(only-labeled: true)
#show heading: i-figured.reset-counters

#show: great-theorems-init 

//TESTO
= Prodotto Diretto 

#def(title : [Prodtto diretto])[
  COnsidero due gruppi $(G_1, ast),(G_2 compose)$. Il loro prodotto diretto è l'insieme *$G_1 times G_2$* dotato dell'operazione definita da 

  $ (g_1,f_1) dot (g_2, f_2) :eq (g_1 ast g_2, f_1 compose f_2) wide g_1, g_2 in G_1, space f_1,f_2 in G_2 $
]

#prop[\
  Il prodotto diretto tra due gruppi genera un gruppo
]
#proof[\
  l'insieme $G_1 times G_2$ dotato dell'operazione verifica 
  - *inverso: *  $(g,f)^(-1) eq (g^(-1),f^(-1)) $
  - *associatività: * $[(g_1,f_1) dot (g_2,f_2)] dot (g_3, f_3) eq ((g_1 g_2)g_3, (f_1 f_2)f_3) eq (g_1(g_2,g_3), f_1(f_2 f_3))$ 
]

#prop[\
  Siano dati due gruppi $G_1 "e" G_2$. Allora 

  + $abs(G_1 times G_2) eq abs(G_1)abs(G_2)$

  + $G_1 times G_2$ è abeliano se e solo se $G_1 "e" G_2 $ sono abeliani

  + Dati due sottogruppi $H lt.eq G_1 "e" K lt.eq G_2$ allora $H times K lt.eq G_1 times G_2$

  + Dati due sottogruppi normale $H subn G_1 "e" K subn G_2$ allora $H times K subn G_1 times G_2$

  + Dati due sottogruppi normali $H subn G_1 "e" K subn G_2$ allora\ $(G_1 times G_2) slash (H times K) tilde.equiv G_1 slash H times G_2 slash K$
]
#proof[\
  I primi 3 punti sono facilmente verificabili direttamente. Dimostro quindi il punti 4 e 5.

  Considero l'omomorfismo dato dalle proiezioni al quoziente 

  $ phi : G_1 times G_2 &arrow.long G_1 slash H times G_2 slash K \ (g,f)&arrow.bar.long (g H, f K) $

  Per cui $phi eq pi_H times pi_K$ è un omomorfismo suriettivo di gruppi.\ Per quanto riguarda il nucleo di $phi$ ho che

  $ ker(phi) &eq {(g,f) in G_1 times G_2 | (g H , f K) eq (H,K)} \ &eq {(g,f) in G_1 times G_2 | g in H and f in K} \ &eq H times K $

  Gli enunciati seguono dal Primo teorema di isomorfismo.
]

#pagebreak()

#lemma[
  Sia $G$ un gruppo e $H,K subn G$ tali che $H inter K eq {e}$. Allora 

  Ogni elemento di $H$ commuta con ogni elemento di $K$. 
]
#proof[\
  Siano $h in H, k in K$. Allora 

  $ cases(
    h k h^(-1) in h K h^(-1) eq K,
    k h^(-1)k^(-1) in k H k^(-1) eq H 
  ) 
  &Aa 
    cases(
    (h k h^(-1))k^(-1) in K,
    h(k h^(-1) k^(-1)) in H,
  ) 
  \ &Aa h k h^(-1) in H inter K 
  \ &Aa h k h^(-1) eq e 
  \ &Aa h k eq k h 
   $
]

#prop[
  Siano dati due gruppi $(G_1, ast),(G_2, compose)$ e siano\ $H :eq G_1 times {e_2} "e" K:eq {e_1}times G_2$. Allora 

  + $H,K subn G_1 times G_2$

  + $H inter K eq {e} "e" H K eq G_1 times G_2$

  + ogni elemento di $H$ commuta con ogni elemento di $K$
]
#proof[\
  
]

#pagebreak()

#def(title : [Prodotto diretto interno])[
  Sia $G$ un gruppo e siano $H,K$ due suoi sottogruppi.\ Diremo che $G$ è il prodotto diretto interno di $H "e" K$ se valgono contemporaneamente 

  - $H,K subn G $

  - $H inter K eq {e}$

  - $H K eq G$
]

#prop[\
  Sia $G$ un gruppo finito. Siano $H,K$ due sottogruppi. Allora le seguenti condizioni sono equivalenti

  + $H inter K eq {e} and H K eq G$

  + $H inter K eq {e} and abs(H)abs(K) eq abs(G)$

  + Ogni elemento $g in G$ si scrive in modo unico come prodotto $g eq h k$ con $h in H "e" k in K$

  + $H K eq G$ e inoltre se $h k eq e "con" h in H, k in K Aa h eq k eq e$
]
#proof[
    
]

#pagebreak()

#prop[\
  Sia $(g, dot)$ un gruppo. Allora 

  + Se $G$ è prodotto diretto interno di due suoi sottogruppi $H "e" K$, allora $G tilde.equiv H times K$. 

  + Se $G tilde.equiv g_1 times G_2$ è un prodotto diretto di due gruppi $G_1 "e" G_2$, allora esistono due sottogruppi $H,K lt.eq G$ tali che 
    - $H tilde.equiv G_1$
    - $K tilde.equiv G_2$
    Ed inoltre $G$ è prodotto diretto interno di $H "e" K$.
]
#proof[

]

#oss[La proposizione precedente mi permette di scrivere $G eq H times K$ quando $G$ è prodotto diretto interno di $H "e" K$]

#xpl(title : "Teorema cinese del resto")[
  Siano $n,n in ZZ_(gt 0)$ tali che $"MCD"(n,m) eq 1$. Allora 

  $ C_(n m) tilde.equiv C_n times C_m $
]

#pagebreak()

= Automorfismi

#def(title : "Automorfismo")[
  Un Isomorfismo $phi : G aa G$ è detto Automorfismo 
] 

#def(title : "Automorfismo interno")[
  Sia $(G,dot) "un gruppo e" g in G$. Allora 

  $ I_g : G &arrow.long G \ I_g(f) &arrow.long.bar g f g^(-1) $

  E' un automorfismo di $G$, detto Automorfismo interno.

  *Notazione:* Denoto con $"Aut"(g)$ il *gruppo* degli automorfismi (con operazione di composizione) e con $"Int"(G)$ il *gruppo* degli automorfismi interni. 
]

#oss[
  Sia dato $G$ gruppo. Allora $"Int"(G) subn "Aut"(G)$. Infatti 


]

#def(title : "Centro")[
  Sia $(G,dot)$ un gruppo. Il centro di $G$ è il sottogruppo 

  $ Z(G) eq :eq {g in G | g f eq f g "per ogni" f in G} $
]

#prop[\
  Sia $G$ un gruppo. Allora 

  $ "Int"(G) tilde.equiv G slash Z(G) $
]
#proof[\
  Considero un omomorfismo suriettivo $phi : G aa "int"(G)$ definito da $phi(g) eq I_g$ per ogni $g in G$.\
  Si osservi che $ker(phi) eq Z(G)$.\
  La tesi segue dal primo teorema di isomorfismo. 
]

#oss[\
  Sia $phi : G_1 aa G_2$ un omomorfismo di gruppo.\ 
  Allora per ogni $g in G_1$ si ha che $ord(phi(g))$ divide $ord(g)$.\
  Infatti, detto $n eq ord(g)$, si ha che 

  $ phi(g)^n eq phi(g^n) eq phi(e_1) eq e_2 $
]

#pagebreak()

#xpl[\
  Un automorfismo $phi in "Aut"(ZZ slash (5)$ è univocamente determinato dal valore che assume su un generatore.\
  Affinché $phi$ sia biunivoca è inoltre necessario che $phi(1)$ sia un generatore.\
  Esistono quindi due automorfismi del gruppo $(ZZ,+)$ 
  
  $ "Aut"(ZZ) eq {id, -id} tilde.equiv C_2 $

  Visto che $ZZ$ è abeliano si ha che $"Int"(ZZ) eq {id}$
]

#xpl[
  Un atomorfismo $phi in "Aut"(ZZ slash (5))$ è univocamente determinato dal valore che assume su un generatore. Affinché $phi$ sia biunivoca è inoltre necessario che $phi([1])$ sia un generatore.\
  L'insieme dei generatori di $ZZ slash (5)$, ovvero l'insieme delle classi che hanno ordine 5, è 

  $ U_5 :eq {[1],[2],[3],[4]} $

  Da cui gli automorfismi sono $"Aut"(ZZ slash (5)) eq {id, phi_[2], phi_[3], phi_[4]} tilde.equiv C_4 $

  L'automorfismo $phi_[2]$ ha ordine 4, infatti 

  $ 
    phi_[2] : cases([1]aa[2], [2]aa[4], [3]aa[1],[4]aa[3]) 
    quad phi^2_[2] : cases([1]aa[4], [2]aa[3], [3]aa[2], [4]aa[1])
    quad phi^3_[2] : cases([1]aa[3], [2]aa[1], [3]aa[4], [4]aa[2])
    quad phi^4_[2] : cases([1]aa[1], [2]aa[2], [3]aa[3], [4]aa[4])
  $
]

#def(title : "Gruppo degli invertibili")[
  Sia $n gt.eq 2$. Il gruppo degli invertibili di $ZZ slash (n)$ è l'insieme 

  $ U_n :eq {[a] in ZZ slash (n) | "MCD"(a,n) eq 1} $

  Dotato dell'operazione 

  $ circle.filled.tiny : U_n times U_n &arrow.long U_n \ ([a],[b]) &arrow.bar.long [a b] $
]

#pagebreak()

#prop[\
  Siano $a,b,n in ZZ$. Dimostrare che 

  + $a "e" b$ sono entrambi coprimi con $n$ se e solo se $a b$ è coprimo con $n$

  + Se $a equiv b mod(n)$, allora $a$ è coprimo con $n$ se e solo se $b$ è coprimo con $n$.\
    Da questo, la nozione di coprimalità con $n$ è ben definita sugli elementi di $ZZ slash (n)$

  + Se $a$ è coprimo con $n$, allora $exists c in ZZ$ tale che $a c equiv 1 mod(n)$

  + $(U_n, dot)$ è un gruppo 
]
#proof[

]

#prop[\
  Sia $n gt.eq 2$ un intero. Dimostrare che $"Aut"(ZZ slash (n)) tilde.equiv U_n$ 
]
#proof[\
  
]

#xpl[
  Un automorfismo $phi in "Aut"(K_4)$ preserva l'elemento neutro ed è dunque univocamente determinato da una permutazione dei restanti 3 elementi.\ Ne segue che $"Aut"(K_4) tilde.equiv S_3$
]

#ex[\
  + Sia $n gt.eq 3$ un intero. Determinare tutti gli omomorfismi $ZZ slash (n) aa ZZ$.

  + Sia $n gt.eq 3$ un intero. Determinare tutti gli omomorfismi $ZZ aa ZZ slash(n)$.

  + Determinare tutti gli omomorfismi $ZZ slash (10) aa D_6$.

  + Determinare tutti gli omomorfismi $S_3 aa D_4$.
]
#sol[\

]

= Prodotto Semidiretto 


