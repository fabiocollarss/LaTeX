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
#show link: text.with(fill: blue)
#show ref: text.with(fill: blue.darken(50%))

#show math.equation: i-figured.show-equation.with(only-labeled: true)
#show heading: i-figured.reset-counters

#show: great-theorems-init 

//INIZIO DEL TESTO 


//PRIMA PAGINA  

#align(center + horizon)[
  #text(size: 26pt, weight: "bold" )[Appunti di Fisica Generale 2]
  #v(1cm)
  #text(size: 14pt, style: "italic")[Fabio Colletti]
  #v(4cm)
  #text[]
]

#align(bottom + center)[
  #block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  stroke: 0.5pt + luma(150),
    [
      Questo documento è rilasciato sotto *licenza Creative Commons 
      Attribuzione 4.0 Internazionale (CC-BY-NC-SA 4.0).*
    ]
  )
]
#pagebreak(weak : true)

//INDICE 
#outline(
  title: "Indice", 
  indent: 1.5em,
)

#set page(numbering: "i")
#counter(page).update(1)

//PREMESSA 
#heading(numbering: none)[Premessa]

//Qui va messa la premessa 
ciao :)

#pagebreak(weak : true)

#set page(numbering: "1")
#counter(page).update(1)
#set text(size: 11pt)

//TESTO

= Introduzione 

== Storia 

#text(fill : red, [Aggiungere un'introduzione storica])

== Costanti di uso frequente

- Costante dielettrica del vuoto: $quad ep_0 eq 8,85 dot 10^(-12) [F/m]$

- Permeabilità magnetica nel vuoto: $quad mu_0 eq 4pi dot 10^(-7) [H/m]$

== Operatori vettoriale e cambiamenti di variabili 

#text(fill: red, [scrivere gradiente, divergenza, etc.])

- *Coordinate cartesiane*

Elemento di volume: $quad dd tau eq dd x dd y dd z$

- *Coordinate polari*

Trasformazione $(x,y) aa (rho, theta)$

Elemento di superficie $dd tau eq rho dd rho dd theta$


- *Coordinate cilindriche* 

Traformazione $(x,y,z) aa (rho, theta, z)$

$x eq rho cos theta, quad y eq rho sin theta$

Elemento di volume: $quad dd tau eq rho dd rho dd theta dd z$

- *Coordinate sferiche*

Trasformazioe $(x,y,z) aa (rho, theta, phi.alt)$

Elemento di volume $dd tau eq rho sin^2 phi.alt dd rho dd theta dd phi$


#pagebreak(weak : true)

= Campo elettrostatico 

== Forza elettrostatica 

Cos'è una carica elettrica? La carica elettrica è una proprietà di praticamente ogni corpo. \ Sappiamo che il mondo macroscopico è composto di atomi. Tali atomi sono fatti a loro volta da elettroni, protoni e neutroni. \ Immaginiamo che i protoni abbiamo una carica positiva $Q_+$, e gli elettroni una carica negativa $q_-$.\ I neutroni invece, come derivabile dal nome, hanno carica "nulla". \ *L'universo ha deciso che due cariche di segno opposto si attraggono, e due cariche di segno uguale si respingono.*  

L'unità di misura delle cariche è il *Coulomb* $[C]$. 

Uno dei primi risultati ottenuti sperimentalmente è la forza che attrae o respinge tra loro due oggetti carichi.

*P.S.*: In questa prima istanza consideriamo solo le forze in gioco di tipo elettrostatico, quindi ignoriamo completamente qualsiasi tipo di interazione gravitazionale, di attrito etc. 

#def(title: "Forza elettrostatica")[
  Siano date due cariche puntiformi di cariche rispettivamente $q_1,q_2 in RR$. Siano le cariche poste a distanza $r$.\ Sia $arrow(r)_(1,2)$ il vettore di $RR^3$ che parte da $q_1$ e arriva a $q_2$. Allora la forza elettrostatica che la carica $q_1$ imprime sulla carica $q_2$ è data dalla legge $ arrow(F)_(1,2) eq (q_1 q_2)/(4 pi ep_0 r^2)hat(r)_(1,2) $ 
]

#oss[Segue da questa definizio che $arrow(F)_(1,2) eq - arrow(F)_(2,1)$]

*N.B:* In queste note $arrow(r) = $vettore, $r = $ modulo di $arrow(r)$, $hat(r) = $ versore di $arrow(r)$. \ Inoltre non mi farò alcun tipo di problema a non specificare mai la differenza tra punti di $EE^3$ e vettori di $RR^3$.

#pagebreak(weak : true)

== Derivazione del campo 

Il concetto di campo elettrostatico deriva direttamente da quello della forza. L'obiettivo con cui è nato questo concetto è quello di voler trovare un modo per misurare "l'influenza" di un dato corpo nello spazio circostante. 

*Idea Euristica*\ Consideriamo una particella di carica $Q$. A questo punto prendo un'altra carica puntiforme $q$ dove $q << Q$ e la posiziono a distanza $arrow(r)$ da $Q$.\ Il campo di $Q$, che indichiamo con la lettera $arrow(EE)$, nel punto $arrow(r)$, vale $ arrow(E)(arrow(r)) eq lim_(q aa 0) arrow(F_arrow(r))/q eq lim_(q aa 0) 1/q dot (Q q)/(4 pi ep_0 r^2)hat(r) eq Q/(4 pi ep_0 r^2)hat(r) $

Da questo idea nasce la seguente definizione. 

#def(title : [Campo elettrostatico])[
  Il campo elettrostatico generatico da una carica puntiforme $Q$ vale 
  
  $ arrow(E)(arrow(r)) eq Q/(4 pi ep_0 r^2)hat(r) $

  L'unità di misura del campo elettrico è $[N/C] "oppure" [V/m]$
]

#oss[
  Vale il pricipio di sovrapposizione. Quindi dato un sistema materiale composto da $N$ cariche puntiformi, si ha che $ arrow(E)(arrow(r)) eq sum_(k=1)^N arrow(E)_i (arrow(r) - arrow(r)_i) $
  Dove $arrow(r)$ è il punto su cui vogliamo valutare il campo e $arrow(r)_i$ è il punto dove è disposta la carica $Q_i$.
]

Mettiamo subito all'opera tali informazioni viste fino ad ora con un esempio. 

#pagebreak(weak : true)

#xpl(title : [campo elettrico di un dipolo])[
  Siano date due cariche $q_1$ e $q_2$ posizionate sull'asse delle ordinate (asse y) a distanza rispettivamente $d/2 "e" -d/2$ dall'origne.\ Le cariche valgono $q_1 eq q, q_2 eq -q, "con" q in RR_+ $.\ Consideriamo il punto $p eq (d,0)$ sull'asse delle ascisse.

- Calcolare il campo elettrico del dipolo nel punto $p$. 
]
#sol[\
  In questo caso la strategia si basa sul valutare singolarmente i due campi elettrici, e poi utiizzare il principio di sovrapposizione.

  Ragiono sulla carica $q_1$ posta in $q_1 eq (0, d/2)$, mentre $p eq (d,0)$.\ Allora $ &arrow(r) eq p - q_1 eq vec(d, -d/2) \ &r eq abs(r) eq sqrt(arrow(r)^2) eq d/2 sqrt(5) \ &hat(r) eq arrow(r)/r eq vec(2/sqrt(5),-1/sqrt(5)) $

  Da ciò si ottiene il campo generato da $q_1$ $ arrow(E)_(q_1) (arrow(r)) eq q/(4 pi ep_0 (d/2 sqrt(5))^2) hat(r) eq q/(5 pi ep_0 d^2) vec(2/sqrt(5),-1/sqrt(5)) $

  Con lo stesso ragionamento si ottiene $ arrow(E)_q_2 (arrow(r)) eq q/(5 pi ep_0 d^2)vec(-2/sqrt(5),-1/sqrt(5)) $

  Quindi il campo totale del dielettrico valutato in $arrow(r)$ vale $ arrow(E)(arrow(r)) eq 1/(5 pi ep_0 d^2)(-2)/(sqrt(5))hat(j) $
]

#ex[
  Determinare il campo totale, in analogia con la configurazione dell'esempio precedente, ma con entrambe le cariche di carica positiva. 
]

#pagebreak(weak : true)

== Campo elettrico di un corpo 

A questo punto ha senso introdurre il metodo per scrivere il campo generato da una distribuzione continua di cariche, sia questa un filo, una superficie o un volume.\ Sia dato un cerco corpo, la sua carica sarà data dall'integrale su di esso della sua densità. 

*Filo* $aa Q eq int_gamma lambda(t) dd t $

*Superficie* $aa Q eq int_Sigma sigma(x_1,x_2) dd S $

*Volumi* $aa Q eq int_Omega rho(x_1,x_2,x_3) dd tau $

Da cui il campo magnetico generato da una superficie segue la legge 

$ arrow(E)_"corpo" (arrow(r)) eq int arrow(E)_(arrow(r)_i)(arrow(r) - arrow(r)_i) $

Dove $arrow(E)_arrow(r)_i (arrow(r) - arrow(r)_i)$ è il campo generato dall'elemento di carica infinitesimo del corpo.

#pagebreak(weak : true)

#xpl(title : [Campo elettrico gerato da un filo indefinito])[
  Pongo un filo indefinito con densità di carica costante $lambda$ sull'asse z. Determinare l'espressione del suo campo elettrico.   
]<xplFilo>
#sol[\
  Per risolvere questo problema, inziamo osservando che il sistema ha un simmetria rotazionale. Ossia che $abs(E(arrow(r))) = E(arrow(r))$ è costante per ogni raggio $rho$ fissato. \ ne deduco che in questo caso vale $ arrow(E) (arrow(r)) = E(arrow(r)) hat(r) eq E(rho)hat(r) $
  Cerco quindi di determinare $E(rho)$. \ Per farlo considero l'elemento di campo elettrico generato da un elemento di filo $dd z$. 

  $ dd E_(dd z)(rho) &eq (lambda dd z)/(4 pi ep_0 abs(rho^2 + z^2))rho/(sqrt(rho^2 + z^2)) \ &eq (lambda rho dd z)/(4 pi ep_0 (rho^2 + z^2)^(3/2)) $

  Ora integro sulla lughezza del filo e ottengo 
  
  $ E(z) eq int_(-infi)^(+infi) d E_(dd z) eq (lambda rho)/(4 pi ep_0) int_(-infi)^(+ infi) 1/(rho^2 + z^2)^(3/2) dd z  $

  #rmk[che risolvo per sostituzione sfruttando la seguente identità 

  $ int (dd z)/(rho^2 + z^2)^(3/2) dd z eq int (dd z)/(z^3 (rho^2/z^2 + 1)^(3/2)) eq^(u eq 1 + d^2/z^2) -1/(2d^2) int u^(-3/2)dd z eq z/(d^2 sqrt(z^2 + d^2)) +C $
  ]
  Quindi 

  $ arrow(E)(arrow(r)) eq (lambda rho)/(4pi ep_0)[z/(d^2sqrt(d^2 + z^2))]_(-infi)^(+infi)hat(rho) eq lambda/(2 pi ep_0 rho)hat(rho) $
]

