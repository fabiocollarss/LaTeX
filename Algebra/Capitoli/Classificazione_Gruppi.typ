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
= Classificazione dei gruppi di ordine minore di 8 

In questa sezione l'obiettivo è quello di classificare i gruppi di ordine minore di 8, a meno di isomorfismo. 

#oss(title : "Gruppi di ordine 1,2,3,5,7")[
  Sia $G$ un gruppo di ordine 1, allora necessariamente $G eq {e}$.\
  Sia $G eq p "con" p eq 2,3,5,7$. Allora necessariamente $G eq chevron(g)$\ per qualche $g "tale che" ord(g) eq p$.

  Allora esiste un isomorfismo di gruppi

  $ phi : G eq chevron(g) aa C_p eq chevron(rho) quad "definito da" quad phi(g) eq rho $

  Dunque a meno di isomorfismi un gruppo di ordine 1,2,3,5,7 è unico.
]

== Gruppi di ordine 4

#def(title : [Gruppo di Klein])[
  Il gruppo di Klein *$K_4$* è il gruppo delle isometrie del piano che preservano un rettangolo dato.

  Ossia $ K_4 eq chevron(sigma "," rho) eq {e, rho, sigma, sigma rho} $

  In questo gruppo ogni elemento ha ordine 2. 
]

#prop[
  Sia $G$ un gruppo in cui ogni elemento $g in G$ ha ordine ordine 2\ (ad eccezzione di $e$). Allora 

  + $G$ è abeliano

  + Se inoltre $abs(G) eq 4$ allora $G tilde.equiv K_4$
]
#proof[\
  + Visto che $ord(g) eq 2 space forall g in G$, ossia $g^(-1) eq g$, allora ho che 

    $ f g eq f^(-1) g^(-1) eq (g f)^(-1) eq g f $

  + Se inoltre $abs(G) eq 4$, allora ho che, presi comunque due elementi che non sono $e$, si ha che l'isomorfismo è definito dalla legge 
  $ phi : G aa K_4, wide phi(e) eq e, space phi(g_1) eq rho, space phi(g_2) eq sigma  $
]

#oss[
  Gli unici gruppi di ordine 4, a meno di isomorfismo, sono $K_4 "e" C_4$.
]

#pagebreak()

== Gruppi di ordine 6 

#prop[
  Sia $(G,compose)$ un gruppo. 

  + Se $abs(G) gt.eq 4 and ord(g) eq 2 space forall g in G$, alora $exists H subset.eq G "tale che" ord(H) eq 4$.

  + Se $abs(G) eq 6 "allora" exists f,g in G "tale che" ord(g) eq 2, ord(f) eq 3$.
]
#proof[
  + Considero due leementi distinti $f,g in G, space f,g eq.not e$. si ha che 

    $ (f g)^2 eq e, quad (f g)g eq f, quad (f g)f eq (g f)f eq g $
    
    Ogni elemento è inverso di se stesso, ossia $H tilde.equiv K_4$

  + Se $G tilde.equiv C_6$ allora $G$ contiene un elemento di ordine 2 e uno di ordine 3.\ 
    Se invece $G tilde.equiv.not C_6$ allora *non* contiene elementi di ordine 6.\
    Dal punto precedente segue che $G$ non può contenere esclusivamente elementi di ordine di ordine 1 e 2, altrimenti ammetterebbe un sootogruppo di ordine 4, contraddicendo il teorema di Lagrange.\
    Dunque $exists g in G "tale che" ord(g) eq 3$.\
    Infine, visto che $abs(G) eq 6 eq 2 dot 3$, allora per la proposizione precedente si ha che $exists g in G "tale che" ord(g) eq 2$.
]

#theo(title : [Caratterizzazione dei gruppi di indice 6])[
  Sia $(G,dot)$ un gruppo tale che $abs(G) eq 6$. Allora 

  $ G tilde.equiv C_6 wide or wide G tilde.equiv D_3 $
]
#proof[\
  Se $exists g in G "tale che" ord(g) eq 6 Aa G tilde.equiv C_6$.\
  Suppongo quindi che non ci siano elementi di ordine 6 in $G$. Posso allora scrivere $G$ come 

  $ G eq {e}union{g in G | ord(g) eq 2}union{g in G | ord(g) eq 3} $

  Avendo già verificato che esistono elementi di ordine 2 e 3, considero i sottogruppi generati. 

  $ H eq chevron(s), wide K eq chevron(r) $

  Ho che $abs(H K) eq abs( K H) eq 6 eq abs(G)$, dunque $H K eq K H eq G$.\ Per definizione ho che 

  $ H K eq {e, r ,r^2, s, s r, s r^2} wide "e" wide K H eq {e, r, r^2, s, r s, r^2 s} $

  Ne deduco che $s r eq r s or s r eq r^2 s$

  - $s r eq r s Aa G "abeliano" Aa ord(r s) eq 6 quad arrow.zigzag$

  - $s r eq r^2 s Aa G tilde.equiv D_3$ 
]

