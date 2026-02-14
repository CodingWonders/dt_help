
# Ajouter des répertoires montés à une image Windows

<p align="center">
    <img src="/res/img_tasks/mgmt/append_image.png" />
</p>

Si vous avez effectué des modifications sur une image Windows et souhaitez les enregistrer dans un nouvel index du fichier d'image, vous pouvez le faire facilement via ce dialogue.

<i>Cette action est disponible dans DISMTools 0.5 et versions ultérieures.</i>

## Utilisation

Cette procédure est similaire à celle que vous utilisez pour [capturer un répertoire ou une partition dans une image](./capture_image.md).

1. Spécifiez le répertoire source à ajouter et le fichier d'image où ajouter le contenu
2. Indiquez un nom pour la nouvelle image Windows et, si vous le souhaitez, une description

## Options

Les options applicables lors de l'ajout suivent les directives en ligne de commande ; consultez-les [ici](https://learn.microsoft.com/fr-fr/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14?view=windows-11#append-image).

## Listes de configuration

Cette tâche permet de spécifier des listes de configuration pour exclure certains fichiers. Cela aide à éviter des erreurs lors de l'ajout (par exemple des dossiers OneDrive d'utilisateurs) ou à empêcher que l'image résultante soit trop volumineuse.

Consultez l'utilitaire [DISM Configuration List Editor](../tools/configlisteditor.md) et la [référence des listes de configuration](https://learn.microsoft.com/fr-fr/windows-hardware/manufacture/desktop/dism-configuration-list-and-wimscriptini-files-winnext?view=windows-11) pour plus d'informations.