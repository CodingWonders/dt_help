# Creador de archivos de respuesta desatendida

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/unatt_creator_express.png" />
</p>

El Creador de archivos de respuesta desatendida te permite generar archivos de respuesta compatibles con Windows 10 y 11 de dos formas: mediante un asistente (modo Express) o usando un editor de texto (modo Editor).

*Esta herramienta está disponible en DISMTools 0.5.1 y posteriores.*

## Modos del creador

El creador incluye dos modos: **Express** y **Editor**. Puedes cambiar entre ambos mediante los botones situados en las esquinas izquierda de la ventana.

### Modo Express

El modo Express es útil para quienes no han creado archivos de respuesta antes o prefieren evitar editores de texto. Sigue los pasos del asistente y generarás el archivo en pocos minutos.

Si tienes un proyecto cargado, DISMTools permitirá guardar el archivo de respuesta directamente en la carpeta del proyecto sin tener que cambiar de directorio. También puedes guardarlo en cualquier otra ubicación.

#### Pasos del asistente

En la página de **Configuración regional** puedes establecer el idioma, la configuración regional del sistema, la distribución del teclado y la ubicación del equipo. Ajusta estos valores según tus necesidades, o déjalos para configurarlos durante la instalación del sistema operativo.

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_regional_settings.png" />
</p>

En la página de **Configuración del sistema** puedes fijar el nombre del equipo, las arquitecturas objetivo del archivo de respuesta y otros parámetros:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_system_configuration.png" />
</p>

Opciones adicionales:

- **Usar un configuration set o distribution share**: un configuration set permite precargar aplicaciones y controladores en la imagen objetivo. Puedes crear estos conjuntos con Windows System Image Manager. Asegúrate de que exista un conjunto en la ISO a la que copies el archivo de respuesta.
- **Ajustes de Windows 11**: opciones que ayudan a evitar requisitos de hardware y configuración de red. Configura la segunda opción si el equipo objetivo no tiene capacidades de red. Si buscas evitar la conexión para crear cuentas locales, puedes crear las cuentas desde este asistente.

En la página **Zona horaria** puedes establecer la zona horaria del sistema objetivo:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_timezone.png" />
</p>

En la página **Configuración de disco** puedes definir la partición del sistema. Puedes dejar que Setup gestione las particiones o automatizarlo mediante scripts DiskPart:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_disk_config.png" />
</p>

En la página **Clave de producto** puedes especificar la clave del sistema: usar una clave genérica asociada a la edición o escribir una clave personalizada:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_product_key.png" />
</p>

Notas:

- Si eliges una clave genérica, ten en cuenta que solo sirven para la instalación y no activan el sistema.
- Si usas una clave personalizada, asegúrate de que sea válida para la edición de la imagen; DISMTools solo valida la sintaxis.

En la página **Cuentas de usuario** puedes crear hasta 5 cuentas locales y definir sus contraseñas:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_user_accounts.png" />
</p>

Desde aquí también puedes habilitar el inicio de sesión automático. Si prefieres que el instalador pregunte, puedes omitir este paso.

No se recomienda configurar la caducidad de contraseñas por defecto; consulta las guías de seguridad (por ejemplo, NIST) antes de hacerlo.

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_user_accounts_pw_expiry.png" />
</p>

Puedes configurar políticas de bloqueo de cuenta, aunque desactivarlas no es recomendable por motivos de seguridad:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_user_accounts_lockout.png" />
</p>

Nota: al menos una cuenta debe pertenecer al grupo Administradores.

En la página **Compatibilidad con máquinas virtuales** puedes indicar si deseas instalar las herramientas de integración del proveedor (VirtualBox Guest Additions, VMware Tools, etc.):

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_vm_support.png" />
</p>

En la página **Configuración de red** puedes indicar si el equipo objetivo se conectará a una red inalámbrica:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_network_config.png" />
</p>

Notas:

- La autenticación inalámbrica debe ser compatible tanto con el router como con el adaptador del equipo objetivo.
- Si no quieres configurar la red inalámbrica, elige *Skip configuration*.

En la página **Telemetría del sistema** puedes decidir si enviar información a Microsoft o terceros:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_telemetry.png" />
</p>

