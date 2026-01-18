
# Gestionnaire de services système

Le Gestionnaire de services système permet de consulter et modifier les services d'une image Windows. Utilisez‑le pour changer le type de démarrage ou simplement afficher les informations.

<p align="center">
    <img src="/res/img_tasks/tools/servicemgr/servicemgr.png" />
</p>

Accès : *Tools -> Manage system services*.

*Outil disponible dans DISMTools 0.7.1 et versions ultérieures.*

**REMARQUE :** sur des installations en ligne, ces opérations ouvrent le panneau de services par défaut (`services.msc`).

## Informations disponibles

Onglet **Service Information** : nom du service, nom d'affichage, description, chemin de l'exécutable, compte (Object Name), type de démarrage, démarrage différé (si automatique), type de service.

Onglet **Required Privileges** : privilèges requis.

Onglet **Error Control** : niveau d'erreur du Service Control Manager et actions en cas d'échec (première, seconde, suivantes), délai de réinitialisation et redémarrage du service.

Onglet **Service Dependencies** : services dépendants et dépendances (nom, affichage, type).

Onglet **Service Groups** : groupe d'appartenance et autres services du groupe, groupes svchost enregistrés.

## Modification d'un service

Types de démarrage : Boot Loader, I/O System, Automatic, Manual, Disabled. Ne définissez pas Boot Loader ou I/O System pour des applications/services Windows.

Pour Automatic, vous pouvez activer Delayed Start. C'est actuellement le seul champ modifiable.

Cliquez sur *Save* pour enregistrer la nouvelle configuration (environ 20–25 secondes).

## Restauration

Lors de l'enregistrement, une sauvegarde de la configuration est créée. Pour restaurer :

1. Chargez la ruche `SYSTEM` via Image Registry
2. Double‑cliquez le fichier `.reg` sauvegardé sur le bureau pour le fusionner
3. Déchargez la ruche `SYSTEM` et validez

Des erreurs peuvent apparaître pendant la restauration, c'est normal ; de nombreux services seront malgré tout restaurés.

Testez l'image après modifications et n'altérez pas excessivement les services.