ctof(C,F) :- F is C * 9/5 + 32.
freezing(F) :- F < 32.
hot(F) :- F > 100.
cold(F) :- F < 50.
warm(F) :- F > 50, F < 100.
