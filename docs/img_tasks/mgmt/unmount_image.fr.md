# Démonter une image

<p align="center">
    <img src="/res/img_tasks/mgmt/unmount_image.png" />
</p>

Lorsque vous avez terminé de travailler sur une image Windows, vous pouvez la démonter facilement.

## Utilisation

1. Pour démonter l'image chargée dans le projet, laissez l'option du répertoire de montage par défaut. Sinon, sélectionnez la seconde option et indiquez le répertoire de montage à démonter.
2. Choisissez l'opération de démontage : enregistrer les modifications et démonter, ou annuler les modifications et démonter.

### Sélectionner une image montée

Si vous ne connaissez pas le répertoire de montage, cliquez sur "Choisir..." pour ouvrir le sélecteur et sélectionner l'image à démonter :

<p align="center">
    <img src="/res/img_tasks/mgmt/unmount_image_picker.png" />
</p>

## Options de commit

Ces options s'appliquent uniquement lors de l'enregistrement (commit).

- Pour vérifier l'intégrité de l'image avant le démontage, cochez "Vérifier l'intégrité de l'image".
- Pour isoler vos changements dans un nouvel index, cochez "Ajouter les changements à un autre index".

## Démontage d'images en lecture seule

Si l'image est montée en lecture seule, le dialogue ne s'affichera pas et l'image sera démontée directement en annulant les modifications.