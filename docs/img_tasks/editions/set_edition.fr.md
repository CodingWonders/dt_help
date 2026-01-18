# Définir l'édition de l'image

<p align="center">
    <img src="/res/img_tasks/editions/set_imageedition.png" />
</p>

Avec DISMTools, vous pouvez définir l'édition d'une image Windows. Cette action est disponible dans Commands > Windows Editions > Upgrade image...

## Compatibilité par plateforme

Cette action est compatible avec les plateformes suivantes :

| Plateforme | Pris en charge ? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Cette action est prise en charge depuis DISMTools 0.6.2 et versions ultérieures</i>

## Utilisation

Spécifiez simplement l'édition cible vers laquelle vous souhaitez mettre à niveau l'image Windows et quelques options supplémentaires (selon les cas indiqués ci-après).

## Options

**REMARQUE :** ces options s'appliquent uniquement aux installations en ligne de Windows Server.

<p align="center">
    <img src="/res/img_tasks/editions/set_imageedition_server.png" />
</p>

- Utilisez *Copy EULA to the following location* si vous souhaitez copier le contrat de licence à un emplacement spécifique
- Utilisez *Accept EULA and use the following product key* si vous souhaitez accepter le contrat. Cela est nécessaire pour changer l'édition sur une image en ligne

## Remarques

Si l'image ou l'installation Windows dispose déjà de l'édition la plus élevée, cette opération ne sera pas possible. Vérifiez d'abord les cibles de mise à niveau en suivant les instructions de la page de résumé des éditions.