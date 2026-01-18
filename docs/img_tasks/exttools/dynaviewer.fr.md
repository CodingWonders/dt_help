
# Le visualiseur de journaux DynaLog

Le visualiseur de journaux DynaLog (*DynaViewer*) est un outil qui permet de consulter et d'analyser les journaux diagnostiques générés par DISMTools. Il est accessible depuis :

- **Help > Open diagnostic logs in log viewer**
- Directement en lançant `DynaViewer.exe` dans `<répertoire du programme>\tools\DynaLogViewer`

<p align="center">
    <img src="/res/img_tasks/exttools/dynaviewer/DynaViewer.png" />
</p>

## Utilisation

Après ouverture d'un fichier journal (bouton « Open »), DynaViewer affiche :

- **Horodatages UTC** de chaque entrée
- **ID de processus (PID)**
- **Appels de méthode (parent/main)**
- **Message** décrivant l'événement

Double‑cliquez une entrée pour obtenir plus de détails ; une fenêtre affiche les propriétés de l'événement.

Si le fichier est modifié par un programme externe, cliquez sur « Refresh » pour recharger.

DynaLog est recommandé en cas de problèmes : en cas d'erreur interne, DISMTools tente de copier le dernier journal sur le bureau afin que vous puissiez le transmettre pour diagnostic.

## Exécution sur d'anciennes versions de Windows

DISMTools inclut deux versions du visualiseur ciblant différents frameworks :

- Version principale ciblant .NET 4.8 (Windows 7 SP1 et ultérieur)
- Version alternative ciblant .NET 2 (compatible jusqu'à Windows 98 SE)

## Utilisation en ligne de commande

Syntaxe :

```
DynaViewer.exe "file" [options]
```

Options utiles :

- `/selectfirst=<n>` - sélectionne les *n* premières entrées
- `/selectlast=<n>` - sélectionne les *n* dernières entrées

## Journalisation DynaLog

Format d'une entrée :

```
[Timestamp] [Process ID] [Main Method Caller (Parent Method)] Message
```

Pour journaliser un message depuis le code :

```csharp
DynaLog.LogMessage("This is a log message");
```

DynaLog peut être désactivé temporairement avec `DisableLogging` et réactivé avec `EnableLogging`.

### Historique des formats

| Version | Utilisé par DISMTools | Changements |
|:-------:|:--------------------:|------------|
| 1.0.2   | 0.7 Preview 5+, 0.6.2 Update 2+ | Ajout du champ PID |
| 1.0.1   | 0.7 Preview 1 - Preview 4, 0.6.2 Update 1 | Culture invariante pour les dates, ajout de DynaViewer |
| 1.0     | 0.6.1 - 0.6.2 | Journalisation ajoutée au code |
| 0.6     | 0.6 | Version initiale |