#oss[Il metodo usato in precedenza non vale per un filo filito. Infatti nello svolgimento abbiamo assunto che il campo dipendesse solo dal raggio, mentre per un filo finito questa cosa è falsa, infatti il campo dipende sia dal raggio che dal valore di $z$ del punto su cui vogliamo calcolare il campo]

#pagebreak(weak : true)

== Teorema di Gauss 
#def(title: [Flusso del campo elettrico])[Il flusso del campo elettrico lungo una *superficie chiusa* $Sigma$ è dato dall'integrale del campo sulla normale dell'elemento di superficie, ossia 
  $ Phi_arrow(E) (Sigma) eq integral.cont_Sigma arrow(E) dd arrow(S) $
]

Esiste un importante risultato, le cui applicazioni permettono di trovare il campo elettrico di alcuni sistemi dotati di simpatiche simmetrie. 

#theo(title : "Teorema di Gauss")[
  Il flusso di $arrow(E)$ nella superficie chiusa è pari al raporto tra la carica interna totale e $ep_0$.

  $ Phi_Sigma (arrow(E)) eq Q^"int"_"tot"/ep_0 $
]<gauss>
#proof[\
  Osserviamo l'elemento di flusso di una carica $Q$ interna a $Sigma$ $ dd Phi eq arrow(E) dd arrow(S) eq arrow(E)hat(n) dd S eq E cos theta dd S eq E dd S_n eq Q/(4 pi ep_0 r^2) r^2 sin theta dd phi dd theta  $

  Dunque $ Phi(arrow(E)) &eq integral.cont_Sigma dd Phi eq Q/(4 pi ep_0)int_0^pi int_0^(2pi) sin theta dd theta dd phi eq Q/ep_0  $

  Sommando su tutte le cariche presenti nel corpo si ottiene $ Phi(arrow(E)) eq Q^"int"_"tot"/ep_0  $

  Il flusso su una superficie chiusa di una carica esterna è nullo, in quanto tutte le linee di flusso entranti sono anche uscenti.\ *N.B:* come abbiamo visto prima, il flusso non dipende dalla distanza, ma dalla superficie, una carica esterna avrà due contributi al flusso uguali e di segno contrario perché la normale una volta è nello stesso verso del campo e una volta in segno opposto.  
]

#cor(title : "Prima equazione di Maxwell")[
  Dal @gauss[Teorema di Gauss] segue immediatamente il seguente risultato 
  $ div arrow(E) eq rho/ep_0 $
]<1aMax>
#proof[\
  Basta appplicare il teorema della divergenza
]

#pagebreak(weak : true)

#xpl(title : [Campo di una sfera])[
  Sia data una sfera di raggio $R$ e carica totale $Q$, densità di carica $rho$ è costante.\ Determinare l'espressione del campo generato dalla sfera in tutto lo spazio. 
]
#sol[
  Osservo che nel caso della sfera ho una simmetria radiale, quindi anche in questo caso $arrow(E)(arrow(r)) eq E(r)hat(r) $.\ Per il @gauss[Teorema di Gauss] ottengo che il flusso calcolato sulla superficie sferica di raggio $r in RR_+$ vale 

  $ Phi_S_r (arrow(E)) eq Phi_S_r (E(R)) eq Q(r)/(ep_0) eq cases(Q/ep_0 wide &"se" r >= R, Q/ep_0 (r/R)^3 quad &"se" r<= R) $

  Da cui si ottiene la seguente relazione 

  $ E(r) eq Q(r)/(4 pi ep_0 r^2) eq cases(
    Q/(4pi ep_0 r^2) wide &"se" r >= R,
    Q/(4 pi ep_0) r/R &"se" r<= R, 
  ) $

  Esprimendo $arrow(E)(arrow(r)) "come" E(r)hat(r)$ si ha il risultato. 
]

#oss[E' interessante osservare che nel caso della sfera uniformemente carica, il campo ha un andamento lineare per $r in (0,R]$ e poi invece si comporta come una carica puntiforme nel resto dello spazio.]

#xpl(title : [Piano indefinito])[
  Sia dato un piano indefinito di densità di carica costante $sigma$. Il piano è posizionato in corrispondenza del piano (x,y). Trovare l'espressione del campo elettrico nello spazio. 
]
#sol[\
  L'idea è quella di determinare il valore del flusso in un volume rettangolare.\ Considero quindi un rettangolo di altezza $h$ e supericie di base $a dot b$, e lo pongo a metà della sua altezza sul piano.\ In questo caso la simmetria è sulle traslazioni parallele all'asse (x,y), ossia $arrow(E)(arrow(r)) eq E(z)hat(z)$.\ Prima di calcolare il flusso, osserviamo che le linee di campo sono verticali, quindi il contributo nel flusso delle superfici laterali del rettangolo è nullo. Per il @gauss[Teorema di Gauss] si ha 

  $ Phi_R (arrow(E)) eq a b sigma/ep_0  $

  Ma allo stesso tempo si ha anche che vale 

  $ Phi_R (arrow(E)) eq^"def" eq int_R arrow(E)dd arrow(S) eq int_R E(z)hat(z)dd arrow(S) eq 2 int_0^a dd x int_0^b dd y E(z) eq 2 a b E(z)$

  Uguagliando queste due identità trovo 

  $ E(z) eq cases(sigma/(2ep_0) &"se" z>0, - sigma/(2 ep_0) quad &"se" z<0) $
]

#xpl(title : "due piani indefiniti di carica opposta")[
  In questo caso esprimiamo il campo elettrico in tutto lo spazio dato dal sistema composto da due piani paralleli $S_1 "e" S_2$ posti a quota $z "pari a" d/2 "e" -d/2$. sia $sigma >0$ la densità di carica superficiale, allora $sigma_1 eq sigma, sigma_2 eq - sigma$.  
]<xplPiani>
#sol[
  Il piano superiore ha densità di carica positiva, quindi linee di campo uscenti. Quello inferiore ha densità di carica negtiva, quindi linee di campo entranti. 

  Dall'esempio precedente otteniamo che $ &E_S_1 (z) eq sigma/(2 ep_0)hat(z) eq cases(
    sigma/(2 ep_0) &"se" z > d/2,
    -sigma/(2 ep_0) quad &"se" z<d/2 
  ) \ 
  &E_S_2 (z) eq - sigma/(2 ep_0) hat(z) eq cases(
    -sigma/(2 ep_0) quad &"se" z > -d/2, 
    sigma/(2 ep_0) &"se" z < d/2
  )
  $

  Da questa espressioni, per il principio di sovrapposizione, si ottiene 

  $ E eq cases( 
    -sigma/ep_0 quad &"se" z in (- d/2 , d/2),
    0 &"altrove"
  ) $
]

#ex[Calcola il campo in tutto lo spazio dato da due piani indefiniti con densità di carica uguale pari a $sigma$.]

#pagebreak(weak : true)

== Potenziale elettrico 

Il campo elettrostatico $arrow(E)(arrow(r))$ è conservativo. Quindi ha senso cercare l'espressione del potenziale elettrico, che indichiamo con la lettera $V(arrow(r))$. La sua unità di misura è il Volt [V].

Come è noto dal corso di Fisica I, vogliamo che il potenziale sia tale che $arrow(E)(arrow(r)) eq - grad V(arrow(r))$

Immaginiamo un sistema composto da una carica puntiforme Q centrata nell'origine.\ La differenza di potenziale tra due punti in questa configurazione è per definizione 

$ V(P_1)-V(P_2) eq int_(P_1)^(P_2) arrow(E)(arrow(r)) dd arrow(l) eq int_(r_1)^(r_2) eq Q/(4 pi ep_0 r) dd r eq Q/(4pi ep_0)(1/r_1 - 1/r_2)  $

Ossia 

$ V(r) eq Q/(4pi ep_0 r ) + C $

Nel caso di domini limitati, ponendo $V(infi) eq 0$, si ha $C eq 0$.\ Invece se il sistema di cariche è non limitato, si sceglie un punto $arrow(r)_0$ e si pone $V(arrow(r)_0) = 0$. 

Sempre per il principio di sovrapposizione, possiamo trovare l'espressione del potenziale anche nel caso di distribuzioni di cariche discrete e continue.

- *Distribuzioni discrete*
Siano $arrow(r)_i$ le coordinate dei punti del sistema discreto di cariche puntiformi. Allora il potenziale calcolato nel punto $P eq arrow(r)$ vale 

$ V(arrow(r)) eq 1/(4 pi ep_0) sum_i Q_i/(abs(arrow(r) - arrow(r)_i)) $

- *Distribuzioni continue*
Siano $arrow(r)'$ i vettori in $Omega$ Distribuzione di carica, sia $rho(arrow(r)')$ la densità di carica della distribuzione, allora 

$ V(arrow(r)) eq 1/(4pi ep_0) int_Omega rho(arrow(r)')/abs(arrow(r) - arrow(r)') dd Omega $ 

Dove $dd Omega "sta per" dd l, dd sigma o dd tau$ in base alla dimensione della distriubzione. 

#line(length: 100%, stroke :  0.5pt + gray)

#oss(title : "Terza equazione di Maxwell")[
  Il fatto che il campo elettrico $arrow(E)$ sia un campo conservativo, quindi in particolare è gradiente di un campo scalare, significa che il suo rotore è nullo, infatti $curl (grad V) eq 0$.\ L'dentità $ curl arrow(E) eq 0 $ è detta *Terza equazione di Maxwell*.
]

