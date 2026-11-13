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

= Introduzione ai gruppi

#def(title : "Gruppo")[
  Un gruppo *$(G, circle.filled.tiny)$* è un insieme $G$ dotato di un'operazione $quad circle.filled.small : G times G aa G quad $ con le seguenti proprietà
  $ 
  &"Associatività" wide &&(f dot g) dot h eq f dot (g dot h) quad forall f,g,h in G \ 
  &"Esistenza elemento neutro" wide &&exists e in G "t.c." f dot e eq e dot f eq f quad forall f in G \ 
  &"Esistenza inverso" wide &&forall g in G, space exists g^(-1) in G "t.c." g dot g^(-1) eq g^(-1) dot g eq e 
  $
]

#oss[\
  - Visto che vale l'associatività, posso tranquillamente scrivere $ f dot g dot h $ senza specificare quale delle due operazioni sto svolgendo per prima.\ 
  - Quando non è necessario specificarlo, ometterò il simbolo dell'operazione, quindi $f g eq  f dot g$
]

#def[
  Un gruppo è detto

  - *Abeliano* se $f g eq g f quad forall f,g in G$

  - *Finito* se $abs(G) < infi$
]

#rmk[Utilizzerò la notazione compatta $g^m eq g dot g dot dots dot g quad (m "volte")$]

#oss[
  Dato $G$ gruppo, $g in G$, con la notazione precedente ho che 
  - $g^0 eq e$
  - $g^1 eq g$
  - $g^(-n) eq (g^(-1))^n$

  Da cui si ricava anche, dati $n,m in ZZ$, che vale
  - $g^n dot g^m eq g^(n+m)$
  - $(g^n)^m eq g^(n m)$ 
]

#def(title : "ordine di un gruppo")[
  Sia $G$ un gruppo e $g in G$ si definisce l'*ordine di g* come segue:

  - se $g^n eq.not e space forall n in ZZ_(>=1)$ allora $ord(g) eq infi$
  
  - altrimenti $ord(g) eq min{n in ZZ_(gt.eq 1) | g^n eq e } $
]

#prop[
  Sia $G$ un gruppo *finito*, allora $ord(g) < infi space forall g in G$
]
#proof[
  Sia $G$ gruppo finito e $g in G$. G è chiuso rispetto all'operazione di gruppo, quindi \ $g^n in G forall n in ZZ_(gt.eq 1)$. Visto che $G$ è finito allora $exists n_g | g^(n_g) eq e$
]


#pagebreak(weak : true)

== Esempi di gruppi 

#xpl(title : "Funzioni invertibili")[
  Sia $X$ un insieme e $S_X$ l'insieme delle funzioni invertibili da $X aa X$. Ossia 
  $ S_X eq {f : X aa X | exists f^(-1) : X aa X and (f^(-1) compose f) (x) eq x} $
  Allora $(S_X , compose)$ è un gruppo 
]<S_X>

#def(title : text([$S_n$]))[
  Se $X eq {1,dots,n}$ allora definisco il gruppo $(S_n, compose)$ come fatto nell'@S_X[esempio]

  *N.B:* $(S_n, compose)$ contiene $n!$ elementi. 
]

#xpl(title : text([$G_L (KK)$]) )[
  Sia $KK$ un campo, $n in ZZ_(>=1)$. Definisco $G_L (KK) :eq {A in mat_(n times n)(KK) | det(A)eq.not 0}$ l'insieme delle matrici quadrate a valori nel campo $KK$ invertibili. Allora 

  $ (G_L (KK), dot)$ è un gruppo, dove "$dot$" è il classico prodotto tra matrici.
]

#xpl(title : text([$S_L (KK)$]))[
  Anche l'insieme $S_L (KK) :eq {A in mat_(n times n) | det A eq 1}$, dotato dell'operazione di prodotto tra matrici, è un gruppo.
]

#xpl()[$(ZZ, +), (QQ, +), (RR, +)$ sono gruppi]

#xpl()[$(QQ - {0}, dot) "e" (RR - {0}, dot)$ sono gruppi]