Desactivar la telemetría no elimina todas las fuentes de recopilación de datos; se requieren pasos adicionales para reducirla.

En la página **Scripts post-instalación** puedes añadir scripts PowerShell que se ejecutarán durante la instalación o al primer inicio de sesión:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_postinst_scripts.png" />
</p>

Puedes escribir los scripts desde cero o importar existentes. Tras ejecutar scripts, es común reiniciar el Explorador para aplicar personalizaciones.

Consulta la referencia de componentes si necesitas añadir entradas específicas en pases concretos.

Finalmente, revisa la configuración antes de generar el archivo. Si es necesario, vuelve a las páginas correspondientes:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/steps/unatt_creator_review.png" />
</p>

Después de crear el archivo, puedes generar otro, abrir la ubicación del archivo, aplicarlo o editarlo en el modo Editor o con Windows System Image Manager.

### Modo Editor

El modo Editor permite personalizaciones avanzadas del archivo de respuesta, como añadir componentes o reglas. Usa los botones de la barra de herramientas para operar el editor.

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/unatt_creator_editor.png" />
</p>

DISMTools 0.6.1 añade la capacidad de normalizar el espaciado del archivo de respuesta para mantener consistencia:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/unatt_creator_editor_normalize.gif" />
</p>

## Requisitos

El creador de archivos de respuesta requiere el runtime .NET 9 para ejecutar el generador. Si DISMTools detecta que no está instalado, se ofrecerá una versión autocontenida que incluye el runtime:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/unattendgen_selfcontained.png" />
</p>

Si eliges usar la versión autocontenida, DISMTools guardará esta preferencia hasta que la versión autocontenida sea eliminada o sustituida por una actualización.

La descarga puede tardar según la velocidad de la conexión y el rendimiento del equipo; al finalizar verás una notificación en el área de sistema.

<p align="center">
    <img src="/res/img_tasks/unattend/unattendgen_notify.png" />
</p>

También puedes usar el generador de forma independiente; consulta su repositorio en: https://github.com/CodingWonders/UnattendGen

## Unión a dominios Active Directory

Si el archivo de respuesta y la imagen van destinados a equipos de un dominio, puedes configurar la unión a dominio mediante el **Domain Services Wizard**.

Accede al asistente con el botón **Join target device to domain...** que aparece en las siguientes páginas:

- System Configuration
- User Accounts
- Component Settings

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/dsw/dswizard_jointargetdevice.png" />
</p>

Deberás configurar primero la información DNS objetivo: sufijo de dominio, alias de interfaz de red (Interface Alias) y direcciones de servidor DNS.

Puedes especificar el alias de interfaz de dos maneras:

- Seleccionándolo de la lista de adaptadores disponibles en el sistema actual. Recomendado si ejecutas DISMTools en el equipo del dominio y existe un adaptador con el mismo nombre que en los equipos objetivo.
- Escribiendo manualmente el nombre del adaptador (Interface Alias).

Cuando selecciones el adaptador, los campos relacionados (PDS, DNS) se rellenarán automáticamente, aunque podrás modificarlos si es necesario.


When you pick the NIC from the list, every other field (PDS, DNS server addresses) will be filled in automatically given the current configuration of the NIC. However, you can still change these fields if you need to use different values.

For DNS server addresses, you need to put one address per line. If you want to check if the syntax of the addresses is correct, click **Verify DNS Address Syntax**.

One example of filled-in information is shown below:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/dsw/dswizard_dnsinfo.png" />
</p>

After configuring DNS server information, you will need to configure information related to the initial user with which the target device will join the domain.

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/dsw/dswizard_dsinfo.png" />
</p>

- If the device is part of a domain, the domain name will be filled in automatically and you will be able to pick users from available organizational units (OUs) in the domain. However, you can still specify different information manually.
- If the device is not part of a domain, you will need to specify all information manually.

To pick a user from the domain:

1. Select the OU from the drop-down list. After selecting the OU, the list of users in the OU will be populated automatically
2. Select the user from the list

Both the UPN and the SAM account names will be filled in automatically. When specifying this information manually, you will need to specify the user part of the UPN. For instance, `johndoe`.