#oss(title: "Equazione di Poisson")[
  Dalla relazione tra $arrow(E) "e" V$ e dalla @1aMax[Prima equazione di Maxwell] segue che $ laplace V eq -rho/ep_0 $
]

#xpl(title : "Potenziale filo indefinito")[
  Calcolare il potenziale a distanza $r$ dal filo indefinito dell'esempio del @xplFilo[filo indefinito]. 
]
#sol[
  In questo caso il filo è infinito quindi non si può porre $C=0$.\ E' necessario quindi scegliere un punto privilegiato $arrow(r)_0$ e calcolare la differenza di potenziale a partire da esso.\ Il campo abbiamo visto che vale $arrow(E)(rho) eq (lambda)/(2pi ep_0 rho)hat(rho) $
  Quindi si ha 

  $ V(rho)-V(arrow(r)_0) eq int_(rho)^rho_0 (lambda)/(2pi ep_0 r) dd r eq lambda/(2 pi ep_0)ln(rho/rho_0) $
]
#xpl(title : "Potenziale di un piano indefinito")[
  Per il piano indefinito, allo stesso modo, scegliamo un punto a cui assegniamo arbitrariamente il valore $V(arrow(r)_0) eq 0.$\ Procediamo al calcolo esplicito ricordando che la formula del campo del piano è $E(r) eq sigma/(2 ep_0)$.
]
#sol[
  $ V(arrow(r))-V(arrow(r)_0) eq V(r)-V(r_0) eq int_r^r_0 E dd r eq -sigma/(2 ep_0) d $
  Dove $d eq abs(r_0 - r) "e" r_0 eq 0$
]

#xpl(title : "Potenziale di due piani paralleli di carica opposta")[
  Calcolare il potenziale nello spazio di due piani paralleli di densità di carica uguale in modulo e opposta di segno. La configurazione è la stessa dell'esempio sui @xplPiani[Piani paralleli] 
]
#sol[
  In analogia con il metodo precedente. Fissiamo un punto $P_0$ privilegiato in cui poniamo il potenziale arbitrariamente pari a $0$. Fatto ciò non ci resta che esplicitare il calcolo con la definizione di potenziale.

  All'esterno delle armature il campo è nullo, quindi il potenziale sarà costante,.\ Ossia si ha $V(z) eq C "se" abs(z)>d/2 $. Ponendo ad esempio $V(P_0) eq 0$ si ha potenziale nullo .

  All'interno delle armature invece si ha

  $ V(arrow(r)) - V(P_0) eq int_(z)^(z_0) -sigma/(ep_0) dd z eq -sigma/(ep_0)(z_0 -z) eq^(z_0 eq 0) sigma/(ep_0)z   $
]
#pagebreak(weak : true)

#xpl(title : "Potenziale di un filo di lunghezza finita")[
  Calcolare il potenziale $V(arrow(r))$ per un sistema che comprende un filo di lunghezza finita $L$ lungo l'asse $z$ e centrato nell'origine. 
]
#sol[
  #text(fill : red,[da fare!])
]

#xpl(title: "Potenziale di un anello")[
  Calcolare il potenziale di un anello sottile di raggio $R$ con asse $z$ e anello disposto sul piano $(x,y)$.
]
#sol[
  #text(fill : red,[da fare!])
]

#pagebreak(weak : true)

== Energia di una carica

Supponiamo di avere una configurazione stazionaria di $N$ cariche puntiformi disposte nello spazio. Vogliamo muovere una carica di prova $q_0$ da un punto $A$ ad un punto $B$. Quale sarà il lavoro che è necessario compiere?\

La carica di prova è soggetta alla forza $arrow(F)_E$ generata dal campo elettrico $arrow(E)$ della configurazione di cariche. Dunque il lavoro è pari all'opposto della forza lungo il tragitto.\ Definendo quindi $arrow(F)_L eq - arrow(F)_E$ si ha  

$ L_(A,B) eq int_gamma_(A,B) arrow(F)_L (q_0) dd arrow(l) eq -q_0 int_gamma_(A,B) arrow(E)(arrow(r)) dd arrow(l) eq q_0 (V(B)-V(A)) eq q_0 Delta V $

E' quindi possibile definire l'*energia potenziale* nel punto $arrow(r)$ come $U(arrow(r)) eq q V(arrow(r)) $ \ (avendo posto $V(infi) eq 0$). 

Sia la particella di massa $m$ e velocità $v$, otteniamo allora $ T eq 1/2 m v^2 $

Da cui si ha l'*energia elettrostatica* della particella $ E eq T + U eq 1/2 m v^2 + q V(arrow(r)) $

== Energia di un sistema di cariche 

Per un sistema discreto di cariche si ha $ U eq 1/2 sum_((i,j) \ (i != j)) (q_i q_j)/(4 pi e_o r_(i,j)) eq 1/2 sum_(i =1)^N q_i V(arrow(r)_i) $

Dove $V(arrow(r_i))$ è il potenziale di tutte le cariche tranne $q_i$

Portandolo al continuo si ottiene 

$ U eq 1/2 int_Omega rho(arrow(r)) V(arrow(r)) dd tau  $

Dove $V(arrow(r))$ è il potenziale dovuto a tutte le cariche 

#pagebreak(weak : true)

== Densità di energia elettrostatica 

In questa sezione sfruttiamo la seguente identità. 
#rmb[Dato un campo scalare $u : RR^n aa RR $ ed un campo vettoriale conservativo \ $arrow(v) : RR^3 aa RR^3 $ vale 
  $ div (u arrow(v)) eq grad u dot arrow(v) + u div arrow(v) $
]

Usando il fatto che $arrow(E) eq - grad V$, e sostituendo nella @1aMax[Equazione di Maxwell] si ha 

$ div (V arrow(E)) eq - arrow(E) dot arrow(E) + V div arrow(E) eq - E^2 + V rho/ep_0  $

Da cui 

$ V eq ep_0/rho [div (V arrow(E)) + E^2] $

Sostituendo nella formula dell'energia potenziale si ha 

$ U &eq 1/2 int_Omega rho V dd tau \ &eq 1/2 int_Omega ep_0 [div (V arrow(E)) + E^2]dd tau \ 
("Teo Div")&eq 1/2 int_(par Omega) ep_0 V arrow(E) dd arrow(sigma) + 1/2 int_Omega ep_0 E^2 dd tau $

Osservando che per $Omega aa RR^3$ l'integrale di superficie tende a zero. Quindi 

$ U eq (ep_0)/2 int_(RR^3) E^2 dd tau $

#def[La *Densità di energia potenziale* è definita come $ u eq ep_0/2 E^2 $]

Allora $ U eq int_(RR^3) u dd tau $

#pagebreak(weak : true)

#xpl(title : "Energia elettrostatica di una sfera")[

]
#sol[
  #text(fill : red, [Da fare!])
]

#pagebreak(weak : true)

== Sviluppo in serie di multipoli 

Si consideri una distribuzione di carica finita $rho (arrow(r)$ tale che la carica totale sia neutra. \ Se su $rho(arrow(r))$ non ci sono ipotesi di simmetria, come ad esempio quella sferica, non possiamo concludere nulla sul comportamento del campo "vicno" alla distribuzione. \ Nonostante ciò possiamo valutare il comportamento del campo "lontano" da tale distribuzione. 

Partendo dalla definizione di potenziale elettrico $ V(arrow(r)) eq 1/(4 pi ep_0) int_Omega rho(arrow(r)')/abs(arrow(r) - arrow(r)') dd tau' $

$ "A questo punto sviluppo"  1/abs(arrow(r) - arrow(r)') "in" arrow(r)' "attorno a" arrow(r)' eq arrow(0) $

$ lr(1/abs(arrow(r) - arrow(r)')|)_arrow(0) + lr( grad_arrow(r)' 1/abs(arrow(r) - arrow(r)') |)_arrow(0) &eq 1/r- (arrow(r)-arrow(r)')/abs(arrow(r) - arrow(r)')^3 (-1)arrow(r') \ &eq_(r'eq 0) 1/r + arrow(r)/r^3 dot arrow(r') $

Ottengo 

$ V(arrow(r)) tilde.eq 1/(4 pi ep_0 r)int dd tau' rho(arrow(r')) + arrow(r)/(4 pi ep_0 r^3)int dd tau' rho(arrow(r'))arrow(r') $

Osserviamo a questo punto che il primo integrale è la carica totale di $Omega$. \ Il secondo integrale è invece il momento di dipolo totale, indicato con $arrow(p)$. \ Ottiamo quindi 

$ V(arrow(r)) eq Q/(4 pi ep_0 r) + (arrow(r)dot arrow(p))/(4 pi ep_0 r^3) $<SviluppoMultipoli>

#oss[
  Questo svluppo verifica il fatto che, se la carica totale di un materiale è nulla, ma la sua distribuzione di carica è disomogenea, allora il potenziale è non nullo.\ Infatti anche per $Q eq 0$ il secondo membro è comunque non nullo se il momento il dipolo è diverso da zero 
]

#pagebreak(weak : true)

== Dipolo elettrico 

Dalla @eqt:SviluppoMultipoli[Formula dello sviluppo in multipoli] si ottiene il potenziale di un dipolo, centrato nell'roigine. \ Nel caso del dipolo la caricato totale $Q$ è nulla, quindi si ha 

$ V_"DIP"(arrow(r)) eq (arrow(r)dot arrow(p))/(4 pi ep_0 r^3) $

E' quindi possibile esprimere anche il campo in coordinate polari. \ Ricordanto che $grad eq (par_r, r^(-1)par_theta)$ si ottiene $ E eq (E_r, E,E_theta) eq (p cos theta)/(2pi ep_0 r^3), (p sin theta)/(4 pi ep_0 r^3) $

#line(length : 100%, stroke: 0.5pt + gray)

Ora invece immaginiamo il caso in cui il dipolo sia immerso in un campo elettrico esterno. \ Da differenziare il caso in cui sia omogeneo da quello in cui il campo è variabile. 

- *Campo costante* \ 
  In questo caso la forza totale è $F eq F_+ + F_- eq q(E -E) eq 0 $ N. \ Il momento $arrow(M)$ è invece non nullo, infatti $ arrow(M) &eq arrow(d)/2 times F_+ - arrow(d)/2 times F_- \ &eq arrow(d) times arrow(F)_+ \ &eq q arrow(d) times arrow(E) eq arrow(p) times arrow(E)  $

