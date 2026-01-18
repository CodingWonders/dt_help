# Informations sur les pilotes

<p align="center">
    <img src="/res/img_tasks/info/drv_info.png" />
</p>

Avec DISMTools, vous pouvez obtenir des informations sur les pilotes installés ou sur des fichiers de pilotes que vous souhaitez ajouter ou analyser. Ceci s'applique aux images et installations Windows de tout type.

*Cette action est disponible dans DISMTools 0.3.1 et versions ultérieures.*

## Utilisation

- À l'ouverture du dialogue, le menu principal apparaît. Depuis celui‑ci, accédez à l'un des deux modes d'information via le lien correspondant :

    - **Informations sur les pilotes installés dans l'image** ouvre la vue des pilotes installés. Tous les pilotes présents dans l'image ou l'installation s'affichent dans la liste de gauche ; sélectionnez‑les pour voir les détails.

    <p align="center">
        <img src="/res/img_tasks/info/get_instdrvinfo.png" />
    </p>

    - **Informations sur les fichiers de pilote** ouvre la vue des fichiers de pilote. Dans ce mode, ajoutez les fichiers de pilote via le sélecteur ou en les glissant depuis une application avec privilèges élevés. Si le programme détecte les métadonnées, elles seront affichées ; sinon, l'entrée sera supprimée.

    <p align="center">
        <img src="/res/img_tasks/info/get_drvfileinfo.png" />
    </p>

- Revenez à l'écran principal via le lien en haut à gauche.

**REMARQUE :** le nombre de pilotes listés dépend de la configuration des processus d'analyse en arrière‑plan. Par défaut, les pilotes système inclus (inbox) ne sont pas listés pour réduire le temps d'analyse. Vous pouvez ajuster ces processus pour détecter tous les pilotes.

## Parcourir les targets matériels

Un package de pilotes peut cibler plusieurs périphériques ; obtenir les détails de chaque target peut être lent.

DISMTools fournit des contrôles en haut de la fenêtre pour parcourir les targets matériels.

<p align="center">
    <img src="/res/img_tasks/info/drvpkg_hw_target_controls.png" />
</p>

Les contrôles permettent d'avancer, reculer ou sauter à un target spécifique.

<p align="center">
    <img src="https://github.com/CodingWonders/DISMTools/assets/101426328/8da4493d-fabe-49db-97f2-e075cb10b79e" />
</p>

## Enregistrer ces informations

Vous pouvez sauvegarder les informations dans un fichier de rapport via le bouton Save (en bas à droite). Cette option est désactivée dans la vue des fichiers de pilote si aucun pilote n'a été spécifié.

Si les processus d'analyse en arrière‑plan n'ont pas détecté tous les pilotes, l'outil proposera d'inclure les pilotes manquants lors de l'enregistrement.

## Recherche avancée

La recherche introduite dans DISMTools 0.5 permet de rechercher facilement parmi les pilotes installés. Par défaut, la recherche cible la première colonne ; pour rechercher par nom de fichier d'origine (deuxième colonne), **précédez la requête par `og:`**.

## Contenu connexe

- [Boîtes de dialogue d'information d'image](../info/infodlgs.md)