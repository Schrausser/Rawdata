* Datengenerierung
*.
* Generiereung  normalverteilter 
* Pseude-Zufallszahlen.
set hig no 
 /seed 23435.
new file.
data list fre / iq .
begin data
0
end data.
loop #=1 to 1000.
+ compute iq = (normal(15)+100).
write out="dmy.dat" /iq.
end loop.
exe.
data list file="dmy.dat" fre /iq.
exe.
fre iq /for not / sta mea std /his nor.
*
* Generierung 2er normalverteilter
* unabhängiger Variablen mit
* Lageunterschied.
set seed ran.
new file.
data list fre / iq gr.
begin data.
0 1 
end data.
loop #=1 to 1000.
+ do if # le 500.
+  compute iq = (normal(15)+100).
+  compute gr = 1.
+ else.
+  compute iq = (normal(12)+110).
+  compute gr = 2.
+ end if.
write out="dmy.dat" /iq gr.
end loop.
exe.
data list file="dmy.dat" fre /iq gr.
exe.
* Makrodefinition.
define !makro(!pos !tok (1)).
split file by gr.
fre var= !1 /for not/ sta mea std /his nor.
split file off.  
t-test gro=gr /var !1.
!enddefine.
!makro iq.
des iq(ziq_1).
!makro ziq_1.
split file by gr.
des iq(ziq_2).
split file off.
!makro ziq_2.
*.

