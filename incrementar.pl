concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

incrementar([],[]).
incrementar([A|N], L) :- A1 is A+1, incrementar(N, L1), concatenar([A1],L1,L).