- *Campo Variabile* \ 
   Ipotizziamo che valga $d << r_-$, allora componente i-esima dela campo è $ E_i (arrow(r)_+) &eq E_i (arrow(r)_- + d) \ &eq E_i (arrow(r)_-) + lr(grad E_i |)_(arrow(r)_-) dot arrow(d) \ &eq E_i (arrow(r)_-) + arrow(d) dot grad E_i |_arrow(r)_- $

  E quindi $ arrow(F) &eq arrow(F)_+ + arrow(F)_-  \ &eq q[arrow(E) (arrow(r)_-) + arrow(d) dot grad arrow(E) |_arrow(r)_-] - q arrow(E)(arrow(r)_-) \ &eq arrow(p) dot grad arrow(E) |_arrow(r)_-  $

  Anche il momento $arrow(M)$ varia, infatti $ arrow(M) &eq arrow(d)/2 times arrow(F)_+ - arrow(d)/2 times arrow(F)_- \ &eq arrow(p) times arrow(E)(arrow(r)_-) + arrow(p)/(2 q) times (arrow(p) dot grad)arrow(E)|_arrow(r)_-  \ &tilde.eq arrow(p) times arrow(E)(arrow(r)_-) $

Infatti il secondo termine è trascurabile rispetto al primo visto che $d << r$

Per quanto riguarda l'energia, invece, $ U &eq L_- + L_+ \ &eq -q V(arrow(r)_-) + q V(arrow(r)_+) \ &tilde.eq -q V(arrow(r)_-) + q V(arrow(r)_+) + q grad V|_(arrow(r)_- dot arrow(d)) \ &eq arrow(p) dot grad V|_arrow(r)_- eq - arrow(p) dot arrow(E)|_arrow(r)_-  $

Riassumendo, 

$ arrow(F) eq arrow(p) dot grad arrow(E), wide arrow(M) eq arrow(p) times arrow(E), wide V eq - arrow(p) dot arrow(E) $

#pagebreak(weak : true)

= Conduttori 

== Introduzione 

Con conduttori, intendiamo un materiale in cui tutte le cariche sono libere di muoversi. \ Per definizione all'interno del canduttore, si ha che *$ arrow(E)_"int" eq  0 $<E_int_nullo> *

*N.B:* Presa una porzione della superficie del conduttore, il suo contributo del campo non è nullo. \ E' la somma di tutti i contributi del campo che rendono $arrow(E)_"int" eq 0 $

Elenco alcune conseguenze della nullità del campo elettrico internamente nei conduttori.

- La direzione del campo esterno al conduttore è ortogonale a quella della superficie.

- Continua a valore il Teorema di Coulomb, quindi in prossimmità della superficie di un conduttore, si ha $ arrow(E) eq sigma/epsilon_0 hat(n) $ Dove $sigma$ è la carica superficiale. 

- Il fatto che $arrow(E)_"int" eq 0$ implica che, sulla superficie del conduttore, il potenziale $V eq "costante"$. \ Ossia *la superficie del conduttore è equipotenziale*. 

- Sempre come conseguenza dell' @eqt:E_int_nullo[identità] segue che, per ogni superficie chiusa $S$ interna al conduttore $ Phi_S (arrow(E)) eq 0 $ Questo mostra che le cariche di un conduttore si dispongono tutte sulla superficie. 

#line(
  length: 100%, 
  stroke: 0.5pt + black
)

== Induzione

L'induzione è il fenomeno attraverso il quale due conduttori, non collegati, sono comunque influenzati tra loro dalle cariche poste su di essi.

Questo è uno di quei concetti che è reso charo da un esempio. 

#xpl[
  Siano date due gusci sferici, di spessore non trascurabile, e di cariche $Q_1, Q_2$ con $r_1 << r_2$. \ Sia il guscio più piccolo posto all'interno della porzione cava del guscio di raggio maggiore. \ Lo scopo è capire il comportamento del campo elettrico nello spazio.
]
#sol[
  Come visto in precedenza, si ha che all'interno di ogni conduttore, il campo deve essere nullo.

  #rmk[L'interno del conduttore della forma di un guscio sferico, non è l'interno della sfera, ma solo l'interno del materiale. C'è poi una porzione di spazio "vuoto" della sfera che non fa parte dell'interno del conduttore.]

  Dall'interno verso l'esterno abbiamo questa situazione: 

  - Il campo dentro *tutto* l'interno, compreso lo spazio vuoto, della prima sfera, è nullo. 

  - Il campo dipende dalla carica $Q_1$ fino a al guscio di $Q_2$. 

  - Il campo è nullo nel guscio di $Q_2$.

  - Nello spazio esterno il campo dipende da $Q_1 "e" Q_2$. 

  #figure(
    image(
      "images/gusci.jpg",
    )
  )
  
  E' proprio dentro il guscio di di $Q_2$ che avviene la particolarità. \ Visto che il campo è nullo, si viene a generare, sulla superficie interna del guscio, una carica di intensità $-Q_1$ per contrastare la carica del guscio interno. \ Per conservazione dell'energia, allora, sulla superficie esterna del guscio, ci sarà una carica di intensità uguale e opposta $Q_1$. \ Dunque la carica totale sul guscio esterno sarà $Q eq Q_1 + Q_2$. 
]

#pagebreak(weak: true)

== Capacità 
Dal calcolo del valore del potenziale, già visto in precedenza, si ha che, per $V(infinity) eq 0$. Si ottiene che $Q "e" V$ sono tra loro proporzionali. Infatti $ &V - V(infi) eq int_"conduttore"^infi arrow(E) arrow(dd l) \ &Q eq int_Omega rho(r') dd tau' $

Ma $arrow(E) $ è direttamente proporzionale alla densità del conduttore, quindi essendo la carica $Q$ l'integrale della densità, e $V$ l'integrale del campo, segue che anche queste due grandezze sono tra loro proporzionali. 

Da questa osservazione deriva la Capacità. 

#def(title: "Capacità")[
  La capacità in un condensatore è il rapporto $ C eq Q/(Delta V) $
]

Da questa definzione, e procedendo a dei calcoli formali che ora non farò si ottengono i seguenti risultati

#xpl(title : "capacità di una sfera conduttrice")[
  Esternamente si ha $ E eq Q/(4 pi ep_0)1/r^2 quad Aa quad V = V - V(inf) eq int_R^infi E dd r eq Q/(4 pi ep_0)1/R $
  Dunque $ C eq Q/(Delta V) eq (4 pi ep_0 R) $
]

#pagebreak(weak : true)
== Pressione elettrostatica 

 Le cariche sulla superficie di un condesatore, potessero, si muoverebbero oltre i limiti fisici del materiale. \ Questo non avviene, ma ciò comunque genera una pressione, detta pressione elettrostatica, che agisce sul conduttore stesso. \ Immaginiamo un eleemento di superficie $dd S$. Il campo totale in prossimità di esso è dato da $ arrow(E) eq arrow(E)^(dd S) + arrow(E)^(S - dd S) $ Essendo un conduttore, sppiamo che il campo totale deve valere $ arrow(E)_"ext" eq sigma/ep_0 hat(n), quad arrow(E)_"int" eq 0 $ Approssimando il campo dell'elemento $dd S$ del conduttore a quello di un piano si ha $ arrow(E)^(dd S)_"int" eq - sigma /(2 ep_0) hat(n), wide arrow(E)^(dd S)_"ext" eq sigma/(2 ep_0) hat(n) $ E quindi, per annullare il campo interno e raddoppiare quello esterno, deve essere $ arrow(E)^(S - dd S) eq sigma/(2 ep_0)hat(n) $

La forza che $S - dd S$ esercita su $dd S$, per la legge di Coulomb, vale $ arrow(F)^(dd S) eq arrow(E)^(S - dd S) sigma dd S eq sigma^2/(2 ep_0)hat(n) dd S $

La pressione elettrostatica vale dunque $ P eq (dd arrow(F)^(dd S) dot hat(n))/(dd S) eq sigma^2/(2 ep_0) eq 1/2 ep_0 E^2  $
#pagebreak(weak : true)
== Problema dell'energia elettrostatica 

Per via dell'induzione, segue che entrambe le grandezze $V_i$ e $sigma_i$ dipendono dagli altri conduttori nel sistema. Per determinare tali quantità, ci sono due metodi risolutivi in base alla richiesta del problema. 

1. *Problema di Dirichlet* \
Sono noti i potenziali $V_i$ dei conduttori e si vogliono determinare le cariche $Q_i$

Per la prima equazione di Maxwell si ha che $laplace V eq - rho/ep_0$

Per il problema di Dirichlet, se non sono presenti cariche localizzate, bisogna risolvere l'equazione di Laplace 

$ 
  cases(laplace V eq 0, 
    V eq V_i wide  &"su ciascuin conduttore",
    V(infi) eq 0
) $

Determinato $V(arrow(r))$ non mi resta che calcolare le cariche $Q_i$ attraverso i passaggi 

$ Q_i &eq integral.cont sigma_i dd S_i \ &eq ep_0 integral.cont arrow(E) dd arrow(S_i) \ &eq - ep_0 integral.cont - div V dd arrow(S)_i \ &eq - ep_0 integral.cont (par V)/(par n) dd S_i  $



2. *Problema di Neumann* \ 
Sono note le cariche $Q_i$ e si vogliono determinare i potenziali $V_i$

In assenza di Cariche localizzate, questo è l'inverso del problema precedente. \ In generale vi è una relazione del tipo $ V_i eq sum_j p_(i j) Q_j  $

Dove $p_(i j)$ sono detti *coefficienti di poteziale*, e $P : eq (p_(i j))$

Affinché tale equazione sia risolvibile, si deve avere 

+ $det P != 0 $
+ $p_(i j) eq p_(j i )$
+ $p_(i j ) > 0$
+ $p_( i i) > p_(i j)$



#pagebreak(weak : true)

