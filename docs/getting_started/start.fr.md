
# Getting started

If you don't know anything about Windows servicing, or come from other servicing tools, click on a section below to know what's different in this utility:

- [Getting started with Windows servicing](./new_to_servicing.md)
- I come from other tools
	- [Coming from NTLite](./ntlite_migration.md)
	- [Coming from MSMG Toolkit](./msmg_migration.md)

If you want to know about something else, keep on reading.

## Premiers pas

### Le tour de DISMTools

DISMTools 0.7 introduit un nouveau tour interactif présentant les tâches de base. Ce guide combine textes et vidéos et montre un exemple de flux pour créer une image Windows personnalisée.

Vous pouvez y accéder via le lien du programme (le parcours peut être personnalisé par l'équipe de développement).

Le tour classique restera disponible pour les utilisateurs qui préfèrent le flux traditionnel.

Après l'installation, exécutez l'application. Voici les étapes recommandées pour débuter :

### Créer votre premier projet

Dans l'application, commencez par **créer un projet** via le lien principal ou `Fichier -> Nouveau projet...`.

Entrez un nom et un emplacement pour le projet, puis validez.

<p align="center">
    <img src="/res/getting_started/create_a_project.png"/>
</p>

Le projet sera créé et la vue du projet s'ouvrira.

<p align="center">
    <img src="/res/getting_started/project_view.png"/>
</p>

Pour rouvrir un projet, utilisez `Ouvrir un projet existant...`. Les projets récents apparaîtront dans la liste "Récents".

### Charger une image Windows

Après la création du projet, chargez une image. Deux méthodes sont disponibles :

#### Monter une image Windows

Cliquez sur "Monter une image..." ou utilisez le menu pour ouvrir la boîte de dialogue de montage.

<p align="center">
    <img src="/res/getting_started/mount_an_image.png" />
</p>

Sélectionnez le fichier image source et le répertoire de montage. Vous pouvez configurer des options avancées si nécessaire.

Astuce : extrayez `sources\install.wim` depuis l'ISO ou montez l'ISO dans l'Explorateur pour récupérer le fichier.

#### Charger un répertoire de montage existant

Depuis DISMTools 0.2, il est possible de charger un répertoire de montage déjà existant dans un projet via l'onglet "Image".

<p align="center">
    <img src="/res/getting_started/load_mount_directory.png" />
</p>

Pour trouver des images montées, utilisez le [gestionnaire d'images montées](../img_tasks/tools/mimgmgr.md).

## Bonnes pratiques

### Emplacement du projet

- Stockez votre projet dans une location courte pour éviter les limitations `MAX_PATH` (260 caractères). Par exemple : `D:\` ou `E:\Projects\`.
- Vous pouvez activer les chemins longs sous Windows 10 (version 1607+) si nécessaire.

### Opérations DISM

- Excluez le répertoire de montage de l'analyse antivirus pour éviter des blocages
- Évitez de monter plus de ~20 images simultanément (impacte les performances)
- Exécutez DISMTools et DISM avec privilèges administrateur
- Confirmez (commit) fréquemment si vous montez en mode écriture
- Évitez les ressources réseau pour les opérations intensives si possible

### Maintenance depuis WinPE

- Bootez WinPE depuis un disque local pour de meilleures performances et plus de mémoire
- Si vous bootez depuis média en lecture seule (optique), assurez-vous d'avoir suffisamment de RAM
- Envisagez d'ajouter un fichier d'échange dans WinPE pour les opérations gourmandes en mémoire (`wpeutil createpagefile`)
- Spécifiez un répertoire temporaire (scratch) pour les opérations nécessitant de l'espace temporaire