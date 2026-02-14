# Diviser une image en fichiers SWM

<p align="center">
    <img src="/res/img_tasks/mgmt/split_image.png" />
</p>

Avec DISMTools, vous pouvez diviser facilement un fichier WIM en plusieurs fichiers SWM. La division permet notamment de stocker l'image sur des supports aux tailles limitées.

## Utilisation

1. Indiquez le fichier image source (doit être un WIM).
2. Spécifiez la taille maximale des fichiers résultants. Si un fichier interne est trop volumineux, un des morceaux peut être plus grand que les autres.
3. Choisissez le dossier de sortie pour les fichiers SWM. DISMTools proposera un modèle de nom basé sur le nom du fichier source suivi d'un underscore (`_`) pour faciliter la réutilisation.

## Options

- Vous pouvez vérifier l'intégrité de l'image source avant la division.

## Contenu connexe

- [Fusionner des fichiers SWM](../tools/swm2wim.md)