#xpl(title : "Coefficienti di potenziale per due gusci concentrici")[
  Siano dati due gusci concentrici di raggi $R_1 < R_2$. . Esprimere la matrice dei coefficienti di potenziale del sistema. 
]
#sol[\


  Siamo nel vuoto e assumiamo inizialmente $Q_1 != 0 "e" Q_2 eq 0$.\ Come sappiamo $V(r > R_1) eq Q_1/(4 pi ep_0 r)$ e $V_2 eq Q_1 /(4 pi ep_0 R_2)$\ Nell'intercapedine tra i due gusci il campo ha espressione $arrow(E)(arrow(r)) eq Q_1/(4 pi ep_0 r^2)hat(r)$ \ La differenza di potenziale vale $ V_1 - V_2 eq int_(R_1)^(R_2) arrow(E) dd arrow(l) eq Q_1/(4 pi ep_0)(1/R_1 - 1/R_2) $ \ Da cui $V_1 eq V_2 + Q_1/(4 pi ep_0)(1/R_1 - 1/R_2) eq Q_1/(4 pi ep_0 R_1) $

  Se invece assumo $Q_1 eq 0 "e" Q_2 !=0$ ottengo $V_2 eq Q_2/(4 pi ep_0 R_2)$

  Dunque ottengo $P eq 1/(4 pi ep_0 R_1 R_2)mat(R_2, R_1; R_1, R_1 )$
]

#xpl(title : "Capacità condensatore piano")[
  Determinare la capacità di un condensatore piano di carica $Q$
]
#sol[\
  La capacità è data dalla formula $C eq Q/(Delta V)$

  In questo caso la carica è data dalla formula $Q eq sigma S$, dove $S$ è la superficie dela piano 

  La differenza di potenziale è invece $Delta V eq int_0^d arrow(E) dd arrow(l) eq int_0^d sigma/ep_0 dd t eq sigma d/ep_0 $

  Quindi 

  $ C eq (sigma S)/(sigma d/ep_0) eq ep_0 S/d $
]

#xpl(title: "Capacità condensatore cilindrico")[
  Determinare l'espressione della capacità di un condensatore cilindrico di carica $Q$, raggio interno $r_"int"$ e raggio esterno $r_"ext"$. 
]
#sol[\
  Per determinare la soluzione, di nuovo calcolo il campo elettrico per trovare la diffenza di potenziale.
  
  #text(fill : red, [da finire!])

  La carica è data dall'integrale sulla superficie del 

  $ C eq 2pi ep L/(log(r_"ext"/r_"int")) $
]

#xpl(title : "Capacità condensatore sferico")[

] 
#sol[
  #text(fill : red, [da finire!])

  $ 4pi ep (r_"int" r_"ext")/(r_"ext" - r_"int") $
]  

#pagebreak(weak : true)

== Condensatori in serie ed in parallelo 
  
  Nel caso di circuiti elettrici, si parla di condensatori in serie se sono disposti uno dopo l'altro seguendo la corrente. Si parla invece di condensatori in parallelo se il filo ha una o più biforcazioni in cui ognuna è disposta un condensatore, e poi questi di riuniscono.

 #image("images/capacitori.png")
 
- *Capacità condensatori in parallelo* 
  
  Nel caso di condensatori in parallelo si ha che su ogni condensatore è "disposta"" la stessa differenza di potenziale $Delta V$.\
  
  Ciò significa che $C_1 eq Q_1/(Delta V), C_2 eq Q_2/(Delta V), dots$

  Quindi 
  
  $ C_"eq" eq C_1 + C_2 + dots + C_n $

- *Capacità condensatori in serie* 

  Nel caso di condensatori in serie, ciò che rimane costante è invece la carica su ogni condensatore. 

  Ciò significa che $C_1 eq Q/(Delta V_1), C_2 eq Q/(Delta V_2). dots$
  
  $ 1/C_"eq" eq 1/(C_1 + C_2 + dots + C_n) $

== Energia e forza di un condensatore 

Come visto nelle sezioni precedenti, l'energia è data dalla formula $U eq 1/2 Q Delta V$ 

Sfruttando le identità $Q eq C Delta V$ e $Delta V eq Q/C $ si ottengono 

$ U eq 1/2 C Delta V^2 eq 1/2 Q^2/C $

La forza tra le armature di un condensatore piano ha espressione $F(arrow(r)) eq Q arrow(E)(arrow(r))$

$ F eq Q sigma/ (2ep_0) eq Q (Q)/(2 ep_0 S) eq Q^2/(2 ep_0 S) $

#pagebreak(weak : true)

= Dielettrici

I dielettrici, o isolanti, sono dei materiali che alterano il comportamento del campo elettrico al loro interno. \ Esistono due "tipi di comportamento dei dielettrici". 

Sperimentalmente si osserva che un condensatore con al suo interno materiale dielettrico, presenta un poenziale $V < V_0 "e una capacità" C > C_0$. 

Viene definita la *costante dielettrica relativa* $ ep_r eq C/C_0 > 1 $

Da cui discende la *costante dielettrica assoluta* $ ep eq ep_r ep_0 $

+ *Polarizzazione per deformazione*

  Immaginiamo un volume $Omega$ composto da materiale dielettrico *neutro*. Supponiamo poi che sia immerso in un campo elettromagnetico $E_"ext"$. Allora i singoli atomi che lo compongono si "deformano".\ Il nucleo degli atomi, positivo, andrà verso potenziale maggiore, mentre gli elettroni, di carica negativa, andranno verso potenziali minori.\ Si viene quindi a geneare, in ogni atomo un momento di dipolo.   

+ *Polarizzazione per orientamento*

  Nella polarirrazione per orientamento, la differenza sostanziale è che gli atomi che compongono il dielettrico *non sono neutri*. Ognuno di essi ha un momento di dipolo per la sua struttura atomica, ossia come se fosse una caratteristica intrinseca dell'atomo, chimicamente. Questi momenti però sono "sparsi e direzionati casualmete nello spazio", quindi macroscopicamente il momento è nullo.\ Quando però il materiale dielettrico è immerso in un campo elettrico, a quel punto gli atomi di orientano, e quindi si viene a generare un campo interno dato dall'orientazione, per l'appunto, di tutti i momenti di dipolo lungo le linee del campo. 

#def[Una delle grandezze più importanti è il vettore di polarizzazione
  $ arrow(P) eq lim_(Delta tau aa 0) (Delta arrow(p))/(Delta tau) $
  (Che è il momento di dipolo per unità di volume)
]

$chi$ è la suscettività dielettrica e vale $chi eq N[alpha_"def" + alpha_"orient"] tilde.eq N[4pi R^3_(a t)1/(3 ep_0)p_0^2/(k T)]$ 

Dove $N$ è il \# di particelle per unità di volume.

Inoltre vale la relazione $ep_r eq chi +1 $

#pagebreak(weak : true)

== Descrizione mascroscopica della polarizzazione 

In un mezzo isotropo e lineare si ha: $arrow(P) eq ep_0 chi arrow(E) eq ep_0(ep_r -1)arrow(E)$

#def(title: "Vettore spostamento elettrico")[
  Una grandezza altrettanto importante, definita come 
  $ arrow(D) eq ep_0 arrow(E) + arrow(P) eq ep_0 ep_r arrow(E) $
]
Il vettore di polarizzazione è l'elemento cardine per calcolare le densità di carica di polarizzazione. 

== Densità volumetrica e superficiale di carica di polarizzazione 

Il contributo al potenziale elettrico dell'elemento di di volume di un dielettrico $dd tau'$ può essere valutato attraverso l'espressione del potenziale di dipolo 

$ d V(arrow(r)) &eq (arrow(P)(arrow(r')) dot (arrow(r) - arrow(r)'))/(4 pi ep_0 abs(arrow(r)-arrow(r'))^3)dd tau' \ &eq (arrow(P)(arrow(r')))/(4 pi ep_0) dot grad_(arrow(r')) (1/abs(arrow(r) - arrow(r'))) dd tau' \ ("prop. gradiente")&eq 1/(4 pi ep_0) nabla_arrow(r') dot ((arrow(P)(arrow(r)))/(abs(arrow(r)-arrow(r')))) dd tau' - 1/(4 pi ep_0) (nabla_arrow(r')dot arrow(P)(arrow(r')))/(abs(arrow(r)-arrow(r'))) dd tau'  $

Quindi 

$ V(arrow(r) &eq int_Omega 1/(4 pi ep_0) nabla_arrow(r') dot ((arrow(P)(arrow(r')))/(abs(arrow(r)-arrow(r')))) - 1/(4 pi ep_0) (nabla_arrow(r') dot arrow(P)(arrow(r')))/(abs(arrow(r)-arrow(r'))) dd tau' \ ("teo div")&eq 1/(4 pi ep_0)int_(par Omega) (arrow(P)(arrow(r')) dot hat(n))/abs(arrow(r)-arrow(r')) dd S' - 1/(4 pi ep_0)int_Omega (nabla_arrow(r') dot arrow(P)(arrow(r')))/(abs(arrow(r)-arrow(r')))dd tau'  $

Queste cariche sono due tipi di cariche distinte, infatti: 

- $sigma_"pol" eq arrow(P) dot hat(n)$ è la densità superficiale di carica di polarizzazione.

- $rho_"pol" eq - div arrow(P) $ è la densità volumetrica di carica di polarizzazione.

Dalle identità sviluppate sino ad ora seguono le *Equazione dell'elettrostatica in presenza di dielettrici*

- $curl arrow(E) eq 0 $

- $div arrow(D) eq rho$ 

- $integral.cont arrow(E) dd arrow(l) eq 0$

- $int_Sigma arrow(D) dot hat(n) dd S eq Q_"lib"$

#pagebreak(weak : true)

== Condizioni di continuità all'interfaccia fra due mezzi

Nel caso dei dielettrici, al loro interno, il campo può presentare delle discontinuità. Ciò rendere il flusso di $arrow(E) != 0$ anche nel caso in cui la carica interna totale sia nulla.\ Il vettore spostamento risolve questo problema in quanto "non considera" le cariche di polarizzazione, e quindi l'integrale sul volume darà la carica libera. 

Da questo ne deduciamo che il vettore spostamento $arrow(D)$ è costante lungo la sua componente normale nell'interfaccia tra due mezzi.

L'integrale su cammino chiuso del campo, invece, rimane nullo. Ciò significa che la sua componente tangenzale all'interfaccia tra due mezzi rimane nulla. 

- $E_(t 1) eq E_(t 2) $

- $D_(n 1) eq D_(n 2)$

#pagebreak(weak : true)

= Correnti stazionarie 



#def(title : "Densità di corrente")[
  $ arrow(J) eq n q arrow(v) eq rho arrow(v) $
]

#def(title : "Intensità di corrente")[
  $ I eq (dd q)/(dd t) eq Phi_Sigma (arrow(J)) eq int_Sigma arrow(J) hat(n) dd S $

  La sua unità di misura è L'ampère $[A]$
]

*N.B* $1 C eq 1 A dot s$

#prop(title : "Equazione di continuità")[
  *In generale* vale 
  $ div arrow(J) eq - (par rho)/(par t) $
  Dunque, nelle *correnti stazionarie*, dove la carica è costante, si ha 
  $ div arrow(J) eq 0 $
]
#proof[ Sia dato un volume $Omega$, allora la variazione di carica rispetto al tempo segue la formula 
  $ (dd Q)/(dd t) eq - integral.cont_(par Omega) arrow(J) dd arrow(S) $
  Dove la derivata rispetto al tempo della carica ha si scrive come 
  $ dd /(dd t) Q eq dd/(dd t) int_Omega rho(arrow(r),t) dd tau eq int_Omega par/(par t) rho(arrow(r),t) dd tau $
  Mentre, per il teorema della divergenza, il flusso della densità di correnta vale 
  $ integral.cont_(par Omega) arrow(J) dd arrow(S) eq int_Omega div arrow(J) dd tau $
  Eguagliando le quantità dentro il segno di integrale si ottiene la tesi.
]
#pagebreak(weak : true)
#oss[ Dal teorema della continuità segue che la densità di corrente ortogonale alla direzione del filo conduttore è nulla, ossia $ J_tack.t eq 0 $
]

