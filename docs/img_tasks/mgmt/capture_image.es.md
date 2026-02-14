# Capturar una imagen

<p align="center">
	<img src="/res/img_tasks/mgmt/capture_image.png" />
</p>

Con DISMTools puedes capturar fácilmente un directorio de instalación de Windows en un archivo de imagen.

## Uso

1. Especifica el directorio fuente a capturar y el archivo de imagen donde guardar el contenido
2. Especifica un nombre para la nueva imagen de Windows y, si lo deseas, una descripción

## Opciones

Las opciones disponibles al capturar la imagen siguen las guías de línea de comandos; revisa [aquí](https://learn.microsoft.com/es-es/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14?view=windows-11#capture-image) para más detalles.

## Listas de configuración

Esta tarea permite especificar listas de configuración para excluir ciertos archivos. Es útil para evitar errores al capturar la imagen (por ejemplo, carpetas OneDrive de usuarios) o para evitar que la imagen resultante sea excesivamente grande.

Consulta la utilidad [DISM Configuration List Editor](../tools/configlisteditor.md) y la [referencia de listas de configuración](https://learn.microsoft.com/es-es/windows-hardware/manufacture/desktop/dism-configuration-list-and-wimscriptini-files-winnext?view=windows-11) para más información.