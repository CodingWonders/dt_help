# Montar una imagen

<p align="center">
	<img src="/res/getting_started/mount_an_image.png" />
</p>

Una tarea esencial es montar una imagen de Windows; DISMTools te ayuda a realizar este proceso.

## Uso

1. Especifica el archivo de imagen fuente a montar. Puede ser un archivo WIM, VHD, ESD o SWM. Ten en cuenta que los archivos SWM y ESD requieren procesamiento previo antes de montarlos
2. Especifica el índice a montar en el grupo de Opciones. Puedes ver todos los índices de la imagen en la lista a la derecha
3. Especifica el directorio donde montar la imagen. Si quieres usar el directorio de montaje proporcionado por el proyecto, haz clic en "Use defaults"

## Procesamiento de SWM y ESD

Si indicas un archivo SWM o ESD al montar una imagen, DISMTools lo detectará y realizará lo siguiente:

- Si la imagen fuente es un archivo SWM, el programa abrirá el diálogo del [fusionador de SWM](../tools/swm2wim.md) y rellenará los campos necesarios
- Si la imagen fuente es un archivo ESD, el programa abrirá el diálogo de [conversión de imagen](../tools/wim2esd.md) y completará los campos necesarios

En ambos casos puedes pulsar OK para iniciar el proceso requerido o revisar las opciones. Tras ejecutar el proceso, este diálogo se mostrará de nuevo con el campo de imagen fuente rellenado.