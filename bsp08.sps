* Berechnen von Scores, Umkodieren
* von Variablen
*.
compute score1=sum(item1 to item4).
exe.
compute score2=item1*item2-(item3+item4).
exe.
recode sex (1 eq 0) (2 eq 1).
exe.
if age le 30 age_d eq 1.
if age gt 30 age_d eq 2.
exe.
*.
