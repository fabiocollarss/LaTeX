//PACCHETTI

#import "@preview/i-figured:0.2.4"
#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.1": *
#import "@preview/physica:0.9.8": *

//SET
#set page(paper: "a4")

#set heading(numbering: "1.1.1")

#set align(left)

//SHOW
#show link: text.with(fill: blue)
#show ref: text.with(fill: blue.darken(50%))

#show math.equation: i-figured.show-equation.with(only-labeled: true)
#show heading: i-figured.reset-counters

#show: great-theorems-init 

//LET
#let mathcounter = rich-counter(
  identifier: "mathblocks", 
  inherited_levels: 1,
) 

#let def = mathblock(
  blocktitle: "Definition",
  titlix: title => [*$(italic(title))$* \ ],
  counter : mathcounter, 
  inset: 10pt,
  stroke: (left: 1pt + maroon),
  radius: 0pt,
)

#let theo = mathblock(
  blocktitle: "Theorem",
  titlix: title => [*$(italic(title))$* \ ],
  counter : mathcounter, 
  inset: 10pt,
  stroke: (left: 1pt + red),
  radius: 0pt,
)

#let prop = mathblock(
  blocktitle: "Proposition",
  titlix: title => [*$(italic(title))$* \ ],
  counter : mathcounter, 
  inset: 10pt,
  stroke: (left: 1pt + orange),
  radius: 0pt,
)

#let lemma = mathblock(
  blocktitle: "Lemma",
  titlix: title => [*$(italic(title))$* \ ],
  counter : mathcounter, 
  inset: 10pt,
  stroke: (left: 1pt + red),
  radius: 0pt,
)

#let cor = mathblock(
  blocktitle: "Corollary",
  titlix: title => [*$(italic(title))$* \ ],
  counter : mathcounter, 
  inset: 10pt,
  stroke: (left: 1pt + red),
  radius: 0pt,
)

#let oss = mathblock(
  blocktitle: "Observation",
  titlix: title => [*$(italic(title))$* \ ],
  counter : mathcounter, 
  inset: 10pt,
  stroke: (left: 1pt + navy),
  radius: 0pt,
)

#let xpl = mathblock(
  blocktitle: "Example",
  titlix: title => [*$(italic(title))$* \ ],
  counter : mathcounter, 
  inset: 10pt,
  stroke: (left: 1pt + olive),
  radius: 0pt,
)

#let ex = mathblock(
  blocktitle: "Exerise",
  titlix: title => [*$(italic(title))$* \ ],
  counter : mathcounter, 
  inset: 10pt,
  stroke: (left: 1pt + olive),
  radius: 0pt,
)

#let rmk = mathblock(
  blocktitle: "Remark",
  titlix: title => [*$(italic(title))$* \ ],
  counter : mathcounter, 
  inset: 10pt,
  stroke: 0.5pt + fuchsia,
  radius: 10pt,
)

#let rmb = mathblock(
  blocktitle: "Remember",
  titlix: title => [*$(italic(title))$* \ ],
  counter : mathcounter, 
  inset: 10pt,
  stroke: 0.5pt + lime,
  radius: 10pt,
)

#let proof = proofblock( 
  inset: 15pt,  
  stroke: (bottom: 0.5pt + gray),
)

#let sol = mathblock(
  inset: 10pt, 
  stroke: (bottom: 0.5pt + gray),
  blocktitle: "Solution",  
)


