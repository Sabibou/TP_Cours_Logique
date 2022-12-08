%EXO 3.1.1
fact(0,1).
fact(N,R) :- N>0, N1 is N-1, R1 is R*N, fact(N1,R1).

% EXO 3.1.2
somme(0,0).
somme(N,R) :- N > 0 , N1 is N-1 , somme(N1,R1) ,R is N+R1.

% EXO 3.1.3
fib(1,1). % F(1) =1
fib(2,1). % F(2) =1
fib(N,R):- N>2, N1 is N-1, N2 is N-2, fib(N1,R1), fib(N2,R2), R is R1+R2.

% EXO 3.1.4

ackermann(0, N, A) :- A is N +1. % A = N + 1 SI M = 0
ackermann(M, 0, A) :- M > 0, M2 is M-1, ackermann(M2, 1, A). % si N = 0 et M > 0 alors on decremente M et on fait un nouvel appel de fonction
ackermann(M, N, A) :- M > 0, N > 0, M2 is M - 1, N2 is N-1, ackermann(M,N2,A1), ackermann(M2,A1,A).
% si M > 0 et N > 0 on fait 2 appel de fonction, le premier ou N prend N-1, qui retourne A1 qu on va mettre a la place de N dans la deuxieme appel de fonction ou M esr remplace par M-1

% EXO 3.2.1
chemin-oriente(X,X):- sommet(X).
chemin-oriente(X,Y) :- arete(X,Y).
chemin-oriente(X,Y) :- chemin-oriente(X,Z), arete(Z,Y).

% EXO 3.2.2
chemin-orienteN(X,X,0):- sommet(X).
chemin-orienteN(X, Y, N):-chemin-orienteN(X, Z, M), M is N-1, arete(Z,Y).
chemin-orienteN(X,Y,1) :- arete(X,Y).
chemin-orienteN(X,Y,0) :- \+ arete(X,Y).

% EXO 3.2.3
chemin(X,X):- sommet(X).
chemin(X,Y) :- arete(X,Y).
chemin(X,Y) :- arete(Y,X).
chemin(X,Y) :- chemin(X,Z), arete(Z,Y).

