velocidade(fusca, 5).
tempo(fusca, 401).
distancia(X, D) :- velocidade(X, V), tempo(X, T), D is V*T.
