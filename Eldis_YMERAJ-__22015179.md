# Eldis YMERAJ- #22015179
## `TP LOGIQUE` 
---
## 2. Requête et base de connaissances (8 points)
---
### 2.1 Introduction (1 point)
1. D’après ce qui est écrit dans le fichier, c'est vrai que Vincent boit de la vodka.
2. La reponse est `true`.
3.  D’après ce qui est écrit dans le fichier, Otto ne boit pas de la vodka.
4.  La reponse est `false`.
5.  Oui, la réponse a changé--la réponse est `true`.
6.  La réponse de l’interpréteur montre que les personnes qu'ils boivent de l'eau sont abdoul, lhouari, otto.
7.  L’interpréteur donne tout les boissons que boit lhouari.
8.  boisson ( X ) : - boit (_ , X ).

### 2.2 La famille (3 points)
1. `mere(X, Y) :- parent(X, Y), femme(X).`--> quelque soit X, Y : X est le parent d'Y et X est une famme impique que X est mere d'Y.
`pere(X, Y) :- parent(X, Y), homme(X).`--> quelque soit X, Y : X est le pqrent d'Y et X est un homme implique que X est pere d'Y.
2. `fils(X, Y) :- homme(X), pere(Y, X).`--> quelque soit X, Y : X est un homme et Y est le pere de X implique que X est le fils d'Y.
`fils(X, Y) :- homme(X), mere(Y, X).`--> quelque soit X, Y : X est un homme et Y est la mere de X implique que X est le fils d'Y.
`fille(X, Y) :- femme(X), pere(Y, X).`--> quelque soit X, Y : X est une famme et Y est le pere de X implique que X est la fille d'Y.
`fille(X, Y) :- femme(X), mere(Y, X).`--> quelque soit X, Y : X est une famme et Y est la mere de X implique que X est lq fille d'Y.
3. `grandpere(X, Y) :- homme(X), parent(X, Z), parent(Z, Y).`--> quelque soit X, Y, Z : X est un homme et X est parent de Z et Z est parent d'Y implique que X est le grand-pere d'Y. 
`grandmere(X, Y) :- femme(X), parent(X, Z), parent(Z, Y).`--> quelque soit X, Y, Z : X est une famme et X est parent de Z et Z est parent d'Y implique que X est la grand-mere d'Y. 
4. `soeur(X, Y) :- femme(X), parent(Z, X), parent(Z, Y), X\==Y.`--> quelque soit X, Y, Z : X est une famme et Z est le parent de X et Z est le parent d'Y d'ou X est different d'Y implique que X est la soeur d'Y.
`frere(X, Y) :- homme(X), parent(Z, X), parent(Z, Y), X\==Y.`--> quelque soit X, Y, Z : X est un homme et Z est le parent de X et Z est le parent d'Y d'ou X est different d'Y implique que X est le frere d'Y.
5. `cousin(X, Y) :-  homme(X), parent(Z, X), parent(T, Y), frere(Z, T), soeur(T, Z), X\==Y.`-->quelque soit X, Y, Z, T : X est un homme et Z est le parent de X et T est le parent d'Y et Z est le frere de T et T est la soeur de Z d'ou X\==Y implique que X est le cousin d'Y.
`cousine(X, Y) :- femme(X), parent(Z, X), parent(T, Y), frere(Z, T), soeur(T, Z), X\==Y.`-->quelque soit X, Y, Z, T : X est une femme et Z est le parent de X et T est le parent d'Y et Z est le frere de T et T est la soeur de Z d'ou X\==Y implique que X est la cousine d'Y.

