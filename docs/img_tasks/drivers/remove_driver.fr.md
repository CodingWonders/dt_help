# Supprimer des pilotes

<p align="center">
    <img src="/res/img_tasks/drivers/remove_driver.png" />
</p>

Avec DISMTools, vous pouvez supprimer des pilotes tiers d'une image Windows. Accédez à Commandes > Pilotes > Supprimer un pilote...

## Compatibilité du système d'exploitation cible

Cette action est compatible avec les plateformes suivantes :

| Plateforme | Pris en charge ? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Cette action est prise en charge dans DISMTools 0.3 et versions ultérieures</i>

**REMARQUE :** lors de la suppression de pilotes sur des installations actives, DISM n'est pas invoqué ; l'utilitaire PnP (`pnputil.exe`) est utilisé. DISMTools adapte les arguments selon la version de Windows. Cette opération sur installations actives est prise en charge à partir de DISMTools 0.7.

## Utilisation

Spécifiez les packages de pilotes et/ou dossiers à supprimer de l'image.

Quatre modes d'affichage sont disponibles :

- Sans pilotes critiques de démarrage ni pilotes inbox
- Pilotes tiers, pilotes critiques de démarrage, sans inbox
- Pilotes tiers, sans pilotes critiques de démarrage, avec inbox
- Pilotes tiers, pilotes critiques de démarrage et inbox

Il n'est pas recommandé de supprimer les pilotes critiques de démarrage ni les pilotes inbox, car cela pourrait rendre l'image non amorçable. Pour cette raison, ils ne sont pas affichés par défaut, sauf si vous activez l'option d'analyse en arrière‑plan **Detect all drivers**.

## Contenu lié

- [Aide en ligne de commande](https://example.com)