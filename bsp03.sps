* t-Test f�r eine bzw. unabh�ngige Stichprobe(n)
*.
set hig no.
* Deskriptive Statistiken.
fre all 
 /format condense 
 /histogram 
 /statistics mean std sem.
* Test.
t-test /test=100 /var av.
t-test groups uv(1 2) /var av.
*.
