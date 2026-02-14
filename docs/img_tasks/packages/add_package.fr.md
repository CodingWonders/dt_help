# Ajouter des packages

<p align="center">
    <img src="/res/img_tasks/packages/add_package.png" />
</p>

Avec DISMTools, vous pouvez ajouter des packages pour intégrer des fonctionnalités supplémentaires et/ou des mises à jour à une image ou une installation Windows. Cette action est disponible dans Commands > OS Packages > Add package... ou via le bouton « Add package... ».

## Compatibilité par plateforme

Cette action est compatible avec les plateformes suivantes :

| Plateforme | Pris en charge ? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Cette action est prise en charge par toutes les versions de DISMTools</i>

## Utilisation

Vous devez spécifier la source des packages à ajouter. Ensuite, vous pouvez choisir de **scanner récursivement la source pour détecter et ajouter des packages** ou **sélectionner manuellement les packages** à ajouter depuis la liste.

## Options

- **Ignorer les vérifications d'applicabilité** n'est pas recommandé : cela ignore des dépendances nécessaires et l'ajout échouera la plupart du temps.
- Si une opération nécessite de démarrer dans l'image pour se terminer (opérations en ligne), vous pouvez **sauter l'installation du package**.
- Si vous le souhaitez, vous pouvez **valider (commit) les modifications de l'image** après l'ajout des packages.

## Microsoft Update Manifest

DISMTools permet également d'ajouter des fichiers Microsoft Update Manifest en cliquant sur le bouton correspondant en bas à gauche.

<p align="center">
    <img src="/res/img_tasks/packages/mum_addition.png" />
</p>

*Cette action est prise en charge depuis DISMTools 0.5.1 et versions ultérieures.*

Ceci est destiné à un usage avancé uniquement.

## Sujets connexes

- [Aide en ligne de commande](https://example.com)