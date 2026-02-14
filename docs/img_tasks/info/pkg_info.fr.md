# Informations sur les paquets

<p align="center">
    <img src="/res/img_tasks/info/pkg_info.png" />
</p>

Avec DISMTools, vous pouvez obtenir des informations sur les paquets installés dans une image ou une installation Windows, ainsi que sur les fichiers de paquet que vous souhaitez ajouter ou analyser. Cette fonctionnalité prend en charge les images et installations de tout type.

*Cette action est disponible dans DISMTools 0.3.1 et versions ultérieures.*

**REMARQUE :** les informations sur les capacités ne peuvent pas être obtenues sur des hôtes antérieurs à Windows 10 ou Server 2016.

## Utilisation

- À l'ouverture du dialogue, le menu principal s'affiche (capture ci‑dessus). Depuis celui‑ci, vous pouvez accéder à l'un des deux modes d'information en cliquant sur le lien correspondant :

    - **Obtenir les informations des paquets installés dans l'image** ouvre la vue des paquets installés. Tous les paquets installés de l'image ou de l'installation apparaissent dans la liste de gauche ; sélectionnez‑en un pour voir ses détails à droite.

    <p align="center">
        <img src="/res/img_tasks/info/get_instpkginfo.png" />
    </p>

    - **Obtenir les informations des fichiers de paquet** ouvre la vue des fichiers de paquet. Dans ce mode, spécifiez les paquets et ajoutez‑les à la liste, soit via le sélecteur de fichiers, soit en les glissant depuis une application exécutée avec des privilèges élevés. Si le programme détecte les informations du paquet, vous pourrez les consulter ; sinon, l'entrée sera supprimée.

    <p align="center">
        <img src="/res/img_tasks/info/get_pkgfileinfo.png" />
    </p>

- Vous pouvez revenir à l'écran principal en cliquant sur le lien en haut à gauche.

## Enregistrer ces informations

Vous pouvez exporter ces informations dans un fichier de rapport en cliquant sur le bouton Save (en bas à droite) et en choisissant une destination. Cette option est désactivée dans la vue des fichiers de paquet si aucun paquet n'a été spécifié.

## FAQ

- **Q : Pourquoi ne puis‑je pas glisser des fichiers depuis une application normale ?**
- **R :** il n'est pas possible de glisser du contenu d'une application sans privilèges vers une application avec privilèges élevés. Exécutez l'application source en tant qu'administrateur (par exemple avec CTRL+Shift+Enter) pour éviter ce problème.

## Meilleure visualisation des propriétés personnalisées

DISMTools 0.5 introduit une nouvelle vue pour les propriétés personnalisées des fonctionnalités, affichant la hiérarchie sous forme d'arbre pour en faciliter la compréhension.

<p align="center">
    <img src="/res/img_tasks/info/cprop_viewer.png" />
</p>

## Contenu connexe

- [Boîtes de dialogue d'information d'image](../info/infodlgs.md)