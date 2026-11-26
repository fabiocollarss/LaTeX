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

= Isomorfismi

#theo(title : "Primo teorema di isomorfismo")[
  Sia $phi : G aa G'$ un omomorfismo di gruppi. Allora\
  Esiste un isomorfismo $Im(phi) tilde.equiv G slash ker(phi) $
]<theo_iso_1>
#proof[\
  Scegliendo $N :eq ker(phi)$, per il Teorema di omomorfismo si ha che esiste un omomorifsmo iniettivo $dash(phi): G slash ker(phi) aa G' $

  Visto che $Im(phi) eq Im(dash(phi))$ si ha che $Im(phi) eq G slash ker(phi)$
]

#xpl(title : [$G L_n (KK) slash S L_n (KK) tilde.equiv KK^ast $])[
  Considero l'applicazione $phi eq det : G L (KK) aa KK^ast$.\ 
  Da osservare che il determinante è suriettivo, infatti $forall lambda in KK^ast$ si può costruire $A_lambda$ 

  $ A_lambda eq 
  mat(
    lambda, dots.c, 0;
    dots.v, 1, dots.v;
    0, dots.c, 1;
  ) eq
  cases(
    a_11 eq lambda,
    a_(i i) eq 1 wide"se" i in {2,dots,n},
    a_(i j) eq 0 wide"se" i eq.not j, 
  )
  $

  Dove ovviamente $det(A_lambda) eq lambda$.\ 
  Ricordando che $ker(phi) eq ker(det) eq S L_n (KK)$.

  Allora per il @theo_iso_1[Primo teorema di isomorfismo] si ha che $G L_n (KK) slash S L_n (KK) tilde.equiv KK^ast $
]

#pagebreak(weak : true)

#theo(title : "Secondo teorema di isomorfismo")[
  Sia $(G, dot)$ un gruppo e siano $N,H subn G$ sottogruppi normali tali che $N subset.eq H$. Allora\ 

  + $H slash N subn G slash N$

  + $G slash H tilde.equiv (G slash N)/(H slash N)$
]<theo_iso_2>
#proof[\
  + Considero l'omomorfismo $phi :eq pi_H : G aa G slash H$.\
    Visto che $N subset.eq H eq ker(pi_H)$, si ha che vale il seguente diagramma

    $ #diagram(
    spacing: (30mm, 10mm),
    node( (0,0), $G$ ),
    node((1,0), $G slash H$),
    node((0,1), $G slash N$),

    edge((0,0), (1,0), $phi eq pi_H$, "->"),
    edge((0,0), (0,1), $pi_N$, "->", label-side : right),
    edge((0,1), (1,0), $exists! overline(phi)$, "->", label-side: right),
    ) $

    Per il primo teorema di omomorifsmo si ha che $Im(dash(phi)) eq Im(phi) eq G slash H $.\
    Il nucleo dell'omomorfismo indotto è

    $ ker(dash(phi)) &eq {g N in G slash N | g H eq H} eq {g N in G slash N | g in H} eq H slash N  $

    Dunque $H slash N subn G slash N$.


  + Per il @theo_iso_1[Primo teorema di isomorfismo] su applicato a $dash(phi)$ segue la seconda parte dell'enunciato

]

#cor[\
  Dati $a,n in Z_(gt.eq 1)$, si considera $(ZZ slash (n), +)$. Allora dato $[a] in ZZ slash (n)$ si ha che

  $ ord([a]) eq n/("MCD"(a,n)) $
]
#proof[\
  Dato $G eq ZZ, N eq (n)$, uso la notazione $H eq (a) +(n) eq "MCD"(a,n)$. 

  Per il @theo_iso_2[Secondo teorema di isomorfismo] si ha che

  $ cases(
    G slash N eq ZZ slash (n),
    H slash N eq ([a])
  ) wide arrow.double.long wide Z slash ("MCD"(a,n)) tilde.equiv (ZZ slash (n))/(([a])) $

  Dunque ottengo che 

  $ "MCD"(a,n) eq abs( ZZ slash ("MCD"(a,n))) eq abs((ZZ slash (n))/(([a]))) eq n/ord([a]) $
]

#pagebreak()

#lemma[
  Siano $a,b in ZZ$ due interi non nulli tali che $a | b$. Allora 

  $ abs((a) slash(b)) eq b/a $
]<car_card_subgroups_ZZ>
#proof[\
  L'ipotesi $a | b$ garantisce che $(b) subset.eq (a)$. Inoltre $(b) subn (a)$. Dunque $(a) slash (b)$ è il gruppo quoziente dato dai laterali, ossia 

  $ (a) slash (b) eq {t a + (b) | t in ZZ} $

  Resta da stabilire quante sono le classi laterali tra loro distinte. Noto che 

  $ t a + (b) eq s a + (b) arrow.double.l.r.long -t a +s a in (b) arrow.double.l.r.long b/a |_"divide" s -t $

  Ossia esistono esattamente $b/a$ laterali distinti 

  $ (a) slash (b) eq {t a + (b) | t in {1,dots, b/a}} $
]

#pagebreak()

#theo(title : "Terzo teorema di isomorfismo")[
  Siano $N subn G "e" H lt.eq G$ due sotoogruppi di $G$. Allora 

  + $H inter N subn H$

  + $ (H N) slash N tilde.equiv H slash (H inter N)$
]<theo_iso_3>
#proof[\
  + Sia $pi_N$ la proiezione al quoziente e sia $pi_N |_H : H aa G slash N$ la sua restrizione ad $H$. Ho che 

    $ker(pi_n |_H) eq {h in H | h N eq N} eq {h in H | h in N} eq { H inter N} Aa H inter N subn N$

  + Per il @car_card_subgroups_ZZ[Lemma] precedente segue inoltre che 

  $ Im(pi_N |_H) eq pi_N(H) eq pi_N(H N) eq H N slash N subset.eq G slash N $

  Per il @theo_iso_1[Primo teorema di isomorfismo] ho che 

  $ H N slash N eq Im(pi_N |_H) tilde.equiv H slash ker(pi_N |_H) eq H slash (H inter N) $
]

#cor[\
  Siano $a,b in ZZ$ due interi non nulli. Allora 

  $ "mcm"(a,b) eq (a b)/("MCD"(a,b)) $
]
#proof[\
  Dati $G eq ZZ, H eq (a), N eq (b)$, ho che 

  $ H + N eq ("MCD"(a,b)) wide "e" wide H inter N eq ("mcm"(a,b)) $

  Dal @theo_iso_3[Terzo teorema di isomorfismo] ho che 

  $ ("MCD"(a,b)) slash (b) eq (H + N) slash N tilde.equiv H slash (H inter N) eq (a) slash ("mcm"(a,b)) $

  Dalla @car_card_subgroups_ZZ[Caratterizzazione della cardinalità dei sottogruppi di $ZZ$] deduco che 

  $ b/("MCD"(a,b)) eq abs(("MCD"(a,b)) slash (b) ) eq abs( (a) slash ("mcm"(a,b)) ) eq ("mcm"(a,b))/(a) $
]


