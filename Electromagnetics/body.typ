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

//TESTO

= Introduzione 

== Costanti di uso frequente 
Lista delle costanti di uso frequente durante il corso

- Costante dielettrica del vuoto: $quad ep_0 eq 8,85 dot 10^(-12) [F/m]$

- Permeabilità magnetica nel vuoto: $quad mu_0 eq 4pi dot 10^(-7) [H/m]$

== Operatori vettoriale e cambiamenti di variabili 

- *Coordinate cartesiane*

Elemento di volume: $quad dd tau eq dd x dd y dd z$

- *Coordinate cilindriche* 

Traformazione $(x,y,z) aa (rho, theta, z)$

$x eq rho cos theta, quad y eq rho sin theta$

Elemento di volume: $quad dd tau eq rho dd rho dd theta dd z$

- *Coordinate sferiche*

Trasformazioe $(x,y,z) aa (rho, theta, phi.alt)$

Elemento di volume $dd tau eq rho sin^2 phi.alt dd rho dd theta dd phi$


#pagebreak(weak : true)

= Campo elettrostatico 

== Introduzione

== Teorema di Gauss e applicazioni 

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

= Capacità 
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

== Problema dell'energia elettrostatica 

Per via dell'induzione, segue che entrambe le grandezze $V_i$ e $sigma_i$ dipendono dagli altri conduttori nel sistema. Per determinare tali quantità, ci sono due metodi risolutivi in base alla richiesta del problema. 

1. *Problema di Dirichlet* \
Sono noti i potenziali $V_i$ dei conduttori e si vogliono determinare le cariche $Q_i$

2. *Problema di Neumann* \ 
Sono note le cariche $Q_i$ e si vogliono determinare i potenziali $V_i$



- Capacità condensatore piano: $C eq ep S/d $

- Capacità condensatore cilindrico: $C eq 2pi ep L/(log(r_"ext"/r_"int")) $

- Capacità condensatore sferico: $4pi ep (r_"int" r_"ext")/(r_"ext" - r_"int") $  

- Capacità condensatori in parallelo: $C_"eq" eq C_1 + C_2 + dots + C_n $

- Capacità condensatori in serie: $C_"eq" eq 1/(C_1 + C_2 + dots + C_n) $

L'energia di un condensatore è data dalla formula $U eq 1/2 Q Delta V eq 1/2 C Delta V^2 eq 1/2 Q^2/C$

La forza tra le armature di un condensatore piano ha invece formula $F eq Q^2 / (2ep S) $

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

== Descrizione mascroscopica della polarizzazione 



In un mezzo isotropo e lineare si ha: $arrow(P) eq ep_0 chi arrow(E) eq ep_0(ep_r -1)arrow(E)$

#def(title: "Vettore spostamento elettrico")[
  Una grandezza altrettanto importante, definita come 
  $ arrow(D) eq ep_0 arrow(E) + arrow(P) eq ep_0 ep_r arrow(E) $
]
Il vettore di polarizzazione è l'elemento cardine per calcolare le densità di carica di polarizzazione. 

== Densità volumetrica e superficiale di carica di polarizzazione 

Queste cariche sono due tipi di cariche distinte, infatti: 

- $sigma_"pol" eq arrow(P) dot hat(n)$ è la densità superficiale di carica di polarizzazione.

- $rho_"pol" eq - div arrow(P) $ è la densità volumetrica di carica di polarizzazione.

Dalle identità sviluppate sino ad ora seguono le *Equazione dell'elettrostatica in presenza di dielettrici*

- $curl arrow(E) eq 0 $

- $div arrow(D) eq rho$ 

- $integral.cont arrow(E) dd arrow(l) eq 0$

- $int_Sigma arrow(D) dot hat(n) dd S eq Q_"lib"$

*Condizioni di continuità all'interfaccia fra due mezzi*

- $E_(t 1) eq E_(t 2) $

- $D_(n 1) eq D_(n 2)$

#pagebreak(weak : true)

= Energia elettrostatica 

Per una distribuzione di cariche discrete vale $ quad U eq 1/2 1/(4pi ep) sum_(i != j \ i,j) (q_i q_j)/r_(i j) eq 1/2 sum_i q_i V_i $ Dove $V_i$ è il potenziale di tutte le cariche $eq.not i$

Portandolo al continuo si ottiene: $quad U = 1/2 int rho V dd tau $

Se invece il sistema è un sistema di conduttori, si ha che: $quad U eq sum_i Q_i V_i quad$ dove questa volta $V_i$ è il potenziali del conduttore $i$.

Infine è definita la *densità di energia del campo* come $u eq 1/2 arrow(E) dot arrow(D) eq 1/2 ep_0 ep_r E^2$

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

== Resistori in serie e in parallelo 

- Resistenze in serie: $quad R_"eq" eq R_1 + R_2 + dots + R_n$

- Resistenze in parallelo: $quad R_"eq" eq 1/(R_1 + R_2 + dots + R_n)$

