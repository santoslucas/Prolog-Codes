concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

inserirfim(A, N, L) :-  concatenar(N, [A], L).
