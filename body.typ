//PACCHEETTI
#import "@preview/i-figured:0.2.4"
#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.1": *
#import "@preview/physica:0.9.8": *
#import "template.typ": *

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
  #text(size: 26pt, weight: "bold" )[Title]
  #v(1cm)
  #text(size: 14pt, style: "italic")[Author]
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

#pagebreak(weak : true)

#set page(numbering: "1")
#counter(page).update(1)

//TESTO

= prova 
equazione   aaa aaa aa 
$ a eq b $

#oss[
  Quando scrivo mi sento gay
]

#sol[
  Cerco la soluzione del problema che non sonosco
]

#def[

]

equazione con label $ a eq b $<equazione>

richiamare @eqt:equazione[nome personalizzato]

== sotto prova 
equazione 
$ a eq b $

equazione con label $ c eq d $<ceqd>

=== sotto sotto prova

equazione $ a eq b $

equazione con label $ e eq f $<eeqf>

= capitolo 2 

equazione $ a eq b $

equazione con label $ c eq d $<ceqd2>

#theo(title : "titolo")[
  Siano le palle mosce 

  $ a eq b $
  
  ciao 

  Allora $ c eq d $<ceqd2>
]
#proof[
  Ciao tutto bene?
]

Ciao 

#prop[

]

#rmk[

]

#rmb[

]

