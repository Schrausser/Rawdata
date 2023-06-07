* U-Test
*.
get file="c:\dat\bsp06.sav".
set hig no.
* Boxplot.
exa var av by uv
  /plot box.
* U-Test.
npar tests
  /M-W av by uv(1 2).
* Unabhängiger t-test.
rank av
t-test gro uv(1 2) /var av rav.
*.
