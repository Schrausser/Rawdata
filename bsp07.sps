*Korrelation
*.
get file="c:\dat\bsp09.sav".
*Produkt-Moment Korrelation r.
cor all /pri nos.
*Matrix Scatterplot.
graph /scat(mat)=av1 av2 av3 av4 av5 av6.
cor av1 av2 with all 
 /av3 with av6
 /pri nos.
cor av3 with av6
 /pri sig.
*Bivariater Scatterplot.
graph /scat(biv)=av3 with av6.
*Spearman-Korrelation.
nonpar corr all
  / pri nos bot.
*Multiple Korrelation R.
reg /var av1 av2 av3 /dep av1 /met ent.
*3D Scatterplot.
graph /scat(xyz)=av2 with av1 with av3.
*.