#def(title : "Gruppo Diedrale")[
  Sia $n >=3$, fisso un $n$-agono regolare nel piano. Considero l'insieme delle isometrie $D_n$ che preservano l'$n$-agono.\ Allora $(D_n, compose)$ è un gruppo, detto gruppo diedrale, dove l'operazione è la composizione di tali isometrie. 
]

#figure(
  image("images/D_3", width: 50%),
  caption: [Diedrale del triangolo]
)

#ex[
  Stabilire perché i seguenti *non* sono gruppi
  + L'insieme delle matrici $n times n$ con l'usuale prodotto tra matrici 
  + L'insieme delle matrici invertibili con l'usuale somma tra matrici 
  + Gli insiem $ZZ, QQ, RR$ con l'suale operazione di prodotto 
]
#sol[
  + L'insieme delle matrici $n times n$ con l'usuale prodotto tra matrici non è un gruppo, perché l'elemento neutro è la matrce identità, ma la matrice nulla per la matrice identità non fa la matrice identità.

  + La somma tra matrici invertibili non è un gruppo perché non è vero che la somma di matrici invertibili è ancora una matrice invertibile. 

  + Gli insiemi $ZZ,QQ,RR$ dotati dell'operazione di prodotto non sono gruppi perché l'elemento neutro sarebbe 1, ma $0 dot 1 eq 0$.
]

#ex[Dimostrare che l'elemento neutro $e$ di un gruppo è unico.]
#sol[
  La verifica è immediata. infatti, siano $e, e' in G$ tali che $e dot g eq e' dot g $, allora basta moltiplicare ambo i membri dell'equazione a destra per $g^(-1)$ e si ha che $e eq e'$.
]

#ex[Dimostrare che l'inverso di ogni elemento è unico]
#sol[
  Sia $g in G$ e siano $h_1, h_2 in G$ tali che $g h_1 eq g h_2 eq e$. Allora basta moltiplicare ambo i membri per uno dei due tra $h_1 or h_2$ e si ha che $ h_1 g h_2 eq e h_2 eq h_1 g h_1 eq h_1 \ Aa h_1 eq h_2  $
]

#ex[Dimostrare che $(g h)^(-1) eq h^(-1) g^(-1)$]
#proof[\
  Per definizione $(g h)^(-1)$ è tale che $g h (g h)^(-1) eq e$
  
  Visto che $h^(-1)g^(-1) (g h) eq e$ la tesi è verificata. 
]

#pagebreak(weak : true)

== Sottogruppi 

#def[
  Sia $(G, circle.filled.tiny)$ un gruppo e $H subset.eq G$ un sottoinsieme.\ se $(H, circle.filled.tiny)$ è un gruppo, allora è detto *Sottogruppo di G* 
]

#oss[
  Sia $G$ un gruppo e $H lt.eq G$ un sottoinsieme di $G$, allora $H$ è un sottogruppo se e solo se 

  - $H$ è chiuso rispetto all'operazione di gruppo ereditata da $G$

  - $H$ è chiuso rispetto all'esistenza degli inversi 
]

#prop[\
  Sia $G$ un gruppo, $H subset.eq G, abs(H)<infi$, $H$ chiuso rispetto all'operazione di gruppo.\ Allora $H$ è sottogruppo di $G$.
]
#proof[\
  Dimostro che $(H, circle.filled.tiny)$ è un gruppo.

  - L'associatività è ereditata da $G$.

  - Il fatto che $H$ è chiuso rispetto all'operazione di gruppo, significa che $f g in H quad forall f,g in H$. 

  $ abs(H) < infi &Aa deg(g) eq n_g \ &Aa g^(n_g) eq e \ &Aa e in H $

  - Per lo stesso motivo, ho che $ forall g in H, space g^(n_g -1) in H Aa exists g^(-1) $
]

#xpl[\
  Dato $(ZZ, +)$, il sottoinsieme $ (m) eq {n dot m | n in ZZ} $ è un sottogruppo di $(ZZ,+)$
]

