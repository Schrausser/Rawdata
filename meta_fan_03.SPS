* SCHRAUSSER: Testkonstruktion ss03
* code by d.schrausser (c) 2003.

*berechnung der faktorenanalyse.
*eigenwerte kriterium.
FACTOR
  /VARIABLES 
    si01a
    si03
    si04
    si05
    si06
    si07a
    si08a
    si09
    si10
    si12a
    si13a
    si15
    si16a
    si17
    si18a
    si20a
    si21
    si22a
    si23a
    si24a
    si26a
    si27a
    si28
    si30a
    si31
    si32
    si34a
    si35
    si37
    si40
    si42
    si43a
    si44
    si45
    si46a
    si48a
    si50a
    si53a
    si55a
    si56a
    si57
    si59
    si60a 
  /PRINT INITIAL EXTRACTION ROTATION
  /FORMAT SORT BLANK(.10)
  /PLOT EIGEN 
  /CRITERIA MINEIGEN(1) ITERATE(100)
  /EXTRACTION PC
  /CRITERIA ite (100)
  /ROTATION VARIMAX
  /METHOD CORRELATION .


* definition der makrostruktur fan.
*.
define fan    (
                !pos !enc ('>','+')
               /!pos !enc ('+','+')
               /!pos !enc ('+','<')
              )
.
fac
  /var !1  
  /pri ini ext rot /for sor bla(.20)
  /!2 ite(100)
  /ext pc
  /cri ite(100)
  /rot !3
  /sav reg (all)
  /met cor
.
!enddefine
.

*3-faktorenloesung, orthogonal.
fan      >si01a
    si03
    si04
    si05
    si06
    si07a
    si08a
    si09
    si10
    si12a
    si13a
    si15
    si16a
    si17
    si18a
    si20a
    si21
    si22a
    si23a
    si24a
    si26a
    si27a
    si28
    si30a
    si31
    si32
    si34a
    si35
    si37
    si40
    si42
    si43a
    si44
    si45
    si46a
    si48a
    si50a
    si53a
    si55a
    si56a
    si57
    si59
    si60a 
+
         +criteria fac (3)+
	   +varimax< 		
.


*3-faktorenloesung schiefwinkelig.
fan      >si01a
    si03
    si04
    si05
    si06
    si07a
    si08a
    si09
    si10
    si12a
    si13a
    si15
    si16a
    si17
    si18a
    si20a
    si21
    si22a
    si23a
    si24a
    si26a
    si27a
    si28
    si30a
    si31
    si32
    si34a
    si35
    si37
    si40
    si42
    si43a
    si44
    si45
    si46a
    si48a
    si50a
    si53a
    si55a
    si56a
    si57
    si59
    si60a +
         +criteria fac (3)+
	   +oblimin< 		
.

*2-faktorenloesung, orthogonal.
fan      >si01a
    si03
    si04
    si05
    si06
    si07a
    si08a
    si09
    si10
    si12a
    si13a
    si15
    si16a
    si17
    si18a
    si20a
    si21
    si22a
    si23a
    si24a
    si26a
    si27a
    si28
    si30a
    si31
    si32
    si34a
    si35
    si37
    si40
    si42
    si43a
    si44
    si45
    si46a
    si48a
    si50a
    si53a
    si55a
    si56a
    si57
    si59
    si60a +
         +plo rot (1 2) /criteria fac (2)+
	   +varimax< 		
.

