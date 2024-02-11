#import "template.typ": *

#set page(
  header: align(center)[Advanced Topics in Computer Network and Security exam, II call, February 2024],
  numbering: "1"
)

#show: ieee.with(
  title: "Virtualizing the Process of Fuzzing for the Testing of QR Codes on Android Applications",
  abstract: [
    #include "abstract.typ"
  ],
  authors: (
    (
      name: "Alberto Lazari",
      department: [Department of Mathematics],
      organization: [University of Padua],
      location: [Padua, Italy],
      email: "alberto.lazari@studenti.unipd.it"
    ),
    (
      name: "Elia Scandaletti",
      department: [Department of Mathematics],
      organization: [University of Padua],
      location: [Padua, Italy],
      email: "elia.scandaletti@studenti.unipd.it"
    ),
    (
      name: "Francesco Protopapa",
      department: [Department of Mathematics],
      organization: [University of Padua],
      location: [Padua, Italy],
      email: "francesco.protopapa@studenti.unipd.it"
    ),
  ),
  index-terms: ([QR code], [Fuzzing], [Android security], [Virtualization], [Mobile applications]),
  bibliography-file: "refs.bib",
)

#show heading.where(level: 2): it => {
  v(.5em)
  set text(size: 10pt)
  set par(first-line-indent: 0em)
  emph(strong(it.body))
  v(.5em)
}
#show heading.where(level: 3): it => {
  v(.5em)
  set par(first-line-indent: 0em)
  text(weight: "medium", emph(it.body))
}

#include "introduction.typ"
#include "previous-architecture.typ"
#include "critical-aspects.typ"
#include "our-approach.typ"
#include "webcam.typ"
#include "device.typ"
#include "automation.typ"
#include "test.typ"
#include "conclusions.typ"
#include "future-work.typ"
