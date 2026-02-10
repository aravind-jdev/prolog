fact(0,1).
fact(N,Result) :- N > 0, N1 is N - 1, fact(N1,Result1), Result is Result1 * N.

fact(N,Result) :- N < 0, Result is 0.