#xpl[\
  Sia $G$ un gruppo e sia $g in G$, allora il sottonsieme $ chevron.l g chevron.r eq {g^n | n in ZZ_(gt.eq 1)} $ è un sottoinsieme di $G$
]

#pagebreak(weak : true)

== Teorema di Lagrange 
#def(title : "Congruenza in modulo")[
  Sia $G$ un gruppo e $H<= G$ un sottogruppo. Siano $f,g in G$.\ $f "è detto congruo a" g mod H$ se 

  $ f^(-1) g in H $

  In questo caso la notazione sarà $ f equiv_H g quad "oppure" quad f equiv g space(mod H) $ 
]

#prop[\
  La proprietà di congruenza in modulo è una relazione di equivalenza, ossia 
  
  1. $f equiv_H f $

  2. $f equiv_H g Aa g equiv_H f $

  3. $f equiv_H g space and space g equiv_H h Aa f equiv_H h$
]
#proof[\
  + $f^(-1) f eq e space and space e in H Aa f equiv_H f$
  
  + $f equiv_H g Aa f^(-1) g in H Aa (f^(-1)g)^(-1) in H Aa g^(-1)f in H Aa g equiv_H f $

  + $f^(-1) g, g^(-1)h in H Aa H in.rev f^(-1)g g^(-1) h eq f^(-1) h $
]

#def(title : "Classi laterali")[
  Siano $(G,circle.filled.tiny)$ un gruppo, $H <= G$ un sottogruppo, $g in G$. Allora l'insieme 

  $ bold(g H) :eq {g dot h | h in H} $

  E' detto *Classe laterale sinistra* (o *laterale sinistro*) 
]

#prop(title : "Classe di equivalenza")[
  Sia $(G, circle.filled.tiny)$ un gruppo, $H<=G$ sottogruppo. Allora la classe di equivalenza di $g$ in $H$ è *$g H$*
]
#proof[\
  Sia $f in G$ tale che $f equiv_H g$. \ Allora $f^(-1) g in H Aa f^(-1)g eq h Aa f eq (h g^(-1))^(-1) eq g h^(-1)   $\ Ottengo quindi 

  $ [g, equiv_H] eq {g h^(-1) | h in H} eq {g h | h in h} $ 
]

#def()[
  L'insieme di tutte le classi laterali sinistre è denotato come 

  $ G slash.big H :eq {g H | g in G} $
]

#def()[
  Sia $(G, circle.filled.tiny)$ un gruppo e $H <= G$ un sottogruppo.\ H è detto *Sottogruppo normale di G* se $ g H eq H g quad forall g in G $ In tal caso la notazione sarà $ H subn G $
]

#prop[\
  Gli insiemi $G slash.big H "e" H backslash G$ hanno la stessa cardinalità.
]
#proof[\
  Basta costruire un'applicazione biunivoca tra i due insiemi. Come ad esempio 

  $ G slash H aa H backslash G "definita da" g H aa H g^(-1) $
]

#lemma[\
  Sia $(G, dot)$ un gruppo, $H <= G$, $g in G$ fissato.\ Allora l'applicazione $ H aa g H "definita da" h aa g h $ è biunivoca. 
]
#proof[\
  
  Dimostro che l'applicazione è sia iniettiva che suriettiva 

  #rmb[Un'applicazione $scr(f) : A aa B $ è:
    $ 
      &circle.filled.small "Iniettiva se" wide &&scr(f)(a_1) eq scr(f)(a_2) Aa a_1 eq a_2 \ 
      &circle.filled.small "Suriettiva se" &&scr(f)(A) eq B 
    $ 
  ]

  Siano $h_1, h_2 in H$ tali che $g h_1 eq g h_2$. \ Allora moltiplico ambi i membri a sinistra per $g^(-1)$ e ottengo $h_1 eq h_2$. Ciò mi da l'iniettività. 

  La suriettività è invece data dalla definizione di $g H$.
]

#pagebreak(weak : true)

#prop[\
  Sia $G$ un gruppo e $H <= G$. Allora tutti i laterali sinistri e destri hanno la stessa cardinalità. 
]
#proof[\
  dal lemma precedente sappiamo che $abs(f H) eq abs(H) eq abs(g H) $. \ Per quanto riguarda i laterali destri, basta fare lo stesso ragionamento \ con l'applicazione $H aa H g$
]

