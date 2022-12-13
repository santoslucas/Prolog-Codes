nelementos([], 0).
nelementos([_| N], X) :- nelementos(N, X1), X is X1+1.
