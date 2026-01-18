# Monter une image

<p align="center">
    <img src="/res/getting_started/mount_an_image.png" />
</p>

Monter une image Windows est une opération essentielle ; DISMTools facilite ce processus.

## Utilisation

1. Spécifiez le fichier d'image source à monter. Il peut s'agir d'un fichier WIM, VHD, ESD ou SWM. Notez que les fichiers SWM et ESD peuvent nécessiter un prétraitement avant montage
2. Sélectionnez l'index à monter dans le groupe Options. Vous pouvez voir tous les index de l'image dans la liste à droite
3. Indiquez le répertoire où monter l'image. Pour utiliser le répertoire de montage fourni par le projet, cliquez sur "Use defaults"

## Traitement des SWM et ESD

Si vous indiquez un fichier SWM ou ESD au montage, DISMTools le détectera et effectuera les actions suivantes :

- Si la source est un fichier SWM, le programme ouvrira la boîte de dialogue du [fusionneur SWM](../tools/swm2wim.md) et remplira les champs nécessaires
- Si la source est un fichier ESD, le programme ouvrira la boîte de dialogue de [conversion d'image](../tools/wim2esd.md) et complétera les champs requis

Dans les deux cas, vous pouvez cliquer sur OK pour lancer le processus ou revoir les options. Après l'exécution, cette boîte de dialogue réapparaîtra avec le champ de l'image source rempli.