#def()[
  Sia $G$ un gruppo e $H <= G$

  - L'*ordine di $G$* è la cardinalità di $G$, ovvero $abs(G)$
  
  - L'*indice di $H$ in $G$* è la cardinalità di $G slash H$, ovvero il numero di laterali sinistri

  Userò la notazione $bold([G : H]) eq abs(G slash H)$.
]

#prop[\
  Sia $G$ gruppo *finito*, $H <= G$, allora $abs(G) eq [G :H] dot abs(H)$
]
#proof[\
  Dalla proposizione precedente segue che tutti i laterali di $H$ hanno la stessa cardinalità. Dunque l'enunciato segue dalla definizione di $[G : H]$.
]

#theo(title : "Teorema di Lagrange")[
  Sia $(G, circle.filled.tiny)$ un gruppo *finito*, $H <= G$ un suo sottogruppo. Allora l'ordine di $H$ divide L'ordine di $G$.
]
#proof[\
  Dalla proposizione precedente segue che $abs(G)/abs(H) eq [G :H] in ZZ_(>=1)$ 
]

#cor[\
  Sia $G$ un gruppo finito e $g in G$. Allora $deg(g)$ divide l'ordine di $G$
]
#proof[\
  Considero il gruppo $ chevron.l g chevron.r :eq {g^n | n = 1, dots, deg(g)} $

  Per il Teorema di Lagrange si ha la tesi
]

#oss[Dal corollario segue che, per $G$ gruppo finito, $quad g^abs(G) eq e quad forall g in G$]

#pagebreak(weak : true)

#cor[\
  Sia $G$ gruppo finito di ordine primo. Allora

  - $exists g in G$ tale che $chevron.l g chevron.r eq abs(G)$

  - $G$ non possiede sottogruppi non banali 
]
#proof[\
  L'ordine di $G$ è $p$ primo. Allora l'ordine di un elemento $g in G$ può essere $1 or p$

  Se $deg(g) eq 1 Aa g eq e$

  Se $g != e Aa deg(g) eq p  Aa chevron.l g chevron.r eq G $ 
]

#pagebreak(weak : true)

= Proprietà dei sottogruppi  

#prop[\
  Sia $G$ un gruppo e $H,K lt.eq G$ sottogruppi, all ora $H inter K lt.eq G$ è ancora un sottoinsieme di $G$
]
#proof[\
  Basti notare che viene preservata sia la chiusura rispetto all'operazione, che quella relativa all'esistenza dell'inverso. 
]

#oss[
  Il viceversa non è vero, infatti: 

  +  Presi $ G :eq (chevron.l g chevron.r, compose) union H:eq (chevron.l h chevron.r,compose)$ Due gruppi tali che \ $ord(G) eq p_1 "primo" ord(H) eq p_2 "primo", p_1 != p_2$. \ Allora si ha che \ Presi due elementi $g in G, h in H, g,h eq.not e Aa (g compose h) in.not G union H $

  + Siano $p, q in ZZ_(gt.eq 1) "primi",quad (p),(q) lt.eq (ZZ,+)$ Allora \ $ p + q in.not (p)union(q) $

  *N.B* Ciò che si perde è la chiusura rispetto all'operazione di gruppo. 
]

Esiste comunque un modo per generare un gruppo a partire da due sottogruppi. L'idea è quella di estendere il gruppo agli elementi composti in modo da ottenere la chiusura.

#def()[
  Siano $H,K lt.eq (G, compose)$ due sottogruppi. Definisco \ $ H K eq { h compose k | h in H, k in K } $
]<H_K>

