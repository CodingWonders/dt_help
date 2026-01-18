# Desmontar una imagen

<p align="center">
	<img src="/res/img_tasks/mgmt/unmount_image.png" />
</p>

Cuando termines de trabajar con una imagen de Windows, puedes desmontarla fácilmente.

## Uso

1. Si quieres desmontar la imagen cargada en un proyecto, deja la primera opción del directorio de montaje. Si no, selecciona la segunda opción y especifica el directorio de montaje que contiene la imagen a desmontar.
2. Especifica la operación de desmontaje: puedes guardar los cambios y desmontar la imagen, o descartar los cambios y desmontar la imagen.

### Seleccionar una imagen montada

Si no conoces el directorio de montaje de la imagen, haz clic en "Escoger..." y verás un selector desde el que puedes elegir la imagen a desmontar:

<p align="center">
	<img src="/res/img_tasks/mgmt/unmount_image_picker.png" />
</p>

## Opciones de la operación de commit

Estas opciones se aplican únicamente a la operación de commit.

- Si quieres comprobar la integridad de la imagen antes de proceder al desmontaje, marca "Comprobar integridad de la imagen".
- Si deseas aislar tus cambios del resto de índices creando uno nuevo, marca "Anexar cambios a otro índice".

## La operación de desmontaje y las imágenes de solo lectura

Si desmontas una imagen montada en modo solo lectura, no verás este diálogo y la imagen se desmontará directamente descartando cambios.