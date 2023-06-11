* SCHRAUSSER: Testkonstruktion ss03
* code by d.schrausser (c) 2003.

tit "einlesen der rohdaten".
data list file = '000.txt' rec 4
      /1 code			1-3
	   fb_nr			4-5
	   sex			6
	   age			7-8
	   bild			9
	/2 si01 to si60	      1-60
	/3 oi101 to oi164		1-64
	/4 oi201 to oi264		1-64.
exe.

tit "sortieren der fälle".
SORT CASES BY
  code (A) fb_nr (A) sex (A).

tit "überprüfung der daten auf plausibilität".
FREQUENCIES all  
  /STATISTICS=MINIMUM MAXIMUM
  /ORDER=  ANALYSIS .

tit "filtervariable setzen".
if sex le 2 sel eq 1.
if sex gt 2 sel eq 0.
if age lt 10 sel eq 0.
exe.
use all.
filter by sel.
exe.

tit "umpolung der items si".
compute si01a=(7-si01).
compute si02a=(7-si02).
compute si07a=(7-si07).
compute si08a=(7-si08).
compute si11a=(7-si11).
compute si12a=(7-si12).
compute si13a=(7-si13).
compute si16a=(7-si16).
compute si18a=(7-si18).
compute si20a=(7-si20).
compute si22a=(7-si22).
compute si23a=(7-si23).
compute si24a=(7-si24).
compute si26a=(7-si26).
compute si27a=(7-si27).
compute si30a=(7-si30).
compute si33a=(7-si33).
compute si34a=(7-si34).
compute si36a=(7-si36).
compute si39a=(7-si39).
compute si43a=(7-si43).
compute si46a=(7-si46).
compute si47a=(7-si47).
compute si48a=(7-si48).
compute si50a=(7-si50).
compute si52a=(7-si52).
compute si53a=(7-si53).
compute si55a=(7-si55).
compute si56a=(7-si56).
compute si60a=(7-si60).

exe.

tit "setzen des interpretationswertes zu oi".
if oi101  eq 2 oi101a  eq 1.
if oi102  eq 1 oi102a  eq 1.
if oi103  eq 2 oi103a  eq 1.
if oi104  eq 2 oi104a  eq 1.
if oi105  eq 1 oi105a  eq 1.
if oi106  eq 1 oi106a  eq 1.
if oi107  eq 1 oi107a  eq 1.
if oi108  eq 2 oi108a  eq 1.
if oi109  eq 1 oi109a  eq 1.
if oi110  eq 2 oi110a  eq 1.
if oi111  eq 2 oi111a  eq 1.
if oi112  eq 1 oi112a  eq 1.
if oi113  eq 1 oi113a  eq 1.
if oi114  eq 2 oi114a  eq 1.
if oi115  eq 1 oi115a  eq 1.
if oi116  eq 1 oi116a  eq 1.
if oi117  eq 1 oi117a  eq 1.
if oi118  eq 2 oi118a  eq 1.
if oi119  eq 1 oi119a  eq 1.
if oi120  eq 1 oi120a  eq 1.
if oi121  eq 1 oi121a  eq 1.
if oi122  eq 2 oi122a  eq 1.
if oi123  eq 2 oi123a  eq 1.
if oi124  eq 2 oi124a  eq 1.
if oi125  eq 1 oi125a  eq 1.
if oi126  eq 2 oi126a  eq 1.
if oi127  eq 2 oi127a  eq 1.
if oi128  eq 2 oi128a  eq 1.
if oi129  eq 1 oi129a  eq 1.
if oi130  eq 2 oi130a  eq 1.
if oi131  eq 1 oi131a  eq 1.
if oi132  eq 2 oi132a  eq 1.
if oi133  eq 2 oi133a  eq 1.
if oi134  eq 2 oi134a  eq 1.
if oi135  eq 1 oi135a  eq 1.
if oi136  eq 1 oi136a  eq 1.
if oi137  eq 1 oi137a  eq 1.
if oi138  eq 1 oi138a  eq 1.
if oi139  eq 2 oi139a  eq 1.
if oi140  eq 1 oi140a  eq 1.
if oi141  eq 2 oi141a  eq 1.
if oi142  eq 2 oi142a  eq 1.
if oi143  eq 2 oi143a  eq 1.
if oi144  eq 2 oi144a  eq 1.
if oi145  eq 2 oi145a  eq 1.
if oi146  eq 1 oi146a  eq 1.
if oi147  eq 2 oi147a  eq 1.
if oi148  eq 2 oi148a  eq 1.
if oi149  eq 2 oi149a  eq 1.
if oi150  eq 1 oi150a  eq 1.
if oi151  eq 1 oi151a  eq 1.
if oi152  eq 2 oi152a  eq 1.
if oi153  eq 1 oi153a  eq 1.
if oi154  eq 1 oi154a  eq 1.
if oi155  eq 1 oi155a  eq 1.
if oi156  eq 2 oi156a  eq 1.
if oi157  eq 2 oi157a  eq 1.
if oi158  eq 1 oi158a  eq 1.
if oi159  eq 1 oi159a  eq 1.
if oi160  eq 1 oi160a  eq 1.
if oi161  eq 1 oi161a  eq 1.
if oi162  eq 2 oi162a  eq 1.
if oi163  eq 1 oi163a  eq 1.
if oi164  eq 2 oi164a  eq 1.

