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

= Soluzione di D'Alembert 
In questa sezione si studia il problema di Cauchy globale nel caso omogeneo, ossia $f eq 0, gamma eq 0$, quindi

$ cases( 
  put2 eq c^2 pux2 "," & "in" RR times RR_+,
  u(x,0) eq g(x) "," put(x,0) eq h(x)"," quad quad & x in RR
)
$<dalembert>

L'obiettivo è quello di determinare l'integrale generale dell'eqauzione e dopodiché dimostrare che esiste è unica dati i dati iniziali. 

Per fare ciò, si utilizza il cambio di coordinate 

$ cases(
    xi eq x - c t,
    eta eq x + c t
  )
  #h(2em) arrow.double #h(2em)
  cases(
    x eq (xi plus eta)/2,
    t eq (eta minus psi)/(2 c)
  )
$

Pongo a questo punto $w(xi,eta) eq u(x,t) ", ovvero," u(x,t) eq w(x-c t, x+c t$). \
Scrivendo $put, pux, put2 "e" pux2 $ in funzione delle nuove variabili, si ha che l'equazione delle onde è equivalente a 

$ (par^2 w)/(par xi par eta) eq 0 $

Scrivendola come $ par/(par eta)((par w)/(par xi)) eq 0 $ si conclude che $(par w)/(par xi) $ è funzione della sola $xi$. 

Quindi la esprimo come $ (par w)/(par xi)(xi, eta) eq theta (xi) $

Da cui integrando ottengo 

$ w(xi, eta) eq int dif xi theta(xi) plus theta_2 (eta) $

Con $theta_2 (eta) $ una funzoione arbitraria di $eta$. 

Ragionando in modo analogo sulla variabile $eta$ si ottiene che  $ u(x,t) &eq theta_1(xi) + theta_2(eta) \ &eq theta_1 (x-c t) + theta_2 (x+c t) $

Ora impongo le condizioni iniziali (al bordo), ossia 

$ theta_1 (x) + theta_2 (x) eq g(x), quad quad -theta'_1 (x) + theta'_2 (x) eq h(x) $

Derivando la prima eqauzione e sommando alla seconda si ottiene 

$ 2 theta'_2 (x) eq g'(x) + 1/c h(x) $ 

Da cui si ottiene 

$ theta_2 (x) eq 1/2 g(x)+ 1/(2c) int^x_0 h(y) dif y + C_1 $

Mentre sostituendo nella seconda equazione si ottiene 

$ theta_1 (x) eq 1/2 g(x) - 1/(2c) int^x_0 h(y) dif y - C_1 $

E quindi si arriva alla famosa *Formula di D'alembert* 

$ u(x,t) eq (g(x-c t)+g(x+c t))/2 + 1/(2c) int^(x+c t)_(x-c t) h(y) dif y  $

#oss[ Questo procedimento, da solo, dimostra l'esistenza e unicità della soluzione. \
Infatti se $g "e" h$ sono in $C^2 "e" C^1$ allora risolvono l'eqauzione. Viceversa se abbiamo una soluzione $u$, allora la possiamo scrivere nella forma appena trovata. 
]

= Soluzione Fondamentale 

La soluzione di D'Alembert per generici dati iniziali si scrive può esprimersi in termini di una particolare soluzione, detta fondamentale. \
Questa soluzione corrisponde al problema di Cauchy generalizzato in cui $g eq 0$ e $h$ è un impulso unitario concentrato in un singolo punto. \
L'idea della soluzione fondamentale, più in generale, offre una strategia risolutiva per le equazioni lineari, e l'integrale generale si esprime come 
somma di infiniti contributi (sovrapposizione) di soluzioni particolari, dette $italic("soluzioni fondamentali (o funzioni di Green)")$.

SCRIVERE CAPITOLO MA PER ORA NON SERVE 

= Formula di Duhamel 

La formula di Duhamel si basa sull'utilizzo della soluzione fondamentale, vista nel capitolo precedente, e applicato al problema di Cauchy globale 
per l'equazione delle onde non omogenea, ossia 

$ cases(
    put2 eq c^2 pux2 +f & "in" RR times RR_+, 
    u(x,0) eq g(X) "," put(x,0) eq h(x) "," #h(4em) & x in RR
) $

L'idea è quella di trovare la soluzione per il problema omogeneo associato, ossia 
$ cases(
    put2 eq c^2 pux2 +f, 
    g(x)eq h(x)eq 0 
) $<poa>

E poi sommare a questa la soluzione con $f eq 0$, ossia del @eqt:dalembert[problema] (risolvibile per esempio con la formula di D'alembert).

L'idea euristica del moetodo di Duhamel si basa a sua volta sul principio di sovrapposizione. \
Inizio esprimendo i contributi della propagazione libera $f$ come funzioni costanti definite a tratti. 
Poi porto il limite degli intervalli e zero ed utilizzo la formula fondamentale. 
Ottengo così che posso riscrivere il @eqt:poa[problema associato] come 
$ cases(
    par^2_t w eq c^2 par^2_x w & RR times (s, inf),
    w(x,s:s) eq 0 "," quad par_t w(x,s :s) eq f(x,s) #h(4em) & x in RR
) $

Dove 

$ w(x,t:s) &eq int K(x,y,t-s)f(y,s)dif y \ &eq 1/(2c) int^(x+c(t-s))_(x-c(t-s))f(y,s) dif y $

= simmetrie e metodo delle riflessioni
In questa sezione vediamo come trovare la soluzione di alcuni problemi con condizioni al bordo in termini della soluzione di D'Alemert. \
Siamo interessati ai casi in cui la soluzione $u$ è: 

1. *pari*, ossia $u(x,0)eq u(-x,0) "," quad quad put(x,0) eq put(-x,0)$
2. *dispari*, ossia $u(x,0)eq -u(x,0) "," quad quad put(x,0) eq - put(-x,0)$
3. *periodica*, ossia $u(x,0)eq u(x+L,0) "," quad quad put(x,0) eq put(x+L,0) quad quad "per qualche" L in RR$

Allora la soluzione, che chiameremo $u_+ "nel primo caso," u_- "nel secondo caso " u_L "nel terzo"$ possiede gli stessi dati iniziali della 
soluzione originaria $u$, e dunque, per unicità, deve coincidere. 


