* t-Test f�r korrelierte Stichproben
*.
get file="c:\dat\bsp04.sav".
set hig no.
* Histogramme.
fre av1 av2 
 /for not 
 /his nor.
* Regressionsgraph.
plot
 /plot av1 with av2.
* Test.
T-TEST PAIRS av1 WITH av2.
*.
*Nonparametrische Verfahren.
NPAR TEST
  /WILCOXON av1  WITH av2
  /SIGN av1  WITH av2
  /MCNEMAR av1  WITH av2.
* t-Test f�r unabh�ngige Stichproben
*.
get file="c:\dat\bsp05.sav".
* Test.
T-TEST GROUPS uv(1 2) /VARIABLES=av12.
*.

