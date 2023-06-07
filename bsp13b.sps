* Unabhängige Messungen:
* ANOVA mehrfaktoriell.
ano av1 by uva(1 2) uvb(1 2)
  /sta mca mea /met hie.
man av1 by uva(1 2) uvb(1 2)
 /pri hom (bar) /des.
*Interaktionsdiagramm.
graph
  /line(multiple)mean(av1) by uvb by uva.
graph
 /lin(mult)mea(av1) by uva by uvb.
*.
* ANCOVA mehrfaktoriell (Kovarianzanalyse).
ano av1 by uva(1 2) uvb(1 2) with av2
  /sta mca mea /met hie.
graph /sca(xyz)=av1 with av2 with uva.
*.
* Abhängige Messungen, Messwiederholung:
* MANOVA bzw. ANOVA abhängig einfaktoriell.
man av1 av2 av3
 /wsf mwh (3) /pri err (cor) /des.
*.
* Friedman ANOVA.
npar test /fri av1 av2 av3.
*.
* Partielle Korrelation.
cor av1 av2 av3 /pri nos.
par cor av2 with av3 by av1 /for con.
graph /sca(xyz)=av1 with av2 with av3.
*.
*Faktorenanalyse FAN.
factor var all.
 

