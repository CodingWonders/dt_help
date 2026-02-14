# Concepteur de thèmes DISMTools

Le Concepteur de thèmes DISMTools est un outil pour créer et éditer des thèmes. Vous pouvez y accéder depuis :

- `Tools > Options > Personalization` puis cliquez sur "Design your themes"
- Exécuter `DT_ThemeDesigner.exe` dans `<program directory>\tools\ThemeDesigner`

Vous verrez cette fenêtre :

<p align="center">
    <img src="/res/img_tasks/exttools/themedesigner/ThemeDesigner.png" />
</p>

## Utilisation

Au démarrage du Concepteur de thèmes, vous pouvez créer, ouvrir et enregistrer des thèmes à l'aide des icônes de la barre d'outils.

Commencez par choisir un nom pour le thème (par exemple, "The Color of Passion" pour une palette rouge). Puis définissez les couleurs, regroupées en :

- **Couleurs d'arrière-plan (sections extérieure et intérieure)**
- **Couleur de premier plan (foreground)**
- **Couleurs d'accent** (actuellement 4 couleurs d'accent prises en charge)

Si vous créez un thème sombre, cochez **DISMTools should use dark mode glyphs** pour que les icônes et glyphes soient visibles.

Pour modifier les couleurs, cliquez sur "Change" à côté des aperçus ; une prévisualisation en temps réel s'affichera. Si le résultat vous convient, cliquez sur "Save".

## Installer le thème

Copiez le fichier de thème dans `<program directory>\bin\themes` et redémarrez l'application. Le thème apparaîtra dans la liste de personnalisation ; sélectionnez le mode (clair/sombre) approprié.

<p align="center">
    <img src="/res/img_tasks/exttools/themedesigner/ThemeDesigner_SetCustomTheme.png" />
</p>

Profitez de votre nouveau thème !

<p align="center">
    <img src="/res/img_tasks/exttools/themedesigner/ThemeDesigner_CustomTheme.png" />
</p>

**REMARQUE :** les thèmes créés ne fonctionnent pas dans DISMTools 0.6.2 et versions antérieures en raison de l'absence du moteur de thèmes.

## Exécution sur d'anciennes versions de Windows

DISMTools inclut deux versions du Concepteur de thèmes ciblant différents frameworks :

- Version principale : .NET 4.8 (Windows 7 SP1+ sauf Windows 10 1507/1511)
- Version alternative : .NET 2 (fonctionne sur Windows 98 SE)

<p align="center">
    <img src="/res/img_tasks/exttools/themedesigner/ThemeDesigner_Win9x.png" />
</p>

## Format du thème

Les thèmes sont stockés dans des fichiers INI modifiables. Exemple :

```ini
[Theme Information]
Name="Example Theme"

[Theme Colors]
IsDark=0 ; 1 pour mode sombre, 0 pour clair
BackgroundColor="#abcdef"
SectionBackgroundColor="#abcdef"
ForegroundColor="#000000"
AccentColor1="#143A10"
AccentColor2="#246B1C"
AccentColor3="#057F1A"
AccentColor4="#005522"
```

Sur Windows 9X, des artefacts peuvent apparaître lors de l'ouverture de fichiers UTF-8 dans des éditeurs ne supportant que l'ASCII. Les valeurs de couleur sont en hex RGB ; pas de support alpha.

Pour les éléments désactivés, le moteur calcule une couleur inactive en fonction de la couleur de premier plan selon ce critère :

1. Déterminer si la couleur est claire ou sombre avec la formule :

    $$ (Rouge \times 0.299 + Vert \times 0.587 + Bleu \times 0.114) \geq 128 $$

    - Si la couleur est claire, on utilise un facteur 0.7 pour calculer la couleur inactive
    - Si la couleur est sombre, on utilise un facteur 1.3 et on évite tout débordement en limitant la valeur à 255

2. La couleur inactive est créée en conservant le canal alpha d'origine et en appliquant la valeur calculée aux canaux R/G/B

Les thèmes ne persistent pas toujours après les mises à jour : sauvegardez-les et réinstallez-les si nécessaire. Le format peut évoluer.

### Historique du format

| Version | Utilisé par les versions DISMTools | Remarques |
|:-------:|:--------------------------:|-------|
| 1.0     | 0.7                        | Version initiale |

Utilisez ce tableau pour suivre les modifications du format.