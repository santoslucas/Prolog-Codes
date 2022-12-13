concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

gerador(X,Y,A,[]):- B is A*Y, B >= X.
gerador(X,Y,A,L) :- Y1 is Y+1, B is A*Y, gerador(X,Y1,A,L1), concatenar([B],L1,L).

gerarLista(0, _, []).
gerarLista(_, [], []).
gerarLista(X, [A], L) :-  gerador(X,1,A,L).
gerarLista(X,[A|N],L) :- gerador(X,1,A,L1), gerarLista(X,N,L2), concatenar(L1,L2,L).

maior([A], A).
maior([A,B | C], X):-  A >= B -> maior([A | C], Y), X is Y; maior([B| C], Y), X is Y.

remover(_,[],[]).
remover(X,[A|N],L) :- X==A, remover(X, N, L).
remover(X,[A|N],L) :- X\==A, remover(X, N, L1), concatenar([A],L1,L).

ordenar([], []).
ordenar([A], A).
ordenar(A, L) :-  maior(A,M),remover(M,A,L1), ordenar(L1, L2), concatenar(L2, [M], L).

compactar([],[]).
compactar([A], [A]).
compactar([A,A|N], [A|L]) :- compactar([A|N], [A|L]).
compactar([A,B|N], [A|L]) :- A\=B, compactar([B|N], L).

soma([], 0).
soma([X | L], S) :- soma(L, S1), S is X+S1.

somatorio(0, _, 0).
somatorio(_,[], 0).
somatorio(X, N, R) :- gerarLista(X, N, L1), ordenar(L1, L2), compactar(L2,L), soma(L,R),!.
