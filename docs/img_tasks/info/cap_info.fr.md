# Informations sur les capacités

<p align="center">
    <img src="/res/img_tasks/info/cap_info.png" />
</p>

Avec DISMTools, vous pouvez obtenir des informations sur les capacités présentes dans des images et installations Windows.

*Cette action est disponible dans DISMTools 0.3.1 et versions ultérieures.*

**REMARQUE :** cette action n'est pas prise en charge sur des images ou installations antérieures à Windows 10 / Server 2016.

## Utilisation

- À l'ouverture du dialogue, ou si aucune capacité n'est sélectionnée, une vue résumée affiche l'identité et l'état de chaque capacité.
- Pour obtenir les détails d'une capacité spécifique, **sélectionnez‑la dans la liste** ; ses informations s'afficheront à droite.

## Informations sur les tailles de téléchargement et d'installation

Dans les versions 0.3 (0.3.1–0.3.3), un bug pouvait provoquer des valeurs négatives pour les tailles de téléchargement/installation à cause d'une bibliothèque gérée de l'API DISM. Le problème est corrigé dans DISMTools 0.4 grâce à la mise à jour de cette bibliothèque.

## Filtrage par état

Avec les filtres d'état introduits dans DISMTools 0.6, vous pouvez filtrer les capacités par état en tapant `state:` suivi de l'une des valeurs suivantes :

- `installed`
- `notpresent`
- `installpending`

Pour rechercher des capacités dans un état donné contenant un nom particulier, ajoutez le flag `state` après le nom.

## Contenu connexe

- [Boîtes de dialogue d'information d'image](../info/infodlgs.md)