#prop[\
  Siano $H,K lt.eq G$, allora \ $H K lt.eq G "se e solo se" H K eq K H$
]
#proof[\
  - $(Aa)$  Se $H K lt.eq G $ allora è chiuso rispetto all'operazione e agli inversi, quindi 
    $ H K &eq {h k | h in H, K in K}  eq {(h k)^(-1) | h in H, k in K} \ &eq {k^(-1)h^(-1) | k in K, h in H }  eq {k h | h in H, k in K} eq K H $

  - $(arrow.double.l)$ Se $ H K eq K H$ allora
  + presi $h_!, h_2,k_1,k_2$ si ha che $(h_1 k_1) (h_2 k_2) eq h_1 (k_1 h_2) k_2 eq h_1 (h_3 k_3) k_1 in H K $
  + preso $h k in H K, (h k)^(-1) = k^(-1) h^(-1) eq tilde(h) tilde(k) in H K$ 
]

#pagebreak(weak : true)

#prop[\ Se $G$ è abeliano allora $H K <= G$]
#proof[\ Se $G$ è abeliano allora $h k eq k h$. La dimostrazione è quindi analoga a quella precedente.]

#prop[\
  Sia $G$ un gruppo, $H, K lt.eq G$ due sottogruppi finiti. Allora $ abs(H K) eq (abs(H) abs(K))/(abs(H inter K)) $
]
#proof[\
  La tesi è valida se $H inter K eq {e}$. Suppongo quindi intersezione non banale e verifico che la formula sia ancora valida.

  $ 
    abs(H K) &eq abs(H) dot abs(H K slash H) eq abs(H) dot abs({H k | k in K, k in.not H}) \
    &eq abs(H) dot abs({k | k in K, k in.not H}) eq abs(H) dot abs(K - (K inter H)}) eq abs(H) dot abs(K)/abs(K inter H)
  $ 
]

#def(title : "Sottogruppo generato da un sottoinsieme")[
  Sia $G$ un gruppo e $X subset.eq G$ un suo sottoinsieme. E' definito il *Sottogruppo generato da X* come segue 

  $ chevron.l X chevron.r :eq inter.big_(H lt.eq G \ X subset.eq H) H $

  Denoteremo inoltre nel seguente modo i casi:  
  - $X_1, X_2 subset.eq G, "allora" chevron.l X_1, X_2 chevron.r :eq chevron(X_1 union X_2) $
  - $g_1, dots , g_n in G, "allora" chevron(g_1 ","dots "," g_n) :eq chevron({g_1,dots,g_n}) $
]

#prop[\
  Siano $H,K lt.eq G$ due sottogruppi. Allora $H K lt.eq G "se e solo se" chevron(H union K) eq H K$ 
]
#proof[\ 
  $(Aa)$ \ 
  $chevron(H union K) gt.eq H K$. Se $H K$ è un sottogruppo allora sono proprio equivalenti 
  
  $(space arrow.double.l space)$ \
  Se $chevron<H union K> eq H K Aa$ La tesi è banalmente verificata per definizion di sottogruppo 
]
#pagebreak(weak :true)
== Sottogruppi di $ZZ$

#theo(title: $"Caratterizzazione dei sottogruppi di" (ZZ,+)$)[
  Sia $H lt.eq (ZZ,+)$ un sottogruppo, allora $exists m in ZZ_(gt.eq 1) | H eq (m) $
]
#proof[\
  Per $H eq {0} or H eq ZZ$ la tesi è banalmente vera.\ Ora considero un sottogruppo $H lt.eq ZZ$ non banale. \
  $H$ contiene elementi strettamente positivi, in quanto chiuso rispetto all'inverso. Definisco \ $m eq min{n in ZZ_(gt.eq 1) | n in H}$.\ Allora $H eq (m)$. 
]

#ex[Verificare che l'insieme dei laterali sinistri $ZZ slash (m)$ eredita l'operazione + e forma un gruppo]
#sol[
  Per definizione si ha che $ZZ slash (m) eq {z dot (m) | z in ZZ}$.\ Quindi per ogni $z in ZZ$ si ha che $z(m) eq {z m z' | z' in ZZ}$.\ Identificando $l eq z m$ si può associare $z(m) "a" (l) eq (z m)$ che è un sottogruppo di $ZZ$. 
]

