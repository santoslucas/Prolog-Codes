gerar(B, B, [B]).
gerar(A, B, [A | L]) :- gerar(A1, B, L), A is A1-1.
