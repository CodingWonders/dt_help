# Diálogos de Información

<p align="center">
    <img src="/res/img_tasks/info/info_dlgs.png" />
</p>

Como sugieren sus nombres, los diálogos de información te permiten obtener fácilmente información específica de una imagen de Windows o instalación con interfaces poderosas y fáciles de usar.

*La acción general es compatible con DISMTools 0.3.1 y versiones posteriores.*

## Diálogos disponibles

Los siguientes diálogos te permiten obtener información específica de una imagen de Windows o instalación:

| Diálogo | Propósito | Observaciones |
|:--|:--:|:--|
| [Información de imagen](./img_info.md) | Te permite obtener la información de cualquier archivo de imagen | <p align="center">-</p> |
| [Información de paquete](./pkg_info.md) | Te permite obtener la información de paquetes instalados o paquetes que deseas añadir | <ul><li>La información de capacidades no se puede obtener en hosts Windows 8.1/Server 2012 R2</li></ul>|
| [Información de características](./feat_info.md) | Te permite obtener la información de todas las características presentes en una imagen de Windows | <p align="center">-</p> |
| [Información de paquete AppX](./appxpkg_info.md) | Te permite obtener la información de paquetes AppX instalados | <ul><li>Esta acción solo es compatible con sistemas Windows 8 y posteriores</li><li>No puedes obtener información de los paquetes AppX que deseas añadir</li></ul> |
| [Información de capacidades](./cap_info.md) | Te permite obtener la información de todas las capacidades presentes en una imagen de Windows | <ul><li>Esta acción solo es compatible con Windows 10 y posteriores</li></ul> |
| [Información de controladores](./drv_info.md) | Te permite obtener la información de controladores instalados o paquetes de controladores que deseas añadir | <ul><li>La cantidad de controladores instalados depende de la configuración de los procesos en segundo plano</li></ul> |
| [Información de Windows PE](./winpe_info.md) | Te permite obtener la información de la ruta objetivo y la cantidad de espacio de scratch en una imagen de Windows PE | <ul><li>Esta acción solo es compatible con imágenes de Windows PE</li></ul> |

## Guardando información de imagen

DISMTools 0.3.3 y versiones posteriores te permiten guardar esta información en un archivo.

<p align="center">
    <img src="/res/img_tasks/info/info_save.png" />
</p>

Esta acción generará un **informe de información de imagen**, que puedes ver en cualquier momento.

DISMTools 0.4 expande esta funcionalidad mostrando una vista previa del informe de información después de completar el proceso.

## Searching through this information

DISMTools 0.5 introduces **Search capabilities** to the information dialogs, allowing you to get the results you want more easily.

This search technology uses **linear search**, a method that is easy to implement (code-wise) and fast at returning results.

<!-- Anything is better than Windows Search though! -->

To get started, simply click on the search box text and start typing.

<p align="center">
    <img src="/res/img_tasks/info/search_example.gif" />
</p>

The following items support this functionality:

- Installed packages
- Features
- Installed AppX packages (only if the extended AppX getter script is not run)
- Capabilities
- Installed drivers

For features and capabilities, you can now use **state filters** with DISMTools 0.6.

## Looking up an item online

DISMTools 0.7.2 and later let you look up a selected item online using your preferred search engine. The following items support this functionality:

- Features
- Capabilities

<p align="center">
    <img src="/res/img_tasks/info/item_online_lookup.png" />
</p>

You can pick from 5 search engines in Options -> Image operations:

| Search Engine | Available since |
|:--|:--:|
| Google | 0.7.2 |
| Bing | 0.7.2 |
| DuckDuckGo | 0.7.2 |
| Startpage | 0.7.2 |
| Brave Search | 0.7.2 |

Artificial Intelligence (AI) overview features are disabled by default for both Google and Brave Search.

<p align="center">
    <img src="/res/img_tasks/info/online_lookup_options.png" />
</p>