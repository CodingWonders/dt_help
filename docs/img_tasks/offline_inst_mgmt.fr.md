# Mode de gestion d'installation hors ligne

DISMTools 0.4 et versions ultérieures permettent de gérer des installations sur n'importe quelle partition (appelées « installations hors ligne ») en utilisant la même interface que pour les projets et images Windows.

<p align="center">
    <img src="/res/img_tasks/offline_inst_mgmt/offline_inst_mgmt.png" />
</p>

## Accès à ce mode

Vous pouvez accéder à ce mode de deux façons : en cliquant sur « Gérer l'installation hors ligne » depuis l'écran principal ou via le menu Fichier.

<p align="center">
    <td>
        <tr>
            <img src="/res/img_tasks/offline_inst_mgmt/off_inst_mgmt_link.png" />
        </tr>
        <tr>
            <img src="/res/img_tasks/offline_inst_mgmt/off_inst_mgmt_menu_entry.png" />
        </tr>
    </td>
</p>

Vous devez ensuite choisir le disque contenant l'installation de Windows que vous souhaitez gérer :

<p align="center">
    <img src="/res/img_tasks/offline_inst_mgmt/off_inst_mgmt_choose_disk.png" />
</p>

### Lecteurs non pris en charge

Une installation ne peut pas être gérée sur un lecteur si l'une des conditions suivantes est remplie :

- Le lecteur contient une installation de Windows Vista ou antérieure
- Le lecteur contenant l'installation n'est pas formaté en NTFS
- Le lecteur contenant l'installation est monté en tant que média amovible
- Le lecteur contenant l'installation est monté en lecture seule

## Différences par rapport à la gestion de projets

Il existe quelques différences entre la gestion d'une installation hors ligne et un projet standard, détaillées ci‑dessous :

- Vous ne pouvez pas enregistrer en mode gestion d'installation hors ligne, car toutes les opérations de validation sont désactivées