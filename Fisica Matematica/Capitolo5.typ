#import "template.typ": *

#set heading(numbering: "1.1")
#set align(left)
#show: great-theorems-init
#show link: text.with(fill: blue)

= Corda vibrante
== Introduzione alla corda vibrante
In questa sezione affronto l'introduzione dell'equazione della croda vibrante, argomento centrale del corso e che ci terrà occupati per i prossimi capitoli.
=== Filo rettilineo 
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

=== Filo non rettilineo 
Adesso è il momento di generalizzare il concetto estendolo ad un filo non necessariamente rettilineo.
Sia $u(x,t) : [0,L] times [0, +infinity] arrow RR$ la funzione che associa ad ogni della corda, e in ogni tempo, la sua "altezza". In questo modo posso descrivere con $M(x,u(x,t))$ il luogo geometrico della posizione di ogni punto della corda nel tempo. La configurazione di equilibrio della corda è descritta da \ $N = (x,0)$. 

L'assunzione dei piccoli moti si basa sull'affermare che 
1. 
2. 

