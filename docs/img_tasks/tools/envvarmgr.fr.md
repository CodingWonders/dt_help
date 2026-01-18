# Gestionnaire des variables d'environnement système

Le Gestionnaire des variables d'environnement système permet de consulter et modifier les variables d'environnement d'une image Windows. Utilisez cet outil pour afficher et/ou modifier les noms et valeurs des variables.

<p align="center">
    <img src="/res/img_tasks/tools/envvarmgr/envvarmgr.png" />
</p>

Vous pouvez accéder au Gestionnaire via *Tools -> Manage System Environment Variables*.

*Cet outil est disponible dans DISMTools 0.7.1 et versions ultérieures.*

**REMARQUE :** lors d'opérations en ligne (installations en cours), ces actions ouvrent les propriétés système avancées.

Les variables utilisateur s'appliquent aux profils utilisateur par défaut.

## Utilisation

Pour modifier une variable, sélectionnez-la dans la liste du scope machine ou user. Vous pouvez ensuite modifier le nom et la valeur de la variable. Pour enregistrer la variable modifiée, cliquez sur **Save Variable**.

Pour enregistrer la liste de variables dans l'image cible, cliquez sur **Save** en bas à droite.

Vous pouvez également déplacer ou copier des variables entre les scopes machine et user avec les boutons **Move to User Scope**, **Copy to User Scope**, **Move to Machine Scope** et **Copy to Machine Scope**. Ces boutons sont désactivés si une variable existe déjà dans les deux scopes (hiérarchie).

Pour les variables hiérarchiques, les valeurs du scope machine sont appliquées en premier, puis celles du scope user. Les valeurs machine peuvent être écrasées par celles du user, ou celles-ci peuvent être préfixées lors du chargement du profil utilisateur.

Par exemple, les valeurs de `PATH` des scopes machine et user sont combinées.

Les variables contenant des références à d'autres variables système sont stockées non développées. En enregistrant, le Gestionnaire écrira ces variables en tant que valeurs de type *expand string* dans le Registre ; sinon elles seront écrites comme des chaînes simples.

Pour ajouter ou supprimer des variables, cliquez sur **Add user variable...** ou **Add machine variable...**, ou sélectionnez une variable puis **Remove user variable** / **Remove machine variable**.

## Restauration des variables

Lors de l'enregistrement, des sauvegardes des scopes machine et user sont créées sur votre bureau. Pour les restaurer :

1. Utilisez le panneau Image Registry pour charger les branches `SYSTEM` et `NTUSER.DAT` de l'image cible
2. Fusionnez les fichiers `.reg` présents sur votre bureau en double-cliquant
3. Téléchargez à nouveau les branches `SYSTEM` et `NTUSER.DAT` depuis le panneau et validez les modifications

Une erreur peut apparaître lors de la restauration ; cela est courant et de nombreuses variables seront restaurées malgré l'erreur. Vous pouvez aussi inspecter les fichiers REG et utiliser le gestionnaire de services pour restaurer des variables si nécessaire.