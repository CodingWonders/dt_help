
# Gestionnaire d'images montées

<p align="center">
    <img src="/res/img_tasks/tools/mimgmgr/mimgmgr.png" />
</p>

Le gestionnaire d'images montées vous permet de gérer facilement vos images montées. Vous pouvez effectuer les opérations suivantes avec cet outil :

- Démontage d'une image Windows
- Recharger la session de maintenance / réparer le magasin de composants
- Activer les permissions en écriture pour des images montées en lecture seule
- Accéder au répertoire de montage d'une image
- Supprimer des images de volumes (pour les images contenant plusieurs index)
- Charger un répertoire de montage dans un projet sans images chargées
- Obtenir les informations d'un fichier d'image
- Enregistrer les informations d'une image
- [Créer des fichiers ISO](./isocreator.md)

## Opérations

### Démontage d'une image Windows

Vous pouvez démonter une image Windows en enregistrant les modifications, en les annulant, ou en choisissant des paramètres avancés ; cette dernière option ouvrira la boîte de dialogue de démontage :

<p align="center">
    <img src="/res/img_tasks/tools/mimgmgr/img_unmount.png" />
</p>

Pour les images montées en lecture seule, cliquer sur ce bouton démontera directement l'image en annulant les modifications. Pour plus d'informations, consultez la page [démontage d'image](../mgmt/unmount_image.md).

### Rechargement de la session de maintenance / réparation du magasin de composants

Selon l'état de l'image montée, le programme vous proposera l'une ou l'autre opération.

- Si son statut est **Needs remount**, vous pourrez recharger la session de maintenance de l'image montée.
- Si son statut est **Invalid**, vous pourrez **éventuellement** réparer le magasin de composants de l'image. Cette possibilité dépend de l'état réparable de l'image ; si elle ne peut pas être réparée, votre seul choix sera de l'annuler.

### Activation des permissions en écriture

Si vous voulez modifier une image montée en lecture seule, vous devez **activer les permissions en écriture**. Ce processus démontera l'image puis la remontera avec des permissions en écriture. Notez que le fichier source de l'image **doit être présent à son emplacement** et **ne doit pas être sur un média en lecture seule** pour que l'opération réussisse.

### Accéder au répertoire de montage

Cette action ouvrira le répertoire de montage dans l'Explorateur de fichiers, vous permettant de parcourir les fichiers de l'image Windows. **Ceci est similaire à une installation active : ne supprimez pas de fichiers dont vous ignorez la fonction.**

### Suppression d'images de volumes

Si l'image montée contient plus d'un index, vous pouvez supprimer facilement des images de volumes. Spécifiez les index à supprimer, puis cliquez sur OK. Pour plus de détails, consultez la page [suppression d'image de volume](../mgmt/delete_image.md).

### Chargement d'images montées

Si vous avez ouvert un projet sans images chargées, vous pouvez charger facilement l'image montée souhaitée dans le projet.

## Version en ligne de commande

DISMTools 0.3 introduit une version en ligne de commande du gestionnaire d'images montées, qui permet de gérer les images montées depuis la console.

### Différences avec la version GUI

- La liste des images montées n'est pas mise à jour automatiquement dans la version CLI.

### Accéder à cette version

Vous pouvez accéder à la version CLI du gestionnaire d'images montées via la Console de commandes dans le menu Outils en tapant `mimgmgr`. Vous verrez alors un aperçu des images montées :

<p align="center">
    <img src="/res/img_tasks/tools/mimgmgr/cli/mimgmgr_defaultview.png" />
</p>

### Utilisation

Lorsque vous lancez cette version du gestionnaire, vous devez **marquer une image pour la gestion**. Vous pouvez le faire en appuyant sur la touche M et en sélectionnant une image par son numéro. Si la liste a été modifiée en arrière‑plan, la liste s'actualisera.

<p align="center">
    <img src="/res/img_tasks/tools/mimgmgr/cli/mimgmgr_mark_image.png" />
</p>

Après avoir marqué une image, vous pouvez effectuer des actions de gestion sur celle‑ci.

<p align="center">
    <img src="/res/img_tasks/tools/mimgmgr/cli/mimgmgr_marked_image.png" />
</p>

### Tâches

Voici les opérations disponibles dans cette version du gestionnaire d'images montées :

- Pour passer à une autre image, vous pouvez **la marquer** (touche M)
- Selon le statut de l'image (touche R) :

  - Si elle nécessite un rechargement de la session de maintenance (`Status: NeedsRemount`), vous pouvez la **recharger**
  - Si elle nécessite une réparation du magasin de composants (`Status: Invalid`), vous pouvez la **réparer**
- Quand vous avez fini de travailler sur une image, vous pouvez **la démonter** (touche U)
- Vous pouvez **accéder à son répertoire de montage** (touche A)
- Si l'image contient plusieurs index (images de volume), vous pouvez en **supprimer** certains (touche V) ou basculer vers un autre index (touche S, *DISMTools 0.3.3 et ultérieur*)
- Si des images ont été montées ou démontées par un programme externe, vous pouvez **mettre à jour la liste des images montées** (touche L)
- Si l'image est montée en lecture seule, vous pouvez **activer les permissions en écriture** (touche E)

Ensuite, appuyez sur ENTER pour exécuter une action.

#### Démontage d'une image (CLI)

**REMARQUE :** si l'image est montée en lecture seule, cette action la démontera directement en annulant les modifications.

<p align="center">
    <img src="/res/img_tasks/tools/mimgmgr/cli/mimgmgr_unmount_image.png" />
</p>

Dans ce menu :

- Vous pouvez **valider les modifications et démonter l'image** (touche C)
- Vous pouvez **annuler les modifications et démonter l'image** (touche D)
- Vous pouvez **configurer les paramètres de démontage** (touche S)

**Paramètres de démontage**

**REMARQUE :** ces paramètres ne s'appliquent qu'à l'opération de validation. Vous ne pouvez pas modifier ces paramètres pour les images montées en lecture seule.

<p align="center">
    <img src="/res/img_tasks/tools/mimgmgr/cli/mimgmgr_unmount_settings.png" />
</p>

Ce sont les mêmes paramètres que vous trouverez dans la [boîte de dialogue de démontage](../mgmt/unmount_image.md). Configurez-les comme souhaité et appuyez sur ENTER pour effectuer l'opération de démontage.

#### Suppression d'images de volumes (CLI)

**REMARQUE :** cette tâche ne s'applique qu'aux images avec plusieurs index

<p align="center">
    <img src="/res/img_tasks/tools/mimgmgr/cli/mimgmgr_delete_image.png" />
</p>

Dans ce menu, vous pouvez **marquer les images de volume (index) à supprimer** (touche M) et **procéder à la suppression** (touche P).

Notez que l'opération de suppression d'un volume entraînera le démontage de l'image **en annulant les modifications**. Assurez‑vous d'avoir sauvegardé vos changements avant de commencer.

Pendant l'opération, vous pouvez visualiser l'image en cours de suppression. Une fois le processus terminé, vous reviendrez au menu principal.

<p align="center">
    <img src="https://github.com/CodingWonders/DISMTools/assets/101426328/abb6704d-2e2b-493f-a80a-431b04fee453" />
</p>

**Marquer les images de volume à supprimer**

Depuis la liste des index affichée, vous pouvez sélectionner les images de volume à supprimer en indiquant leur numéro. Vous pouvez sélectionner plusieurs index en séparant les numéros par des virgules (`,`). Enfin, appuyez sur ENTER :

<p align="center">
    <img src="/res/img_tasks/tools/mimgmgr/cli/mimgmgr_delete_image_indexmark.png" />
</p>

#### Changement d'index

**REMARQUE :** cette tâche ne s'applique qu'aux images avec plusieurs index

<p align="center">
    <img src="/res/img_tasks/tools/mimgmgr/cli/mimgmgr_switch_image.png" />
</p>

Dans ce menu, vous pouvez **préciser l'index cible à monter** (touche S), **spécifier l'opération de démontage** (touche C) et **procéder à l'opération de basculement** (touche P).

**Préciser l'index cible**

Depuis la liste des index affichée, choisissez l'index cible à monter en indiquant son numéro. Enfin, appuyez sur ENTER.

#### Activation des permissions en écriture

Il s'agit d'un processus automatisé qui démonte une image montée en lecture seule puis la remonte avec des permissions en écriture. **Assurez‑vous que le fichier source de l'image est toujours accessible avant de lancer l'opération.**