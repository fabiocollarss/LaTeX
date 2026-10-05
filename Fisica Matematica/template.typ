#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.1": *
#import "@preview/physica:0.9.8": *

#set heading(numbering: "1.1")
#show: great-theorems-init

#show link: text.with(fill: blue)

#let mathcounter = rich-counter(
  identifier: "mathblocks",
  inherited_levels: 1
)

#let theo = mathblock(
  blocktitle: "Theorem",
  counter: mathcounter,
  inset: 10pt,
  stroke: 1pt,
  radius: 10pt,

)

#let lemma = mathblock(
  blocktitle: "Lemma",
  counter: mathcounter,
  inset: 10pt,
  stroke: 1pt,
  radius: 10pt,

)

#let rmk = mathblock(
  blocktitle: "Remark",
  //prefix: [_Remark._], con questo non funziona il counter.
  counter: mathcounter,
  inset: 5pt,
  fill: lime.lighten(80%),
  radius: 5pt,
)

#let def = mathblock(
  blocktitle: "Definition",
  counter: mathcounter, 
  inset: 10pt,
  stroke: 1pt,
  radius: 10pt,
)

#let xpl = mathblock(
  blocktitle: "Example",
)

#let oss = mathblock(
  blocktitle: "Oss",
  inset: 10pt,
  stroke: 1pt,
)

#let prop = mathblock(
  blocktitle: "Proposition",
  inset: 10pt,
  stroke: 1pt,
  radius: 10pt,
)

#let proof = proofblock()
