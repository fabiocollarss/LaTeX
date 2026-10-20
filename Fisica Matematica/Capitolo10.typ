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

= Equazione delle onde in dimensione $d>1$

L'equazione delle onde in dimensione $d eq 2,3$ è idonea a descrivere diversi fenomeni fisici, ad esempio membrane elastiche, la propagazione del campo elettromagnetico nel vuoto, delle onde sonore in un fluido, o ancora di budini su un piatto d'argento. 

== Problemi ben posti

Nel seguito defiamo \
$Omega subset RR^d $ Dominio regolare con bordo $par Omega$ di classe $C^2$ \
$Q_T eq Omega times (0,T)$


I tre classici problemi nel caso dell'equazione dell'onda generalizzata sono 

1. *Problema di Cauchy globale* 

$ cases( 
    put2 eq c^2 Delta u - gamma u + f"," & RR^d times RR_+,
    u(x,0) eq g(x)"," quad put(x,0)eq h(x)"," qquad & x in RR^d 
) $

2. *Problema di Cauchy-Dirichlet* 

$ cases( 
    put2 eq c^2 Delta u - gamma u + f"," & Q_T,
    u(x,0) eq g(x)"," quad put(x,0)eq h(x)"," qquad & x in dash(Omega), 
    u(x,t)eq a(x,t)"," &(x,t) in par Omega times [0,T)
) $

3. *Problema di Cauchy-Neumann* 

$ cases( 
    put2 eq c^2 Delta u - gamma u + f"," & Q_T,
    u(x,0) eq g(x)"," quad put(x,0)eq h(x)"," qquad & x in dash(Omega), 
    (par u)/(par v)(x,t)eq b(x,t)"," &(x,t) in par Omega times [0,T)
) $

#rmk[
  sia $v(x)$ vettore normale al bordo $par Omega$, allora la derivata direzionale lungo $v$ di $u$ è 

  $ (par u)/(par v)(x) :eq v dot grad u (x) $
]

== Unicità delle soluzioni per C-D e C-N 

#theo(title : "integrale primo dei problemi (2) e (3) ")[\
  Sia $T >0,quad Q_T eq Omega times (0,L), quad u in C^2(Omega) $ soluzione dell'equazione omogenea dei problemi (2) e (3), allora

  $ E(u,t) eq E(u,0) qquad forall t in [0,T] $
]

#proof[ 
  Dimostro che la derivata temporale dell'energia è nulla per $t in [0,T]$.
  L'energia, nel caso di dimensione d>1, ha la forma 

  $ E(u,t) &eq T + U \
  &eq int_Omega rho/2 (put)^2 dif x + int_Omega tau/2 abs(grad u)^2 + gamma/2 rho u^2 dif x  
  $

  Quindi la derivata totale rispetto al tempo è 

  $
    dif/(dif t)E(u,t) &eq int_Omega dift (1/2 put)^2 + dift (c^2 /2 abs(grad u)^2 + gamma/2 u^2) dx \
    &eq int_Omega put (put2 + gamma u) + c^2 grad u dot (par/(par t) grad u) dx \
    &eq^"Schwarz" int_Omega put (put2 + gamma u) + c^2 grad u dot (grad par/(par t)u) dx 
  $

  #rmk[Per la prima formula di Green con $v eq put$ si ha 
    $ int_omega grad u dot grad (par/(par t)u) dx eq int_(par Omega)put (par u)/(par v) dif sigma - int_Omega put Delta u dx    $
  ]

  Da cui si ottiene 

  $ dift E(u,t) eq int_Omega put (put2 - c^2 Delta u + gamma u ) dx +c^2 int_(par Omega) put (par u)/(par v) dif sigma eq 0  $

  Il primo integrale è nullo perché $u$ risolve l'equazione della corda vibrante, ed il secondo lo è perché $put$ è nullo sul bordo nel caso di C-D stazionario, mentre $(par u)/(par v)$ è nullo nel caso di C-N omogeneo.

]

#theo(title : "unicità nei problemi (2) e (3) ")[\
  Per $T>0$, fissati i dati iniziali e al bordo, esiste al più una soluzione per i problemi (2) e (3)
]
#proof[
  La dimostrazione è sulla falsa riga di quella unidimensionale. \
  Si prendono dunque due soluzione $u_1, u_2$ dello stesso problema, e si dimostra che $u_1 - u_2$ è nulla.  

  Sia $u eq u_q - u_2$, allora $u$ risolve il problema C-D omogeneo oppure C-N omogeneo.  \
  $E(u,t) eq E(u,0) quad forall t >=0$. \
  Proprio perché $E(u,0) eq 0$ nei casi omogenei, la soluzione può essere solo costante, ma $u$ è nulla nelle condizioni omogenee al tempo $t eq 0 qquad Arrow qquad u(x,t) eq 0$.
  
]

#pagebreak(weak : true)

== Unicità delle soluzioni per Cauchy globale 

#def[
  Fissato un punto $(x_0, t_0)$ nello spazio-tempo, si definisce *Cono Caratteristico retrogado con vertice in $(x_o, t_0)$* l'insieme 
  $ C_(x_0,t_0) :&eq {(x,t) "t.c." abs(x-x_0)<c(t_0 -t), quad t in [0,t_0]} \
    &eq union_(t in [0,t_0]) B_(c(t_0 -t)) (x_0) times {t}
  $
]

#figure(
  image("images/ConoRetrogrado.png", width: 50%),
)

#lemma[Sia $u$ soluzione dell'equazione delle onde e definisco
  $ e(t) eq int_(B_(c(t-t_o)) (x_0)) 1/2 (put)^2 + c^2 /2 abs(grad u)^2 + gamma/2 u^2 dif x, qquad t in [0,t_0] $
  Allora $ dot(e)(t) <= 0 quad forall t in [0,t_0] $
]

#proof[
  Indico con $S_r (z) "la frontiera" par B_r (z)$. 
  Derivando rispetto al tempo ed utilizzando la I formula di Green come fatto in precedenza, ottengo 

  $
    dot(e) (t) &eq dift int_B_(c(t_0-t)(x_0)) 1/2 (put)^2 + c^2 /2 abs(grad u)^2 + gamma/2 u^2 dif x \
    &eq dift int_0^(c(t_0-t)) int_(S_r (x_0)) 1/2 (put)^2 + c^2 /2 abs(grad u)^2 + gamma/2 u^2 dif sigma dif r \
    &eq - c/2 int_(S_(c(t_0 -t))(x_0))
  $ 
]

#theo(title : "unicità del problema (1) ")[\
  Per $T>0$ esiste al più una soluzione in $C^2(Omega times [0, inf))$ per il problema (1). 
]

#proof[
  La differenza $u eq u_1 - u_2$ soluzioni dello problema di Cauchy, soddisfa l'equazione della corda nel caso del problema omogeneo con dati iniziali nulli. \
  Avendo dati iniziali nulli $e(0)eq 0$. \
  Essecondo contemporaneamente $e(t) >= 0 "e" dot(e)(t) <=0$ si conclude che $e(t) eq 0$. \
  Per continuità segue che $u(x,t) eq 0$.
  
]

#oss[In reatlà ho dimostrato qualcosa di più forte, ossia che due problemi con $g_1 eq g_2, h_1 eq h_2, f_1 eq f_2$ all'interno del cono retrogrado ma diverse altrove, hanno ancora la stessa soluzione nel punto $(x_0,t_0)$.]


