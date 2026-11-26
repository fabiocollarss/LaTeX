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
//SHOW
#show link: text.with(fill: blue)
#show ref: text.with(fill: blue.darken(50%))

#show math.equation: i-figured.show-equation.with(only-labeled: true)
#show heading: i-figured.reset-counters

#show: great-theorems-init 

//TESTO

= Gruppo quoziente 

== Sottogruppi del gruppo quoziente 

Dato $N subn G$ è naturale iniziare lo studio dei sottogruppi di $G slash N$ guardando le immagini dei sottogruppi di $G$ tramite le proiezioni al quoziente $pi : G aa G slash N$.

L'idea è quella di ridurre tale studio all'immagine di sttogruppi di $G$ che contengono $N$. 

#lemma[
  Sia $(G,dot) "un gruppo", N subn G. "Sia" pi: G aa G slash N$ la proiezione a quoziente. Dato un sottogruppo $H lt.eq G$ si ha che 

  $ pi (H) eq pi (H N) $
]
#proof[\
  Chiaramente si ha che $pi(H) subset.eq pi(H N) "poiché" H subset.eq H N $. 

  Viceversa, per ogni $h in H "e per ogni" n in N$ si ha che\ 
  
  $ pi(h n) eq pi(h) pi(n) eq pi(h) pi(e) eq pi( h e) eq pi(h) $
]

*Notazione:* 

#lemma[
  Sia $(G,dot)$ un gruppo e $N subn G$ un sottogruppo normale. Denotiamo con\ $pi : G aa G slash N$ la proiezione al quoziente. Allora

  + Se $H lt.eq G$ allora $pi^(-1)(pi(H)) eq H N$.

  + Se $H lt.eq G "e" N subset.eq H, "allora" pi^(-1)(pi(H)) eq N$. 

  + Se $dash(H) lt.eq G slash H, "allora" pi (pi^(-1) (dash(H))) eq dash(H)$.
]
#proof[
  + Dal lemma precedente segue che $pi(H) eq pi (H N)$. Quindi $H N subset.eq pi^(-1) compose pi (H)$. Viceversa 

  $ pi^(-1) compose pi (H) &eq {g in G | pi(g) in pi(H)} \ 
  &eq {g in G | exists h in H "t.c." pi(g) eq pi(h)}\ 
  &eq {g in G | exists h in H "tale che" pi(h^(-1) g) eq N}\
  &eq {g in G | exists h in H "tale che" h^(-1)g in N}\
  &eq {g in G | exists h in H "t.c." g in h N} subset.eq H N 
  $ 

  + L'enunciato è un caso particolare del prcedente 

  + Dalla suriettività di $pi$ segue che $pi compose pi^(-1)(dash(H)) eq dash(H)inter pi(G) eq dash(H)$.
]

#pagebreak(weak : true)

#theo[
  Siano $(G, dot)$ un gruppo e $N subn G$ un sottogruppo normale. Allora la proiezione al quoziente $pi : G aa G slash N$ fornisce due corrispondenze biunivoche.

  $ 
    {"sottogruppi di" G "che contengono" N} &arrow.long.l.r^(1:1) {"sottogruppi di" G slash N}\
    {"sottogruppi di" G "che contengono" N} &arrow.long.l.r^(1:1) {"sottogruppi normali di" G slash N}
  $
]
#proof[
  Per il lemma precedente si ha che la prima corrispondenza biunivoca è data da 

  $ H arrow pi(H) wide "con inversa" wide dash(H) arrow pi^(-1)(dash(H)) $

  Per $H lt.eq G "e" dash(H) lt.eq G slash N$. 

  Inoltre, visto che $pi$ è suriettiva, l'ultima parte dell'enunciato segue dalla proposizione precedente. 
]

#pagebreak(weak:true)

== Omomorfismi dal gruppo quoziente

#theo(title : "Teorema di omomorfismo")[
  Siano $(G, dot),(G', ast)$ due gruppi. Sia $N subn G$ un sottogruppo normale di G e $phi : G aa G'$ omomorifsmo tale che $N subset.eq ker(phi)$. Allora\
  
  Esiste un *unico* omomorifsmo di gruppi $dash(phi) : G slash N aa G'$ tale che$phi eq dash(phi) compose pi$ tale che il seguente diagramma commuta 
  
  $ #diagram(
      spacing: (25mm, 18mm),
      node((0, 0), $G$),
      node((1, 0), $G'$),
      node((0, 1), $frac(G, N, style: "skewed")$),
    
      edge((0, 0), (1, 0), $phi$, "->"),
      edge((0, 0), (0, 1), $pi$, "->", label-side: right),
      edge((0, 1), (1, 0), $exists! overline(phi)$, "->", label-side: right),
  ) $

  Ossia $ phi(g) eq dash(phi) compose pi (g)$

  Inoltre si ha

  + $Im(phi) eq Im(phi)$

  + $dash(phi) "è iniettiva se e solo se" N eq ker(phi)$

]<theo_omom>

#proof[
  posso definire esplicitamente $dash(phi) : G slash N aa G' "come" dash(phi)(g N) eq phi(g)$.\
  Verifico che sia ben definita, che sia un omomorfismo e che sia unica 
  - E' ben definita, infatti se $g_1 N eq g_2 N "allora" g_1 equiv g_2 mod(N), "ovvero" g_1^(-1)g_2 in N$. Quindi\ 
    $phi(g_2) eq phi(g_1 g_1^(-1) g_2) eq phi(g_1)ast phi(g_1^(-1)g_2) eq phi(g_1)ast e' eq phi(g_1)$
  - E' un omomorfismo, in quanto $forall g_1, g_2 in G$ si ha\
    $dash(phi)((g_1 N) dot(g_2 N)) eq dash(phi)((g_1 dot g_2)N) eq phi(g_1 dot g_2) eq phi(g_1) ast phi(g_2)  eq dash(phi)(g_1 N) ast dash(phi)(g_2 N)$
  - E' unica in quanto $phi(g) eq dash(phi)(pi(g)) eq dash(phi)(g N)$.
]

#cor[
  Siano $(G, dot) "e" (G', ast)$ due gruppi. Sia $N subn G$. Allora esiste una corrispondenza biunivoca 

  $ {"omomorfismi" phi : G aa G' "t.c." N subset.eq ker(phi)} arrow.long.l.r^(1:1) {"omomorfismi" dash(phi) : G slash N aa G'} $
]
