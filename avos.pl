progenitor(dangelo, lucas).
progenitor(arlene, lucas).
progenitor(dangelo, nino).
progenitor(arlene, nino).

progenitor(marcos, dangelo).
progenitor(maria, dangelo).
progenitor(marcos, david).
progenitor(maria, david).

progenitor(serafim, arlene).
progenitor(valdete, arlene).
progenitor(serafim, gilson).
progenitor(valdete, gilson).
progenitor(gilson, matheus).
progenitor(gilson, augusto).
progenitor(gilson, joao).

homem(lucas).
homem(dangelo).
homem(serafim).
homem(marcos).
homem(david).
homem(gilson).
mulher(arlene).
mulher(valdete).
mulher(maria).

mae(M, X) :- progenitor(M,X), mulher(M).
pai(P, X) :- progenitor(P,X), homem(P).

avo(A, X) :- progenitor(A, P), progenitor(P, X).
irmao(I, X) :- pai(P, I), pai(P, X), mae(M, I), mae(M, X), not(X = I).
tio(T, X) :- progenitor(P, X), irmao(P, T).
primo(PR, X) :- progenitor(T, PR), tio(T, X), not(X = PR).

avos(X, A) :- findall(A1, avo(A1, X), A).
pais(X, P) :- findall(P1, progenitor(P1, X), P).
irmaos(X, I) :- findall(I1, irmao(I1, X), I).
tios(X, T) :- findall(T1, tio(T1, X), T).
primos(X, PR) :- findall(PR1, primo(PR1, X), PR).
