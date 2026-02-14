# Introduction à la maintenance de Windows

## Contexte

En 2007, Microsoft a publié Windows Vista, introduisant de nombreux changements dans la façon de déployer le système. Le format Windows Imaging (WIM) a facilité l'installation et la gestion, car un fichier WIM contient une installation complète de Windows, contrairement à l'ancien procédé de copie des fichiers d'installation.

Microsoft a également fourni le Automated Installation Kit (AIK) contenant des outils de déploiement tels qu'ImageX, Package Manager, IntlCfg, etc. DISM est ensuite apparu comme une solution unifiée pour ces opérations et a été amélioré au fil des versions (API, cmdlets PowerShell, etc.).

Aujourd'hui, DISM est un outil fondamental pour la gestion des images Windows.

## Interfaces

Plusieurs interfaces graphiques facilitent l'utilisation de DISM. L'outil commercial bien connu est [NTLite](https://ntlite.com), qui permet d'intégrer paquets, fonctionnalités et mises à jour.

Il existe aussi des alternatives open source :

- MSMG Toolkit
- [DISM GUI](https://github.com/mikecel79/DISMGUI)
- [DISM++](https://github.com/Chuyu-Team/Dism-Multi-language)

Et bien sûr, **DISMTools** est une autre alternative disponible sur ce site.

## Ressources utiles

- [Aide DISM en ligne (ligne de commande)](https://docs.microsoft.com/fr-fr/windows-hardware/manufacture/desktop/deployment-image-servicing-and-management--dism--command-line-options)