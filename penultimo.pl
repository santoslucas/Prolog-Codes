penultimo(X, [X,_]).
penultimo(X, [_|L]) :- penultimo(X, L).