### 2.3 La fin de la solitude (2 points)
1. Dans cette exercice j'ai écrit 10 fammes et 10 hommes qui sont inscrit dans le site et il peuvent avoir les memes gouts. Aussi j'ai écrit leur gouts,taille, age et leurs preferences.
2. `convientPhysiquement(X, Y):-homme(X), femme(Y), recherche(X, T, C, A),personne(Y, _, T, C, A), X\==Y.` --> Ici on va montrer si X convient physiquement avec Y. X est un homme et Y est un femme et X cherche un personne de taille T, des cheveux de couleur C et dont l’âge est A et Y est un personne de n'importe quel nom, taille T, des cheveux de couleur C et dont l’âge est A, ca implique que X convient physiquement à Y.(X est different de Y).
`ontMemesGouts(X, Y):-homme(X), femme(Y), gout(X, M, L, S) ,gout(Y, M, L, S) , X\==Y.` 
--> Ici on montre les personnes avecles memes gouts. X est un homme et Y est un femme et X aime le genre de musique M, le genre de littérature L, et pratique le sport S et Y aime le genre de musique M, le genre de littérature L, et pratique le sport S d' ou X est different de Y, ca implique que X et Y ont les memes gouts.
3. `assortis(X,Y):-homme(X), femme(Y), ontMemesGouts(X, Y), convientPhysiquement(X, Y), convientPhysiquement(Y, X).` --> Ici le programme determine si les couples assortis. X est un homme et Y est un femme, X et Y nt les memes gouts et X convient physiquement avec Y et Y convient physiquement avec X, ca implique que X et Y assortis.
---
## 3 Graphes et récursivité (7 points)
---
### 3.1 Introduction (4 points)
1. La fonction factorielle 
`fact(0,1).`
`fact(N,R) :- N>0, N1 is N-1, fact(N1, R1), R is N*R1.` --> On a ecrit un base `fact(0,1)`, ca veut dire que le factorial de 0 est toujours 1. Et pour la suite, pour factorielle (N, R), si une valeur temporaire N1 est affectée à N-1 et factorial de N1 est R1. R est NR1, c'est-à-dire en affectant M à N*R1, alors la valeur de N est R.
2. La somme des entiers de 1 à n (en utilisant la récursivité !).
`somme(1,1).`
`somme(N,R) :- N > 1 , N1 is N-1 , somme(N1,R1) ,R is R1+N.` --> On a écrit une base `somme(1,1)` qui ca veut dire que la somme de 1 à N=1 est 1. Pour N>1 et on notera que pour une valeur temporaire N1 prenne la valeur N-1 et la somme de 1 à N1 est R1 qui est une resultat temporaire qui prenne la valeur R1+N donc ca implique que somme de 1 jusqu'a N est R.
3. La suite de fibonacci F(n)= F(n-1) + F(n-2) avec F(1)=F(2)=1.
`fib(0,0).`
`fib(1,1).`
`fib(2,1).`
`fib(N,R):-N>2, N1 is N-1, N2 is N-2, fib(N1,R1), fib(N2,R2), R is R1+R2.`
--> On a écrit les bases que f(0)=0, f(1)=1=f(2). Pour N>2 et pour une valeur N1 qui prenne la valeur de N-1 et  N2 prenne la valeur de N-2 et f(N1) est R1 et f(N2) est R2 d' ou R prenne la valeur de R1+R2 alors ca implique que f(N)=R.
4. La fonction d’Ackermann A(m,n).

### 3.2 Graphes dirigés acycliques (3 points)
1. `cheminOriente(X,Y).`
`cheminOriente(X,Y):- sommet(X), sommet(Z), sommet(Y), arete(X,Z), arete(Z,Y), arete(X,Y).`
--> Ici le fonction cheminOriente teste s’il existe un chemin orienté de X à Y dans le graphe. X, Z et Y sont des sommets et il y a un arete allant de X à Z, de Z à Y et X à Y ca implique que il existe un chemin orienté de X à Y.

---
## 4 Listes et langages (17 points)
---
### 4.1 Introduction (1 point)
1. La reponse est: `X=a, Y=[b,c,d]`, ca veut dire que a est la tete et le corps est [b, c, d].
2. L a reponse est `false` car X est une variable et a seulement 1 element et [X] est une liste avec 1 element et pas 4.
### 4.2 Opérations sur les listes (5 points)
1. Le premier élément de la liste L:
`head(X,[X|_]).`
`head(X,[_|CORP]):-head(X,CORP).`--> On a dit que X est la tete de la liste L. X est la tete de CORP implique que X est le premiee element de la liste L.
2. addhead(X,L,L1)
`addhead(X,L,L1):-append([X], L, L1).`--> L=notre liste d'elements, X=element que je vais ajouter et L1 est le nouveau liste avec element que j'ai ajouté au debut de la liste. J'ai utilisé le fonction append ajoute des élements dans un autre liste, à notre cas on ajoute élement X dans la liste L et on les mettent dans le noouveau liste L1. J'ai écrit X comme 1er parametre car on ajoute au debut de la liste, c'est le premier élément de la nouvelle liste.
3. Coder le prédicat last(X, L), qui renvoie le dernier élément de la liste L.
`last(L, [L]).`
`last(X, [_|L]):-last(X, L).`-->C'est le memeprincipe avec le code head mais il change juste des petites choses. On va trouver le derrnier element de corps de la liste. X est le derrniere element dans le corps de la liste implique que X est le derrnier element dans la liste.
4. addlast(L,X,L1)
`addlast(L, X, L1):- append(L,[X],L1).` --> L=notre liste d'elements, X=element que je vais ajouter et L1 est le nouveau liste avec element que j'ai ajouté à la fin de la liste. J'ai utilisé le fonction append ajoute des élements dans un autre liste, à notre cas on ajoute élement X dans la liste L et on les mettent dans le noouveau liste L1. J'ai écrit X comme 2eme parametre car on ajoute à lafin de la liste, c'est le derrnier élément.
5.  Écrire le prédicat reverse(L, L1)
`reverse([],[])`.
`reverse([L|R],L1) :- reverse(R,R1),append(R1,[L],L1).` Ici le code reverse prends en argument deux listes. Ici on a utilisé fonction append qui ajoute des éléments d'une liste dans une autre. R est reverse de R1 et dans le fonction append, L1 est le resultat de l'ajout de [L] à R1.

## 4.3 Construction inductive et langages (11pt)
1. a^nb, n dans N.
`langage([b]).`
`langage([a|S]) : - langage(S).`--> Le mot b est dans langage. Si S est un mot valide alors aS est un mot valide. Ici le regle est que le 'b' va etre toujours à la fin de la liste.
4. a^2n
`langage([]).`
`langage([a|[a|S]]):-langage(S).` Ici notre liste est valide si elle contient seulement des elements pairs. Le mot vide est dans notre liste. Si S est un mot valide alors aaS est valide.

---
## -----------------------------------FIN DE TP----------------------------------
---


