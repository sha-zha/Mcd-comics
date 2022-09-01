### Recherche
j'ai fais une recherche sur les récompenses des comics. 

j'ai trouvé que lors du : San Diego Comic Con de 2022
pour le  les séries Bitter Root et Something is Killing the Children ont toutes les deux étaient primées ex æquo dans la catégorie, “Meilleure série régulière”

source : https://www.bubblebd.com/9emeart/bd/actualites/eisner-award-2022-palmares-de-la-plus-prestigieuses-des-recompenses-aux-usa

## Modifications MCD et justifications

![](./comics.svg)

### nommage

1. J'ai mis tous les noms des entités en minuscule car cela correspond au norme de mon entreprise.
2. J'ai unifié le nommage id et identifiant. J'ai mis id partout car c'est la norme de Laravel et la majorité d'autres framework. 
3. Je suis passé du nommage en CamelCase au nommage SnakeCase car c'est la norme de Laravel.

### justifications

J'ai donc changé la cardinalité recompences pour qu'on puisse mettre à plusieurs comics la même récompense. On peut avoir ce cas comme vu dans ma recherche.

> avant comics 1,1 et recompences 1,n
>
> après comics 0,n et recompences 0,n

J'ai pris en considération qu'un univers était un monde où se déroulait un Comics. Donc il est possible d'avoir plusieurs mondes.Notamment appeller multi-verse chez DC et Marvel.
>avant univers 1,1 et comics 1,n
> 
> après univers 0,n et comics 0,n

J'ai pris la décision de ne pas recréer plusieurs fois le même éditeur pour le lier à un autre comics.
J'ai pris la décision de pouvoir gérer les éditeurs, pour gérer le cas où il change de nom. 

>avant editeurs 1,1 et comics 1,n
> 
> après editeurs 0,n et comics 0,n

j'ai pris la décision de remplacer le champ annees de type vachar dans l'entité epoques en debut_periode et fin_periode, car on attend une période. 
Mysql gère les dates donc il me semblait mieux de faire 2 champs de date.

> avant epoques champ annees 
> 
> après epoques debut_periode et fin_periode

j'ai pris la décision de gérer les desinateurs et scénaristes. 
Car on peut tomber sur le cas où il y a plusieurs personnes qui travaillent sur le même comics.

>avant  existe pas
>
> après dessinateurs ON et comics ON / scenaristes ON et comics ON

J'ai pris la décision de changer la cardinalité de personnages et comics. 
Car il peut créer un personnage qui n'apparaît pas encore dans un comics.

J'ai pris la décision de changer la cardinalité de series et comics car un comic peut être un hors-série. 

J'ai pris la décision de changer la cardinalité de collections et comics car un comic n'appartient pas forcément à une collection 
