# Éditeur de listes de configuration DISM

<p align="center">
    <img src="/res/img_tasks/tools/configlisteditor/configlisteditor.png" />
</p>

L'Éditeur de listes de configuration DISM permet de créer facilement des listes d'exclusion de fichiers et dossiers pour des tâches telles que la [capture d'une image](../mgmt/capture_image.md). Vous pouvez utiliser l'interface graphique pour ajouter des exclusions ou éditer le fichier de liste manuellement.

*Cet outil est disponible dans DISMTools 0.3.1 et versions ultérieures.*

## Utilisation

Pour créer une nouvelle liste de configuration contenant des fichiers et dossiers à exclure, cliquez sur "Nouveau". Notez que les listes non enregistrées ne seront pas conservées si vous quittez sans enregistrer.

### Ajouter une entrée

Vous pouvez ajouter une entrée en la tapant dans la vue code ou via l'interface graphique.

Avec l'interface graphique, utilisez le sélecteur de fichiers pour choisir l'élément à exclure puis vérifiez la ligne avant de l'ajouter.

<p align="center">
    <img src="/res/img_tasks/tools/configlisteditor/new_entry.png" />
</p>

### Exclure les dossiers OneDrive

DISMTools 0.4.2 ajoute la capacité d'exclure automatiquement les dossiers OneDrive des utilisateurs, car ils peuvent provoquer des erreurs lors de certaines opérations :

<p align="center">
    <img src="/res/img_tasks/tools/configlisteditor/onedrive_exclusion.png" />
</p>

Pour exclure les dossiers OneDrive sur un disque, localisez le chemin et cliquez sur Exclure. Les dossiers OneDrive utilisateurs seront détectés et ajoutés à la liste.

## Contenu connexe

- [Référence des listes de configuration](https://learn.microsoft.com/fr-fr/windows-hardware/manufacture/desktop/dism-configuration-list-and-wimscriptini-files-winnext?view=windows-11)