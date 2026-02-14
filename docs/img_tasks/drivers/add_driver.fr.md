# Ajouter des pilotes
<p align="center">
    <img src="/res/img_tasks/drivers/add_driver.png" />
</p>
Avec DISMTools, vous pouvez ajouter des pilotes tiers à une image Windows. Cette action est disponible dans Commandes > Pilotes > Ajouter un pilote...

## Compatibilité du système d'exploitation cible

Cette action est compatible avec les plateformes suivantes :

| Plateforme | Compatible ? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Cette action est disponible dans DISMTools 0.3 et versions ultérieures</i>

**REMARQUE :** DISM n'est pas invoqué lors de l'ajout de pilotes sur des installations actives. L'utilitaire PnP (`pnputil.exe`) est utilisé à la place. DISMTools ajustera les arguments en fonction de la version du système. Cette opération sur installations actives est prise en charge à partir de DISMTools 0.7.

## Utilisation

Ajoutez des packages de pilotes et/ou des dossiers en les glissant-déposant ou en les ajoutant à la liste **driver files**. Les dossiers seront ajoutés à **driver folders** pour permettre une recherche récursive de packages.

Il peut être nécessaire d'ajuster des options supplémentaires pour obtenir le résultat souhaité.

## Options

- Si vous testez un pilote, vous pouvez forcer l'installation de pilotes non signés sur les systèmes x64 (non recommandé en production).
- Optionnellement, vous pouvez **valider (commit) l'image après avoir ajouté les pilotes**.

## Sujets connexes

- [Aide en ligne de commande](https://example.com)