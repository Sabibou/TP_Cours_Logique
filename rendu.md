# Eldis YMERAJ- #22015179
# Rodrigo FERREIRA RODRIGUES-#22100697
# Salman ABIBOU
# `TP LOGIQUE` 
---
## 2. Requête et base de connaissances (8 points)
---
### 2.1 Introduction (1 point)
1. D’après ce qui est écrit dans le fichier, c'est vrai que Vincent boit de la vodka.
2. La reponse est `true`.
3.  D’après ce qui est écrit dans le fichier, Otto ne boit pas de la vodka.
4.  La reponse est `false`.
5.  Oui, la réponse a changé--la réponse est `true`.
6.  La réponse de l’interpréteur montre que les personnes qu'ils boivent de l'eau sont **abdoul**, **simon**, **otto**.
7.  L’interpréteur donne tout les boissons que boit **simon**.
8.  boisson ( X ) : - boit (_ , X ).

### 2.2 La famille (3 points)
1. `mere(X, Y) :- parent(X, Y), femme(X).`--> quelque soit X, Y : X est un parent d'Y et X est une femme. Ce qui implique que X est mère d'Y.
`pere(X, Y) :- parent(X, Y), homme(X).`--> quelque soit X, Y : X est un parent d'Y et X est un homme. Ce qui implique que X est père d'Y.
2. `fils(X, Y) :- homme(X), parent(Y, X).`--> quelque soit X, Y : X est un homme et Y est un parent de X. Ce qui implique que X est le fils d'Y.
`fille(X, Y) :- femme(X), pere(Y, X).`--> quelque soit X, Y : X est une famme et Y est un parent de X. Ce qui implique que X est la fille d'Y.
3. `grandpere(X, Y) :- parent(Z,Y), pere(X,Z).`--> quelque soit X, Y, Z : X est le père de Z et Z est un parent de Y. Ce qui implique que X est le grand-père d'Y. 
`grandmere(X, Y) :- parent(Z,Y), mere(X,Z).`--> quelque soit X, Y, Z : X est la mère de Z et Z est un parent de Y. Ce qui implique que X est la grand-mère d'Y.
4. `soeur(X, Y) :- femme(X), parent(Z, X), parent(Z, Y), X\==Y.`--> quelque soit X, Y, Z : X est une femme, Z est un parent de X, Z est aussi un parent d'Y et X est different d'Y. Ce qui implique que X est la soeur d'Y.
`frere(X, Y) :- homme(X), parent(Z, X), parent(Z, Y), X\==Y.`--> quelque soit X, Y, Z : X est un homme, Z est un parent de X, Z est aussi un parent d'Y et X est different d'Y. Ce qui implique que X est le frère d'Y.
5. `cousin(X, Y) :-  homme(X), parent(Z, X), parent(T, Y), frere(Z, T), soeur(T, Z), X\==Y.`-->quelque soit X, Y, Z, T : X est un homme et Z est le parent de X et T est le parent d'Y et Z est le frere de T et T est la soeur de Z d'ou X\==Y implique que X est le cousin d'Y.
`cousine(X, Y) :- femme(X), parent(Z, X), parent(T, Y), frere(Z, T), soeur(T, Z), X\==Y.`-->quelque soit X, Y, Z, T : X est une femme et Z est le parent de X et T est le parent d'Y et Z est le frere de T et T est la soeur de Z d'ou X\==Y implique que X est la cousine d'Y.

### 2.3 La fin de la solitude (2 points)
1. 
2. `convient_physiquement(X,Y) :- personne(N, Y, _, _, _), recherche(N,T,C,A), personne(_, X, T,C,A), X\==Y.` --> Quelque soit X, Y, les noms de deux personnes différentes : on récupère le numéro de la personne nommée Y et on s'en sert pour avoir ses goûts. On les compare aux caractéristiques de la personne dont le nom est X. Ce qui se traduit par X *plaît physiquement* à Y.
`ont_meme_gouts(X,Y) :- gout(N1,M,L,S), gout(N2,M,L,S), personne(N1,X,_,_,_),personne(N2,Y,_,_,_), X\==Y.` 
--> Quelque soit X, Y, les noms de deux personnes différentes : on compare les goûts de deux personnes identifiés par leurs numéros, et on s'en sert pour récupérer leur nom. Ainsi, X et Y ont les *mêmes goûts*.
3. `assortis(X,Y) :- convient_physiquement(X,Y), convient_physiquement(Y,X), ont_meme_gouts(X,Y), ont_meme_gouts(Y,X), X\==Y.` --> Quelque soit X, Y, les noms de deux personnes différentes : on recherche deux personnes X et Y qui ont les mêmes goûts, X plaît physiquement à Y et Y plaît physiquement à X. On dit alors que X et Y sont assortis.

### 2.4 Attention à ne pas dépasser ! (2 points)
1. On a commencé par instancier les trois couleurs disponibles :
couleur(rouge).
couleur(vert).
couleur(jaune).
`coloriage(C1,C2,C3,C4) :- couleur(C1), couleur(C2), couleur(C3), couleur(C4), C1\==C2, C1\==C3, C1\==C4, C2\==C3, C3\==C4.`
--> on attribue d'abord à chaque case une couleur et on applique ensuite les contraintes exigées (deux cases contiguës ne peuvent pas avoir la même couleur).
2.

---
## -------------------------------------------------------FIN DE TP------------------------------------------------------
---