# Añadir paquetes AppX aprovisionados

<p align="center">
<img src="/res/img_tasks/appx/add_provisionedappxpackage.png" />
</p>

Con DISMTools puedes añadir paquetes AppX aprovisionados mediante una interfaz intuitiva. Esta acción se encuentra en Comandos > App packages > Add provisioned app package...

## Compatibilidad del sistema operativo destino

Esta acción es compatible con las siguientes plataformas:

| Plataforma | Compatible? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ❌ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

**NOTA:** si añades paquetes AppX aprovisionados a una instalación en línea, puede ser necesario habilitar la carga lateral (sideloading) de aplicaciones; de lo contrario podrías obtener el código de error `0xc1570113`. Más información [aquí](https://learn.microsoft.com/fr-fr/windows-hardware/manufacture/desktop/sideload-apps-with-dism-s14?view=windows-11#configure-pcs-for-developing-windows-apps).

<i>Esta acción está soportada en DISMTools 0.2 y posteriores</i>

## Uso

- Añade cualquier archivo de aplicación en formato `.appx`, `.msix`, `.appxbundle` o `.msixbundle` a la **lista de paquetes AppX**. Esto puede hacerse con los botones en la parte inferior del diálogo o arrastrando los archivos desde una aplicación ejecutada con privilegios elevados.
- Si la aplicación tiene dependencias, añade estas a la **lista de dependencias AppX**, usando los botones o arrastrando los archivos desde una aplicación elevada.

### Soporte para App Installer

DISMTools 0.3.2 amplía la capacidad de añadir AppX mediante el soporte de archivos App Installer. Especifica un archivo `.appinstaller` o arrástralo a la lista de paquetes y el programa se encargará de descargar el paquete.

Más información sobre App Installer en: ./appx.md#app-installer-files

### Soporte para aplicaciones cifradas

DISMTools 0.5 permite añadir paquetes de aplicaciones cifradas (`.eappx`, `.emsix`, `.eappxbundle` y `.emsixbundle`) a **instalaciones activas**. Añádelos igual que las aplicaciones normales.

Para aplicaciones cifradas estándar (no bundles), puedes ver información básica gracias a una versión modificada de [UnpEax](https://github.com/dalion619/UnpEax):

<p align="center">
<img src="/res/img_tasks/appx/eappx_support.png" />
</p>

*El soporte para bundles de aplicaciones cifradas llegará en futuras versiones.*

Es posible que veas todas las opciones deshabilitadas: el programa utiliza comandos de PowerShell para añadir estas aplicaciones, porque no pueden añadirse con DISM.

## Opciones

- Puede requerirse un **archivo de licencia** para instalar una aplicación; especifícalo en el campo correspondiente o selecciona "Omitir licencia".
- Opcionalmente, puedes **proveer un archivo de datos personalizado**.
- Si deseas aprovisionar aplicaciones en ciertas regiones, especifícalas separadas por punto y coma (;), usando los códigos [ISO 3166-1 Alpha 2](https://en.wikipedia.org/wiki/ISO_3166-1) o [Alpha 3](https://en.wikipedia.org/wiki/ISO_3166-1).

**NOTA:** especificar una región requiere DISM para Windows 10 y/o una imagen de Windows 10 o posterior.

- **Nuevo en DISMTools 0.5.1 y posteriores:** Puedes configurar **preferencias de paquetes stub** para tus aplicaciones. Piensa en ellos como paquetes temporales que descargan la versión completa. Marcar una aplicación para usar el paquete completo instalará explícitamente la versión completa.

**NOTA:** solo puedes configurar preferencias de stub si se cumplen los siguientes criterios:

I. La versión de DISM y la imagen Windows objetivo son Windows 10 o posteriores

II. La aplicación contiene paquetes stub

- Opcionalmente, puedes **confirmar (commit) la imagen después de añadir los paquetes AppX seleccionados**.

## Preguntas frecuentes

**P: ¿Dónde puedo descargar paquetes de aplicaciones?**

**R:** Puedes usar el [Microsoft Store Generation Project](https://store.rg-adguard.net/) y la versión web de la [Microsoft Store](https://apps.microsoft.com/store/apps). Pasos:

1. Abre el sitio Microsoft Apps y busca la aplicación
2. Copia el enlace de la aplicación
3. Pega el enlace en el sitio del proyecto de generación
4. Si el servidor devuelve resultados, descarga la versión deseada del paquete AppX **y sus dependencias**

<p align="center">
<img src="/res/img_tasks/appx/microsoft_apps.png" />
</p>

<p align="center">
<img src="/res/img_tasks/appx/store_rg-adguard.png" />
</p>

Si el navegador advierte sobre la seguridad de los archivos, confirma la descarga si confías en la fuente.

**P: Instalé una aplicación en una instalación online y no funciona. ¿Por qué?**

**R:** Puede que la aplicación no esté registrada correctamente. Usa el Registro y PowerShell:

1. Abre el Editor del Registro y ve a `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications` y copia el nombre del paquete
2. Abre PowerShell como administrador y ejecuta:

```powershell
Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\*<PackageName>*\' -Name "Path" | Add-AppxPackage -DisableDevelopmentMode -Register
```

(donde `*<PackageName>*` es el nombre del paquete a registrar)

- Si el comando muestra `%SYSTEMDRIVE%` en el valor `Path`, reemplázalo por la unidad de arranque:

```powershell
(Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\*<PackageName>*\' -Name "Path").Replace('%SYSTEMDRIVE%', 'C:').Trim() | Add-AppxPackage -DisableDevelopmentMode -Register
```

(sustituye "C:" por la unidad de arranque cuando corresponda)

- Si falta una dependencia, descárgala, añádela con DISM y repite el proceso.

La aplicación debería quedar registrada. Nota: no funcionará si estás en la cuenta de Administrador integrada; crea un usuario normal en ese caso.

## Contenido relacionado

- [Ayuda de línea de comandos](https://example.com)
