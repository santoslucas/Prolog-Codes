concatenar([X|L1],L2,[X|L3]) :- concatenar(L1,L2,L3).
concatenar([],L,L).

reverter([], []).
reverter([X1|L1], L) :- reverter(L1 , L2), concatenar(L2, [X1], L).