== Effetto Joule 

Il passaggio di corrente in un conduttore è euristicamente equivalente al passaggio di cariche da un punto di potenziale maggiore ad uno di potenziale minore. Questo lavoro, se la corrente è stazionaria, non fa aumentare la velocità delle cariche. Dunque ciò significa che l'energia viene dissipata.

#def(title : "Potenza")[
  Sia $W$ l'energia del sistema, allora 
  $ P eq (dd L)/(dd t) $

  In forma locale $dd P eq arrow(J) arrow(E) dd tau$
]

Osservando che $dd L eq -dd U eq dd Q Delta V eq I Delta V dd t $

Su un conduttore finito vale $P eq V I eq I^2 R eq (Delta V^2)/R $

Questa identità è anche nota come *Terza legge di Ohm*

== Seconda legge di Kirchhoff

#theo(title:"Seconda legge di Kirchhoff (o legge delle maglie")[ $ quad sum_k I_k R_k eq sum_k V_k $ ]
#proof[
  La dimostrazione segue dall'applicazione della prima legge di Ohm per conduttori macroscopici ad una maglia di conduttori.
]

#pagebreak(weak: true)

= Correnti non stazionarie

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

== Applicazioni della prima formula di Laplace

Da questa equivalenza di ricavano esplicitamente le formule dei seguenti casi 

- filo indefinito: $arrow(B) eq mu_0/(2pi) I/r hat(tau) $

- sull'asse di una spira circolare: $arrow(B) eq mu_0/2 I R^2 /sqrt((R^2 + z^2)^3 ) hat(k) $

- Interno solenoide indefinito: $B eq mu_0 I n wide $ \ (dove $n eq N/L$ è la densità del numero spire)

== Forza tra fili rettilinei 

Sperimentalmente si trova che due fili paralleli su cui scorre corrente hanno come interazione un'allontanamento se la corrente è discorde, ed un avvicinamento se è invece concorde. 

Il verso di questa forza di attrazione/repulsione è dettata dalla regola della mano destra.
== Potenziale vettore 

#def(title : "Potenziale vettoree")[
  E' quel campo vettoriale $arrow(A)$ il cui rotore da il campo magnetico, ossia 
  $ arrow(B) eq curl arrow(A) $
]
#theo(title : "Espressione del potenziale vettore")[
  $ arrow(A)(arrow(r)) eq mu_0/(4 pi) integral dd tau' (arrow(J)(arrow(r)))/(abs(arrow(r)-arrow(r)')) $
]
#proof[
  $ curl arrow(A)(arrow(r)) &eq  $
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


== Libertà di Gauge 
Così come il potenziale elettrostatico è definito a meno di una costante additiva, allo stesso modo il potnziale vettore del campo magnetico è definito a meno di un campo vettoriale a rotore nullo. 

Ossia data $f eq f(arrow(r))$ campo scalare, visto che $curl grad f eq 0 $, allora il potenziale vettore $arrow(A)' eq arrow(A) + grad f $ soddisfa ancora la definizione. 

Questa arbitrarietà permettere di scegliere $arrow(A)$ tale che $div arrow(A) eq 0 $. Tale scelta è detta *Gauge di Coulomb*.

== Quarta equazione di Maxwell e teorema della circuitazione



- Equazione del poteniale: $grad^2 arrow(A) eq - mu_0 arrow(J)$
- $curl arrow(B) eq mu_0 arrow(J)$
- $integral.cont arrow(B) times arrow(dd l) eq mu_0 sum I_"conc"$

#pagebreak(weak:true)


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

  $ Phi eq L I $
]

= Energia magnetica 

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

$ L (dd^2 I)/(dd t^2) + R (dd I)/(dd t) + !/C I eq V $

= Onde elettromagnetiche 

Il comportamento delle onde elettromagnetiche è descritto dalle equazioni di Maxwell 

$ &"Forma differenziale" &"Forma integrale"& wide wide wide  \
  &div arrow(D) eq rho &int_Sigma arrow(D) hat(n) dd S eq Q_"int" \
  &div arrow(B) eq 0 &int_Sigma arrow(B) hat(n) dd S eq 0 \ 
  &curl(arrow(E)) eq - (par arrow(B))/(par t) &wide wide integral.cont arrow(E) arrow( dd l) eq - par/(par t) int_Sigma arrow(B) hat(n) dd S & \ 
&curl arrow(B) eq mu_0 arrow(J)
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

== Majorana

=== elettrostatica 
- Campo elettrico del dipolo elettrico 
- Sviluppo in serie di multipoli 
- Cosa succede se si mette un dipolo in un campo esterno (distinguere i casi se E_ext uniforme oppure no, parlare del momento, forza ed energia)
- Domande sulla legge di Bohr 
- Corrente di spostamento 
- Equazione di continuità 

=== magnetismo
- Definizione ed espressione del potenziale vettore 
- Equazioni di Maxwell nel caso non stazionario 

