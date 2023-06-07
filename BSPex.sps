* Unabhängige Messungen:
* 2 Stichproben (t-test).

* k Stichproben (oneway).

* mehrfaktoriell (ANOVA).
ano av1 by uva(1 2) uvb(1 2)
  /sta mca mea /met hie.
man av1 by uva(1 2) uvb(1 2)
 /pri hom (bar) /des.
* Kovarianzanalyse (ANCOVA).
ano av1 by uva(1 2) uvb(1 2) with av2
  /sta mca mea /met hie.
* nonparametrisch (Kruskal-Wallis H-test)
* Abhängige Messungen, Messwiederholung:
* 2 Stichproben (t-test). 
* einfaktoriell (MANOVA).
man av1 av2 av3
 /wsf mwh (3) /pri err (cor) /des.
* Nonparametrisch (Friedman ANOVA).
npar test /fri av1 av2 av3.
Korrelationen:
cor av1 av2 av3 /pri nos.
par cor av2 with av3 by av1 /for con.

