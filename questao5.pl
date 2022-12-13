cliente(1, gabriel, 21, estudante).
cliente(2, bruna, 30, medico).
cliente(3, rafaela, 25, arquiteto).
cliente(4, victor, 39, advogado).
cliente(5, beatriz, 18, estudante).
cliente(6, joao, 28, engenheiro).

smartphone(iphone4s, 1300).
smartphone(galaxyS3, 1400).
smartphone(iphone5s, 2400).
smartphone(iphone5s, 2500).
smartphone(galaxyS4, 2300).
smartphone(blackBerryZ10, 1800).
smartphone(iphone4, 1000).
smartphone(nokiaLumia, 1700).

listar_clientes(L) :- findall(L1, cliente(_,L1,_,_), L).
dados(X, A) :- cliente(X, A, _, _).
dados(X, B) :- cliente(X, _, B, _).
dados(X, C) :- cliente(X, _, _, C).
listar_dados_cliente(X, L) :- findall(L1, dados(X, L1), L).
listar_smartphones(L) :- findall(L1, smartphone(L1, _), L).
listar_estudantes(L) :- findall(L1, cliente(_, L1, _, estudante), L).

precos(L) :- findall(L1, smartphone(_, L1), L).
nelementos([], 0).
nelementos([_| N], X) :- nelementos(N, X1), X is X1+1.
soma([], 0).
soma([X | L], S) :- soma(L, S1), S is X+S1.
preco_medio(M) :- precos(L), soma(L, X), nelementos(L, N), M is X/N.
