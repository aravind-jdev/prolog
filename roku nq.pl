% -----------------------------
% Generate numbers from I to N
% -----------------------------
range(I, N, [I]) :-
    I =:= N.
range(I, N, [I|T]) :-
    I < N,
    I1 is I + 1,
    range(I1, N, T).

% -----------------------------
% Generate permutations
% -----------------------------
perm([], []).
perm(L, [H|T]) :-
    select(H, L, R),
    perm(R, T).

% -----------------------------
% Check if queens are safe
% -----------------------------
safe([]).
safe([Q|Others]) :-
    safe(Others),
    no_attack(Q, Others, 1).

% -----------------------------
% Diagonal attack check
% -----------------------------
no_attack(_, [], _).
no_attack(Q, [Q1|Qs], D) :-
    Q =\= Q1 + D,
    Q =\= Q1 - D,
    D1 is D + 1,
    no_attack(Q, Qs, D1).

% -----------------------------
% N-Queens Solver
% -----------------------------
n_queens(N, Solution) :-
    range(1, N, Rows),
    perm(Rows, Solution),
    safe(Solution).
