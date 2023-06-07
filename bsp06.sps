* Das k-Stichprobenproblem
* (Einfaktorielle Varianzanalyse, Oneway)
*.
get file="c:\dat\bsp07.sav".
* ANOVA.
one av BY uv(1 3)
  /RAN SCH
  /STA DES hom.
* H-Test.
NPAR TESTS
  /K-W=av BY uv(1 3).
* Fehlerbalken.
GRAPH
  /ERR( CI 95 )=av BY uv.
*.