if oi201  eq 2 oi201a  eq 1.
if oi202  eq 2 oi202a  eq 1.
if oi203  eq 2 oi203a  eq 1.
if oi204  eq 2 oi204a  eq 1.
if oi205  eq 1 oi205a  eq 1.
if oi206  eq 2 oi206a  eq 1.
if oi207  eq 1 oi207a  eq 1.
if oi208  eq 2 oi208a  eq 1.
if oi209  eq 1 oi209a  eq 1.
if oi210  eq 2 oi210a  eq 1.
if oi211  eq 1 oi211a  eq 1.
if oi212  eq 1 oi212a  eq 1.
if oi213  eq 2 oi213a  eq 1.
if oi214  eq 2 oi214a  eq 1.
if oi215  eq 2 oi215a  eq 1.
if oi216  eq 1 oi216a  eq 1.
if oi217  eq 1 oi217a  eq 1.
if oi218  eq 2 oi218a  eq 1.
if oi219  eq 2 oi219a  eq 1.
if oi220  eq 2 oi220a  eq 1.
if oi221  eq 1 oi221a  eq 1.
if oi222  eq 1 oi222a  eq 1.
if oi223  eq 1 oi223a  eq 1.
if oi224  eq 2 oi224a  eq 1.
if oi225  eq 1 oi225a  eq 1.
if oi226  eq 1 oi226a  eq 1.
if oi227  eq 1 oi227a  eq 1.
if oi228  eq 1 oi228a  eq 1.
if oi229  eq 2 oi229a  eq 1.
if oi230  eq 1 oi230a  eq 1.
if oi231  eq 2 oi231a  eq 1.
if oi232  eq 1 oi232a  eq 1.
if oi233  eq 2 oi233a  eq 1.
if oi234  eq 1 oi234a  eq 1.
if oi235  eq 1 oi235a  eq 1.
if oi236  eq 1 oi236a  eq 1.
if oi237  eq 2 oi237a  eq 1.
if oi238  eq 2 oi238a  eq 1.
if oi239  eq 2 oi239a  eq 1.
if oi240  eq 1 oi240a  eq 1.
if oi241  eq 2 oi241a  eq 1.
if oi242  eq 1 oi242a  eq 1.
if oi243  eq 1 oi243a  eq 1.
if oi244  eq 1 oi244a  eq 1.
if oi245  eq 2 oi245a  eq 1.
if oi246  eq 2 oi246a  eq 1.
if oi247  eq 1 oi247a  eq 1.
if oi248  eq 1 oi248a  eq 1.
if oi249  eq 2 oi249a  eq 1.
if oi250  eq 1 oi250a  eq 1.
if oi251  eq 1 oi251a  eq 1.
if oi252  eq 1 oi252a  eq 1.
if oi253  eq 2 oi253a  eq 1.
if oi254  eq 2 oi254a  eq 1.
if oi255  eq 2 oi255a  eq 1.
if oi256  eq 2 oi256a  eq 1.
if oi257  eq 1 oi257a  eq 1.
if oi258  eq 1 oi258a  eq 1.
if oi259  eq 2 oi259a  eq 1.
if oi260  eq 2 oi260a  eq 1.
if oi261  eq 2 oi261a  eq 1.
if oi262  eq 1 oi262a  eq 1.
if oi263  eq 2 oi263a  eq 1.
if oi264  eq 1 oi264a  eq 1.
exe.

