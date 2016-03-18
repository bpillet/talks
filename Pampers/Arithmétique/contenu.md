# Additionner, et diviser ; questions ouvertes d'arithmétique

Le but de cet exposé est de présenter 4 problèmes ouverts (et anciens) d'Arithmétiques élémentaire. Et de montrer qu'ils posent tous les même question à savoir     
> Que dire des diviseurs de a + b à partir de données sur les diviseurs de a et b.

Question très vaste !

## Goldbach

La conjecture de Goldbach est une assertion mathématique non démontrée qui s’énonce comme suit :

> Tout nombre entier pair supérieur à 3 peut s’écrire comme la somme de deux nombres premiers.

Exemple  
22 = 11 + 11 = 5 + 17 = 3 + 19

Formulée en 1742 par Christian Goldbach, c’est l’un des plus vieux problèmes non résolus de la théorie des nombres et des mathématiques. Il partage avec l'hypothèse de Riemann et la conjecture des nombres premiers jumeaux le numéro 8 des problèmes de Hilbert, énoncés par celui-ci en 1900.

La question se reformule sous la forme

> Quels sont les nombres pair de la forme p+q avec p et q premiers

Peu de progrès depuis son énoncé ! Plusieurs justifications statistiques basées sur la répartition des nombres premiers.

résultats récents (Tao)  
> Tout entier impair > 1 est somme de cinq nombres premiers au plus.

Et (Helfgott)   
> Tout entier impair > 5 est somme de trois nombres premiers.

la conjecture de Goldbach est vérifiée pour tous les entiers pairs jusqu’à 4×10^18

## Nombre premiers jumeaux

Cette conjecture partage avec l'hypothèse de Riemann et la conjecture de Goldbach le numéro 8 des problèmes de Hilbert, énoncés par ce dernier en 1900. Bien que la plupart des chercheurs en théorie des nombres pensent que cette conjecture est vraie, elle n'a jamais été démontrée. Ils se basent sur des observations numériques et des raisonnements heuristiques utilisant la distribution probabiliste des nombres premiers.

En 1849, Alphonse de Polignac émit une conjecture plus générale : la conjecture de Polignac :

> Tout nombre pair est égal à la différence de deux nombres premiers consécutifs d'une infinité de manières.

dont le cas n = 2 correspond à la conjecture des nombres premiers jumeaux.

### Enoncé

> Existe-t-il une infinité de nombre premiers jumeaux ?

* (3, 5)
* (5, 7)
* (11, 13)
* (17, 19)
...
* (89, 91)  (trololo)

ou reformulé autrement

> Existe-il une infinité de couples de nombres premiers (p,q) tels que p+q soit premier.

En effet si p et q sont impairs alors p+q ne peut être premier. Donc nécessairement (quitte à supposer p>q) q = 2

Donc cette question est de la forme 

> Que dire des diviseurs premiers d'une somme de nombres premiers !


## Syracuse ou Collatz

Posée en 1928 par Collatz.

### Fonction de Collatz

n un entier, 
on définit la fonction f par  
> f(n) = n/2 si n est pair  
> f(n) = 3n+1 si n est impair

itérations de f ?

exemples

* 5
* 16
* 8
* 4
* 2
* 1
* 4
* 2
* 1
* ...


* 7
* 22
* 11
* 34
* 17
* 52
* 26
* 13
* 40
* 20
* 10
* 5  (on arrive à quelque chose de connu)
* 16
* 8
* 4
* 2
* 1

### Conjecture

> Est ce que pour tout entier n, l'itération de f amène à 1.

### Probas

Petite remarque  
si n est impair, f(n) = 3n + 1 est pair donc f(f(n)) = (3n+1)/2

On peut donc travailler avec g  
   g(n) = n/2 si n est pair  
   g(n) = (3n+1)/2 si n est impair

5, 8, 4, 2, 1, 2, 1, 2, 1

7, 11, 17, 26, 13, 20, 10, 5

L'intérêt de g c'est qu'on ne sait rien dire de la parité de g(n) en connaissant la parité de n. Du coup les seuls (quasiment) résultats qui ont été montrés sur cette suite sont des résultats probabilites basés sur le fait qu'en moyenne

> g(n) = (4n+1)/4 = n + 1/4

Mais la question est toujours la même  
> que dire de la divisibilité par 4 d'un nombre calculé à partir de (3n+1) pour n pair.

> les résultats probabilistes partent du principe qu'il y a une chance sur 2.

## abc

Posée en 1985 par Osterlé et Masser.

### Radical

rad(n) est le radical de n, c'est-à-dire le produit des nombres premiers divisant n.

### Enoncé (positif)

Soit epsilon > 0, alors il existe une constante K telle que, pour tout triplet (a, b, c) d'entiers positifs (non nuls) premiers entre eux vérifiant a+b=c, on ait :  
    c < K (rad(abc))^{1+epsilon}


### Philosophie

> Si on additionne deux nombres premiers entre eux, alors leur somme doit avoir "beaucoup" de diviseurs premiers distincts.

Résultat très très ambitieux

Implique le théorème de Fermat-Wiles

Implique

* le théorème de Roth (approximation diophantienne d'un rationnel),
* le théorème de Baker (transcendance d'une combinaison linéaire de logarithmes),
* le théorème de Bombieri-Vinogradov,
* le théorème de Faltings précédemment nommé conjecture de Mordell (équation diophantiennes polynomiales),
* la conjecture de Pillai : généralisation du thm de Catalan  
    Théorème — Les deux seules puissances d'entiers consécutives sont 8 et 9 (qui valent respectivement 23 et 32)..

