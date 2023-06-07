* Bedingte Auswertung, Manipulation der Rohdaten
*.
get file="c:\dat\bsp11.sav".
* Bedingte Auswertung.
temporary.
sel if gr eq 1.
list it1.
list it1.
tem.
sel if z1 lt 2 and z1 gt -2 or z2 lt 2 and z2 gt -2.
fre z1 z2.
* Beschränkte Fallanzahl.
tem.
n of cas 3.
list all.
* Aufteilung der Rohdatenmatrix.
split file by gr.
fre leist.
split file off.
list all.
sor cas by lei_d.
split file by lei_d.
fre gr.
split file off. 
sor cas by gr.
list all.
* Transponierung.
flip all.
list all.
*.
