# Dividir una imagen en archivos SWM

<p align="center">
	<img src="/res/img_tasks/mgmt/split_image.png" />
</p>

Con DISMTools puedes dividir fácilmente un archivo WIM en archivos SWM. Dividir una imagen ofrece ventajas, como poder almacenarla en CDs.

## Usage

1. Especifica la imagen origen a dividir. Debe ser un archivo WIM.
2. Especifica el tamaño máximo de los archivos resultantes. Si la imagen contiene un archivo grande que no cabe en el límite, un archivo dividido puede ser más grande que el resto.
3. Especifica la carpeta destino para los archivos SWM. Al seleccionar la ruta, DISMTools establece un patrón de nombre basado en el nombre del archivo fuente seguido de un guion bajo (`_`), lo que facilita su referencia en otras operaciones.

## Options

- Opcionalmente, puedes comprobar la integridad de la imagen fuente antes de proceder con la operación de división.

## Related content

- [Fusionar archivos SWM](../tools/swm2wim.md)