*Notazione:* Seguendo la @H_K[definizione], il gruppo generato da \ $(a),(b) lt.eq (ZZ,+)$ si scriverà $(a)+(b)$

#ex[
  Dimostrare che $(a) lt.eq (b) "se e solo se" b | a "(b divide a)"$
]
#proof[\
  $(a) lt.eq (b)$ se e solo se $exists t in ZZ "tale che" (a) eq t(b)$ se e solo se $a/b eq t$.
]

#prop[\
  Dati $a,b in ZZ, quad m :eq "mcm"(a,b), quad M :eq"MCD"(a,b),space$ vale \ 
  + $(m) eq (a) inter (b)$
  + $(M) eq chevron((a)","(b)) eq (a)+(b)$
]
#proof[\
  + $z in (m) Aa z eq t (a b) Aa z eq cases((t a) b Aa z in (b), (t b)a Aa z in (a)) Aa z in (a)inter(b)$
  
  + Il fatto che $M$ sia MCD significa che $a eq t_1 M "e" b eq t_2 M$.\ $z in (a)+(b) Aa z eq s_1 a + s_2 b eq (s_1 t_1 + s_2 t_2)M$.\ Facendo variare $s_1 "e" s_2 in ZZ$ si ottengono tutte le combinazioni lineare di $s M, s in ZZ$ 
]

#pagebreak(weak : true)

== Sottogruppi di $C_n e D_n$  

#prop(title : [Dimensione di $D_n "e" C_n$])[
 Sia $n gt.eq 3$. Allora $ abs(C_n) eq n, quad abs(D_n) eq 2n $
]
#proof[\
  Consideriamo un n-agono nel piano. Fisso arbitrariamente un lato $l$. Ogni isometria del piano che preserva l'n-agono è univocamente determinata dall'immagine di $l$.\ Tale immagine $phi(l)$ dovrà necessariamente coindidere con uno dei lati dell'n-agono, in una delle due possibili orientazioni. Da cui si ottiene 

  - $abs(D_n) eq 2n$ poiché sono possibili entrambe le orientazioni 
  - $abs(C_n) eq n$ poiché è possibile scegliere una sola delle due orientazioni possibili. 
]

#oss[
  - $D_n$ è composto da n rotazioni e n riflessioni 
  - $C_n$ è il gruppo ciclico $chevron(rho)$ dove $ord(rho) eq n$
]

#prop(title : [Caratterizzazione di $D_n$])[
  Sia $n gt.eq 3$, allora di $D_n eq chevron(rho "," sigma)$\ dove $rho$ è il numero di rotazioni che preservano l'orientazione e $sigma$ è la riflessione rispetto al lato dell'n-agono.
]
#proof[
  Basta scrivere $H eq chevron(rho) "e" K eq chevron(sigma)$.\ Si ha che $abs(H) eq n, quad abs(K) eq 2, quad H inter K eq {e}. $\ Allora per i risultati visti in precedenza di ha che $abs(H K) eq (abs(H) abs(K))/(abs(H inter K)) eq abs(H) abs(K) eq 2n $.\ Visto che $abs(D_n)eq 2n$ la tesi è dimostrata.
]

#prop[
  Sia $n gt.eq 3$ allora
  + $D_n eq {rho^i sigma | i = 1,dots,n} union {rho^i | i = 1,dots,n}$
  + $sigma rho^i eq rho^(n-i) sigma$
]
#proof[
  + La prima parte dell'enunciato è ovvia
  + $rho^i sigma rho^i sigma eq id Aa sigma rho^i sigma eq rho^(n-i) Aa sigma rho^i eq rho^(n-i) sigma$
]

#ex[
  Sia $n gt.eq 3$ Dimostrare che se $H lt.eq C_n$, allora $H eq chevron(rho^d)$ dove $d | n$ 
]

#ex[
  Sia n ≥ 3 e sia H ≤ Dn un sottogruppo. Allora
H = 〈ρ d 〉
oppure
dove d , i ∈ Z sono interi positivi tali che d | n e 1 ≤ i ≤ d .
]

#ex[Si esibiscano un sottogruppo normale e un sottogruppo non normale di D3]


