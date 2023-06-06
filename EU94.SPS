SET
   BLANKS=SYSMIS
  UNDEFINED=WARN.
DATA LIST
  FILE='a:\eu94.dat' FIXED RECORDS=1 TABLE 
/1 sex 8-8 age 11 bildung 12 eu 83 part 85.

COMPUTE filter_$=(eu  < 3).
VARIABLE LABEL filter_$ 'Filter Status'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE .
define !cr().
CROSSTABS
  /TABLES=eu  BY age
  /FORMAT= AVALUE NOINDEX BOX LABELS TABLES
  /CELLS= COUNT ROW COLUMN 
  /statistics=chisq phi.
!enddefine.
select if age>2.
!cr.    
select if age<3.
!cr.

                    
