# Boîtes de dialogue d'information

<p align="center">
    <img src="/res/img_tasks/info/info_dlgs.png" />
</p>

Comme leur nom l'indique, les boîtes de dialogue d'information permettent d'obtenir facilement des informations spécifiques sur une image Windows ou une installation, via des interfaces puissantes et conviviales.

*Cette action est disponible dans DISMTools 0.3.1 et versions ultérieures.*

## Boîtes de dialogue disponibles

Les boîtes de dialogue suivantes permettent d'obtenir des informations spécifiques sur une image Windows ou une installation :

| Boîte de dialogue | But | Observations |
|:--|:--:|:--:|
| [Informations sur l'image](./img_info.md) | Permet d'obtenir les informations de tout fichier d'image | <p align="center">-</p> |
| [Informations sur les paquets](./pkg_info.md) | Permet d'obtenir des informations sur les paquets installés ou à ajouter | <ul><li>Les informations sur les capacités ne sont pas disponibles sur Windows 8.1/Server 2012 R2</li></ul> |
| [Informations sur les fonctionnalités](./feat_info.md) | Permet d'obtenir les informations de toutes les fonctionnalités présentes dans une image Windows | <p align="center">-</p> |
| [Informations sur les paquets AppX](./appxpkg_info.md) | Permet d'obtenir des informations sur les paquets AppX installés | <ul><li>Fonctionne uniquement sur Windows 8 et versions ultérieures</li><li>Impossible d'obtenir les informations des paquets AppX que vous souhaitez ajouter</li></ul> |
| [Informations sur les capacités](./cap_info.md) | Permet d'obtenir des informations sur toutes les capacités présentes dans une image Windows | <ul><li>Cette action est compatible uniquement sur Windows 10 et versions ultérieures</li></ul> |
| [Informations sur les pilotes](./drv_info.md) | Permet d'obtenir des informations sur les pilotes installés ou les packages de pilotes à ajouter | <ul><li>Le nombre de pilotes listés dépend de la configuration des processus d'analyse en arrière‑plan</li></ul> |
| [Informations Windows PE](./winpe_info.md) | Permet d'obtenir le chemin cible et l'espace de scratch d'une image Windows PE | <ul><li>Fonctionne uniquement pour les images Windows PE</li></ul> |

## Enregistrement des informations d'image

DISMTools 0.3.3 et versions ultérieures permettent d'enregistrer ces informations dans un fichier.

<p align="center">
    <img src="/res/img_tasks/info/info_save.png" />
</p>

Cette action génère un **rapport d'informations d'image** que vous pouvez consulter ultérieurement.

DISMTools 0.4 étend cette fonctionnalité en affichant un aperçu du rapport une fois le processus terminé.

## Recherche dans ces informations

DISMTools 0.5 introduit des fonctions de recherche dans les boîtes de dialogue d'information, facilitant ainsi la récupération des résultats souhaités.

Cette technologie de recherche utilise une **recherche linéaire**, simple à implémenter et rapide pour retourner les résultats.

Pour commencer, cliquez dans la zone de recherche et commencez à taper.

<p align="center">
    <img src="/res/img_tasks/info/search_example.gif" />
</p>

Fonctionnalités prises en charge par la recherche :

- Paquets installés
- Fonctionnalités
- Paquets AppX installés (si le script AppX étendu n'est pas exécuté)
- Capacités
- Pilotes installés

Pour les fonctionnalités et capacités, vous pouvez désormais utiliser des **filtres d'état** avec DISMTools 0.6.

## Recherche en ligne d'un élément

DISMTools 0.7.2 et versions ultérieures permettent de rechercher un élément sélectionné en ligne avec votre moteur de recherche préféré. Les éléments supportés incluent :

- Fonctionnalités
- Capacités

<p align="center">
    <img src="/res/img_tasks/info/item_online_lookup.png" />
</p>

Vous pouvez choisir parmi 5 moteurs de recherche dans Options -> Image operations :

| Moteur de recherche | Disponible depuis |
|:--|:--:|
| Google | 0.7.2 |
| Bing | 0.7.2 |
| DuckDuckGo | 0.7.2 |
| Startpage | 0.7.2 |
| Brave Search | 0.7.2 |

Les fonctions d'aperçu basées sur l'IA sont désactivées par défaut pour Google et Brave Search.

<p align="center">
    <img src="/res/img_tasks/info/online_lookup_options.png" />
</p>