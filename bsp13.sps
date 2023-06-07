* ANOVA, MANOVA, Partielle Korrelation
*
* Makro Struktur
*.
define makdef(!pos !enc ('>','<') /!pos !enc ('>','<')
             /!pos !enc ('>','<') /!pos !enc ('>','<')
             /!pos !enc ('>','<') /!pos !enc ('>','<')
             /!pos !enc ('>','<') /!pos !enc ('>','<')
              ).
set !1.
comp r=1.
comp t=-1.
comp lauf=!2/4.
exe.
* UV-Code Generierung
* 2 x 2 orthogonal.
loop j=1 to 4.
+ comp r=r*t.
- loop k=1 to lauf.
-  comp y=r.
-  comp z=t.
-  write out=!6 /y z.
- end loop.
+ comp t=t*-1.
end loop.
exe.
data lis file=!6 fre /uva uvb.
recod uva (-1 eq 1) (1 eq 2)
 /uvb (-1 eq 1) (1 eq 2).
for uva(n1) uvb(n1).
exe.
sav out=!7 /com.
exe.
* AV-Generierung.
loop i=1 to !2.
!3.
!4.
!5.
write out=!8 /x y z.
break.
end loop.
exe.
data list file=!8 fre /av1 av2 av3.
exe.
match fil /file=*/file=!7.
exe.
!enddefine.
*.
data list fre /x y z r t.
begin data.
0 0 0 0 0
end data.
* Makroaufruf.
makdef >seed 1234<
       >20<
       >comp x=(normal(10))+100<
       >comp y = x + 8 + (normal(10))<
       >comp z = x + 4 + (normal(10))< 
       >iv.dat< >iv.sav<
       >"demy.dat"<.
* Unabhängige Messungen:
* ANOVA mehrfaktoriell. 
ano av1 by uva(1 2) uvb(1 2)
  /sta mca mea /met hie.
man av1 by uva(1 2) uvb(1 2)
 /pri hom (bar) /des.
graph /sca(xyz)=av1 with uva with uvb.
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
* MANOVA bzw. ANOVA abhängig  mehrfaktoriell.
man av1 av2 av3 by uva(1 2)
 /wsf mwh(3) /pri hom (bar box) err (cor) /des.
*.
* MANCOVA bzw. ANCOVA abhängig mehrfaktoriell
* (Kovarianzanalyse).
man av1 av2 by uva(1 2) with (av3)
 /wsf mwh(2) /pri hom (bar box) err (cor) /des.
*.
* Friedman ANOVA.
npar test /fri av1 av2 av3.
*.
* Partielle Korrelation.
cor av1 av2 av3 /pri nos.
par cor av2 with av3 by av1 /for con.
graph /sca(xyz)=av1 with av2 with av3.
*.





