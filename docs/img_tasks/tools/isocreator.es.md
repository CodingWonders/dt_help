# Probar tus imágenes de Windows con las herramientas de creación de ISO

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/isocreator.png" />
</p>

Si quieres probar los cambios realizados en una imagen de Windows, puedes hacerlo fácilmente con las herramientas de creación de ISO, que incluyen el **creador de ISO** y el **PE Helper (Preinstallation Environment Helper)**.

Necesitarás el Windows Assessment and Deployment Kit (ADK), que puedes descargar usando el enlace inferior izquierdo. En DISMTools 0.7 y posteriores puedes permitir que el programa descargue e instale el ADK automáticamente. La versión instalada depende de la versión de DISMTools:

| DISMTools Version | Versión del ADK a instalar | Enlaces de descarga manual |
|-------------------|----------------------------|---------------------------|
| 0.7.2+ | ADK versión 10.1.28000.1 | <ul><li>ADK: <a href="https://download.microsoft.com/download/615540bc-be0b-433a-b91b-1f2b0642bb24/adk/adksetup.exe">Descargar</a></li><li>Complemento Windows PE: <a href="https://download.microsoft.com/download/2472e9a0-7c74-4ffd-a3e4-27ed1fa30d30/adkwinpeaddons/adkwinpesetup.exe">Descargar</a></li></ul> |
| 0.7-0.7.2 Preview 4 | ADK versión 10.1.26100.2454 | <ul><li>ADK: <a href="https://download.microsoft.com/download/2/d/9/2d9c8902-3fcd-48a6-a22a-432b08bed61e/ADK/adksetup.exe">Descargar</a></li><li>Complemento Windows PE: <a href="https://download.microsoft.com/download/5/5/6/556e01ec-9d78-417d-b1e1-d83a2eff20bc/ADKWinPEAddons/adkwinpesetup.exe">Descargar</a></li></ul> |

*Esta herramienta está disponible en DISMTools 0.5 y posteriores.*

En DISMTools 0.7 y posteriores, cada una de las secciones se ha dividido en páginas independientes. Sigue estos enlaces en el siguiente orden:

1. [Crear un archivo ISO](./isocreator/isocreate.md)
2. Instalar sistemas operativos:
    - [Localmente](./isocreator/install/localinstall.md)
    - [Usando redes](./isocreator/install/netinst/pxehelpers.md)

Herramientas adicionales:

- [Módulo de instalación de controladores](./isocreator/exttools/dim.md)
- [Suite de extensibilidad](./isocreator/exttools/dtpe_es.md)