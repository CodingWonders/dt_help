# Importer des pilotes

<p align="center">
    <img src="/res/img_tasks/drivers/import_driver.png" />
</p>

Avec DISMTools, vous pouvez importer des pilotes tiers d'une image vers une autre, garantissant la compatibilité matérielle avec l'image source. Accédez à Commandes > Pilotes > Importer des packages de pilotes...

## Compatibilité du système d'exploitation cible

Cette action est compatible avec les plateformes suivantes :

| Plateforme | Pris en charge ? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Cette action est prise en charge dans DISMTools 0.4.1 et versions ultérieures</i>

## Utilisation

1. Spécifiez la source d'importation des pilotes :

    - **Fichier image :** importe tous les pilotes tiers d'une autre image ; sélectionnez l'image dans la liste des images montées.

    <p align="center">
        <img src="/res/img_tasks/drivers/import_driver_winimage.png" />
    </p>
    
    - **Installation en ligne :** importe les pilotes de votre installation active.

    <p align="center">
        <img src="/res/img_tasks/drivers/import_driver_active.png" />
    </p>
    
    - **Installation hors ligne :** importe les pilotes depuis une installation déployée existante ; spécifiez la partition source.

    <p align="center">
        <img src="/res/img_tasks/drivers/import_driver_deployed.png" />
    </p>
    
2. Cliquez sur OK après avoir sélectionné la source.

## Remarques

- Après l'importation des pilotes, l'image cible **ne devrait pas être utilisée** sur des machines différentes de l'image source, sauf si les pilotes indésirables ont été retirés.