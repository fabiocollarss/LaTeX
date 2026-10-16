#import "template.typ": *

#set heading(numbering: "1.1")
#set math.equation(numbering: "(1)")
#set align(left)
#show: great-theorems-init
#show link: text.with(fill: blue)

#let lag = $scr(L)$
#let az = $scr(A)$
#let pv = $cal(H_0)$
#let ep = $epsilon$
#let put = $(partial u)/(partial t)$ 
#let pux = $(partial u)/(partial x)$
#let par = $partial$
#let inf = $infinity$

= Introduzione alla corda vibrante
In questa sezione affronto l'introduzione dell'equazione della croda vibrante, argomento centrale del corso e che ci terrà occupati per i prossimi capitoli.
== Filo rettilineo 
Consideriamo un tratto di filo AB omogeneo, perfettamente elastico e perfettamente flessibile di lunghezza $L_0$.\
Fissato l'estremo A, sottopongo l'estremo B ad una tensione $tau$.\ 
La lunghezza della corda passerà da $L_0 "a" L, "dunque" L eq phi.alt(tau)$.\
Il lavoro eseguito dalla forza di trazione si traduce in energia potenziale elastica della corda. 

$ U &eq U(L) \ 
&eq U(L_0) + integral^L_L_0 dif l space tau(l) \
&eq U(L_0) + integral^L_L_0 dif l space phi.alt^(-1)(l) $

Ora fisso uno stato di equilibrio $(tau, L)$ e considero delle piccole variazioni ad esso prossime.\ 
Per la legge di Hooke ($F =- k Delta x $) ho che ad una piccola variazione della tensione $delta tau$ corrisponde 
una variazione della lunghezza ad essa proporzionale $delta L$. 

Considero quindi l'inverso della relazione $L eq phi.alt(tau)$, ossia $tau eq phi.alt^(-1)(l)$ e sviluppo al primo ordine: 

$ phi.alt^(-1)(L) &eq phi.alt^(-1)(L_0) + (phi.alt^(-1)(L_0))'delta L + O((delta L)^2) $

Da cui ottengo 

$ phi.alt^(-1)(L)-phi.alt^(-1)(L_0) eq^("def") delta tau eq^("taylor") C delta L + O((delta L)^2) $

Dove \ $C= (phi.alt^(-1)(L_0))' eq (phi.alt'(L_0))^(-1) eq 1/(phi.alt'(L_0)) $

Inoltre, per definizione di $U$ ho 

$ U(L + delta L)-U(L) &eq integral^L_L_0 dif l space phi.alt^(-1)(l) space &eq space  tau delta L + O((delta L)^2) $

quindi posso approssimare e ottenere \ $ U(L+delta L) eq U(L) + tau delta L $

Poiché l'energia potenzialo in $L_0$ è nulla, ottengo così, a meno di infinitesimi superiore al secondo

$ U(L) eq U(L_0) + tau delta L eq^(U(L_0)eq 0) tau delta L $

#pagebreak(weak : true)

== Filo non rettilineo 
Adesso è il momento di generalizzare il concetto estendolo ad un filo non necessariamente rettilineo.
Sia $u(x,t) : [0,L] times [0, +infinity] arrow RR$ la funzione che associa ad ogni della corda, e in ogni tempo, la sua "altezza". In questo modo posso descrivere con $M(x,u(x,t))$ il luogo geometrico della posizione di ogni punto della corda nel tempo. La configurazione di equilibrio della corda è descritta da \ $N = (x,0)$. 

L'assunzione dei piccoli moti si basa sull'affermare che 
1. $abs(u(x,t))<<1$
2. $abs((partial u)/(partial x)(x,t))<<1$
La condizione degli estremi fissati, invece, implica solo $u(0,t)eq u(L,t) eq 0$

A questo punto allora l'idea è quella di ricavare la formula generale trovando l'energia potenziale, quella cinetica, scrivere la lagrangiana del problema ed il relativo funionale d'azione. Infine utilizzare il principio di minima azione (o principio di Hamilton). 

*$i)$ Energia potenziale*

