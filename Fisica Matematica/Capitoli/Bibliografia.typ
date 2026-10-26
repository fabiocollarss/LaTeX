#import "template.typ": *

#set heading(numbering: "1.1")
// Mostra la numerazione per capitolo sulle equazioni matematiche
#show math.equation: i-figured.show-equation//.with(only-labeled: false) 
#show heading: i-figured.reset-counters

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
#let put2 = $(par^2 u)/(par t^2)$
#let pux2 = $(par^2 u)/(par x^2)$ 
#let int = $integral$
#let inf = $infinity$ 
#let qquad = $quad quad quad$
#let Arrow = $arrow.double$
#let dift = $dif/(dif t)$
#let dx = $dif x$
#let dt = $dif t$

= Bibliografia 
\
1. Paolo Buttà - $italic("Note del corso di Fisica Matematica")$

2. Alessandro Teta - $italic("Appunti sul suo sito")$

3. Note del corso prese durante le lezioni del corso di Fisica Matematica

4. Note dei corsi di Elementi di Analisi Reale, Analisi 2, Analisi Reale, Equazioni Differenziali & Meccanica Razionale
