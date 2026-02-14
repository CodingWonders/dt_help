# Désactiver des fonctionnalités

<p align="center">
<img src="/res/img_tasks/features/disable_feature.png" />
</p>

Avec DISMTools, vous pouvez désactiver des fonctionnalités d'une image pour retirer des composants optionnels d'une installation Windows ou annuler l'ajout de composants précédemment installés. Cette action est disponible dans Commandes > Packages du système d'exploitation > Désactiver une fonctionnalité... ou via le bouton « Désactiver une fonctionnalité... ».

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

Vous devez spécifier les fonctionnalités à désactiver dans l'image ou l'installation Windows et ajuster les options selon le résultat attendu.

## Options

- Si le package parent n'est pas un package Windows Foundation, indiquez le nom du **package parent**. Vous pouvez effectuer une recherche rapide de packages pour le localiser.

<p align="center">
<img src="/res/img_tasks/features/pkg_lookup.png" />
</p>

- Pour supprimer des fonctionnalités sans effacer leurs manifests de l'image, cochez l'option **Supprimer la fonctionnalité sans effacer le manifest**. Cela marquera les fonctionnalités sélectionnées comme « Removed ».

**REMARQUE :** si vous désactivez des fonctionnalités sur une installation en ligne, un redémarrage peut être nécessaire pour que les changements prennent effet.

## Sujets connexes

- [Aide en ligne de commande](https://example.com)