#import "template.typ": *

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
  #text[Non ho idea di loghi o dei permessi/licenze che andrebbero inserite

        :)
        ]
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

In queste note del corso di Fisica Matematica si prendono le nozioni principalmente dai lavori di Paolo Buttà in "Note del Corso di Fisica Matematica" e dalle note di Alessandro Teta.
Tutto il materiale è disponibile online e caricati da loro stessi quindi non mi denunciate grazie :)

In ogni caso in queste note sono presenti molti errori, alcune cose sono state approfondite mentre altre sono trattate in modo approssimativo, i materiali originali sono sicuramente fatti meglio. 

#pagebreak()

// 4. INIZIO DEL DOCUMENTO REALE (Numerazione araba da pagina 1)
#set page(numbering: "1")
#counter(page).update(1) // Resetta il contatore a 1 per il primo capitolo

#include "Capitolo1.typ"
#pagebreak(weak : true)
#include "Capitolo2.typ"
#pagebreak(weak : true)
#include "Capitolo3.typ"
#pagebreak(weak : true)
#include "Capitolo4.typ"
#pagebreak(weak : true)
#include "Capitolo5.typ"
#pagebreak(weak : true)
#include "Capitolo6.typ"
#pagebreak(weak : true)
#include "Capitolo7.typ"
#pagebreak(weak : true)
#include "Capitolo8.typ"
#pagebreak(weak : true)
#include "Capitolo9.typ"
#pagebreak(weak : true)
#include "Capitolo10.typ"
#pagebreak(weak : true)
#include "Capitolo11.typ"
#pagebreak(weak : true)
#include "Capitolo12.typ"
#pagebreak(weak : true)

