#import "template.typ": *

#set heading(numbering: "1.1")
#set align(left)
#show: great-theorems-init
#show link: text.with(fill: blue)

= Trasformata di Fourier
#def(title: "Trasformata di Fourier")[\
  Sia $f in L^1(RR)$, è detta *Trasformata di Fourier di $f$* la funzione
  $ hat(f)(lambda) := 1/sqrt(2pi)integral dd(x)e^(minus i lambda x)f(x) $
  In dimensione n, quindi se $f in L^1(RR^n)$, è definita come
  $ hat(f)(lambda) := 1/(2pi)^(n/2)integral dd(x)e^(minus i lambda dot x)f(x) $
]\
#theo(title:"Caratterizzazione delle Trasformate")[
  sia $f in L^1(RR)$, allora\
  1)$hat(f)$ è limitata e continua.\
  2)se $f_n in L^1(RR) and norm(f_n - f)_(L^1) ->0 quad arrow.double quad hat(f_n)->hat(f) "uniformemente"$\
  3)$lim_(lambda -> infinity) hat(f)(lambda) = 0$
  #proof[\
    1) La *limitatezza* si dimostra facilmente, infatti:\
    $ 1/sqrt(2pi)|integral dd(x)e^(-i lambda x)f(x)|<=1/sqrt(2pi)integral dd(x) |e^(-i lambda x)f(x)|=1/sqrt(2pi)integral dd(x)f(x) $\
    Visto che $f in L^1(RR)$ la limitatezza è verificata.
    
    Per la *continuità*, invece, procedo come segue:\
    $ |hat(f)(lambda)-hat(f)(lambda_0)|=^("def")...<="coi moduli dentro" $\
    Inoltre, osservo che valgono:\ 
    a)$|e^(-i lambda x)-e^(-i lambda_0 x)||f(x)|-->_(lambda->lambda_0)0 "q.o."$\
    b)$|e^(-i lambda x)-e^(-i lambda_0 x)||f(x)|<=2|f(x)|$\
    Per convergenza dominata, segue la continuità.

    2)Ragiono sulla differenza in modulo:\
    $ |hat(f)_n (lambda)-hat(f)(lambda)|=^("def")...<="modulo dentro"= 1/sqrt(2pi) norm(f_n - f)_(L^1) $
    La convergenza in L1 di f implica quella uniforme di f cappuccio.

    3)Inizio considerando la funzione caratteristica $Chi_((a,b)) (x) $ e la sua Trasformata di Fourier.\
    La trasformata va a zero per Lambda divergente.\
    Visto che lo stesso vale anche per le funzioni semplici, e che posso scrivere una qualsiasi funzione come limite di una successione di funzioni semplici, ottengo la tesi.\
  ]
]\
#pagebreak()
#theo(title: "Formula di inversione")[\
  Sia $f in L^1(RR)$ e suppongo che valga la *Condizione del Dini*, ovvero:
  $ forall x in RR quad exists delta>0 quad t.c.quad integral^delta_(minus delta) (|(x plus t)-f(x)|)/(|t|) dd(x) <= infinity $
  Allora 
  $ f(x)=1/(2pi)integral $
]\
