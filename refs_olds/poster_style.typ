// =========================================================================
// HOJA DE ESTILOS TYPST PARA QUARTO (Modelo UGR / SiPBA)
// =========================================================================

// 1. Variables de Color
#let ugr-red = rgb("#B5222C")
#let ugr-dark = rgb("#232323")
#let ugr-gray = rgb("#3A3A3A")
#let light-bg = rgb("#F8F9FA")

// 2. Configuración de Pie de Página
#set page(
  fill: white,
  footer: [
    #set text(font: ("Inter", "Roboto", "Arial", "sans-serif"), size: 22pt, fill: ugr-dark)
    #line(length: 100%, stroke: 2pt + ugr-red)
    #v(0.3cm)
    #grid(
      columns: (1fr, auto),
      gutter: 2cm,
      [
        *Financiación:* Proyectos PID2022-137629OA-I00, CNS2024-154296, PID2022-137451OB-I00 (MICIU/AEI/FEDER), beca RYC2021-030875-I (EU/NextGenerationEU), Friedrich-Baur-Stiftung y programa FöFoLe (LMU Múnich).\
        *Referencias clave:* [1] C. Palleis et al., _Brain_, 2026; [2] N. Mammadova et al., _Biomedicines_, 2026; [3] P. Visser et al., _Appl. Sci._, 2024.
      ],
      align(right + bottom)[
        *Contacto:* `fjesusmartinez@ugr.es` | Signal Processing and Biomedical Applications (SiPBA)
      ]
    )
  ]
)

// 3. Tipografía Base
#set text(font: ("Inter", "Roboto", "Helvetica Neue", "Arial"), size: 27pt, fill: ugr-dark, lang: "es")
#set par(justify: true, leading: 0.75em)

// =========================================================================
// FUNCIONES Y COMPONENTES REUTILIZABLES PARA EL PÓSTER
// =========================================================================

#let banner-header(title, subtitle, authors, affil) = {
  grid(
    columns: (22cm, 1fr),
    gutter: 2.5cm,
    align: horizon,
    
    pad(left: -3.5cm,
      grid(
        columns: (1fr, 1fr),
        gutter: 0pt,
        rect(width: 100%, height: 13cm, fill: ugr-dark, stroke: none, inset: 1.2cm)[
          #align(center + horizon)[#image("images/logo_ugr_white.svg", width: 95%)]
        ],
        rect(width: 100%, height: 13cm, fill: ugr-red, stroke: none, inset: 1.2cm)[
          #align(center + horizon)[#image("images/sipba_logo.svg", width: 95%)]
        ],
      )
    ),
    
    align(left + horizon)[
      #v(0.3cm)
      #text(font: ("Inter", "Roboto", "Arial"), size: 50pt, weight: "extrabold", fill: ugr-dark)[#title]
      #v(0.2cm)
      #text(font: ("Inter", "Roboto", "Arial"), size: 34pt, style: "italic", weight: "medium", fill: ugr-red)[#subtitle]
      #v(0.4cm)
      #text(size: 25pt, weight: "bold", fill: ugr-dark)[#authors]
      #v(0.2cm)
      #text(size: 21pt, style: "italic", fill: ugr-gray)[#affil]
      #v(0.3cm)
    ]
  )
}

#let section-heading(num, title) = {
  v(0.7cm)
  line(length: 48%, stroke: 5pt + ugr-red)
  v(-0.2cm)
  text(font: ("EB Garamond", "Georgia", "serif"), weight: "bold", size: 46pt, fill: ugr-dark, number-type: "old-style")[#num. #upper(title)]
  v(0.4cm)
}

#let subsection-heading(num, title) = {
  v(0.4cm)
  line(length: 65%, stroke: 4pt + ugr-red)
  v(-0.2cm)
  text(font: ("EB Garamond", "Georgia", "serif"), weight: "bold", size: 36pt, fill: ugr-dark, number-type: "old-style")[#num #upper(title)]
  v(0.2cm)
}

#let red-banner-box(num, title, col1, col2) = {
  block(width: 100%, fill: ugr-red, inset: (x: 2.2cm, top: 1.5cm, bottom: 1.6cm), radius: 0pt, [
    #line(length: 32%, stroke: 4pt + white.transparentize(30%))
    #v(-0.3cm)
    #text(font: ("EB Garamond", "Georgia", "serif"), weight: "bold", size: 46pt, fill: white, number-type: "old-style")[#num. #upper(title)]
    #v(0.5cm)
    #set text(fill: white, size: 27pt)
    #grid(columns: (1fr, 1fr), gutter: 2.5cm, col1, col2)
  ])
}

#let dark-side-box(num, title, body) = {
  block(width: 100%, fill: ugr-dark, inset: (x: 2cm, top: 1.4cm, bottom: 1.5cm), [
    #line(length: 75%, stroke: 5pt + ugr-red)
    #v(-0.2cm)
    #text(font: ("EB Garamond", "Georgia", "serif"), weight: "bold", size: 36pt, fill: white, number-type: "old-style")[#num #upper(title)]
    #v(0.4cm)
    #set text(fill: white, size: 25pt)
    #body
  ])
}

#let bar-item(label, sub, val, pct, sd, color) = {
  grid(
    columns: (9cm, 1fr, 5cm),
    gutter: 0.6cm,
    align: horizon,
    [
      #text(size: 24pt, weight: "bold", fill: ugr-dark)[#label]\
      #text(size: 19pt, fill: ugr-gray)[#sub]
    ],
    block(width: 100%, height: 1.8cm, fill: light-bg, stroke: 0.5pt + gray)[
      #rect(width: pct, height: 100%, fill: color)
    ],
    align(right)[
      #text(size: 27pt, weight: "extrabold", fill: color)[#val]\
      #text(size: 19pt, fill: ugr-gray)[$plus.minus$ #sd]
    ]
  )
  v(0.35cm)
}