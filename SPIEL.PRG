$spssx/output=spiel.lis/nobanner
set lenght none
set width 80
data list file="spiel.dat" notable
 /I1 to I27 1-27 alter 29 geschl 31 geschwi 33 sozial 35
value labels alter 1 "1982-1984" 2 "1969-1974" 3 "1950-1969"
 /geschl 1 "maennlich" 2 "weiblich"
 /geschwi 1 "keine" 2 "gleichgesch" 3 "andersgesch"
 /sozial 1 "Innenstadt" 2 "stadtrand" 3 "Land"
compute S1=i1+i6+i8+i11+i14+i16+i20+i24+i27
compute S2=i2+i4+i9+i12+i15+i17+i19+i21+i25
compute S3=i3+i5+i7+i10+i13+i18+i22+i23+i26
frequencies variables all
 /statistics mean stddev variance skewness kurtosis seskew sekurt
 /histogram normal
npar tests k-s(normal) S1 to S3
reliability variables I1 to I27
 /scale(Gesamt) i1 to i27
 /scale(S1) i1 i6 i8 i11 i14 i16 i20 i24 i27
 /scale(S2) i2 i4 i9 i12 i15 i17 i19 i21 i25
 /scale(S3) i3 i5 i7 i10 i13 i18 i22 i23 i26
 /model split
 /model alpha
 /summary total
correlations s1 to s3
factor variables i1 to i27
 /plot eigen rotation(1 2)
factor variables i1 i6 i8 i11 i14 i16 i20 i24 i27
 /plot eigen rotation(1 2)
factor variables i2 i4 i9 i12 i15 i17 i19 i21 i25
 /plot eigen rotation(1 2)
factor variables i3 i5 i7 i10 i13 i18 i22 i23 i26
 /plot eigen rotation(1 2)
crosstabs
 /sozial by alter geschl
 /geschwi by alter geschl
 /geschwi by sozial  
anova s1 to s3 by alter(1 3) geschl(1 2)
 /method experimental 
 /statistics all
anova s1 to s3 by geschwi(1 3) sozial(1 3)
 /method hierarchical
