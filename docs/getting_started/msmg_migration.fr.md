# Depuis MSMG Toolkit

<p align="center">
    <img src="/res/getting_started/msmg_toolkit.png" />
</p>

MSMG Toolkit est une interface open source pour les opérations DISM qui permet d'intégrer des paquets, de gérer les fonctionnalités et bien plus. Si vous migrez de cet outil vers DISMTools, voici quelques différences et points à connaître :

## Interface utilisateur

MSMG Toolkit propose une interface en mode terminal (TUI) basée sur des menus clavier. Si cette approche est pratique, elle n'offre pas la même expérience visuelle qu'une interface graphique (GUI) telle que celle de DISMTools.

<p align="center">
    <img src="/res/product.png" />
</p>

## Flux d'opération

Avec MSMG Toolkit, vous devez copier les fichiers du média d'installation Windows dans le dossier `ISO` du répertoire d'exécution du Toolkit, puis indiquer l'image à personnaliser. DISMTools simplifie ce processus : il suffit de placer le fichier `install.wim` où vous le souhaitez, créer un projet et monter l'image dans ce projet.

Si vous montez une image dans MSMG Toolkit et fermez l'application, l'image est démontée. En cas d'arrêt forcé et de redémarrage, le Toolkit peut supprimer TOUS les fichiers de l'image, la rendant **invalide** et **irrécupérable**, car il s'exécute souvent en tant que `TrustedInstaller`. DISMTools conserve les images montées dans le projet jusqu'à ce que vous décidiez de les démonter et **préserve les images montées** au démarrage (sauf si vous rechargez explicitement la session de maintenance via [remount_image](../img_tasks/mgmt/remount_image.md)).

MSMG Toolkit gère uniquement des images Windows ; DISMTools gère aussi bien des images que des installations en ligne ou hors ligne.