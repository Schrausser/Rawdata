* SCHRAUSSER: Testkonstruktion ss03
* code by d.schrausser (c) 2003.
*berechnung der validitätskoeffizienten.
CORRELATIONS
/VARIABLES= oisco with sisco fac1_3 fac2_3
/PRINT=TWOTAIL
/MISSING=PAIRWISE.
GRAPH
/SCATTERPLOT(BIVAR)=sisco WITH oisco
/MISSING=LISTWISE.
* definition der makrostruktur diagramm.
*.
define diagramm(!pos !enc ('>','+')/!pos !enc ('+','<')).
graph /!1 /mis!2.
!enddefine.
diagramm >sca(matrix) fac1_3 fac2_3 oisco+ +lis<.
diagramm >sca(xyz) fac1_3 with fac2_3 with oisco+ +lis<.
*minderungskorrektur.
data list rec 3 not
/1 rtc 1-4
/2 rtt 1-4
/3 rcc 1-4.
for rtt (f4.2) rtc (f4.2).
begin data.
0,46
0,90
0,93
end data.
exe.
compute r_t_c = rtc / sqrt (rtt).
compute rt_c_ = rtc / sqrt (rcc).
compute r_tc_ = rtc / sqrt (rtt * rcc).
exe.
tit "die minderungskorrigierten Validitätskoeffizienten betragen:".
list r_t_c rt_c_ r_tc_.