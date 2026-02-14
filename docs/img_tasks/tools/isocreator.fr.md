
# Tester vos images Windows avec les outils de création d'ISO

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/isocreator.png" />
</p>

Si vous souhaitez tester les modifications apportées à une image Windows, vous pouvez le faire facilement avec les outils de création d'ISO, qui incluent l'**ISO Creator** et l'**assistant Preinstallation Environment (PE)**.

Vous aurez besoin du Windows Assessment and Deployment Kit (ADK), que vous pouvez télécharger via le lien pratique en bas à gauche. Dans DISMTools 0.7 et versions ultérieures, le programme peut télécharger et installer automatiquement l'ADK pour vous. La version installée dépend de la version de DISMTools :

| Version de DISMTools | Version ADK à installer | Liens de téléchargement manuels |
|----------------------|-------------------------|-------------------------------|
| 0.7.2+ | ADK 10.1.28000.1 | <ul><li>ADK : <a href="https://download.microsoft.com/download/615540bc-be0b-433a-b91b-1f2b0642bb24/adk/adksetup.exe">Télécharger</a></li><li>Addon Windows PE : <a href="https://download.microsoft.com/download/2472e9a0-7c74-4ffd-a3e4-27ed1fa30d30/adkwinpeaddons/adkwinpesetup.exe">Télécharger</a></li></ul> |
| 0.7–0.7.2 Preview 4 | ADK 10.1.26100.2454 | <ul><li>ADK : <a href="https://download.microsoft.com/download/2/d/9/2d9c8902-3fcd-48a6-a22a-432b08bed61e/ADK/adksetup.exe">Télécharger</a></li><li>Addon Windows PE : <a href="https://download.microsoft.com/download/5/5/6/556e01ec-9d78-417d-b1e1-d83a2eff20bc/ADKWinPEAddons/adkwinpesetup.exe">Télécharger</a></li></ul> |

*Cet outil est disponible dans DISMTools 0.5 et versions ultérieures.*

Dans DISMTools 0.7 et versions ultérieures, chaque section a été déplacée vers une page dédiée. Suivez ces liens dans l'ordre recommandé :

1. [Créer un fichier ISO](./isocreator/isocreate.md)
2. Installation des systèmes d'exploitation :
   - [Localement](./isocreator/install/localinstall.md)
   - [Sur réseau](./isocreator/install/netinst/pxehelpers.md)

Outils additionnels :

- [Driver Installation Module](./isocreator/exttools/dim.md)
- [Extensibility Suite](./isocreator/exttools/dtpe_es.md)