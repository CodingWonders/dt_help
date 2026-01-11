# Añadir directorios montados a una imagen de Windows

<p align="center">
	<img src="/res/img_tasks/mgmt/append_image.png" />
</p>

Si has realizado cambios en una imagen de Windows y quieres guardarlos en un nuevo índice del archivo de imagen, puedes hacerlo fácilmente con este diálogo.

<i>Esta acción está disponible en DISMTools 0.5 y posteriores.</i>

## Uso

Este procedimiento es similar al que seguirías al [capturar un directorio o una unidad a una imagen](./capture_image.md).

1. Especifica el directorio fuente que quieres añadir y el archivo de imagen al que agregar el contenido
2. Especifica un nombre para la nueva imagen de Windows y, si lo deseas, una descripción

## Opciones

Las opciones disponibles al aplicar la imagen siguen las guías de línea de comandos; puedes consultarlas [aquí](https://learn.microsoft.com/es-es/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14?view=windows-11#append-image).

## Listas de configuración

Esta tarea permite especificar listas de configuración para excluir ciertos archivos. Es útil para evitar errores al anexar la imagen (por ejemplo, con carpetas de OneDrive de usuarios) o para evitar que la imagen resultante sea excesivamente grande.

Consulta la utilidad [DISM Configuration List Editor](../tools/configlisteditor.md) y la [referencia de listas de configuración](https://learn.microsoft.com/es-es/windows-hardware/manufacture/desktop/dism-configuration-list-and-wimscriptini-files-winnext?view=windows-11) para más información.