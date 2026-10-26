#import "Capitoli/template.typ": *

#set heading(numbering: "1.1")
#show math.equation: i-figured.show-equation.with(only-labeled: false)
#show heading: i-figured.reset-counters

#set align(left)
#show: great-theorems-init
#show link: text.with(fill: blue)

// Configurazione iniziale della pagina (senza numeri sul frontespizio)
#set page(paper: "a4", margin: 2.5cm, numbering: none)

// 1. PAGINA INIZIALE (TITOLO)
#align(center + horizon)[
  #text(size: 26pt, weight: "bold" )[Note del corso di Fisica Matematica]
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

#pagebreak()

// 2. INDICE (Generato automaticamente)
// L'indice viene messo qui così "legge" tutti i capitoli sottostanti
#outline(title: "Indice", indent: 1.5em)
#pagebreak()

// 3. PREMESSE (Con numeri romani)
// Attiviamo la numerazione in stile romano "i, ii, iii"
#set page(numbering: "i")
#counter(page).update(1) // Fa partire la premessa da "i"

#heading(numbering: none)[Premessa]

In queste note del corso di Fisica Matematica si prendono le nozioni principalmente dagli appunti presi a lezioni e dai lavori di Paolo Buttà in "Note del Corso di Fisica Matematica" e dalle note di Alessandro Teta disponibili in rete sul suo sito web.
Tutto il materiale è disponibile online e caricati da loro stessi quindi non mi denunciate grazie :)

In ogni caso in queste note sono presenti molti errori, alcune cose sono state approfondite mentre altre sono trattate in modo approssimativo, i materiali originali sono sicuramente fatti meglio.

In queste mi sono limitato a riscrivere gli appunti delle lezioni, e integrato con le altre dispense citate in precedenza. \ l'intenzione non è di plagio ma solo una riscrittura a scopo di studio, successivamente diventata un pdf utile. \ Rispetto alle note citate in precedenza, alcuni risultati e/o dimostrazioni di essi sono assenti. Altri risultati erano invece assenti nei materiali originali, o non dimostrati, e ho quindi provveduto ad integrarli. \ Infine l'ordine di esposizione prende spunto da entrambe le note, con una iniziale studio degli strumenti matematici necessari, quali per l'appunto equazioni differenziali, distribuzioni, trasformate di Fourier e serie di Fourier, come nelle note di Teta, l'ordine di esposizione della seconda parte prende invece spunto dalle note di Buttà. \ La traccia degli esercizi è presa dal corso del 2025-2026 Canale I. Le soluzioni sono trovate da me o dai miei colleghi, quindi potenzialmente inesatte. \ Il documento è comunque ancora in fase di revisione e scrittura. 

Ogni riferimento a similitudini di prosa e frasi utilizzate è puramente casuale, tutto il documento è stato scritto a mano senza mai copiare e incollare nulla, anche liddove sembra invece il contrario. \ Buona lettura e se ci sono errori gravi o mancanze, fatemele notare in modo da migliorare il documento.  

#pagebreak()

// 4. INIZIO DEL DOCUMENTO REALE (Numerazione araba da pagina 1)
#set page(numbering: "1")
#counter(page).update(1) // Resetta il contatore a 1 per il primo capitolo

#include "Capitoli/Richiami_Analisi.typ"
#pagebreak(weak : true)
#include "/Capitoli/EDP.typ"
#pagebreak(weak : true)
#include "Capitoli/Distribuzioni.typ"
#pagebreak(weak : true)
#include "Capitoli/Trasformate.typ"
#pagebreak(weak : true)
#include "Capitoli/Serie_Fourier.typ"
#pagebreak(weak : true)
#include "Capitoli/Intro_corda.typ"
#pagebreak(weak : true)
#include "Capitoli/Metodo_Energia.typ"
#pagebreak(weak : true)
#include "Capitoli/D'Alembert.typ"
#pagebreak(weak : true)
#include "Capitoli/Metodo_Fourier.typ"
#pagebreak(weak : true)
#include "Capitoli/OndeInPiuDim.typ"
#pagebreak(weak : true)
#include "Capitoli/SolOnde.typ"
#pagebreak(weak : true)
#include "Capitoli/Laplace&Poisson.typ"
#pagebreak(weak : true)
#include "Capitoli/Calore.typ"
#pagebreak(weak : true)
#include "Capitoli/Esercizi.typ"
#pagebreak(weak : true)
#include "Capitoli/Bibliografia.typ"

