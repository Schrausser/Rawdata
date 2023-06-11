* SCHRAUSSER: Testkonstruktion ss03
* code by d.schrausser (c) 2003.

* definition der makrostruktur diagramm.
*.
define diagramm(!pos !enc ('>','+')/!pos !enc ('+','<')).
graph /!1 /mis!2.
!enddefine.

*berechnung von gruppenunterschieden.
cor sisco  fac1_3 fac2_3 oisco with bild.  
ANOVA sisco fac1_3 fac2_3 oisco by sex (1 2) age1 (1 3)with bild. 

TABLES
  /FORMAT BLANK MISSING('.')
  /OBSERVATION sisco fac1_3 fac2_3 oisco
  /TABLES (sisco + fac1_3 + fac2_3 + oisco) > sex
  BY age1 > (STATISTICS)
  /STATISTICS
  mean( )
  stddev( )
  count( ( F5.0 )).

GRAPH
  /LINE(MULTIPLE)MEAN(sisco)BY age1 BY sex 
  /MISSING REPORT.

diagramm >lin(mul) mea (fac1_3) by age1 by sex+ +rep<.
diagramm >lin(mul) mea (fac2_3) by age1 by sex+ +rep<.
diagramm >lin(mul) mea (oisco) by age1 by sex+ +rep<.