Come visto in precedenza $U eq tau delta L$. Ora però il filo non è più rettilineo, devo quindi utilizzare l'integrale per il calcolo della lnghezza di una corda (analisi II).

#rmk[$ l(phi) eq integral^b_a norm(phi'(s)) dif s$]

Dunque 

$ 
U(u(dot , t)) &eq tau delta L \
&eq tau integral^L_0 norm( M(x,u(x,t)) ) dif x space - L \ 
&eq tau integral^L_0 norm((partial)/(partial x)  (x,u(x,t)))  \
&eq tau integral^L_0 sqrt(1^2+ ((partial u)/(partial x))^2 ) dif x space - L &#h(6em) & (sqrt(1 + a^2) eq^("taylor") 1 + a^2 / 2 + O(a^4) ) \
&eq tau integral^L_0 1 + 1/2 ((partial u)/(partial x))^2 -1 space dif x \
&eq tau / 2 integral^L_0 ( (partial u)/(partial x) )^2 dif x
$

*$i i)$ Energia cinetica*
$ 
T &eq 1/2 m v^2 \ 
&eq 1/2 rho L ((partial u)/(partial t) )^2 \
&eq rho/2 integral^L_0 ((partial u)/(partial t) )^2 dif x \ 
$

*$i i i)$ Lagrangiana*
$ 
lag(u,v) &eq lag (u, (partial u)/(partial t)) \ 
&eq integral^L_0 T - U \
&eq integral^L_0 rho/2 (put)^2 - tau/2 (put)^2 space dif x  
$

*$i v)$ Funzionale d'azione *\
Definisco prima lo spazio delle possibili traiettorie $scr(H_0)$
$ scr(H_0) eq {u in c^2([0,L]times[0,T]) "t.c." & u(0,t)eq u(L,t)eq 0, \ 
& u(x,0) eq u_0(x), \ 
& u(x,T) eq u_T (x)} $
In questo caso, per i profili iniziale e finali voglio che $u_0 (x) eq u_T (x) equiv 0 $. \
A questo punto posso scrivere il funzionale d'azione relativo alla lagrangiana.
$
  az[u] &eq^"def" integral^T_0 lag(u,v) dif t \
  &eq integral^T_0 integral^L_0 rho/2 (put)^2 - tau/2 (put)^2 space dif x dif t 
$

*$v)$ Principio di Hamilton*\
Cerco di caratterizzare le curve che rendono stazionaria $az[u]$. Per farlo definisco lo spazione delle picolle variazioni $cal(H_0)$.
$ 
  pv eq { h in C^2([O,L]times[0,T]) "t.c" & h(x,0) eq h(x,T) eq 0, \
  & h(0,t) eq h(L,t) equiv 0 } \
$
La derivata del funzionale, che indico con $delta_u az [h] : pv arrow RR$, ha la seguente espressione
$
  delta_u az[h] &eq lr((dif)/(dif ep) az[u+ep h]|)_(ep eq 0) \
  &eq lr( (dif)/(dif ep) integral^T_0 integral ^L_0 rho/2 ((partial u+ ep h)/(partial  x))^2 - tau/2 ( (partial u + ep h)/(partial t) )^2 space dif x dif t |)_(ep eq 0)  \
  &eq integral^T_0 integral^L_0 rho (partial u)/(partial t) (partial h)/(partial t) - tau (partial u)/(partial x) (partial h)/(partial x) dif x dif t 
$
Per il principio di minima azione, l'obiettivo è adesso quello di identificare le funzioni $u$ per cui la derivata del funzionale risulti nulla, ossia stiamo cercando $u in scr(H_0) "t.c." delta_u az[h] eq 0$. 

Per fare ciò l'idea è quella di isolare i due termini ed utilizzare su ognuno di essi l'integrazione per parti con $f=put "e" g' eq (partial h)/(partial t)$ nel primo caso, e $f eq pux "e" g' eq par^2_x h$ nel secondo.\
(Quando ho tempo lo scrivo esplicito)

