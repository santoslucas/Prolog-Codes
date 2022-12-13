concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

maior([A], A).
maior([A,B | C], X):-  A >= B -> maior([A | C], Y), X is Y; maior([B| C], Y), X is Y.

remover(_,[],[]).
remover(X,[A|N],L) :- X==A, remover(X, N, L).
remover(X,[A|N],L) :- X\==A, remover(X, N, L1), concatenar([A],L1,L).

ordenar([], []).
ordenar([A], A).
ordenar(A, L) :-  maior(A,M),remover(M,A,L1), ordenar(L1, L2), concatenar(L2, [M], L).
