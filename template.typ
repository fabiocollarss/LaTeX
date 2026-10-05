#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.1": *
#import "@preview/physica:0.9.8": *

#set heading(numbering: "1.1")
#set align(left)
#show: great-theorems-init
#show link: text.with(fill: blue)

// Configurazione del contatore avanzato
#let mathcounter = rich-counter(
  identifier: "mathblocks",
  inherited_levels: 1
)

// NOTA: In tutti i mathblock con 'counter' è necessario specificare 'numbering'
#let theo = mathblock(
  blocktitle: "Theorem",
  counter: mathcounter,
  numbering: "1.1",
  inset: 10 pt,
  stroke: 1 pt,
  radius: 10 pt,
)

#let lemma = mathblock(
  blocktitle: "Lemma",
  counter: mathcounter,
  numbering: "1.1",
)

#let rmk = mathblock(
  blocktitle: "Remark",
  counter: mathcounter,
  numbering: "1.1",

  inset: 5pt,
  fill: lime.lighten(80%),
  radius: 5pt,
)

// RISOLTO: Cambiato 'def' (riservato) in 'defn'
#let def = mathblock(
  blocktitle: "Definition",
  counter: mathcounter, 
  numbering: "1.1",

  inset: 10pt,
  stroke: 1pt,
  radius: 10pt,
)

#let xpl = mathblock(
  blocktitle: "Example",
)

#let oss = mathblock(
  blocktitle: "Oss",
)

#let prop = mathblock(
  blocktitle: "Proposition",
  counter: mathcounter,
  numbering: "1.1",
  inset: 10 pt,
  stroke: 1 pt,
  radius: 10 pt,
)

#let proof = proofblock()