#theo(title : "Prima legge di Kirchhoff (o legge dei nodi)")[
  Sia dato un nodo di un circuito a cui sono collegati più fili che trasportano corrente. Allora 
  $ sum_k I_k eq 0 $
]
#proof[\ Prese due sezioni di un conduttore, per l'equazione di continuità la corrente entrante in $S_1$ e quella uscente in $S_2$ devono equivalersi.
]

Spertimentalmente si osserva che vale la seugente identità\ 
*Legge di Ohm*: $arrow(J) eq sigma arrow(E) wide $ 

Dove $sigma eq $ è detta *conducibilità*, ed il suo inverso $rho eq 1/sigma$ è detto *resistività*. 

Come conseguenza della Legge di Ohm, vale il seguente risultato 

#theo[\ Se la conducibilità è indipendente da $arrow(r)$ e la corrente è stazionaria, allora
  $ div arrow(J) eq sigma div arrow(E) eq 0 $
]

#cor[Le cariche, all'interno di un conduttore omogeneo dove scorre corrente stazionaria, si dispongono tutte sulla superficie]

#pagebreak(weak : true)

== Legge di Ohm per conduttori macroscopici

Dalla legge di Ohm segue che anche il campo elettrico interno ad un conduttore è parallelo alla superficie del conduttore stesso.\ Visto che, come sappiamo, il campo elettrico alle interfacce è continuo nella sua componente tangenziale, si ha 

$ 
  &arrow(E)^"ext"_"//" eq arrow(E)^"int"_"//" eq arrow(E)^"int" eq  arrow(J) / sigma \
  &arrow(E)^"ext"_tack.t eq sigma_c/ep_0 
$

Sia la conducibilità uniforme, allora vale $ div arrow(E)_"int" eq 0 quad Aa quad laplace V_"int" eq 0 $

Internamente alla superficie laterale di un conduttore in cui scorre corrente si ha che $arrow(E) eq arrow(E)_"||"$ allora $(par V)/(par hat(n)) eq 0 $.\ Prendendo in esame un conduttore cilindrico direzionato lungo l'asse $hat(z)$, si ha che $V(z) eq (V(0) z)/L$.\ Segue che il campo è $arrow(E) eq - div V eq - V(0)/L hat(z)$

Ottengo quindi che la corrente vale 

$ I eq int_S arrow(J) dd arrow(s) eq J S eq sigma E S eq sigma S/L V_0 eq sigma S/L (V_0 - 0) eq sigma S/L (V_A - V_B) $

E dunque come formula inversa si ha $ Delta V eq I dot rho L/S $



Definisco la *resistenza* di un conduttore attraverso l'identità $R eq rho L/S$. \ Da cui si ottiene la formula $ Delta V eq R I $ Detta *Legge di Ohm per conduttori macroscopici* (o resistori).

*N.B.* l'unità di misura della resitenza è L'Ohm, $1 Omega eq 1 V/A $

#pagebreak(weak : true)

== Resistori in serie e in parallelo 

- *Resistenze in serie*
  
  Nei resistori in serie l'intesità di corrente che scorre in ogni resistore è la stessa, mentre Potenziale elettrico ha una caduta ad ogni interazione con un resistore, dunque $R_1 eq (Delta V_1)/I, R_2 eq (Delta V_2)/I, dots $
  
  $ R_"eq" eq R_1 + R_2 + dots + R_n $

- *Resistenze in parallelo* 
  
  Nei resistori in parallelo è la differenza di potenziale a rimanere costante,\ quindi  $R_1 eq (Delta V_1)/I, R_2 eq (Delta V_2)/I, dots$
  
  $ 1/R_"eq" eq 1/(R_1 + R_2 + dots + R_n) $

== Effetto Joule 

Il passaggio di corrente in un conduttore è euristicamente equivalente al passaggio di cariche da un punto di potenziale maggiore ad uno di potenziale minore. Questo lavoro, se la corrente è stazionaria, non fa aumentare la velocità delle cariche. Dunque ciò significa che l'energia viene dissipata.

#def(title : "Potenza")[
  Sia $W$ l'energia del sistema, allora 
  $ P eq (dd L)/(dd t) $

  In forma locale $dd P eq arrow(J) arrow(E) dd tau$
]

#theo(title : "Terza legge di Ohm")[
Su un conduttore finito vale $ P eq I Delta V  eq I^2 R eq (Delta V^2)/R $

]
#proof[ 
  Basta osservare che $dd L eq -dd U eq dd Q Delta V eq I Delta V dd t $
]


Si può ottenere la densità di potenza dissipata, che ha espressione $w eq (dd^2 L)/(dd t dd tau) eq arrow(J) dot arrow(E) eq sigma E^2 $

//#pagebreak(weak : true)
== Seconda legge di Kirchhoff

#theo(title:"Seconda legge di Kirchhoff (o legge delle maglie) ")[ $ quad sum_k I_k R_k eq sum_k V_k $ ]
#proof[
  La dimostrazione segue dall'applicazione della prima legge di Ohm per conduttori macroscopici ad una maglia di conduttori.
]

#pagebreak(weak: true)

= Correnti non stazionarie

Un *circuito RC* è un circuito con 3 elementi in serie: un generatore di tensione f, un resistore R e un capacitore C. \ Immaginiamo che sia inoltre presente un interruttore per scollegare dal circuito il generatore, e formare così un circuito chiuso per il condensatore e il resistore. \ Immaginiamo che il capacitore sia scarico, e ad un istante $t_0$ attacchiamo il generatore. 

Per la legge di Kirchhoff di questa maglia si ha $ f - R I - Q/C eq 0 $

Sostituirendo nella formula $I eq (dd Q)/(dd t) $ si ha 

$ f eq R (dd Q)/(dd t) + Q/C $

Questa EDP ha soluzione $ Q(t) eq f C (1 - e^(-t/tau)) $

Dove $tau := R C $ è detto *Tempo di Ricarica*

Da questa formula si ricava, per l'identità $ I eq (dd Q)/(dd t)$, che l'espressione di $I(t)$ è 

$ I(t) eq f/R e^(- t/tau) $

Mentre quella per la differenza di potenziale si ricava da $Delta V eq R I$, quindi 

$ Delta V (t) eq f (1 - e^(- t/tau)) $

Per $t aa infi $ si ha che \ 
- $Q(t) aa Q_max eq f C$ \  
- $I(t) aa 0 $
- $Delta V(t) aa f $

Se, a capacitore carico, si "stacca" il generatore, lasciando chiuso il circuito tra condensatore e resistore, si ha che $ R I + Q/C eq 0 $ 

Che ha soluzione $ Q(t) eq Q_max e^(-t/tau) $

Da cui si ricavano $ Delta V(t) eq Q(t)/C wide "e" wide I(t) eq Q(t)/(R C) $

Osserviamo che $Q(t) aa 0 $, quindi anche $Delta V (t) "e" I(t) $ tendono ad annullarsi per $t aa infi$.


#pagebreak(weak : true)

= Magnetismo 

== Introduione ai fenomeni magnetici

Sperimentalmente si verifica che vale la *Seconda formula di Laplace* $ dd arrow(F)_m eq I dd arrow(l) times arrow(B) $

*N.B.* L'unita di misura del campo magnetica è il Weber su metro quadro, $[B] eq [N/(A m)] eq [(W b)/m^2]$ \ Alternativamente c'è il Tesla $1 T eq 1 (W b)/m^2$ \ Oppure anche il Gauss $1 G eq 10^(-4) T $

Dalla seconda formula di Laplace, che si usa per fenomeni "macroscopici", si può ricavare la legge che governa la forza magnetica che agisce sulle cariche, quindi nel "microscopico". \ Ricordando che $I dd arrow(l) eq arrow(J) dd S dd l $ si ottiene $ dd arrow(F)_m &eq (dd S dd l arrow(J)) times arrow(B) \ &eq (dd S dd l) (n q arrow(v)_d) times arrow(B) \ &eq n dd S dd l space q arrow(v)_d times arrow(B)   $

Quindi una singola particella di carica $q$ e velocità $arrow(v)$ è sottoposta ad una forza $ arrow(F)_m eq q arrow(v) times arrow(B) $

Questa forza di origine magnetica è detta *Forza di Lorentz*

#oss[La forza di Lorentz, in quanto ortogonale a $arrow(v)$, non compie lavoro]

== Moto di una carica in un campo magnetico 

La forza totale agente su di una carica immersa in un campo elettromagnetico vale 

$ arrow(F) eq arrow(F)_m + arrow(F)_e eq q(arrow(E) + arrow(v)times arrow(B)) $

