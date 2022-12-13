concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

remover(_,[],[]).
remover(X,[A|N],L) :- X==A, remover(X, N, L).
remover(X,[A|N],L) :- X\==A, remover(X, N, L1), concatenar([A],L1,L).
