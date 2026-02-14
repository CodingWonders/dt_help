# Nouveautés de la version

Cette nouvelle version de DISMTools inclut des fonctionnalités qui améliorent la gestion des images et les tâches de maintenance. Voici un résumé des changements les plus importants.

Pour consulter la liste complète des modifications, voyez la [page des notes de version](https://github.com/CodingWonders/DISMTools/releases/latest).

## Améliorations générales de PE Helper et PXE Helpers

DISMTools 0.7.2 apporte plusieurs améliorations aux composants PE Helper et PXE Helper. L'outil de préparation Sysprep propose désormais un mode automatique qui prépare une machine de référence avec une interaction minimale de l'utilisateur. Après la préparation, le script de capture d'image peut être lancé automatiquement. Ce script a également été amélioré pour prendre en charge la capture d'images vers des emplacements réseau utilisant des partages SMB et des serveurs WDS.

PE Helper a également revu les procédures de détection de l'ADK pour les rendre plus fiables, et la logique de gestion des erreurs d'OSCDIMG a été mise à jour.

Les composants serveur de PXE Helper peuvent également être démarrés directement depuis le menu Outils sur les serveurs Windows.

<p align="center">
  <img src="/res/whats_new/WhatsNew_1.png">
</p>

## Plus de scripts d'initialisation, davantage d'options de personnalisation des images et améliorations des réponses non interactives

L'assistant de création des fichiers de réponse non interactive inclut désormais davantage de scripts d'initialisation permettant d'afficher des messages d'état détaillés et de configurer des dossiers spécifiques pour l'intégration avec Git dans l'Explorateur de fichiers. Les scripts d'initialisation ont également été améliorés pour fournir un nom et une description, visibles dans le nouvel explorateur de scripts d'initialisation :

<p align="center">
  <img src="/res/whats_new/WhatsNew_2.png">
</p>

## Amélioration de l'apparence avec de nouveaux thèmes

Basée sur le moteur de thèmes introduit dans DISMTools 0.7, cette version ajoute de nouveaux *thèmes teintés* en rouge, vert, orange et violet. Ceux qui préfèrent un style plus minimaliste peuvent aussi choisir les nouveaux thèmes **Tinted Black** et **Tinted White**, un pour chaque mode de couleur.

## Raffinements généraux

Cette version vise également à peaufiner les tâches et fonctionnalités existantes pour améliorer l'expérience utilisateur. Par exemple, le logiciel est plus fiable et les composants ont été mis à jour vers leurs dernières versions.

<!-- Espace pour d'autres fonctionnalités -->

# Remerciements aux contributeurs

Les personnes suivantes ont contribué à façonner cette version de DISMTools en signalant des problèmes ou en proposant de nouvelles fonctionnalités ou modifications :

[Real-MullaC](https://github.com/Real-MullaC), [bovirus](https://github.com/bovirus), [jekovcar](https://github.com/jekovcar), [rayman95 (MDL Forums)](https://forums.mydigitallife.net/members/rayman95.1153686/)

Si vous souhaitez apparaître dans cette liste, vous pouvez signaler des problèmes ou proposer des suggestions par le canal de votre choix (via le [fil du forum MDL](https://forums.mydigitallife.net/threads/dismtools.87263/), le [dépôt GitHub](https://github.com/CodingWonders/DISMTools) ou en postant sur le [subreddit DISMTools](https://reddit.com/r/DISMTools) ou sur les subreddits [Windows](https://reddit.com/r/Windows), [Windows11](https://reddit.com/r/Windows11) et [Windows10](https://reddit.com/r/Windows10)), ou en envoyant des modifications de code (lisez les [directives de contribution](https://github.com/CodingWonders/DISMTools/blob/stable/CONTRIBUTING.md) pour plus d'informations).