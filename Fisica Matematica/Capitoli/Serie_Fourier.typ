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

In questa sezione farò una simpatica introduzione alle serie di Fourier. \ Per ora non scriverò quasi nulla a parte i principali risultati che ci serviranno, e probabilmente dati per buoni, al fine di poter andare avanti con il metodo di Fourier, che è il prossimo metodo risolutivo per risolvere i problemi ben posti sull'equazione delle onde in dimensione 1. 

L'idea alla base dello sviluppo in serie di Fourier è quello di riuscire a scrivere $u$ come "risultato di un certa serie" 

$ u(x,t) eq sum_(n in ZZ) W_n (t) v_n (x) $

Perché questa cosa funziona? Per due motivi:

1. La teoria delle distribuzioni e delle trasformate, combinate, permettono di ottenere risultati sulla convergenza della serie

2. Per ogni $tilde(x) in "corda, fissato,"$ si può ottenere un sistema alle derivate parziali che descrive l'andamento di $u(tilde(x),t) "al variare di" t$.

Il risultato chiave al punto (1) è il seguente

#theo[\
  Sia $f(x)$ una funzione di classe $C^1(RR)$, allora $f$ si può scrivere come

  $ f(x) eq sum_(n in ZZ) c_n e^(i n pi/L x) $
]

Dove $ c_n eq 1/(2L) int_(-L)^L f(x)e^(-i n pi/L x) dif x, quad n in ZZ  $


== Soluzione Fondamentale

#def[Sia dato un operatore differenziale a coefficienti costanti $L in RR^n ("oppure in" RR^n times RR)$. La *Soluzione fondamentale per L* (anche detta nucleo elementare) è una distribuzione $Phi$ che soddisfa l'equazione 

    $ L Phi eq delta $

    Dove $delta$ è la distribuzione delta di Dirac centrata nell'origine.
    ]

    Sarà di primario interesse nel corso del corso (giochino di parole) determinare la soluzione fondamentale nei vari scenari, ossia nell'equazione delle onde, in quella di Laplace o Poisson, e in quella del calore. 

#xpl(title : "Operatori differenziali costanti")[
    Gli operatori differenziali costanti che incontriamo durante il corso sono 

    1. $L eq par^2_t - c^2 laplace_x, quad L in RR^n times RR. quad$Per l'equazione delle onde.

    2. $ L eq par_t - laplace_x, quad L in RR^n times RR. quad$ Per l'equazione del calore. 

    3. $L eq laplace, quad L in RR^n. quad $ Per l'equazione di Laplace.
    ] 


