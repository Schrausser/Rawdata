* Direktes Einlesen von Rohdaten mit festem Format.
data list tab /it1 1 it2 2 gr 3.
begin data.
681
451
761
641
851
462
542
342
562
792
end data.
des all.

* Direktes Einlesen von Rohdaten mit freiem Format.
data list lis /it1 it2 gr.
begin data.
6 8 1
  4  5 1
7 6   1
    6   4 1
8  5 1
4 6    2
  5  4  2
3   4 2
5 6      2
7                9 2
end data.
exe.
list all.
for it1 (f1.0) it2 (f6.4) gr (f5.1).
list all.
for it1 (n1) it2 (n1) gr (n1).
list all.
wri out='c:\dat\n_daten.dat' /all.
exe.

