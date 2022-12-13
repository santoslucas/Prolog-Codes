compactar([],[]).
compactar([A], [[1,A]]).
compactar([A,A|N], [[X,A]|L]) :- compactar([A|N], [[X1,A]|L]), X is X1+1.
compactar([A,B|N], [[1,A]|L]) :- A\=B, compactar([B|N], L).
