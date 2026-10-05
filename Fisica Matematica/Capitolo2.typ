#import "template.typ": *

#set heading(numbering: "1.1")
#set align(left)
#show: great-theorems-init
#show link: text.with(fill: blue)



= Richiami di Analisi

Sia *$Omega$*$subset.eq RR^3 ("oppure" RR^2)$ un aperto limitato con $partial Omega$ frontiera regolare.\
Siano $n(x) "e" sigma(x)$ le funzioni che descrivono rispettivamente la normale esterna alla frontiera e la frontiera.

#prop(title: "Riduzione della dimensione integrale")[\
  Sia $Omega subset.eq RR^n  "un dominio regolare, scomponibile e normale rispetto a "x_i space forall i=1,...,n.$\ 
  $"Sia" u in C^1(Omega) inter C(dash(Omega)).$ \
  Allora vale: 
  $ integral_Omega u(x) d x eq integral_D d x' integral^(beta(x'))_(alpha(x')) u(x',y)space d y $
  #proof[\
    Il teorema è un caso specifico del Teorema di Fubini-Tonelli, che è più generale e vale su ipotesi meno ristrette.\
    Quando avrò tempo estenderò questa sezione integrando con la teoria della misura.\
    Per ora accollatevi la pratica.\
    Ciao :)

  ]
]

#prop[\
  Sia $u in C^1(Omega) inter C(dash(Omega)) $. Allora si ha:
  $ integral_Omega d x (partial u)/(partial x_i) = integral_(partial Omega) d sigma(x)u(x)n_i (x) wide , wide i=1,2,3  $
]

  #proof[\
    Sia $Omega subset RR^n$ regolare scomponibile e normale rispetto ad ogni $x_i, i=1,...,n$.\
    Fisso $i in [1,...,n]$.\
    sia $x = (x',y), quad$ dove $y=x_i, quad x'=(x_1,...,x_(i-1),x_(i+1),...,x_n)$.\
    Sia $D subset RR^(n-1)$ la proiezione di $Omega$ su $y$.\
    Visto che $Omega$ è normale rispetto ad $y space (x_i) space$, allora $exists alpha, beta: D arrow RR space$ t.c.    
    $ Omega = {x in RR^n | x' in D, space alpha(x') <= y <= beta(x')} $
    #figure(
      image("images/Dominio-normalità_asse_x.jpg", width: 20%),
      caption: [Grafico di un dominio normale rispetto ad x],
    )
    Ora uso il teorema della riduzione della dimensione dell'integrale.
    $ integral_Omega (partial u)/(partial x_i)(x) d x  eq integral_D (integral^(beta(x'))_(alpha(x'))(partial u)/(partial x_i)(x',y)d y)d x' $\
    Per il TFCI si ha che: 
    $ integral^(beta(x'))_(alpha(x'))(partial u)/(partial x_i)(x',y)d y eq u(x',beta(x'))-u(x',alpha(x')) $
    Ho ottenuto la prima delle due uguaglianza necessarie.\
    Per la seconda, scompongo dapprima il bordo $partial Omega$ in tre sezioni:
    1. $Sigma_+ :eq "sezione di" partial Omega "definita da" beta(x') $ 
    2. $Sigma_- :eq "sezione di" partial Omega "definita da" alpha(x') $
    3. $Sigma_L :eq "sezione 'laterale'"$
    $ integral_(partial Omega)u space nu_i space d S_(n-1) eq integral_(Sigma_+)u space nu_i space d S_(n-1) + integral_(Sigma_-)u space nu_i space d S_(n-1) + integral_(Sigma_L)u space nu_i space d S_(n-1)  $
    *Sulla parte laterale $Sigma_L$*\ 
    L'integrale è nullo. Infatti i segmenti sono paralleli all'asse $x_i$ dunque la normale a tale superficie è sempre ortogonale a $x_i$.\

    *Sulla parte superiore $Sigma_+$ *\ 
    In quanto grafico di $x_i = beta(x')$, dalla geometria differenziale, la normale esterna (rivolta verso l'alto) a un grafico ha componenti proporzionali a $(-grad beta,1)$. Più precisamente, il legame tra l'elemento di superficie $d S_(n-1)$ e l'elemento di volume della proiezione $d x'$ è dato dal fattore di area:\
    $ d S_(n-1) eq sqrt(1 + norm(grad beta(x'))^2) d x' $
    E quindi il versore normale $n$ ha componente i-esima:\
    $ nu_i eq 1/(sqrt(1 + norm(grad beta(x'))^2) ) $\
    Quindi il loro prodotto scalare è:\
    $ nu_i dot d S_(n-1) eq d x' $\
    E dunque l'integrale sulla superficie superiore diventa:
    $ integral_(Sigma_+)u(x',y) space nu_i dot d S_(n-1) eq integral_(D)u(x',beta(x')) space d x' $

    *Sulla parte inferiore $Sigma_-$*\
    La normale esterna (rivolta verso il basso) ha componenti proporzionali a $(grad alpha, -1)$.\
    Dunque la componente i-esima della normale vale:\
    $ nu_i eq (-1)/(sqrt(1 + norm(grad alpha(x'))^2))  $
    E quindi il prodotto scalare ha risultato:\
    $ nu_i dot d S_(n-1) eq -d x' $
    Da notare il segno negativo!\

    L'integrale ha quindi la forma:\
    $ integral_Sigma_- u(x',y) space nu_i dot d S_(n-1) eq integral_D u(x',alpha(x')) (-d x')=-integral_D u(x',alpha(x')) space d x' $
    Ordunques, ottengo:\
    $ integral_(partial Omega)u space nu_i space d S_(n-1) eq integral_D u(x',beta(x')) space d x' - integral_D u(x', alpha(x') space d x') + 0 $
    Confrontando le due equazioni ottenute, ottengo che:\
    $ integral_Omega (partial u)/(partial x_i) d x eq integral_(partial Omega) u space nu_i space d S_(n-1) $\
    
  ]
]<prediv>


#theo(title: "Teorema della Divergenza")[\
  Sia $F$ un campo vettoriale, con le componenti $F_i in C^1(Omega)inter C(dash(Omega))$. Allora
  $ integral_Omega d x div F = integral_(partial Omega) d sigma(x) F(x)dot n(x) $
  #proof[
  
    Basta applicare la @prediv con $u=F_i$, e quindi sommare tutto su $i$. Infatti:\
    $ integral_Omega d x grad dot F eq integral_Omega sum_i (partial F)/(partial x_i) d x eq sum_i integral_Omega (partial F)/(partial x_i)d x eq sum_i integral_(partial Omega) F(x) n_i (x) d sigma(x) $
    A questo punto non resta che riportare la sommatoria dentro l'integrale (operazione lecita per le ipotesi di regolarità) ed il gioco è fatto.\
  ]
]
\
#theo(title: "Integrazione per parti")[\
  Siano $f,g$ con le stesse condizioni di regolarità. Allora\
  $ integral_Omega d x f(x) Delta g(x) = - integral_Omega d x grad f(x) dot grad g(x) + integral_(partial Omega)d sigma(x) f(x) (partial g)/(partial n)(x) $
  #proof[\
    
  ]
]