tit "berechnung des scores zur objektiven intelligenz (posner test)".
compute oisco = sum (oi101a to oi264a).
exe. 

tit "bildung der altersgruppen".
if age lt 25 age1 eq 1.
if age ge 25 and age lt 55 age1 eq 2.
if age ge 55 age1 eq 3.
exe.

tit "bezeichnung von variablen und fällen".
var lab
	sex	"Geschlecht"
	age	"Alter"
	age1 "Altersgruppen"
	bild	"Bildungsgrad"
	oisco "Posner Score"
    si01a "Bei Bildersuchrätseln finde ich selten alle Fehler."
    si02a "Ich bin wenig redegewandt."
    si03 "Ich  merke mir Geburtsdaten gut."
    si04 "Ich hätte viele Ideen für ein Firmenschild."
    si05 "Ich glaube, aus einem Labyrinth würde ich schnell entkommen."
    si06 "Ich kann schnell lesen."
    si07a "Ich finde mich in großen Einkaufszentren kaum zurecht."
    si08a "Komplexere Anweisungen bereiten mir eher Probleme."
    si09 "Ich kann mir gut Produkte bzw. Marken aus der Werbung merken."
    si10 "Den Inhalt von Zeitungsartikeln erfasse ich leicht."
    si11a "Ich kann schlecht Schachspielen."
    si12a "Ich glaube, es würde mir schwer fallen, mich aus einer anderen Perspektive betrachtet zu erkennen."
    si13a "Beim Lesen einer Zeitung bin ich eher langsam."
    si14 "In der Schule fand bzw. finde ich für mathematischen Aufgaben eigene Lösungswege."
    si15 "Ich kann gut Bilderrätsel lösen."
    si16a "Ich glaube, ich könnte mich in einer fremden Stadt nur langsam gut orientieren."
    si17 "Wechselgeld berechne ich meist im Kopf."
    si18a "Den Inhalt von Vorträgen kann ich schwer erfassen."
    si19 "Veränderungen (z.B. neue Straßenschilder, Plakate) auf meinem Heimweg fallen mir schnell auf."
    si20a "Ich merke mir Termine schwer."
    si21 "Ich kann in einer Diskus    sion mit mehreren Gesprächspartnern gut das Wichtigste herausfiltern."
    si22a "Es fällt mir schwer Bedienungsanleitungen zu verstehen."
    si23a "Ich habe ein schlechtes räumliches Vorstellungsvermögen."
    si24a "Ich kann Begriffe nur schwer mit anderen Worten umschreiben."
    si25 "Ich kann den Inhalt von Büchern, die ich gelesen habe, gut wiedergeben."
    si26a "Beim Zeichnen bin ich kaum kreativ."
    si27a "Ich glaube, ich könnte ein Puzzle nur schwer zusammensetzen."
    si28 "Ich denke, ich könnte mit wenigen Wörtern eine Geschichte erzählen."
    si29 "Es fällt mir leicht, mir ein Haus aufgrund seines Bauplans vorzustellen."
    si30a "Ich kann nur langsam Kopfrechnen."
    si31 "Einkaufsrechnungen kann ich schnell nachrechnen."
    si32 "Ich habe ein gutes Gefühl für Formen und Farben."
    si33a "Ich kann mir Gesichter schlecht merken."
    si34a "Schriftliche Montageanleitungen bereiten mir Schwierigkeiten."
    si35 "Im Lösen von Zahlenrätseln bin ich unschlagbar."
    si36a "Ich kann schlecht aus dem Gedächtnis zeichnen."
    si37 "Das Zusammenzählen der Preise an der Kassa gelingt mir schnell."
    si38 "Ich glaube, Gedichte schreiben könnte ich gut."
    si39a "Ich habe die Preise von Grundnahrungsmitteln nicht im Kopf."
    si40 "An der Form eines Autos erkenne ich sofort die Marke."
    si41 "Ich glaube, ich kann in Diskussionen schneller Argumente finden als andere."
    si42 "Ich merke mir Autokennzeichen leicht."
    si43a "Ich kann einen Straßenplan schwer entziffern."
    si44 "Ich kann mich an Gespräche, die ich vor einigen Tagen geführt habe, gut erinnern."
    si45 "Ich glaube, im Straßenverkehr sehr gut auf mehrere Dinge gleichzeitig achten zu können."
    si46a "Ich benötige einen Taschenrechner auch für einfache Rechnungen."
    si47a "Ich war bzw. bin schlecht im Gedichte auswendig lernen."
    si48a "Im Geschichtsunterricht konnte bzw. kann ich mir Jahreszahlen schwer merken."
    si49 "Ich kann gut abschätzen, wie viele Personen sich in einer Gruppe befinden."
    si50a "Mir liegt oft das richtige Wort auf der Zunge, ich kann es aber einfach nicht aussprechen."
    si51 "Auch wenn ich viele neue Leute kennenlerne, merke ich mir ihre Namen."
    si52a "Ich kann mir meine monatlichen Ausgaben schlecht einteilen."
    si53a "Tabellen z.B. in Tageszeitungen kann ich schwer verstehen."
    si54 "Für meine Terminplanung brauche ich keinen Kalender."
    si55a "Die Euroeinführung habe ich noch nicht bewältigt."
    si56a "Mir fallen Rechtschreibfehler in Sätzen kaum auf."
    si57 "Ich erfasse schnell was man mir sagen will."
    si58 "Ich könnte in meiner Vorstellung den Weg zur Schule/Uni/Arbeit bildhaft nachvollziehen."
    si59 "Ich glaube, ich kann schnell Euro in Schilling umrechnen."
    si60a "Bei Bildersuchrätseln finde ich selten alle Fehler."
