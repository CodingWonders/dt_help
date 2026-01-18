# Gérer les ruissances de registre de l'image

<p align="center">
    <img src="/res/img_tasks/tools/regcpl/regcpl.png" />
</p>

Le panneau de contrôle du registre d'image permet de modifier rapidement le registre d'une image ou d'une installation hors ligne.

*Cet outil est disponible dans DISMTools 0.6 et versions ultérieures.*

## Utilisation

Vous pouvez charger et décharger les ruissances standard (`SOFTWARE`, `SYSTEM`, `DEFAULT` et `NTUSER.DAT`) ou tout autre ruissances présentes dans `<Image Path>\Windows\system32\config`.

Après le chargement d'une ruissances, ouvrez l'éditeur du registre en pointant vers la ruissances montée.

### Charger une ruissances personnalisée

Pour charger une ruissances non listée, utilisez la section "Charger ruissances personnalisé" et les trois boutons pour charger, ouvrir et décharger la ruissances spécifiée.

La ruissances est montée sous : `HKEY_LOCAL_MACHINE\z<nom_de_la_ruissances>`

### Fermeture du panneau

Lorsque vous avez fini de modifier le registre de l'image, toutes les ruissances chargées seront automatiquement déchargées à la fermeture du panneau. Le panneau doit être fermé avant de fermer l'application, effectuer des opérations sur l'image ou charger d'autres projets/modes.