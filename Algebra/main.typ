//PACCHEETTI
#import "@preview/i-figured:0.2.4"
#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.1": *
#import "@preview/physica:0.9.8": *
#import "Capitoli/template.typ": *
#import "Capitoli/variabili.typ": *

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
  #text(size: 31pt, weight: "bold" )[Algebra I]
  #v(1cm)
  #text(size: 18pt, style: "italic")[Fabio Colletti]
  #v(0.5cm)
  #text(size : 12pt, fill: gray.darken(50%) )[Dicembre 2026]
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

Queste note sono appunti presi per scopo di studio personale.\ In particolare seguono il corso di Algebra I della sapienza.\ Queste note sono un misto degli appunti presi dalle lezione coi i professori Valeri e Meazzini, ed integrate con le loro dispense pubbliche.\ Inoltre alcune informazioni sono state reperite da altre fonti come il celebre lavoro di Artin, e altri ancora.\ Al momento questo documento è totalmente non pronto e pieno di errori. 

#pagebreak(weak : true)

#set page(numbering: "1")
#counter(page).update(1)
#set text(size : 11pt)

//TESTO

#include "Capitoli/Intro_Gruppi.typ"
