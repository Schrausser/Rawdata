* Einlesen einer ASCII-Rohdatendatei mit fesem Format.
set hig no.
data list file='C:\dat\bsp11.dat' /it1 1 it2 2 gr 3 .
exe.
* z-Werte Berechnung.
des it1(z1) it2(z2).
list all.
* Beschreibung von Variablen und Faellen.
var lab it1 'Gedaechtnisleistung' it2 'Reaktionszeit'
 /gr 'Versuchsbedingung' z1 'z-Wert der Gedaechtnisleistung'
 /z2 'z-Wert der Reaktionszeit'.
val lab gr 1 'Vormittag' 2 'Nachmittag'.
exe.
* Berechnung verschiedener Scores.
compute leist=it1+it2.
var lab leist 'Leistungsniveau'.
if leist le 11 lei_d eq 1.
if leist gt 11 lei_d eq 2.
var lab lei_d 'Leistungsniveau dichotom'.
val lab lei_d 1 'niedrig' 2 'hoch'.
exe.
* Statistiken der Scores.
fre all /sta mean /his.
cro gr by lei_d / cel cou exp tot /sta chi phi.
cor gr with lei_d.
npar tests /m-w leist by gr(1 2).
* Speichern der berechneten Scores in ASCII Format.
wri out="c:\dat\n_daten.dat" /gr z1 z2 leist lei_d.
exe.
wri out='c:\dat\n_daten.dat' /all.
exe.
* Speichern der berechneten Scores in Binär Format.
save out="c:\dat\bsp11.sav" /com.
exe.
*.
