*missing values und Filterung
*.
get file="h:\dat\bsp11a.sav".
fre all.
filter by it2.
fre it1.
filter off.
fre it1.
*filter berechnen.
compute fil01=it2*it3.
filt by fil01.
fre it1.
filt off.
*missing values definieren.
mis val it1 (4 2 3).
fre it1.
filt by it1.
fre it1.
filt off.
mis val it1 (). *oder vorher temp!.
fre it1.

.


