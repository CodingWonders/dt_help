# Activer des fonctionnalités

<p align="center">
<img src="/res/img_tasks/features/enable_feature.png" />
</p>

Avec DISMTools, vous pouvez activer des fonctionnalités dans une image afin d'ajouter des composants optionnels à une installation de Windows. Cette action est disponible dans Commandes > Packages du système d'exploitation > Activer une fonctionnalité... ou via le bouton « Activer une fonctionnalité... ».

## Compatibilité du système d'exploitation cible

Cette action est compatible avec les plateformes suivantes :

| Plateforme | Compatible ? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Cette action est disponible dans DISMTools 0.1.1 et versions ultérieures</i>

## Utilisation

Vous devez spécifier les fonctionnalités à activer dans l'image ou l'installation Windows et configurer les options pour obtenir le résultat souhaité.

## Options

- Si le package parent n'est pas un package Windows Foundation, indiquez le nom du **package parent**. Vous pouvez effectuer une recherche rapide de packages pour le localiser.

<p align="center">
<img src="/res/img_tasks/features/pkg_lookup.png" />
</p>

- Si une fonctionnalité de la liste a été précédemment supprimée de l'image ou de l'installation, fournissez une **source de fonctionnalité** (par exemple un fichier CAB ou un chemin d'installation).
- Pour forcer l'usage exclusif de la source et éviter de contacter Windows Update, désactivez l'option **Contacter Windows Update** (s'applique uniquement aux installations en ligne).
- Si vous voulez activer aussi les fonctionnalités parentes des éléments spécifiés, cochez **Activer toutes les fonctionnalités parentes**.
- Vous pouvez optionnellement **valider (commit) l'image après activation des fonctionnalités** (images Windows uniquement).

## Sujets connexes

- [Aide en ligne de commande](https://example.com)