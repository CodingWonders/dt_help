# Créer un fichier ISO

Pour créer un nouveau fichier ISO, procédez comme suit :

1. **Sélectionnez votre image Windows.** Vous pouvez rechercher une image sur votre machine, en choisir une depuis le sélecteur d'images montées ou utiliser celle actuellement chargée. Après sélection, des informations sur chaque index s'afficheront.
2. **Choisissez l'architecture pour l'Environnement de Préinstallation (PE)** en utilisant la liste des architectures. Il est recommandé de sélectionner l'architecture compatible avec l'image.
3. (Facultatif) **Sélectionnez un fichier de réponse unattended à appliquer**.
4. **Choisissez l'emplacement de destination du fichier ISO.** Si le fichier de destination existe, il vous sera demandé si vous souhaitez le remplacer lorsque vous cliquerez sur Créer.

Dans DISMTools 0.6.1 et versions ultérieures, vous pouvez également spécifier deux options :

- **Copier vers les clés Ventoy** : exploitez les clés Ventoy pour l'installation des systèmes d'exploitation ; une fois l'ISO généré, il sera automatiquement copié sur toutes les clés Ventoy connectées.
- **Utiliser des binaires de démarrage nouvellement signés** : les ISO générés incluront des binaires EFI signés avec le certificat *Windows UEFI CA 2023*. Cette option n'est pas cochée par défaut (explications plus loin).

Le processus peut prendre entre 5 et 10 minutes, selon la taille de l'image et la vitesse du disque.

#### Informations sur Windows UEFI CA 2023

Les nouveaux binaires EFI sont signés par la CA Windows UEFI 2023, qui remplace l'autorité de certification de 2011 (qui expire en juin 2026).

Les binaires signés avec la CA 2023 sont déjà inclus sur les machines fabriquées depuis 2024 et dans les versions 10.1.26100.2454+ de l'ADK Windows ; ils constituent une option recommandée pour éviter des problèmes de démarrage sur les systèmes avec des listes de révocation à jour.

Vous pouvez vérifier si un système UEFI avec Secure Boot prend en charge la CA 2023 via PowerShell ou le Registre.

- Pour vérifier dans PowerShell, exécutez :

```powershell
[System.Text.Encoding]::ASCII.GetString((Get-SecureBootUEFI db).bytes) -match 'Windows UEFI CA 2023'
```

<p align="center">
    <img src="https://techcommunity.microsoft.com/t5/s/gxcuf89792/images/bS00MTIxNzM1LTU3MzgxN2kwQ0ZBNzNGQ0FEMjU2RTBE?revision=7" />
    <p align="center"><i>Exemple de sortie de la commande. Source : Microsoft Tech Community</i></p>
</p>

La commande renvoie `True` ou `False` selon que le certificat est installé ou non.

- Pour vérifier dans le Registre :
  1. Ouvrez l'Éditeur du Registre et allez à `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecureBoot\Servicing`
  2. Recherchez la valeur `UEFICA2023Status`

Sur les systèmes disposant de la CA 2023, sa valeur sera « Updated » :

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/uefica2023/uefica2023status.png" />
</p>

Plus d'informations : [Revoking vulnerable Windows boot managers](https://techcommunity.microsoft.com/blog/windows-itpro-blog/revoking-vulnerable-windows-boot-managers/4121735) et [Secure Boot playbook for certificates expiring in 2026](https://techcommunity.microsoft.com/blog/Windows-ITPro-blog/secure-boot-playbook-for-certificates-expiring-in-2026/4469235).

Dans DISMTools 0.7.2+ cet avertissement peut apparaître :

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/uefica2023/uefica2023warning.png" />
</p>

L'avertissement s'affiche si vous créez un ISO sur un système UEFI avec Secure Boot activé qui ne prend pas en charge la CA 2023 et que vous cochez « Use newly-signed boot binaries ».

Microsoft et les OEM publient des mises à jour logicielles et firmware pour ajouter la prise en charge ; mettez à jour votre système et votre microprogramme ou évitez d'utiliser les binaires signés pour des raisons de compatibilité (ce qui pourrait toutefois empêcher le démarrage sur des systèmes ayant révoqué les certificats de 2011).

### Poursuivre l'installation

Que vous ayez démarré l'installation avec HotInstall ou depuis un média, le processus est le même. Le PE Helper guide le déroulement, qui comprend :

1. Sélectionner le disque et la partition
2. Choisir l'index de l'image Windows à appliquer
3. Appliquer l'image
4. Exécuter des tests de service
5. Créer les fichiers de démarrage
6. Redémarrer le système

Le processus diffère si vous utilisez les PXE Helpers.

### Choisir la méthode d'installation

**REMARQUE :** cet écran n'apparaît pas si vous avez démarré avec HotInstall

Au démarrage de l'Environnement de Préinstallation, une écran vous propose de choisir la méthode (locale ou réseau) :

- Tapez `1` puis appuyez sur Entrée pour une installation locale
- Tapez `2` puis appuyez sur Entrée pour une installation par le réseau
- Tapez `C` puis appuyez sur Entrée pour ouvrir l'invite de commande
- Tapez `S` puis appuyez sur Entrée pour éteindre
- Tapez `R` puis appuyez sur Entrée pour redémarrer

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/dt_pe/dt_pe_choose_install_option.png" />
</p>

Consultez *Installing the operating system* pour plus de détails.

## Observations

- **Assurez-vous de valider (commit) les modifications non enregistrées sur votre image avant de créer l'ISO**
