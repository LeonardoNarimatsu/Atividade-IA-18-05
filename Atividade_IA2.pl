sexo(ana, mulher).
sexo(juan, homem).
sexo(jordan, homem).
sexo(maria, mulher).
sexo(lucy, mulher).
pai(juan,lucy).
pai(ana,jordan).
pai(juan, jordan).
pai(jordan, rosy).
pai(jordan, rita).
pai(ana, maria).
pai(lucy, joel).
pai(maria, marta).
filho(X, Z) :- pai(Z, X).
irmao(X, Z) :- pai(Y, X), pai(Y, Z), X\=Z.
tia(X, Z) :- sexo(X, mulher), pai(Y, Z), irmao(X, Y).
tio(X, Z) :- sexo(X, homem), pai(Y, Z), irmao(X, Y).
primos(X, Z) :- tia(Y, Z), pai(Y, X).
primos(X, Z) :- tio(Y, Z), pai(Y, X).

