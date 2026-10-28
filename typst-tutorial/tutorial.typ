
#set document(
  title: [Typst Tutorial - Italiano], 
  date : auto,  
  description: "Tutorial in Italiano per Typst", 
)

#set page(
  paper: "a4", 
  numbering: "1/1"

)

#let typblock(body) = align(center)[
  #block(
    fill: luma(220),
    inset: 7pt,
    radius: 4pt,
    raw(body, lang: "typst", block: true)
  )
]


#align(center, title())

= Introduzione

Questo documento ha lo scopo di essere una guida in Italiano utile per chi volesse imparare ad usare Typst. \ Se stai leggendo questo documento probabilmente sai già quello che stai cercando, ma in ogni caso, se non lo dovessi sapere, typst non è altro che la versione più leggera, intuitiva e veloce di LaTeX. \ Se non sai nemmeno cos'è LaTeX, fatti una cultura. 

E' importante sapere che nemmeno io ho una conoscenza molto approfondita sul tema, ma scrivendo questa guida, che non sarà esente da update nel tempo, anche la mia conoscenza del tema dovrebbe migliorare

== Perché scegliere typst 

La domanda sorge spontaea, perché mai dovrei scegliere di scrivere typst, se già esiste LaTe$Chi$? \ La risposta è riassumibile in una bullet list 

- Anteprima senza dover compilare 
- Script più veloce (soprattutto se scrivete tante formule matematiche)
- Architettura più recente e leggera 

== Dove scrivere in typst 

Vediamo innanzitutto "dove" poter scrivere in typst. \ Non è ovviamente possibile utilizzare un file .txt (di testo) e sperare che verrà magicamente creato un pdf. \ L'idea generale è che non siete del settore, c'è il #link("https://typst.com")[sito di Typst] dove poter scrivere il vostri i vostri documenti. Per chi ha un po' di conoscenza, è l'equivalente di overleaf per LaTeX. 

Troverete (forse) nelle prossime pagine una sezione per impostare typst in locale. 

#pagebreak(weak : true)

= Basi

In questo capitolo vediamo le basi di come funziona Typst. \Si inizia con l'editor di testo vuoto come il cuore di alcune persone che ho avuto il dispiacere di incontrare nella mia vita. 

Non fa nulla 

== Setting del documento

Non appena apriamo il documento, prima ancora di iniziare a scriverlo, è buona norma impostare alcuni metadati. Ciò si fa con il seguente comando 

#align(center, 
box(
  fill: luma(220),
  inset: 7pt,
  radius: 4pt,

    ```typst 
    #set document(
      title : [Titolo],
      date: auto | datetime, 
      description: "Descrizione"
    ) 
    ```
  )
)

E' inoltre di fondamentale importanza scegliere anche come dovranno essere fatte le pagine del nostro documento, quindi formato della pagina, grandezza caratteri, font, etc. \ Ciò si fa con il comando 

#align(center,
  box(  
    fill: luma(220), 
    radius: 4pt,  
    inset: 7pt, 
    ```typst
    #set page(
      paper: "a4" | "a3" | "a5" ,
      numbering: "1" | "1.1" | "i",
    )
    ```
  )
)

#pagebreak(weak : true)

== Capitoli 

- A questo punto possiamo mostrare il titolo del documento con 

#align(
  center, 
  box(
    fill: luma(220),
    inset: 7pt,
    radius: 4pt,

    ````typst
    #align(center, title())
    ````
  )
)

- Invece le Sezioni (o capitoli) e le sottosezioni, etc. si scrivono con 

#typblock("
  = Sezione principale
  
  Qui scrivo quello che voglio. \ Uso il backslash per andare a capo. 

  == sottosezione 

  Nella sottosezione ti mostro come camviare paragrafo.

  Bsogna lasciare una riga vuota.
  
  === sotto-sotto sezione 

  Typst è più comodo di Late$Chi$.
  "
)

Il risultatato sarà 

#align( 
  center,
  block(
    stroke: 1pt,
    inset: 2em,
    radius: 4pt, 
    [
      #align(left,
      [
        = Sezione
        Qui scrivo quello che voglio. \ Uso il backslash per andare a capo.
        == sotto-sezione

        Nella sottosezione ti mostro come camviare paragrafo.

        Bsogna lasciare una riga vuota.

        === sotto sotto-sezione 

        Typst è più comodo di Late$Chi$.


        ]
      ) 
    ]
  )
)

== Formule matematiche

== Variabili 

== Immagini e blocchi 

== Librerie 