Finally, specify the password of the user. Since DISMTools will **NOT** check if the password is correct, make sure that you type it correctly.

You've finished the Domain Services Wizard. When you get to the components screen, you will see that the necessary components and settings have been added to your answer file.

## Starter Script Reference

Currently, there are 12 starter scripts available:

| Script Name | Stage | Description |
|:------------|:-----:|:------------|
| Close First Logon Animation | During System Configuration | This script closes the First Logon Animation process and allows a system to reach the desktop sooner. This works on Windows 10 and Windows 11. |
| Enable Verbose Status Messages | During System Configuration | This script enables the verbose status messages that are enabled by default on Windows Server. This can help report service start/stop status. |
| Set OEM Information | During System Configuration | This script configures OEM settings such as the manufacturer or the model to further customize a Windows installation. |
| Set Quick Machine Recovery Settings | During System Configuration | This script configures a target system's Quick Machine Recovery settings on Windows 11 24H2 and later. |
| Configure folders for Git integration | When the first user logs on | This script configures a folder, or a set of folders, for Git source control integration in the File Explorer. Git and the latest versions of system components need to be installed in the target system to take advantage of all features. |
| Invoke WinUtil Configuration | When the first user logs on | This script configures a target system using a configuration file exported from the Windows Utility. |
| Set Personalization Settings | When the first user logs on | This script configures settings related to color modes and accent colors on the user environment of the target system. |
| Set Registered Owner and Organization | When the first user logs on | This script configures the registered owner and organization of the target system. |
| Set up a custom wallpaper | When the first user logs on | This script configures a wallpaper in the target system environment. |
| Update Microsoft Store apps | When the first user logs on | This script invokes an update of all Microsoft Store applications. A network is required for this to work. |
| Disable Second Chance OOBE | When users log on for the first time | This script disables the Second Chance Out-of-Box Experience on the target system. This works on Windows 10 and Windows 11. |
| Disable Windows Notification Sources | When users log on for the first time | This script disables user-specified notification sources in the target system. |

In DISMTools 0.7.2, you can view more information about these starter scripts more easily by using the new **Starter Script Browser**:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/unatt_script_browser.png" />
</p>

Some scripts allow you to configure settings after you import them:

### Close First Logon Animation

**Script language**: Batch

No settings available.

### Set OEM Information

**Script language**: Batch

| Option | Required? | Description |
|:------:|:---------:|:------------|
| `OEM_Manufacturer` | Yes | The manufacturer of the system |
| `OEM_Model` | No | The model of the system |
| `OEM_SupportURL` | No | The support URL of the system |
| `OEM_SupportPhone` | No | The support phone number of the system |
| `OEM_SupportHours` | No | The support hours of the system |
| `OEM_Logo` | No | The path to the OEM logo of the system. Must be a BMP file |

### Set Quick Machine Recovery Settings

**Script language**: Batch

| Option | Required? | Description |
|:------:|:---------:|:------------|
| `QMR_CloudRemediation` | Yes | Enables (1) or disables (0) cloud remediation for QMR |
| `QMR_AutoRemediation` | Yes | Enables (1) or disables (0) automatic remediation for QMR |
| `QMR_NextCheckMinutes` | Yes | Sets the number of minutes before the next QMR check |
| `QMR_NextRebootHours` | Yes | Sets the number of hours before the next reboot |
| `QMR_Headless` | Yes | Enables (1) or disables (0) headless mode for QMR |

**Notes:**

- Options 3 and 4 will only be applied if automatic remediation is enabled
- Cloud Remediation allows the system to scan for solutions on WinRE launch
- Auto Remediation allows the system to continue scanning for solutions if the first attempt fails

### Configure folders for Git integration

**Script language**: PowerShell

To add new entries to the list of folders for which to show VCS information, add them to the following array, like this:

```powershell
$gitFolders = @(
	"$env:SYSTEMDRIVE\dev\repo1",
    "$env:SYSTEMDRIVE\dev\repo2"
)
```

Do note that, in order for the Git view to show, the system needs the *Windows Advanced Settings* application.

