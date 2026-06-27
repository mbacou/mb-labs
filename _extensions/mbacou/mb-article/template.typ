#set page(
  size: a4,
  margin: 1in,
  line-height: 1.55,
  default-font: "Inter",
)

#set text(
  font: (family: "Inter", size: 11pt),
  color: rgb(0.12, 0.16, 0.26),
)

#set heading(
  font: (family: "Inter", weight: 800),
  color: rgb(0.10, 0.14, 0.24),
  leading: 1.1,
)

#set heading(level: 1,
  font: (size: 24pt),
  spacing: (before: 0.9em, after: 0.45em),
)

#set heading(level: 2,
  font: (size: 18pt),
  spacing: (before: 0.8em, after: 0.35em),
)

#set paragraph(
  spacing: 0.45em,
)

#set blockquote(
  fill: rgb(0.96, 0.97, 0.99),
  border: stroke(rgb(0.74, 0.80, 0.88), 0.8pt),
  radius: 6pt,
  padding: (0.7em, 0.9em),
)

#set code(
  font: (family: "JetBrains Mono", size: 9.2pt),
  fill: rgb(0.98, 0.98, 0.99),
  frame: stroke(rgb(0.78, 0.83, 0.89), 0.6pt),
  radius: 5pt,
  padding: (0.5em, 0.6em),
)

#set link(
  color: rgb(0.06, 0.42, 0.81),
)