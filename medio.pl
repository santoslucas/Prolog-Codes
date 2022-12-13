nelementos([], 0).
nelementos([_| N], X) :- nelementos(N, X1), X is X1+1.

soma([], 0).
soma([X | L], S) :- soma(L, S1), S is X+S1.

valorMedio(X, L, N, M) :- soma(L, X), nelementos(L, N), M is X/N.

medio([], 0).
medio(L, M) :- valorMedio(_, L, _, M).

