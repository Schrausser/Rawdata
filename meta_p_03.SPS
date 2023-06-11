* SCHRAUSSER: Testkonstruktion ss03
* code by d.schrausser (c) 2003.

tit "berechnung der itemschwierigkeit 8.2".
compute sip01 = si01a-1.
compute sip02 = si02a-1.
compute sip03 = si03-1.
compute sip04 = si04-1.
compute sip05 = si05-1.
compute sip06 = si06-1.
compute sip07 = si07a-1.
compute sip08 = si08a-1.
compute sip09 = si09-1.
compute sip10 = si10-1.
compute sip11 = si11a-1.
compute sip12 = si12a-1.
compute sip13 = si13a-1.
compute sip14 = si14-1.
compute sip15 = si15-1.
compute sip16 = si16a-1.
compute sip17 = si17-1.
compute sip18 = si18a-1.
compute sip19 = si19-1.
compute sip20 = si20a-1.
compute sip21 = si21-1.
compute sip22 = si22a-1.
compute sip23 = si23a-1.
compute sip24 = si24a-1.
compute sip25 = si25-1.
compute sip26 = si26a-1.
compute sip27 = si27a-1.
compute sip28 = si28-1.
compute sip29 = si29-1.
compute sip30 = si30a-1.
compute sip31 = si31-1.
compute sip32 = si32-1.
compute sip33 = si33a-1.
compute sip34 = si34a-1.
compute sip35 = si35-1.
compute sip36 = si36a-1.
compute sip37 = si37-1.
compute sip38 = si38-1.
compute sip39 = si39a-1.
compute sip40 = si40-1.
compute sip41 = si41-1.
compute sip42 = si42-1.
compute sip43 = si43a-1.
compute sip44 = si44-1.
compute sip45 = si45-1.
compute sip46 = si46a-1.
compute sip47 = si47a-1.
compute sip48 = si48a-1.
compute sip49 = si49-1.
compute sip50 = si50a-1.
compute sip51 = si51-1.
compute sip52 = si52a-1.
compute sip53 = si53a-1.
compute sip54 = si54-1.
compute sip55 = si55a-1.
compute sip56 = si56a-1.
compute sip57 = si57-1.
compute sip58 = si58-1.
compute sip59 = si59-1.
compute sip60 = si60a-1.
exe.

FLIP
  VARIABLES=sip01 sip02 sip03 sip04 sip05 sip06 sip07 sip08 sip09 sip10 sip11 sip12 sip13
  sip14 sip15 sip16 sip17 sip18 sip19 sip20 sip21 sip22 sip23 sip24 sip25 sip26 sip27 sip28
  sip29 sip30 sip31 sip32 sip33 sip34 sip35 sip36 sip37 sip38 sip39 sip40 sip41 sip42 sip43
  sip44 sip45 sip46 sip47 sip48 sip49 sip50 sip51 sip52 sip53 sip54 sip55 sip56 sip57 sip58
  sip59 sip60.

compute sxij = sum (var001 to var125). 
compute n = nvalid (var001 to var125).
compute p = sxij/((6-1)*n). 
exe.

for p (f4.3).
if p > .20 and p < .80 sel_p = 1.
exe.

list case_lbl p sel_p/for num.


FREQUENCIES
  VARIABLES=p
  /STATISTICS=STDDEV MINIMUM MAXIMUM
  /HISTOGRAM  NORMAL
  /ORDER=  ANALYSIS .

FREQUENCIES
  VARIABLES=si58
  /STATISTICS=STDDEV MINIMUM MAXIMUM MEAN
  /HISTOGRAM  NORMAL
  /ORDER=  ANALYSIS .
