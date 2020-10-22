////Ce projet a été rendu le 21/10/2020, par Charré Marc.\\\\

L'objectif de ce jeu est d'avoir le meilleur score possible en tuant et évitant des ennemis dans différents niveaux, permettant de gagner de l'argent afin d'acheter des cosmétiques dans une boutique.

	Concernant les fonctionnalités, vous pourrez utiliser un menu interactif octroyant de nombreuses possiblitées, regroupées en quatre principales catégories : 

-"LEVELS", est une interface où vous avez le choix de sélectionner le premier ou le deuxième niveau disponible
-"SHOP", est un magasin d'achat de cosmétiques (4 au total), possible grâce à de l'argent gagné en jeu
-"PLAY", est utilisé afin d'accéder au niveau choisi préalablement
-Et enfin "EXIT", qui sert uniquement à quitter le jeu.

	En mettant l'accent sur la phase de gameplay, plusieurs données seront utilisées et parfois enregistrées pour la suite du jeu : 
Un timer sera présent pour raccourcir les parties et augmenter la difficultée, et dans la même optique une barre de vie (100 HP) et un score minimal (3000) sont prédéfinis, le score accumulé dans la partie est affiché en direct afin de se repérer. 
De plus, deux données seront enregistrées : l'argent et le meilleur score. 
Votre argent gagné en partie dépendra de votre réussite pour tuer des ennemis, ou bien des dégats que vous allez peut être subir.
Si vous gagnez, vous récupérerez l'argent accumulé pour faire des achats dans la boutique; dans le cas contraire, vous perdez votre argent durant la partie jouée.
Pour le meilleur score, il sera enregistré dès que vous gagnez une partie et que vous avez réussi à battre votre précédant score.

	A propos des personnages du jeu, il y en a trois : l'ennemi rouge, l'ennemi orange et l'allié vert.
Afin de pimenter l'expérience du jeu, il ne faut viser que l'ennemi rouge pour essayer de gagner : il vous apportera de l'argent, un meilleur score, et peut être la victoire.
L'allié vert est un personnage totalement inoffensif, sauf si vous cliquez dessus... vous perdrez du score (-400) et des HP (-25).
Et pour finir, l'ennemi orange apparaît uniquement dans le niveau 2, puisqu'il peut être complexe à gérer lorsqu'on débute : il ne faut surtout pas l'approcher avec votre souris, sinon vous perdrez des HP (-25) et du score (-50).
L'allié et l'ennemi orange possèdent un cooldown, afin de modérer tout de même la difficulté.


	Pour naviguer dans le menu, le choix des niveaux, entrer dans le shop et lancer une partie : tout se fait avec le clique gauche de la souris.
Mais dès qu'il faut effectuer une action particulière, comme le fait de retourner au menu lors d'une victoire/défaite, réessayer un niveau en cas de défaite, aller directement au magasin en cas de victoire et acheter/équiper des cosmétiques : les contrôles seront indiqués sur l'écran.

Mais, pour résumer : 

-"a" = acheter un cosmétique
-"e" = équiper un cosmétique préalablement acheté
-"s" = aller directement au magasin en cas de victoire
-"r" = réessayer le niveau perdu
-"echap" = retourner au menu principal

-"c" (dans "LEVELS") = cheatcode, permettant d'avoir suffisamment d'argent pour acheter tous les cosmétiques.


	Concernant les bugs, aucun n'est connu pour le moment. 
Mais, des choses ont été faites ou non à cause des limites de variables de Lua, comme par exemple la présence de deux derniers objets dans le magasin qui ne sont pas achetable.
Le fait qu'il n'y ait que des cosmétiques dans le magasin, j'aurai voulu rajouter véritablement du contenu supplémentaire.
C'est aussi la raison de pourquoi il y a du hard coding.


Bon jeu ! 