Rimarrò con i termini di bordo che si annullano per le ipotesi su $h$ e quindi avrò infine 
$ integral^T_0 integral^L_0 [- rho space  par^2_t u + tau par^2_x u]h dif x dif t eq 0 wide forall h in pv $

Che è verificata per: $wide  rho par^2_t u - tau par^2_x u eq 0$

Defiendo $c eq sqrt(tau/rho)$ ottengo 
$ par^2_t u eq c^2 par^2_x u $

== Vibrazioni forzate 
Nel caso in cui sulla corda agisca una forza, che indichiamo con $F(x,t)$ si ottiene *l'equazione delle vibrazioni forzate della corda* 

$ rho par^2_t u (x,t) - tau par^2_x u(x,t) eq F(x,t) $<eqvibfor>

Mettendo a fattor comune come prima, quindi $c eq sqrt(tau/rho), space f(x,t) eq F(x,t)/rho$ l'eq diventa

$ par^2_t u eq par^2_x u + f $

L'@eqvibfor si ottiene nello stesso modo del caso precedente. Ossia si costruisce il funzionale d'azione e poi si applica il principio di Hamilton. \ 
Da ricordare che in questo caso nel potenziale compare l'addendo $+F(x,t)u(x,t)$

== Corda con estremi liberi 
Supponiamo ora che la corda non abbia gli esremi fissati in 0, ma che questi siano "liberi" di muoversi. 
In particolare immaginiamo che tali estremi siano sottoposti ad una tensione $f_0 (t) "e" f_L (t) $ e siano collegati con una molla ciascuno all'asse x, quindi su di essi agiscono anche due forze di richiamo $k_0 u_0(t) "e" k_L u_L (t)$. \
Infine consideriamo anche che la corda sia sottoposta ad una forza costa constante $F$ (ad esempio la forza di gravità.). 

L'energia potenziale in questo caso diventa
$ U(u(x,t),t) &eq integral^L_0 tau/2 (pux)^2 - F u dif x \ &+ k_0/2 u_0(t)^2 + k_L/2 u_L (t)^2- f_0(t)u_0(t) - f_L (t)u_L (t) $

Quindi l'azione diventa: 

$ 
  az[u] &eq integral^T_0 lag[u,v] dif t \ 
  &eq integral^T_0  integral^L_0 rho/2 (put)^2 - tau/2 (pux)^2 + F u dif x dif t \ &+ integral^T_0 - k_0/2 u_0(t)^2 - k_L/2 u_L (t)^2+ f_0(t)u_0(t) + f_L (t)u_L (t) dif t
$

Cambiano anche i relativi spazi delle funzioni. Infatti 
$ scr(H) eq {u in C^2 "t.c." u(x,0) eq u_0(x),quad  u(x,T) eq u_L (x) } $
$ cal(H) eq {h in C^2 "t.c." h(x,0) eq h(x,T) eq 0 } $

*Da notare che $u_0(x) "e" u_0 (t) italic("NON") $ sono la stessa funzione, questo è un abuso di notazione a cui fare molta attenzione.* \
$u_0(x) eq u(x,0)$, ossia il valore dei punti della corda al tempo iniziale ($t = 0$). \ 
$u_0 (t) eq u(0,t)$, ossia i valori che assume l'estremo inziale della corda ($x eq 0$) nel tempo.

Applicando i principio di Hamilton come prima, si ottiene 
$
  delta_u az[h] &eq integral^T_0 integral^L_0 (tau par^2_x u - rho par^2_x u +F)h dif x dif t \ 
  & -integral^T_0 (tau pux(L,t) + k_L u_L (t)-f_L (t) )h(L,t) dif t \
  & + integral^T_0 ( tau pux (0,t) - k:0 u_0 (t) + f_0(t) ) h(0,t) dif t 
$ 

Visto che $pv subset cal(H)$, questo significa che ogni soluzione deve soddisfare anche la condizione 
$ rho par^2_t u - tau par^2_x u eq F $
Inoltre, visto che $h(L,t) "e" h(0,t)$ posso variare, posso variare il primo nullo ed il secondo non nullo, oppure viceversa. Ciò significa che i due integrali si devono annullare autonomamente. \
Quindi le altre due condizioni sono 

