concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

rotacionarn(0,A,A).
rotacionarn(_, [], []).
rotacionarn(X, [A|N], L) :- X1 is X-1,concatenar(N, [A], B),rotacionarn(X1, B, L).
