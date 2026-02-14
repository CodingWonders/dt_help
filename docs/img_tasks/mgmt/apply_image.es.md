# Aplicar una imagen

<p align="center">
	<img src="/res/img_tasks/mgmt/apply_image.png" />
</p>

Con DISMTools puedes aplicar fácilmente imágenes de Windows a un directorio o una unidad.

## Uso

1. Especifica el archivo de imagen fuente a aplicar. Puede ser un archivo WIM, SWM o ESD. Si has cargado un proyecto con una imagen ya montada, también puedes usarla
2. Especifica el índice a aplicar en el grupo de Opciones seleccionando una entrada en el cuadro combinado "Image index:"
3. Especifica el directorio o la unidad donde aplicar la imagen. Para operaciones de aplicación normales, basta con usar la opción de directorio; las aplicaciones a unidad están pensadas para archivos Full Flash Utility (FFU)

## Opciones

Las opciones disponibles al aplicar la imagen siguen las guías de línea de comandos; puedes consultarlas [aquí](https://learn.microsoft.com/es-es/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14?view=windows-11#apply-image).

## Patrones de nombre para SWM

Al especificar un archivo SWM, puedes indicar el patrón de nombres a usar al aplicar la imagen.

El programa ejecutará automáticamente las operaciones necesarias para que puedas aplicarla con facilidad. No obstante, si quieres revisar dichas operaciones, sigue leyendo esta sección.

Para referenciar archivos SWM, marca la casilla "Reference SWM files" y especifica el patrón de nombres de los archivos SWM. Puedes usar el nombre del archivo de imagen como patrón o especificar uno manualmente. Haz clic en el botón "Scan pattern" para probar el patrón; si se encuentran archivos, aparecerán entradas en la lista inferior.

<p align="center">
	<img src="/res/img_tasks/mgmt/apply_image_swm_pattern.png" />
</p>