### Invoke WinUtil Configuration

**Script language**: PowerShell

You need to add your configuration file to the root of the image's mount directory, as `winutil-config.json`. You can learn more about configuration files [here](https://winutil.christitus.com/userguide/automation/).

### Set Personalization Settings

**Script language**: PowerShell

| Option | Description |
|:------:|:------------|
| `$lightThemeSystem` | If 0, sets the system theme to dark mode. If 1, sets it to light mode |
| `$lightThemeApps` | If 0, sets the app theme to dark mode. If 1, sets it to light mode |
| `$accentColorOnStart` | If 0, disables accent color on Start, taskbar and action center. If 1, enables it |
| `$enableTransparency` | If 0, disables transparency effects (Acrylic/Mica). If 1, enables it |
| `$htmlAccentColor` | Sets the accent color of the system. Must be a hex value |

### Set Registered Owner and Organization

**Script language**: Batch

| Option | Required? | Description |
|:------:|:---------:|:------------|
| `AutoUserInfo` | Yes | Determines whether to set registered owner as the name of the currently signed user (0 or 1) |
| `RegisteredUser` | Yes | The registered owner of the system |
| `RegisteredOrg` | No | The registered organization of the system |

**Notes:**

- If `AutoUserInfo` is set to 1 and a Microsoft account is used, the registered owner will be set to the first 5 letters of the email address
- This script should not be used when users log on for the first time because user information will change every time a new user logs on for the first time if the following conditions are met:
    - `AutoUserInfo` is set to 1
    - More than one user account is created, either from the answer file or after OOBE

### Set up a custom wallpaper

**Script language**: PowerShell

Place the wallpaper in any path inside the Windows image. Then, replace `<path to your wallpaper here>` with the actual path to your wallpaper starting from the mount directory of the Windows image. For example:

| Path in mount directory | Actual Path |
|:-----------------------:|:-----------:|
| `C:\mount\wallpaper.jpg` | `$env:SYSTEMDRIVE\wallpaper.jpg` |
| `C:\mount\Pictures\wallpaper.png` | `$env:SYSTEMDRIVE\Pictures\wallpaper.png` |

If the image file does not exist in the target image and continue with the script, you will see a black desktop background.

### Update Microsoft Store apps

**Script language**: Batch

No settings available.

### Disable Second Chance OOBE

**Script language**: Batch

No settings available.

### Disable Windows Notification Sources

**Script language**: Batch

By default, the script will disable the following notification sources:

- Suggested
- Startup App Notification
- OneDrive
- Microsoft Account Health
- Copilot (AppX package)

These entries will be added to list of notification sources, in Settings -> System -> Notifications. To add more entries to the list, do the following:

```batch
FOR %%a IN (Windows.SystemToast.Suggested ... Windows.SystemToast.AccountHealth <your source here>) DO (
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\%%a" /f
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\%%a" /v Enabled /t REG_DWORD /d 0 /f
)
```

Notes for your source:

- If your source contains spaces, surround it with quotes

### Change History

- DISMTools 0.7.2 Preview 3:
    - Added:
        - Configure Git folders for File Explorer
    - Modified:
        - Added name and description fields to starter scripts for script browser
- DISMTools 0.7.2 Preview 2:
    - Added:
        - Verbose Status Messages
    - Modified:
        - Disable Windows Notification Sources: added Copilot notifications to blocklist
        - Set Quick Machine Recovery Settings: added value checking
- DISMTools 0.7.1 Preview 4:
    - Added:
        - Disable Windows Notification Sources
        - Disable Second Chance OOBE
        - Set OEM Information
        - Set Registered Owner and Organization
        - Set Quick Machine Recovery Settings
    - Modified:
        - Invoke WinUtil Configuration: reduced ping count to server
- DISMTools 0.7.1 Preview 3:
    - Added:
        - Skip OOBE First Logon Animation
        - Personalize User Environment
- DISMTools 0.7.1 Preview 2:
    - Added:
        - Set up a custom wallpaper
        - Update Microsoft Store apps
        - Invoke WinUtil Configuration

## Acknowledgements

Special thanks to Christoph Schneegans for creating the library that makes this creator possible.