$
& tau pux + k_L u_L (t ) - f_L (t) eq 0 \
& tau pux + k_0 u_0 (t) - f_0 (t) eq 0
$

== Derivazione microscopica dell'equazione della corda vibrante
In questa sezione vediamo un altro approccio per ricavare l'equazione della corda vibrante. \
In particolare, l'idea è quella di considerare l'interazione di piccole porzioni della corda come se fossero molle tra loro collegate. \
Questo modello è detto *catena di oscillatori.*

Consideriamo quindi N punti materiali $P_j, quad j eq 1,dots,N$ ciascuno di uguale massa $m$ e vincolati a muoversi in verticale. (immaginiamo la corda sull'asse delle x, e i punti si muovono ciascuno in verticale sull'asse y). 

Le coordinate di ogni punto $P_j "sono" (x_j,y_j), "dove" x_j "rimane costante e vale" x_j eq j L/(N+1) $. \
Ogni punto $P_j$ è richiamato dai punti adiacenti $P_(j-1) "e" P_(j+1)$ attraverso due molle, ciascuna di uguale costante elastica $K$. 

Per ciascun punto la soluzione del problema è

$ m dot.double(y_j) eq -K(y_j - y_(j-1)) - K(y_(j)-y_(j+1)) #h(8em) (y_0 eq y_(N+1)eq 0) $

A questo punto nasce la magia matematica. Voglio che questo modello desciva una corda vibrante. Per questo motivo L'idea sarebbe quella di portare $N arrow inf$, ossia $ep := L/(N+2) arrow 0$. \
Per ottenere ciò è necessario che vengano scelti parametri $m "e" K$ che dipendano da $ep$. \
Poiché per un tratto di corda unitaria ci sono $ep^(-1)$ oscillatori, devo avere una densità $rho eq m/ep$, e quindi la massa vale $m eq rho ep$. \
Suppongo inoltre che $y_j (t)$ sia equivalente al valore in $x_j eq ep j $ di un profilo (regolare) di una corda $u_ep (dot,t)$. \
Allora l'equazione della corda può essere scritta nella forma 

$ rho par^2_t u_ep (j ep, t) eq ep^(-1) K [u_ep (j ep + ep, t) + u_ep (j ep -ep,t) - 2 u_ep (j ep,t)]  $ 

#rmk[
  $
    f(x+ep) + f(x-ep) - 2f(x) &eq (f(x+ep)-f(x))+(f(x-ep)-f(x)) \
    &eq^"Taylor" f'(x)ep + 1/2f''(x)ep^2 - f'(x)ep +1/2f''(x)ep^2 +o(ep^2) \
    &eq f''(x)ep^2 + o(ep^2)\
    &eq o(ep)
  $
]

Pertando l'equazione del moto si riscrive nella forma 
$
  rho par^2_t u_ep (j ep,t) eq ep K par^2_x u_ep (j ep,t) + K o(ep)
$

Ora scelgo $K eq tau/ep$. \
Valuto l'equazione precedente per $j eq [ep^(-1) x]$ (dove [$dot$] in indica la parte intera) e ottengo

$
  rho par^2_t u_ep (x + o(1), t)eq tau par^2_x u_ep (x+o(1),t) + o(1)
$

Da questa equazione appena ottenuta, dove $o(1) "è infinitesimo per" ep arrow 0$, deduco che, se la funzione $u_ep$ converge ad una funzione regolare $u(x,t) "per" ep arrow 0$, allora tale funzione è soluzione dell'equazione della corda vibrante.

#oss[
  il parametro $K$ diverge per $ep arrow 0$.\
  Infatti, perché il profilo finale $u$ sia almeno continuo, è necessario che 
  $
    lim_(ep arrow 0) [ u_ep (j ep,t) - u_ep (j ep,t) ] eq lim_(ep arrow 0) [y_(j+1) (t) minus y_j (t)] eq 0 
  $
  Pertanto la forza che attrae i due oscillatori deve necessariamente divergere. #set math.equation(numbering: "(1)")
]