Consideriamo quindi una carica che si muove all'interno di un campo magnetico. Esprimiamo la velocità della carica nelle sue componenti parallele e ortogonali al campo $arrow(B)$. \ Dunque $arrow(v) eq arrow(v)_tack.t + arrow(v)_parallel $\ Dalla forza di Lorentz si deduce che il moto risultante della particella sarà un *moto elicoidale*. 

Il raggio dell'elica, detto *raggio di ciclotrone*, si ottiene dalla formula del moto circolare uniforme $ F eq m v^2_tack.t / R $ da cui $ R eq (m v_tack.t)/(abs(q)B) eq (m v sin theta)/(abs(q) B) $

Mentre il *periodo di ciclotrone* si ottiene dalla formula $ T eq (2 pi R)/v_tack.t eq (2 pi m)/(abs(q) B) $

== Prima formula di Laplace 

Empiricamente si trova che un filo indefinito percorso da corrente $I$ genera un campo magnetico $arrow(B)$ circolare rispetto all'asse del filo e con verso che segue la regola della mano destra. Infine l'intensità di tale campo è direttamente proporzionale alla corrente, ed inversamente alla distanza $ B eq k_m I/r $

Dove $k_m eq mu_0/(2 pi)$ \
Dove $mu_0$ è la *costante di permeabilità magnetica nel vuoto* e vale $ mu_0 eq 4 pi dot 10^(-7) [H/m] $

#oss[detta $c$ la velocità della luce, vale $ep_0 mu_0 c^2 eq 1$]

#def(title : [Prima formula di Laplace])[
  L'elemento infinitesi di campo magnetico generato da una corrente, ha la forma 

  $ dd arrow(B)(arrow(r)) eq (mu_0 I)/(4 pi) (dd arrow(l) times (arrow(r)-arrow(r)'))/(abs(arrow(r) - arrow(r)')^3) $
]

La sua formulazione integrale è detta *Legge di Ampère-Laplace* 

$ arrow(B) eq (mu_0 I)/(4pi) integral.cont_"Circuito"  (dd arrow(l) times (arrow(r)-arrow(r)'))/(abs(arrow(r) - arrow(r)')^3) $

Se, inoltre, il circuito non è filiforme si usa la densità di corrente 

$ arrow(B) eq mu_0/(4pi) integral.cont_("V"_"circ") dd tau' (arrow(J)(arrow(r)) times (arrow(r)-arrow(r)'))/(abs(arrow(r)-arrow(r)')^3)  $

Da queste formule si ricavano: 

#def(title : "Campo magnetico generato da una carica in movimento")[
  Il campo magnetico generato da una carica $q$ in moto è definito come 

  $ arrow(B) eq mu_0 /(4pi) q (arrow(v) times arrow(r))/(r^3) $
]

- Il campo magnetico generato da una corrente ha invece formula $ arrow(B) eq mu_0/(4pi) I int (arrow(dd l) times arrow(r))/(r^3) $

#pagebreak(weak : true)

== Applicazioni della prima formula di Laplace

Da questa equivalenza di ricavano esplicitamente le formule dei seguenti casi 

- filo indefinito: $arrow(B) eq mu_0/(2pi) I/r hat(tau) $

- sull'asse di una spira circolare: $arrow(B) eq mu_0/2 I R^2 /sqrt((R^2 + z^2)^3 ) hat(k) $

- Interno solenoide indefinito: $B eq mu_0 I n wide $ \ (dove $n eq N/L$ è la densità del numero spire)

== Forza tra fili rettilinei 

Sperimentalmente si trova che due fili paralleli su cui scorre corrente hanno come interazione un'allontanamento se la corrente è discorde, ed un avvicinamento se è invece concorde. 

Il verso di questa forza di attrazione/repulsione è dettata dalla regola della mano destra.

#pagebreak(weak : true)

== Potenziale vettore 

#def(title : "Potenziale vettoree")[
  E' quel campo vettoriale $arrow(A)$ il cui rotore da il campo magnetico, ossia 
  $ arrow(B) eq curl arrow(A) $
]
#theo(title : "Espressione del potenziale vettore")[
  $ arrow(A)(arrow(r)) eq mu_0/(4 pi) integral dd tau' (arrow(J)(arrow(r)))/(abs(arrow(r)-arrow(r)')) $
]
#proof[
  $ 
  curl arrow(A)(arrow(r)) &eq mu_0/(4 pi)int curl (arrow(J)(arrow(r')))/abs(arrow(r)-arrow(r'))dd tau' \ 
  &eq mu_0/(4pi) int grad (1/abs(arrow(r)-arrow(r'))) times arrow(J)(arrow(r')) dd tau' \ 
  &eq - mu_0/(4pi) int (arrow(r)-arrow(r'))/abs(arrow(r)-arrow(r'))^3 times arrow(J)(arrow(r')) dd tau' \ 
  &eq mu/(4 pi) int (arrow(J)(arrow(r'))times (arrow(r)- arrow(r')))/abs(arrow(r) - arrow(r')) dd tau' eq arrow(B)(arrow(r))
  $
]
#cor(title: "Seconda equazione di Maxwell")[
  $ div arrow(B) eq 0 $
]
#proof[
  La divergenza di un rotore è nulla.
]
#cor[
  Come corollario del corollario, segue che si ha anche 
   $ int_(Sigma_"closed") arrow(B) dot hat(n) dd S eq 0 $
]
#oss[
  Il fatto che la divergenza del campo magnetico sia nullo, è il fatto fisico che ci dice che non ci possono essere poli magnetici isolati.
]

#pagebreak(weak : true)

== Libertà di Gauge 
Così come il potenziale elettrostatico è definito a meno di una costante additiva, allo stesso modo il potnziale vettore del campo magnetico è definito a meno di un campo vettoriale a rotore nullo. 

Ossia data $f eq f(arrow(r))$ campo scalare, visto che $curl grad f eq 0 $, allora il potenziale vettore $arrow(A)' eq arrow(A) + grad f $ soddisfa ancora la definizione. 

Questa arbitrarietà permettere di scegliere $arrow(A)$ tale che $div arrow(A) eq 0 $. Tale scelta è detta *Gauge di Coulomb*.

== Quarta equazione di Maxwell e teorema della circuitazione

Dall'espressione per il potenziale $laplace V eq - rho/ep_0 $ si ottiene che 

- Equazione del poteniale vettore: $laplace arrow(A) eq - mu_0 arrow(J)$
- $curl arrow(B) eq mu_0 arrow(J)$

#cor[\
  La circuitazione di $arrow(B)$ lungo una linea chiusa intorno ad un circuito dove scorre correte $I$ vale 

  $ integral.cont_L arrow(B) dd arrow(l) eq int_S_L curl arrow(B) dd arrow(S) eq mu_0 int_S_L arrow(J) dd arrow(S) eq mu_0 I $
]

#cor[\
  $integral.cont arrow(B) times arrow(dd l) eq mu_0 sum I_"conc"$
]

#pagebreak(weak:true)

== Forza elettromotrice indotta 

#def(title : "Forza elettromotrice")[
  Le correnti indotte dalla variazione dei campi magnetici sono esprimibili come 
  $I eq f_i /R $

  Dove $f_i$ è la forza elettromotrice indotta, e R è la resistenza del circuito. \ La $f_i$ si può a sua volta ricavare dalla *Legge di Faraday-Neumann* $ f_i eq - (dd Phi(arrow(B)))/(dd t) $ 
]

- $f_i eq - (dd Phi(arrow(B)))/(dd t) eq - dd/(dd t) int_Sigma arrow(B) times hat(n) dd S eq integral.cont arrow(E) arrow( dd l)$

- La cui forma locale è $curl arrow(E) eq - (par arrow(B))/(par t)$

#def(title : "Coefficiente di mutua induzione")[
  Fra due circuiti è presente un coefficiente di mutua induzione, definito come 

  $ Phi_2 eq M_(1,2) I_1, quad Phi_1 eq M_(2,1) I_2, quad M_(1,2) eq M_(2,1) $
]

#def(title : "Coefficiente di autoinduzione")[
  Una corrente influenza anche se stessa, la relazione di tale fenomeno è descritta dalla formula

  $ Phi(arrow(B)) eq L I $
]

Dal coefficienti di autoinduzione, usando la definizione di $f_i$, si ha che $ f_i eq -L (dd I)/(dd t) $

== Energia magnetica 

- Per un sistema di correnti e circuiti: $U eq 1/2 sum_k I_k Phi_K$

- Densità energia del campo: $u eq 1/2 B^2/(mu_0 mu_r)$

- L'energia di un induttore ha formula: $U eq 1/2 L I^2$

= Circuiti elettrici 

$ I eq I_0 cos(omega t+ phi.alt) eq scr(R)[I_0 e^(I phi.alt)e^(I omega t)] eq scr(R)[I] $

$ I eq tilde(I)_0 e^(I omega t), quad tilde(I)_0 eq I_0 e^(I phi.alt) $

== Circuito RC 

$ R (dd q)/(dd t) + q/C eq V $

- Carica C: $quad q(t) eq C V (1 - e^(t/tau)), wide (tau eq R C)   $

- Scarica C: $quad q(t) eq q_0 e^(-t/tau) $

== Circuito RL 

$ L (dd I)/(dd t) + R I eq V $

- Extracorrente chiusura: $quad I(t) eq V/R (1 - e^(-t/tau)), wide (tau eq L/R) $

- Extracorrente apertura: $quad I(t) eq V/R e^(-t/tau) $

== Circuito RLC in serie 

$ L (dd^2 I)/(dd t^2) + R (dd I)/(dd t) + 1/C I eq V $

= Onde elettromagnetiche 

Il comportamento delle onde elettromagnetiche è descritto dalle equazioni di Maxwell 

$ &"Forma differenziale" &"Forma integrale"& wide wide wide  \
  &div arrow(E) eq rho/ep_0 &int_Sigma arrow(D) hat(n) dd S eq Q_"int" \
  &div arrow(B) eq 0 &int_Sigma arrow(B) hat(n) dd S eq 0 \ 
  &curl(arrow(E)) eq - (par arrow(B))/(par t) &wide wide integral.cont arrow(E) arrow( dd l) eq - par/(par t) int_Sigma arrow(B) hat(n) dd S & \ 
&curl arrow(B) eq mu_0 (arrow(J) + ep_0(par arrow(E))/(par t))
$

Da cui otteniamo 

