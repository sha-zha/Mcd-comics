j'ai fais une recherche sur les récompenses des comics. 

j'ai trouvé que lors du : 
### San Diego Comic Con de 2022
pour le  les séries Bitter Root et Something is Killing the Children ont toutes les deux étaient primées ex æquo dans la catégorie, “Meilleure série régulière”

source : https://www.bubblebd.com/9emeart/bd/actualites/eisner-award-2022-palmares-de-la-plus-prestigieuses-des-recompenses-aux-usa

### MCD 

J'ai donc changé la relation recompences pour qu'on puisse mettre à plusieurs comics la même récompense. 

> avant comics 1,1 et recompences 1,n
>
> après comics 0,n et recompences 0,n

J'ai pris en considération qu'un univers était un monde où se déroulait un Comics et qu'il était possible d'avoir plusieurs monde.Notamment appeller multi-verse chez DC et Marvel.
>avant univers 1,1 et comics 1,n
> 
> après univers 0,n et comics 0,n

J'ai pris la décision de ne pas recréer plusieurs fois le même éditeur pour le lier à un autre comics.
>avant editeurs 1,1 et comics 1,n
> 
> après editeurs 0,n et comics 0,n

j'ai pris la décision de remplacer le champ annees de type vachar en debut_periode et fin_periode, car on attend une période. 
Mysql gère les dates donc il me semblait mieux de faire 2 champs de date.

>avant epoques champ annees 
> 
> après epoques debut_periode et fin_periode

