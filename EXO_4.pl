% EXO 4.2.1
head(X,[X|_]).
head(X,[_|CORP]):-head(X,CORP).

% EXO 4.2.2
addhead(X,L,L1):-append([X], L, L1).

% EXO 4.2.3
last(L, [L]).
last(X, [_|L]):-last(X, L).

% EXO 4.2.4
addlast(L, X, L1):- append(L,[X],L1).

% EXO 4.2.5
reverse([],[]).
reverse([X|R],L1):-reverse(R,R1),append(R1,[X],L1).

% EXO 4.3.1
langage([b]).
langage([a|S]):-langage(S).

% EXO 4.3.3
langage([]).
langage([a|[a|S]]):-langage(S).