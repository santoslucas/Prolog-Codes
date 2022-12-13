adjacente(_, _, []) :- false.
adjacente(A, B, [A,B | _]) :- true.
adjacente(A, B, [_, _ | N]) :-  adjacente(A, B, N).
