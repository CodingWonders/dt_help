# Informations sur les fonctionnalités

<p align="center">
    <img src="/res/img_tasks/info/feat_info.png" />
</p>

Avec DISMTools, vous pouvez obtenir des informations sur les fonctionnalités présentes dans des images et installations Windows de tout type.

*Cette action est disponible dans DISMTools 0.3.1 et versions ultérieures.*

## Utilisation

- À l'ouverture du dialogue, ou si aucune fonctionnalité n'est sélectionnée, une vue résumée affiche brièvement chaque fonctionnalité (nom et état).
- Pour obtenir les détails d'une fonctionnalité particulière, **sélectionnez‑la dans la liste** ; ses informations s'afficheront à droite.

## Meilleure visualisation des propriétés personnalisées

DISMTools 0.5 introduit une nouvelle vue pour les propriétés personnalisées des fonctionnalités, présentant la hiérarchie sous forme d'arbre pour en faciliter la lecture.

<p align="center">
    <img src="/res/img_tasks/info/cprop_viewer.png" />
</p>

## Fonctionnalité de filtrage par état

Avec les filtres d'état ajoutés dans DISMTools 0.6, vous pouvez obtenir des informations basées sur l'état d'une fonctionnalité. Pour filtrer par état, **tapez `state:` suivi d'une des valeurs suivantes** :

- `enabled`
- `disabled`
- `enablepending`

<p align="center">
    <img src="/res/img_tasks/info/feat_info_state_filter.gif" />
</p>

Pour rechercher des fonctionnalités dans un état donné et contenant un nom, ajoutez le flag `state` après le nom de la recherche.

<p align="center">
    <img src="/res/img_tasks/info/feat_info_state_filter_example.png" />
</p>

## Contenu connexe

- [Boîtes de dialogue d'information d'image](../info/infodlgs.md)