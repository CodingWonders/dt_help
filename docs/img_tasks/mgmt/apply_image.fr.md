
# Appliquer une image

<p align="center">
    <img src="/res/img_tasks/mgmt/apply_image.png" />
</p>

Avec DISMTools, vous pouvez appliquer facilement des images Windows dans un répertoire ou sur une partition.

## Utilisation

1. Spécifiez le fichier d'image source à appliquer. Il peut s'agir d'un fichier WIM, SWM ou ESD. Si vous avez chargé un projet avec une image déjà montée, vous pouvez également l'utiliser
2. Sélectionnez l'index à appliquer dans le groupe Options en choisissant une entrée dans le sélecteur "Image index:" 
3. Indiquez le répertoire ou la partition où appliquer l'image. Pour les opérations d'application normales, l'option de répertoire suffit ; l'application sur partition vise les fichiers Full Flash Utility (FFU)

## Options

Les options disponibles lors de l'application de l'image suivent les directives en ligne de commande ; vous pouvez les consulter [ici](https://learn.microsoft.com/fr-fr/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14?view=windows-11#apply-image).

## Modèles de nommage pour SWM

En spécifiant un fichier SWM, vous pouvez indiquer le modèle de nommage à utiliser lors de l'application de l'image.

Le programme exécutera automatiquement les opérations nécessaires afin que vous puissiez l'appliquer facilement. Toutefois, si vous souhaitez examiner ces opérations, poursuivez la lecture de cette section.

Pour référencer des fichiers SWM, cochez l'option "Reference SWM files" et spécifiez le modèle de nommage des fichiers SWM. Vous pouvez utiliser le nom du fichier d'image comme modèle ou en définir un manuellement. Cliquez sur le bouton "Scan pattern" pour tester le modèle ; si des fichiers sont trouvés, des entrées apparaîtront dans la liste inférieure.

<p align="center">
    <img src="/res/img_tasks/mgmt/apply_image_swm_pattern.png" />
</p>