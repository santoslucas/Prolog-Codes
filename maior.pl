maior([A], A).
maior([A,B | C], X):-  A >= B -> maior([A | C], Y), X is Y; maior([B| C], Y), X is Y.