#pagebreak()

== Gruppi di ordine 8

#xpl[\
  $ psi : Z slash (8) &arrow.long C_8 \ psi(m) &arrow.bar.long g^m $
  è un isomorfismo.

  $psi$ è iniettivo poiché $g^n eq g^m arrow.double.l.r.long n equiv m space mod(8) $
]

#prop[\
  Sia $G "gruppo tale he " abs(G) eq 8 and ord(g) eq 2 space forall g in G$. Allora $G tilde.equiv ZZ slash (2) times ZZ slash (2) times ZZ slash (2) $
]
#proof[
  - Siano $a,b in G, space a,b eq.not e$. Allora $b a eq b^(-1) a^(-1) eq (a b)^(-1) eq a b Aa G "è abeliano"$.

  - Siano inoltre $a eq.not b eq.not e$, allora $a b eq.not e$. Inoltre $(a b)^2 eq e, (a b)b eq a, (a b)a eq b$ e ogni elemento è inverso di sé stesso $Aa chevron(a","b) tilde.equiv ZZ slash (2) times ZZ slash (2) $.\ A questo punto prendo $c in.not chevron(a","b)$ e ottengo che $G eq chevron(a","b","c)$.

  L'isomorfismo è dunque 

  $ phi(a) eq (1,0,0),quad phi(b) eq (0,1,0), quad phi(c) eq (0,0,1) $
]

#prop[\
  Sia $G$ gruppo di ordine 8 ma non isomorfo né a $C_8$ né a $ZZ slash(2) times ZZ slash (2) times ZZ slash (2)$. Allora 
  
  + $G$ contiene un elemento di ordine 4

  + $G$ è isomorfo al gruppo $ZZ slash(2) times ZZ slash (4)$
]
#proof[
  + Visto che l'ordine degli elementi di $G$ divide $abs(G)$, se non tutti gli elementi di $G$, a parte l'identità, sono di ordine 2, allora né deve esistere almeno uno di ordine 4.

  + Sia $h in G | ord(h) eq 4, space H eq chevron(h)$.\ Dal momento che $[G:H] eq 2 Aa H subn G$.\ Il quoziente $G slash H$ è ciclico di ordine 2.\ Dunque esiste $g in G | G slash H tilde.equiv chevron(g H) "e" g^2 H eq H. Aa g^2 in H$.
    - Se $g^2 eq h or g^2 eq h³ Aa G eq C_8 quad  arrow.zigzag$.

    - Se $g^2 eq e Aa G eq chevron(g"," h | ord(g) eq 2"," ord(h) eq 4"," h g eq g h)tilde.equiv ZZ slash(2) times ZZ slash (4)$

    - Se $g^2 eq h^2$, definisco $hat(g) eq g h³$, così che\ $ord(hat(g)) eq 2 "e" G eq chevron(hat(g)","h | ord(hat(g)) eq 2"," ord(h) eq 4"," h hat(g) eq hat(g) h) tilde.equiv ZZ slash (2) times ZZ slash (4)$
]

#pagebreak()

#prop[\
  Se $G$ non è abeliano e $exists! H lt.eq G "tale che" H "ciclico" and abs(H)eq 4$, allora $G tilde.equiv D_4$
]
#proof[\
  
]

#prop[\
  Se $G$ non è isomorfo a nessuno dei gruppi precenti, allora $G tilde.equiv Q_8$
]
#proof[\
  
]

#pagebreak()

= Reticolo dei sottogruppi di un gruppo 

#def(title : "Reticolo dei sottogruppi")[
  Sia $G$ un gruppo. Il reticolo dei sottogruppi di $G$ è il grafo $Gamma_G$ definito come segue.

  - I vertici sono sottogruppi di $G$

  - esiste un lato $dash(H_1 H_2)$ fra due vertici se e solo se 

    $ H_1 lt.eq H_2 quad and quad exists.not K lt.eq G "tale he" H_1 lt.eq K lt.eq H_2 $
]

#figure(
  image("images/Reticolo_Sottogruppi_D_4.png", width: 100%),
  caption: [Reticolo dei sottogruppi di $D_4$], 
)

#pagebreak()

= Gruppo simmetrico 

#oss[\
  - Per definizione di $S_n$ sono applicazione biunivohe dall'insieme ${1,dots,n}$ in se stesso. Pertanto $S_n$ è il gruppo delle permutazioni di tale insieme.


  *Notazione:* Gli elementi di verranno contrassegnati come $sigma compose tau : eq sigma tau$ dove ovviamente si usa la regola di composizione, quindi $sigma tau eq sigma space \""dopo"\" space tau$

  - gli elementi possono essere scritti ad esempio come $tau eq (1 2 3)$ e si leggono da sinistra verso destra, ossia

    $ vec(1,2, 3) arrow.long^((1 2 3)) vec(3, 2, 1) $

    ossia "1 va in 2, 2 va in 3, 3 va in 1".
]

