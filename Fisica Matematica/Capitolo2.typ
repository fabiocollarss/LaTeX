#import "template.typ": *

#set heading(numbering: "1.1")
#set align(left)
#show: great-theorems-init
#show link: text.with(fill: blue)



= Richiami di Analisi 2

Sia *$Omega$*$subset.eq RR^3 ("oppure" RR^2)$ un aperto limitato con $partial Omega$ frontiera regolare.\
Siano $n(x) "e" sigma(x)$ le funzioni che descrivono rispettivamente la normale esterna alla frontiera e la frontiera.

#prop[\
  Sia $u in C^1(Omega) inter C(dash(Omega)) $. Allora si ha

  $ integral_Omega d x (partial u)/(partial x_i) = integral_(partial Omega) d sigma(x)u(x)n_i (x) wide , wide i=1,2,3  $
  #proof[
  
    Corso di Analisi 2.

  ]
] <prediv>
\
#theo(title: "Teorema della Divergenza")[\
  Sia $F$ un campo vettoriale, con le componenti regolari come nella @prediv. Allora
  $ integral_Omega d x div F = integral_(partial Omega) d sigma(x) F(x)dot n(x) $
  #proof[
  
    Basta applicare la @prediv con $u=F_i$, e quindi sommare tutto su $i$.

  ]
]
\
#theo(title: "Integrazione per parti")[\
  Siano $f,g$ con le stesse condizioni di regolarità. Allora\
  $ integral_Omega d x f(x) Delta g(x) = - integral_Omega d x grad f(x) dot grad g(x) + integral_(partial Omega)d sigma(x) f(x) (partial g)/(partial n)(x) $
  #proof[\
  
  ]
]