.

val lab 	
   		sex	1 "männlich" 
			2 "weiblich"
		/bild	1 "Pflichtschulabschluß" 
			2 "Lehrabschluß"
			3 "AHS BHS ohne Matura"
			4 "AHS BHS mit Matura"
			5 "Hochschulabschluß"
		/age1  1 "13-20"
			2 "30-50"
			3 "60+".

exe.

tit "deskriptive statistik 8.2".
CROSSTABS
  code BY fb_nr
  /age1 by sex
  /age1 by bild
  /FORMAT= AVALUE TABLES
  /CELLS= COUNT 
  /stat= chi.



tit "erste itemselektion, prüfung der verteilungscharakteristika 8.2".
FREQUENCIES
    si01a
    si02a
    si03
    si04
    si05
    si06
    si07a
    si08a
    si09
    si10
    si11a
    si12a
    si13a
    si14
    si15
    si16a
    si17
    si18a
    si19
    si20a
    si21
    si22a
    si23a
    si24a
    si25
    si26a
    si27a
    si28
    si29
    si30a
    si31
    si32
    si33a
    si34a
    si35
    si36a
    si37
    si38
    si39a
    si40
    si41
    si42
    si43a
    si44
    si45
    si46a
    si47a
    si48a
    si49
    si50a
    si51
    si52a
    si53a
    si54
    si55a
    si56a
    si57
    si58
    si59
    si60a
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN
  /HISTOGRAM  NORMAL
  /ORDER=  ANALYSIS .

tit "prüfung der verteilungsparameter von oisco".
fre oisco /for not / sta all/ his nor.
NPAR TESTS /K-S(NORMAL)= oisco.
  