- Legge di Ohm: $quad arrow(J) eq sigma arrow(E) $

= Esercizi 

== Esame 29/01/2024

#image("images/ex1-el.png")

#pagebreak(weak : true)

#sol[
  1. La capacità del condensatore in assenza di dielettrico $C_0$ si calcola attraverso l'utilizzo della classica formula 

  $ C_0 eq ep_0 S/d &eq 8.85 dot 10^(-12) (9 dot 10^(-4))/(1 dot 10^(-2)) tilde.eq 8 dot 10^(-13) [Q/V] eq 0.8 space p F $

  In presenza del dilettrico, invecem La capacità è data dalla formula generale $C eq Q/(Delta V)$ \ In questo sistema il potenziale si esprime con la formula $Delta V eq int arrow(E) arrow(dd l) eq int_0^d E dif l$ \ 
  Per valutare il valore di $E$ uso il vettore spostamento $arrow(D) eq ep arrow(E)$

  Osservo che sia il campo magnetico che il vettore spostamento sono ortogonali alle armature, dunque $D_n eq D$. \ Per la continuità di $arrow(D)$ rispetto alla componente normale del dielettrico, ho che $D_(n 1) eq D_(n 2)$, ossia, unito all'osservazione di prima, $D_1 eq D_2$. 

  Il sistema è composto da un condensatore ad amrature piane, quindi $D_0 eq ep_0 E_0 Aa D eq ep_0 E_0  $

  Da cui quindi sostituendo $D$ con i riltati trovati, ottengo $ep E eq ep_0 E_0 quad Aa quad E(x) eq E_0 / (ep_r (x)) $

  Posso ora calcolare la differenza di potenziale 

  $ Delta V eq int_0^d E_0 /(ep_r(x)) dd x eq Q/(ep_0 S) int_0^d e^-(x/d)dd x eq (Q d)/(ep_0 S )(1 - e^(-1)) $

  Ora posso sostituire nella formula generale della capacità e ottenere 

  $ C eq (ep_0 S)/(d(1 - e^(-1))) tilde.eq 1.3 "pF" $

  2. Il valore della carica sulle armature è dato banalmente dalla formula inversa, quindi $ Q eq C dot Delta V eq 1.3 dot 793 "[pF"dot"V]" tilde.eq 1 "nC" $

  4. La densità superficiale di carica in prossimità delle armature è data dalla formula $sigma eq arrow(P) dot hat(n)$ dove $arrow(P) eq ep_0(1 - ep_r (x))arrow(E) $. \ Osservo che, in questo sistema, $arrow(P)(x) dot hat(n) eq -P(x), quad$ e che quindi posso calcolare $ P(x) eq ep_0 (1 - ep_r (x))E_0 eq (1-ep_r (x))Q/S $ \ Quindi $abs(P(0)) eq 0 "e" abs(P(d)) eq 0.7 [(mu C)/m^2]$

  3. Per ricavare il massimo in modulo della densità di carica $abs(rho_P)(x)$ uso la formula classica 

  $ abs(rho_P)(x) eq abs(div arrow(P)(x)) eq Q/S e^(-x/d)/d quad Aa quad max abs(rho_P (x)) eq abs(rho_P(0)) eq 1.1 dot 10^(-4) [C/m^3] $

  5. La carica di polarizzazione totale nel dielettrico si ottiene cacolando l'integrale sul volume della densità di carica volumetrica e sommandolo a quello sulle superfici della densità superficiale di polarizzazione. \ $ Q_"pol" eq int_V rho_P (x) + int_S sigma_P (0) + int_S sigma_P (d) eq "calcoli" eq 0 $ 
]

#image("images/ex1-mg.png")

#pagebreak(weak : true)

#sol[
  1. Osservo che, per li teorema della circuitazione di ampéere: 

  $ integral.cont arrow(B) times arrow(dd l) eq mu_0 sum I_"conc" eq mu_0 I_"sol" N/h b tilde.eq 6 dot 10^(-6) space [T dot m]  $

  2. L'energia magnetica è data dalla formula $int_V u eq int_V 1/2 B^2/(mu_0 mu_r)$ \ In questo caso $mu_r eq 1 "e" V$ il volume del cilindro. 

  $ U eq 1/(2 mu_0) int_V B^2_"tot" &eq 1/(2mu_0) (int_V B^2_"filo" + int_V B^2_"sol") \ 
    &eq 1/(2 mu_0) int_0^h dd z int_0^(2pi) dd phi.alt int_(r_i)^r_e ((mu_0 I)/(2 pi xi))^2 xi dd xi \
    &+ 1/(2mu_0) int_0^h dd z int_0^(2pi) dd phi.alt int_(r_i)^(sqrt(S/pi)) ((mu_0 S I)/(h))^2 xi dd xi \ 
    &eq [(mu_0 h)/(4pi) ln(r_e/r_i) + 1/2 (N^2 mu_o (S - pi r_i^2))/(h) ]I^2 
  $

  3. Per il verso della corrente, possiamo subito osservare che, per la conservazione dell'energia, è necessariamente in senso orario rispetto all'asse.

  L'intesità di corrente si ottiene con la formula $I eq abs(f_i) / R$ dove $ f_i eq - (dd Phi)/(dd t) eq - (N B S')/h (dd x)/(dd t) eq - (N B s' v)/h $ \ Da cui si ottiene $ I eq (N B S' v)/(h R) tilde.eq 0.6 [A] $

  4. In questo caso il flusso complessivo del campo magnetico ha un termine aggiuntivo, ossia $ f_i eq (N B S' v)/h - L (dd I)/(dd t) $ \ Visto che $f_i eq R I$ segue che $ L (dd I)/(dd t) eq - R I(t) - (N B S' v)/h $ \ Visto che all'istante iniziale non scorre corrente, segue $ I(t) eq (N B S' v)/(R h) (e^((-R t)/L)-1)  $

  5. Il solenoide presenta un'induttanza ed una resistenza, quindi ci troviamo nel caso del circuito RC. Pertanto $tau eq L/R$. Trattando il solenoide come ideale si ottiene $tau eq (mu_0 S N^2)/(R h) tilde.eq 50$ ms
]

== Esame 02/11/2026

#sol[ 
  1. Inizio osservando che data la simmetria, il campo sull'asse $E$ ha componenti $E_x "e" E_y $ nulle. \ Quindi $E(z) eq E_hat(z) (z)$.\ Per trovare il valore basta osservare che per una componente elementare di carica posta sul dilettrico, il suo contributo verticale al campo è $E_z (z) eq lambda/(4 pi ep_0 r^2) sin phi.alt$. \ A questo punto basta usare $Q$ al posto di $lambda$ e osservare che $ sin phi.alt eq z/r$

  $ E(z) eq (Q z)/(4 pi ep_0 r^3) eq (Q z)/(4 pi ep_0 (z^2 + R^2)^(3/2)) $

  2.b. Nel secondo caso, quello con il conduttore, il campo al suo interno è nullo, quindi $ Delta V_(plus.minus) eq 0 $
  2.a. Nel primo caso invece basta effettuare il calcolo esplicito, dopo aver trovato la funzione potenziale. \ Il potenziale all'infinito è nullo visto che il dominio delle cariche è limitato. Quindi si ha $ V(z) eq int_z^infi E(z) dd z eq Q/(4 pi ep_0)(1/sqrt(z^2 + R^2))  $
  A Questo punto ottengo il risultato come: $ Delta^0_plus.minus eq V(0) - V(plus.minus a) eq Q/(4 pi ep_0) (i/R - 1/(sqrt(a^2 + R^2))) $

  3. #text(red, [da fare!])

  4. #text(red, [da fare!])

  5. #text(red, [da fare!])
  
]

#sol[
  1. Inizio osservando che la corrente indotta è data dalla formula $I(t) eq f_i/R$. \ Procedono a valutare la forza elettromotrice indotta. 

  $ f_i &eq - dd/(dd t) Phi(t) \ &eq - dd/(dd t) int_0^b dd y int_0^a(t) dd x B \ &eq - b B dd/(dd t) a(t) \ &eq -b B v(t) $
  
  Dunque si ottiene $ I(t) eq - (b B v(t))/R $

  2. Per determinare l'espressione dell'accelerazione, osservo intanto con la formula di Lorentz che vale $ F(t) &eq int I(t) hat(dd l) times B \ &eq b B I(t) \ &eq -(b B)^2/R v(t) $ Quindi si ha che $ m (dd v(t))/(dd t) eq - (b B)^2/R (v_0 + (dd v(t))/ (dd t) t ) $ \ Isolando l'accelerazione nella formula appena trovata si ottiene $ (dd v(t))/(dd t) eq v_0 (t - (b B)^2/(m R))  $ 

  3. al fine di trovare $t^*$, per determinare il valore di $R$, sviluppo innanzitutto la formula di $v^*$. \ $ v^* &eq v_0 + int _0^t^* (dd v)/(dd t)(t) dd t \ &"uso la formula dell'accelerazione trovata in precedenza" \ &eq v_0 (1 + ((t^*)^2)/(2) - ((b B)^2)/(m R)t^*) $ Da cui, si ottiene $ (t^*)^2- 2 ((v B)^2)/(m R)t^* + 2(1 - v_0 / v^*) eq 0 $ Che si risolve come una normale equazione di secondo grado, ottenendo $t^* eq #text(red, [scrivere]) $. \ A questo punto posso sostituire il valore di $t^*$ appena trovato e ottenere, dalla formula inversa $ R eq - (b B v^*)/I^* eq #text(red, [scrivere]) $

  4. Per esplicita l'nergia dissipata, visto che la corrente non è stazionara, devo procedere come segue. 
]

#pagebreak(weak : true)

= Domande prova orale

Qui sono raccolte alcune tra le domande più classiche e più frequenti. 

=== elettrostatica 
- Campo elettrico del dipolo elettrico 
- Sviluppo in serie di multipoli 
- Cosa succede se si mette un dipolo in un campo esterno (distinguere i casi se E_ext uniforme oppure no, parlare del momento, forza ed energia)
- Domande sulla legge di Ohm 
- Corrente di spostamento 
- Equazione di continuità 

=== magnetismo
- Derivare il campo magnetico generato da un filo indefinito, e cosa cambia rispetto all'espressione del solenoide
- Definizione ed espressione del potenziale vettore 