#lemma[\
  Sia $n in ZZ_(>0)$. Una permutazione $sigma in S_n$ decompone l'insieme $X eq {1,dots,n}$ in unione disgiunta di sottoinsiemi permutati ciclicamente.  
]
#proof[\

]

#prop[\
  Sia $n in ZZ_(>0)$. Ogni permutazione $sigma in S_n backslash {id}$ si esprime come composizione di permutazioni cicliche disgiunte 
]
#proof[Discente direttamente dal lemma precedente.]

#pagebreak()

#def[
  sia $n in ZZ_(gt 0)$. Data $sigma in S_n$ si definisce 

  - $Delta(x_1, dots,x_n) :eq product_(1 lt.eq i lt j lt.eq n) (x_i - x_j)$

  - $Delta^sigma (x_1,dots,x_n) :eq product_(1 lt.eq i lt j lt.eq n) (x_sigma(i) - x_sigma(j))$

  - $sgn(sigma) :eq (Delta^sigma)/(Delta) in {plus.minus 1}$
]

#prop[
  L'applicazione $sgn : S_n aa {plus.minus 1}$ è un omomorfismo di gruppi.
]
#proof[

]

#def(title : "trasposizione")[
  Sia $n in ZZ_(gt 0)$. Una permutazione $sigma in S_n$ si dice trasposizione se $sigma eq (i j) "per qualche" i eq.not j$.
]

#cor[\
  Sia $n in ZZ_(gt 0)$. Data una trasposizione $sigma in S_n$ si che $sgn(sigma) eq -1$. 
]
#proof[\
  
]

#pagebreak()

#prop[\
  Siano $k,n in ZZ$ tali che $ 2 lt.eq k lt.eq n$. Considero $k"-ciclo" sigma eq (i_1,dots,i_k) in S_n$. Allora

  + $sigma eq (i_1 i_2)(i_2 i_3) dots.c (i_(k-1) i_k)$

  + $sgn(sigma) eq (-1)^(k+1)$
]
#proof[

]

#prop[\
  Sia $n in ZZ$. per ogni $k in {1,dots,n-1}$ considero\ la trasposizione $sigma_k eq (k,k+1) "ed il ciclo" tau eq (1 dots n) "in" S_n$. Allora 

  + $tau^k compose sigma_1 compose tau^(-k) eq sigma_k$

  + $S_n eq chevron(sigma_1 "," tau)$
]
#proof[\
  
]

#pagebreak()

= Gruppo alterno 

#def(title : [Sottogruppo alterno $A_n$])[
  Sia $n in ZZ$ un intero positivo. il sottogruppo alterno $A_n subn S_n$ è definito da 

  $ A_n :eq {sigma in S_n | sgn(sigma) eq 1} $

  Una permutazione $sigma in S_n$ si dice *pari* se $sigma in A_n$ e *dispari* altrimenti.
]

#oss[
  Dal momento che $sgn : S_n aa {plus.minus 1}$ è un omomorfismo di gruppi, si ha che $A_n eq ker(sgn) subn S_n$ è un sottogruppo normale.
]

#prop[\
  Sia $n gt.eq 2$ un intero. Allora 

  + $[S_n : A_n] eq 2$

  + $[H : A_n inter H] eq 2$ per ogni sottogruppo $H lt.eq S_n$ tale che $H subset.eq.not A_n$
]
#proof[\
  E' sufficiente dimostrare la seconda parte dell'enunciato. Sia dunque $H lt.eq S_n$.\
  Due permutazioni $sigma, tau in S_n$ sono congruenti modulo $A_n$ se e solo se $sigma^(-1) tau in A_n$.\
  Ovvero se e solo se 

  $ sgn(sigma)sgn(tau) eq 1 $

  Pertanto esistono due laterali sinistri dati da 

  $ H inter A_n wide and wide H backslash (H inter A_n) eq {sigma in H | sgn(sigma) eq -1} $
]

#pagebreak()

#ex(title : [Sottogruppi di $A_4$])[
  Considero il sottogruppo alterno $A_4 subn S_4$.

  + Determinare tutti gli elementi di $A_4$.

  + Dimostrare che il sottoinsieme $V :eq {id, (1 2)(3 4), (1 3)(2 4), (1 4)(2 3)}subset.eq A_4$ è un sottogruppo di $A_4$ isomorfo al gruppo di Klein $K_4$.

  + Dimostrare che $A_4$ non contiene sottogruppi di ordine 6.
]
#sol[

]

#ex(title : [Sottogruppi di $S_4$])[
  Considero il gruppo simmetrico $S_4$

  + Determinare il numero di sottogruppi di $S_4$ di ordine 2 e 3. 

  + Determinare tutti i sottogruppi di $S_4$ *non* ciclici di ordine 4.

  + Determinare tutti i sottogruppi di $S_4$ di ordine 6.

  + Determinare tutti i sottogruppi di $S_4$ di ordine 8.

  + Determinare tutti i sottogruppi di $S_4$ di ordine 12.
]
#sol[

]


