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

= Equazioni di Laplace e Poisson 

== Considerazioni generali 
In questa sezione studiamo l'equazione di Laplace $Delta u eq 0$ (o alternativamente $laplacian u eq 0$ in base alla notazione che si preferisce usare), e l'equazione di Poisson $Delta u +f eq 0$. \
Si suppone $u eq u(x), quad x in RR^d "è la funzione incognita, e" f eq f(x)$ è una funzione assegnata.

Le soluzioni di tali equazioni descrivono, ad esempio, le posizioni di equilibrio di una membrana (se $d eq 2$) oppure di un solido elastico, come un budino (se $d eq 3$), entrambi sottoposti alla forzante f. \
Oppure ancora il campo di temperatura di un corpo in equilibrio termico in presenza della sorgente di calore $f$. 

Per la corretta formulazione del problema, come fatto sino ad ora, formuliamo il problema in domini $Omega subset RR^d$ e siamo portati ad aggiungere le condizioni al bordo.\
In particolare incontriamo 2 tipi di problemi. 

1. *Problema di Dirichlet* 
$ cases( 
    Delta u + f eq 0","  &"in" Omega,
    u(x) eq g(x) qquad &"per" x in par Omega 
) $<pbmDir>

2. *Problema di Neumann*
$ cases( 
    Delta u + f eq 0","  &"in" Omega,
    (par u)/(par v) (x) eq b(x) qquad &"per" x in par Omega 
) $

In questo corso tratto solo il problema di Dirichlet perché a quanto pare quello di Neumann non viene fatto nelle note :)

Per risolvere il @eqt:pbmDir[Problema di Dirichlet] basta risolvere i due problemi associati. Il primo è il problema omogeneo con condizioni al bordo non omogenee ( $f=0, g!= 0$)

$ cases(
  Delta u eq 0 &"in" Omega,
  u(x) eq g(x) qquad &x in par Omega
) $

Ed il secondo è il problema non omogeneo con dati al bordo omogenei ($f != 0, g eq 0$)

$ cases(
  Delta u +f eq 0 &"in" Omega,
  u(x) eq 0 qquad &x in par Omega
) $

#def[
  Una funzione $u in C^2 (Omega)$ è detta *Armonica in $Omega$* se soddisfa l'equazione di Laplace $Delta u eq 0$.
]

#pagebreak(weak : true)

== Analisi del problema unidimensionale 

Nel caso unidimensionale si ha che $space Omega eq (0,L),space L>0,space$ cosicché i problemi associati diventano

$ cases(
    u'' eq 0 &"in" (0,L),
    u(0) eq a_1"," quad u(L)=a_2 
) $<pbmDirass11d>

$ cases(
    u'' + f eq 0 &"in" (0,L),
    u(0) eq 0"," quad space space space u(L) eq 0  
)  $<pbmDirass21d>

il @eqt:pbmDirass11d[Problema associato] ha soluzione $ u(x) eq a_1 + (a_2 - a_1)/L x $

Per trovare la soluzione del @eqt:pbmDirass21d[Problema associato], invece, osservo prima l'integrale generale dell'equazione $Delta u + f eq 0$ che ha la forma 

$ u(x) eq C_1 + C_2 x + int^x_0 (y-x)f(y) dif y $

Ora impongo le condizoni al bordo $u(0) eq u(L) eq 0$ e ottengo

$ &C_1 eq 0 \
&C_2 eq 1/L int^L_0 (L-y)f(y) dif y 
$

Pertanto la soluzione del @eqt:pbmDirass21d[Problema associato] è 
$
  u(x) &eq x/L int^L_0 (L-y)f(y) dif y + int^x_0 (y-x)f(y) dif y \
  &eq int^x_0 [(x(L-y))/L + (y-x)]f(y) dif y + int^L_x (x(L-y))/(L) f(y) dif y \
  &eq int^x_0 ((L-x)y)/L f(y) dif y + int^L_x (x(L-y))/L f(y) dif y \
  &eq int^L_0 G(x,y) f(y) dif y 
$

Dove $G(x,y)$ è la *Funzione di Green* definita come segue 

$ G(x,y) eq cases( 
              (x(L-y))/L &"se" x<y,
              ((L-x)y)/L qquad &"se" x>y 
) $

#pagebreak(weak : true) 

== Funzione di Green come soluzione di un'equazione di Poisson 

Voglio mostrare che nel caso in cui la forzante $f$ sia la delta di Dirac centrata in $y,space delta_y,space$ allora la funzione di Green può essere essa stessa una soluzione del problema di Poisson. 

Infatti, per le condizioni appena descritte, si ha che 

- $G in C([0,L] times [0,L])$

- $G(x,y) eq G(y,x)$

- $G(0,y) eq G(L,y) eq 0$

- $(par^2 G)/(par x^2)(x,y) eq 0 quad forall x!=y$

- $(par G)/(par x)(y^+,y)-(par G)/(par x)(y^-,y) eq -1$

#prop[
  La funzione di Green $x arrow G(x,y)$ è la soluzione fondamentale del problema di Poisson in $scr(D)'(0,L)$,

  $ cases(
      frac(partial^2 G,partial x^2) (x,y) + delta_y (x) eq 0 &x","y in (0,L),
      G(0,y) eq G(L,y) eq 0 qquad &y in (0,L)
  ) $

  Ovvero 

  $ int G(x,y) psi'' (x) dif x eq - psi(x) qquad forall y in (0,L), quad forall psi in scr(D)(0,L) $

  Con 

  $ scr(D)(0,L) eq {psi in C^inf (RR) "t.c." "supp"(psi) subset (0,L)} $
]
#proof[
  
]

== Soluzione fondamentale dell'operatore di Laplace 

== Teoremi della media & principio del massimo  

== Unicità problema di Laplace-Dirichlet 

== Problema di Laplace-Dirichlet sul disco 

== Problema di Poisson-Dirichlet


