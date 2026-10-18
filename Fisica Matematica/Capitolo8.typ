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

= Serie di Fourier

In questa sezione farò una simpatica introduzione alle serie di Fourier. \
Per ora non scriverò quasi nulla a parte i principali risultati che ci serviranno, e probabilmente dati per buoni, al fine di poter andare avanti con il metodo di Fourier, che è il prossimo metodo risolutivo per risolvere i problemi ben posti sull'equazione delle onde in dimensione 1. 


