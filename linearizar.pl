concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

linearizar([], []).
linearizar([A|N], L) :- linearizar(N, L1), concatenar(A, L1, L).
