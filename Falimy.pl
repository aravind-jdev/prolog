male(surya).
male(srinivas).
male(thamizh).
male(saravanan).
male(dante).
male(leo).
male(steve).

female(subbulakshimi).
female(bhagyalakshimi).
female(shruthi).

mother(subbulakshimi, thamizh).
mother(subbulakshimi, saravanan).
mother(bhagyalakshimi, shruthi).
mother(shruthi, dante).
mother(shruthi, leo).
mother(shruthi, steve).


father(surya, thamizh).
father(surya, saravanan).
father(srinivas, shruthi).
father(thamizh, dante).
father(thamizh, leo).
father(thamizh, steve).


parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(X, Y) :-
    sibling(X, Y),
    male(X).

sister(X, Y) :-
    sibling(X, Y),
    female(X).

grandfather(X, Y) :-
    father(X, P),
    parent(P, Y).

grandmother(X, Y) :-
    mother(X, P),
    parent(P, Y).

uncle(X, Y) :-
    brother(X, P),
    parent(P, Y).

aunt(X, Y) :-
    sister(X, P),
    parent(P, Y).
