
# Capturer une image

<p align="center">
    <img src="/res/img_tasks/mgmt/capture_image.png" />
</p>

Avec DISMTools, vous pouvez capturer facilement un répertoire d'installation Windows dans un fichier d'image.

## Utilisation

1. Spécifiez le répertoire source à capturer et le fichier d'image où enregistrer le contenu
2. Indiquez un nom pour la nouvelle image Windows et, si vous le souhaitez, une description

## Options

Les options disponibles lors de la capture sont conformes aux directives en ligne de commande ; consultez [ici](https://learn.microsoft.com/fr-fr/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14?view=windows-11#capture-image) pour plus de détails.

## Listes de configuration

Cette tâche permet de spécifier des listes de configuration pour exclure certains fichiers. C'est utile pour éviter des erreurs lors de la capture (par exemple, dossiers OneDrive d'utilisateurs) ou pour empêcher que l'image résultante devienne trop volumineuse.

Consultez l'utilitaire [DISM Configuration List Editor](../tools/configlisteditor.md) et la [référence des listes de configuration](https://learn.microsoft.com/fr-fr/windows-hardware/manufacture/desktop/dism-configuration-list-and-wimscriptini-files-winnext?view=windows-11) pour plus d'informations.