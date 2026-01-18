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
    <img src="/res/img_tasks/unattend/unatt_creator/unattendgen_notify.png" />
</p>

También puedes usar el generador de forma independiente; consulta su repositorio [aquí](https://github.com/CodingWonders/UnattendGen)

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


Cuando seleccionas el adaptador de red de la lista, todos los demás campos (PDS, direcciones de servidor DNS) se rellenarán automáticamente dada la configuración actual del adaptador de red. Sin embargo, aún puedes cambiar estos campos si necesitas usar valores diferentes.

Para direcciones de servidor DNS, necesitas poner una dirección por línea. Si quieres verificar si la sintaxis de las direcciones es correcta, haz clic en **Verificar Sintaxis de Dirección DNS**.

Un ejemplo de información rellenada se muestra a continuación:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/dsw/dswizard_dnsinfo.png" />
</p>

Después de configurar la información del servidor DNS, necesitarás configurar información relacionada con el usuario inicial con el que el dispositivo objetivo se unirá al dominio.

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/dsw/dswizard_dsinfo.png" />
</p>

- Si el dispositivo es parte de un dominio, el nombre del dominio se rellenará automáticamente y podrás elegir usuarios de unidades organizativas disponibles (OU) en el dominio. Sin embargo, aún puedes especificar información diferente manualmente.
- Si el dispositivo no es parte de un dominio, necesitarás especificar toda la información manualmente.

Para elegir un usuario del dominio:

1. Selecciona la OU de la lista desplegable. Después de seleccionar la OU, la lista de usuarios en la OU se poblará automáticamente
2. Selecciona el usuario de la lista

Tanto los nombres de cuenta UPN como SAM se rellenarán automáticamente. Al especificar esta información manualmente, necesitarás especificar la parte de usuario del UPN. Por ejemplo, `johndoe`.

Finalmente, especifica la contraseña del usuario. Dado que DISMTools **NO** verificará si la contraseña es correcta, asegúrate de escribirla correctamente.

Has terminado el Asistente de Servicios de Dominio. Cuando llegues a la pantalla de componentes, verás que los componentes y configuraciones necesarios se han añadido a tu archivo de respuesta.

## Referencia de Scripts Iniciales

Actualmente, hay 12 scripts iniciales disponibles:

| Nombre del Script | Etapa | Descripción |
|:------------------|:-----:|:------------|
| Cerrar Animación de Primer Inicio de Sesión | Durante Configuración del Sistema | Este script cierra el proceso de Animación de Primer Inicio de Sesión y permite que un sistema llegue al escritorio más pronto. Funciona en Windows 10 y 11. |
| Habilitar Mensajes de Estado Detallados | Durante Configuración del Sistema | Este script habilita los mensajes de estado detallados que están habilitados por defecto en Windows Server. Esto puede ayudar a reportar el estado de inicio/parada de servicios. |
| Establecer Información OEM | Durante Configuración del Sistema | Este script configura ajustes OEM como el fabricante o el modelo para personalizar aún más una instalación de Windows. |
| Establecer Ajustes de Recuperación Rápida de Máquina | Durante Configuración del Sistema | Este script configura los ajustes de Recuperación Rápida de Máquina del sistema objetivo en Windows 11 24H2 y posteriores. |
| Configurar carpetas para integración de Git | Cuando el primer usuario inicia sesión | Este script configura una carpeta, o un conjunto de carpetas, para integración de control de fuente Git en el Explorador de Archivos. Git y las últimas versiones de componentes del sistema necesitan estar instalados en el sistema objetivo para aprovechar todas las características. |
| Invocar Configuración WinUtil | Cuando el primer usuario inicia sesión | Este script configura un sistema objetivo usando un archivo de configuración exportado de la Utilidad de Windows. |
| Establecer Ajustes de Personalización | Cuando el primer usuario inicia sesión | Este script configura ajustes relacionados con modos de color y colores de acento en el entorno de usuario del sistema objetivo. |
| Establecer Propietario Registrado y Organización | Cuando el primer usuario inicia sesión | Este script configura el propietario registrado y la organización del sistema objetivo. |
| Configurar un fondo de pantalla personalizado | Cuando el primer usuario inicia sesión | Este script configura un fondo de pantalla en el entorno del sistema objetivo. |
| Actualizar aplicaciones de Microsoft Store | Cuando el primer usuario inicia sesión | Este script invoca una actualización de todas las aplicaciones de Microsoft Store. Se requiere una red para que funcione. |
| Deshabilitar OOBE de Segunda Oportunidad | Cuando los usuarios inician sesión por primera vez | Este script deshabilita la Experiencia Fuera de Caja de Segunda Oportunidad en el sistema objetivo. Funciona en Windows 10 y 11. |
| Deshabilitar Fuentes de Notificación de Windows | Cuando los usuarios inician sesión por primera vez | Este script deshabilita fuentes de notificación especificadas por el usuario en el sistema objetivo. |

En DISMTools 0.7.2, puedes ver más información sobre estos scripts iniciales más fácilmente usando el nuevo **Navegador de Scripts Iniciales**:

<p align="center">
    <img src="/res/img_tasks/unattend/unatt_creator/unatt_script_browser.png" />
</p>

Algunos scripts permiten configurar ajustes después de importarlos:

### Cerrar Animación de Primer Inicio de Sesión

**Lenguaje del script**: Batch

No hay ajustes disponibles.

### Establecer Información OEM

**Lenguaje del script**: Batch

| Opción | ¿Requerida? | Descripción |
|:------:|:-----------:|:------------|
| `OEM_Manufacturer` | Sí | El fabricante del sistema |
| `OEM_Model` | No | El modelo del sistema |
| `OEM_SupportURL` | No | La URL de soporte del sistema |
| `OEM_SupportPhone` | No | El número de teléfono de soporte del sistema |
| `OEM_SupportHours` | No | Las horas de soporte del sistema |
| `OEM_Logo` | No | La ruta al logo OEM del sistema. Debe ser un archivo BMP |

### Establecer Ajustes de Recuperación Rápida de Máquina

**Lenguaje del script**: Batch

| Opción | ¿Requerida? | Descripción |
|:------:|:-----------:|:------------|
| `QMR_CloudRemediation` | Sí | Habilita (1) o deshabilita (0) la remediación en la nube para QMR |
| `QMR_AutoRemediation` | Sí | Habilita (1) o deshabilita (0) la remediación automática para QMR |
| `QMR_NextCheckMinutes` | Sí | Establece el número de minutos antes de la siguiente verificación QMR |
| `QMR_NextRebootHours` | Sí | Establece el número de horas antes del siguiente reinicio |
| `QMR_Headless` | Sí | Habilita (1) o deshabilita (0) el modo sin cabeza para QMR |

**Notas:**

- Las opciones 3 y 4 solo se aplicarán si la remediación automática está habilitada
- La Remediación en la Nube permite al sistema escanear soluciones en el lanzamiento de WinRE
- La Remediación Automática permite al sistema continuar escaneando soluciones si el primer intento falla

### Configurar carpetas para integración de Git

**Lenguaje del script**: PowerShell

Para añadir nuevas entradas a la lista de carpetas para las que mostrar información VCS, añádelas al siguiente array, como esto:

```powershell
$gitFolders = @(
	"$env:SYSTEMDRIVE\dev\repo1",
    "$env:SYSTEMDRIVE\dev\repo2"
)
```

Ten en cuenta que, para que la vista de Git se muestre, el sistema necesita la aplicación *Configuración Avanzada de Windows*.

### Invocar Configuración WinUtil

**Lenguaje del script**: PowerShell

Necesitas añadir tu archivo de configuración a la raíz del directorio de montaje de la imagen, como `winutil-config.json`. Puedes aprender más sobre archivos de configuración [aquí](https://winutil.christitus.com/userguide/automation/).

### Establecer Ajustes de Personalización

**Lenguaje del script**: PowerShell

| Opción | Descripción |
|:------:|:------------|
| `$lightThemeSystem` | Si 0, establece el tema del sistema en modo oscuro. Si 1, lo establece en modo claro |
| `$lightThemeApps` | Si 0, establece el tema de las aplicaciones en modo oscuro. Si 1, lo establece en modo claro |
| `$accentColorOnStart` | Si 0, deshabilita el color de acento en Inicio, barra de tareas y centro de acción. Si 1, lo habilita |
| `$enableTransparency` | Si 0, deshabilita efectos de transparencia (Acrylic/Mica). Si 1, los habilita |
| `$htmlAccentColor` | Establece el color de acento del sistema. Debe ser un valor hex |

### Establecer Propietario Registrado y Organización

**Lenguaje del script**: Batch

| Opción | ¿Requerida? | Descripción |
|:------:|:-----------:|:------------|
| `AutoUserInfo` | Sí | Determina si establecer el propietario registrado como el nombre del usuario actualmente firmado (0 o 1) |
| `RegisteredUser` | Sí | El propietario registrado del sistema |
| `RegisteredOrg` | No | La organización registrada del sistema |

**Notas:**

- Si `AutoUserInfo` se establece en 1 y se usa una cuenta Microsoft, el propietario registrado se establecerá en las primeras 5 letras de la dirección de email
- Este script no debería usarse cuando los usuarios inician sesión por primera vez porque la información del usuario cambiará cada vez que un nuevo usuario inicie sesión por primera vez si se cumplen las siguientes condiciones:
    - `AutoUserInfo` se establece en 1
    - Se crea más de una cuenta de usuario, ya sea desde el archivo de respuesta o después de OOBE

### Configurar un fondo de pantalla personalizado

**Lenguaje del script**: PowerShell

Coloca el fondo de pantalla en cualquier ruta dentro de la imagen de Windows. Luego, reemplaza `<path to your wallpaper here>` con la ruta actual a tu fondo de pantalla empezando desde el directorio de montaje de la imagen de Windows. Por ejemplo:

| Ruta en directorio de montaje | Ruta Actual |
|:-----------------------------:|:-----------:|
| `C:\mount\wallpaper.jpg` | `$env:SYSTEMDRIVE\wallpaper.jpg` |
| `C:\mount\Pictures\wallpaper.png` | `$env:SYSTEMDRIVE\Pictures\wallpaper.png` |

Si el archivo de imagen no existe en la imagen objetivo y continúas con el script, verás un fondo de escritorio negro.

### Actualizar aplicaciones de Microsoft Store

**Lenguaje del script**: Batch

No hay ajustes disponibles.

### Deshabilitar OOBE de Segunda Oportunidad

**Lenguaje del script**: Batch

No hay ajustes disponibles.

### Deshabilitar Fuentes de Notificación de Windows

**Lenguaje del script**: Batch

Por defecto, el script deshabilitará las siguientes fuentes de notificación:

- Sugerido
- Notificación de Aplicación de Inicio
- OneDrive
- Salud de Cuenta Microsoft
- Copilot (paquete AppX)

Estas entradas se añadirán a la lista de fuentes de notificación, en Configuración -> Sistema -> Notificaciones. Para añadir más entradas a la lista, haz lo siguiente:

```batch
FOR %%a IN (Windows.SystemToast.Suggested ... Windows.SystemToast.AccountHealth <tu fuente aquí>) DO (
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\%%a" /f
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\%%a" /v Enabled /t REG_DWORD /d 0 /f
)
```

Notas para tu fuente:

- Si tu fuente contiene espacios, enciérrala entre comillas

### Historial de Cambios

- DISMTools 0.7.2 Preview 3:
    - Añadido:
        - Configurar carpetas Git para Explorador de Archivos
    - Modificado:
        - Añadidos campos de nombre y descripción a scripts iniciales para navegador de scripts
- DISMTools 0.7.2 Preview 2:
    - Añadido:
        - Mensajes de Estado Detallados
    - Modificado:
        - Deshabilitar Fuentes de Notificación de Windows: añadidas notificaciones Copilot a lista negra
        - Establecer Ajustes de Recuperación Rápida de Máquina: añadido verificación de valor
- DISMTools 0.7.1 Preview 4:
    - Añadido:
        - Deshabilitar Fuentes de Notificación de Windows
        - Deshabilitar OOBE de Segunda Oportunidad
        - Establecer Información OEM
        - Establecer Propietario Registrado y Organización
        - Establecer Ajustes de Recuperación Rápida de Máquina
    - Modificado:
        - Invocar Configuración WinUtil: reducido conteo de ping al servidor
- DISMTools 0.7.1 Preview 3:
    - Añadido:
        - Saltar Animación de Primer Inicio de Sesión OOBE
        - Personalizar Entorno de Usuario
- DISMTools 0.7.1 Preview 2:
    - Añadido:
        - Configurar un fondo de pantalla personalizado
        - Actualizar aplicaciones de Microsoft Store
        - Invocar Configuración WinUtil

## Agradecimientos

Agradecimientos especiales a Christoph Schneegans por crear la biblioteca que hace posible este creador.