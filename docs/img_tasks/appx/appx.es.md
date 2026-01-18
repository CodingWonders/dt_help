# Visión general de paquetes AppX

Con [Windows 8](https://en.wikipedia.org/wiki/Windows_8), Microsoft introdujo un nuevo tipo de aplicaciones (Metro-style) que siguen las directrices de la interfaz. Estas aplicaciones se empaquetan en formato AppX y pueden desplegarse con DISM o con los cmdlets de PowerShell del módulo `Appx`.

DISMTools 0.2 incorporó el servicio de paquetes AppX, permitiendo añadir y eliminar estas aplicaciones en imágenes de Windows y/o instalaciones en línea.

## Dentro de un paquete AppX

**NOTA:** esta información se basa en el empaquetado MSIX, aunque también aplica a AppX. Una visión general de MSIX está disponible [aquí](https://learn.microsoft.com/es-es/windows/msix/overview). Aquí nos centramos en aspectos técnicos relevantes para DISMTools.

Esta es la estructura general de un paquete AppX:

<p align="center">
	<img src="https://learn.microsoft.com/es-es/windows/msix/package/images/msixpackage.png" />
	<p align="center"><i>Fuente: <a href="https://microsoft.com">Microsoft</a></i></p>
</p>

La ubicación de algunos archivos varía según el **formato**:

- Los paquetes `.appx` y `.msix` contienen el manifiesto en la raíz como `AppxManifest.xml`.

<p align="center">
	<img src="/res/img_tasks/appx/appxmanifest.png" />
</p>

- Los paquetes `.appxbundle` y `.msixbundle` almacenan el manifiesto como `AppxBundleManifest.xml` dentro del directorio `AppxMetadata`.

<p align="center">
	<img src="/res/img_tasks/appx/appxbundlemanifest.png" />
</p>

El manifiesto **proporciona información sobre la aplicación**: nombre, editor, versión y, lo más importante, sus dependencias.

**NOTA:** los paquetes `.eappx` o `.emsix` no pueden abrirse ni desplegarse mediante DISM; deben instalarse con `Add-AppxPackage`.

Veamos un manifiesto (ejemplo de Rayman Jungle Run):

<p align="center">
	<img src="/res/img_tasks/appx/inside_manifest.png" />
</p>

Si no se lee bien, aquí está en código:

```xml
<Identity Name="UbisoftEntertainment.RaymanJungleRun" Publisher="CN=C6D89DF1-FB66-4AAD-9100-AD9BE1186BE1" Version="1.2.0.88" ProcessorArchitecture="x86" />
```

Esta es la información que muestra DISMTools al añadir paquetes AppX:

<p align="center">
	<img style="height: 75px" src="/res/img_tasks/appx/app_info.png" />
</p>

La línea XML anterior puede estar en la línea 3 del manifiesto (o en la línea 10 si hay un comentario al inicio).

¿Cómo detecta DISMTools el logo de la tienda? Usando el manifiesto: tras la línea de identidad aparece `<Properties>` con el `DisplayName`, el nombre del editor y la ubicación del logo. DISMTools extrae ese recurso si está disponible; en caso contrario mostrará un icono genérico.

<p align="center">
	<img style="height: 486px" src="/res/img_tasks/appx/logoasset.png" />
</p>

En `.appxbundle` y `.msixbundle` el logo puede estar en un paquete AppX anidado; DISMTools extrae el recurso desde la ubicación correspondiente.

Con el logo extraído, DISMTools lo copia a una caché de logos para evitar extracciones repetidas.

## Archivos App Installer

Los archivos App Installer son XML que declaran la URL de descarga del paquete principal (habitualmente un bundle). Nos interesa la sección `<MainBundle>`, que define nombre, editor, versión y la URL de descarga, por ejemplo:

```xml
<MainBundle Name="Microsoft.WinDbg" Version="1.2306.12001.0" Publisher="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" Uri="https://windbg.download.prss.microsoft.com/dbazure/prod/1-2306-12001-0/windbg.msixbundle" />
```

La propiedad `Uri` es la que importa: DISMTools 0.3.2+ lee estos archivos, detecta la URL y descarga el paquete.

<p align="center">
	<img src="/res/img_tasks/appx/appinstaller_down.png" />
</p>

Referencia de App Installer: https://learn.microsoft.com/es-es/uwp/schemas/appinstallerschema/schema-root

## Tareas disponibles

- [Añadir paquetes AppX aprovisionados](./add_provisionedappxpackage.md)
- [Obtener información de paquetes AppX](../info/appxpkg_info.md)
- [Eliminar paquetes AppX aprovisionados](./remove_provisionedappxpackage.md)

<p align="center">
	<img src="/res/img_tasks/appx/appx.png" />
</p>