# Eliminar imágenes de volumen

<p align="center">
	<img src="/res/img_tasks/mgmt/delete_image.png" />
</p>

Con DISMTools puedes eliminar índices de una imagen de Windows que no necesites y centrarte en los que te interesan.

## Uso

1. Especifica la imagen fuente de la que eliminar imágenes de volumen. Debe tener más de un índice. También puedes usar la imagen montada si tienes un proyecto con una imagen cargada
2. Especifica los índices a eliminar en la lista del lado izquierdo. Al cambiar los elementos seleccionados en esta lista, otra lista a la derecha se actualizará para mostrar los índices que permanecerán

Ten en cuenta que, si la imagen está montada, se desmontará **descartando cambios**, así que asegúrate de haber guardado todo lo necesario.

## Opciones

- Puedes verificar la integridad de la imagen antes de proceder

## Observaciones

Aunque esto simplifica la imagen de Windows para que contenga solo los índices deseados, no reduce el tamaño del archivo de imagen. Si quieres reducir el tamaño, considera [exportar la imagen](./export_image.md).