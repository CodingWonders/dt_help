# Administrar árboles del registro de la imagen

<p align="center">
	<img src="/res/img_tasks/tools/regcpl/regcpl.png" />
</p>

El panel de control del registro de imagen te permite realizar cambios en el registro de la imagen o instalación offline que gestionas, de forma rápida y sencilla.

*Esta herramienta está disponible en DISMTools 0.6 y posteriores.*

## Uso

Puedes cargar y descargar árboles del conjunto predeterminado (`SOFTWARE`, `SYSTEM`, `DEFAULT` y `NTUSER.DAT`) o cualquier árbol de la imagen con un clic. Estas árboles se encuentran en `<Image Path>\Windows\system32\config`.

Tras cargar un árbol, puedes abrir el editor del registro apuntando a la árbol montada con otro clic.

### Cargar árboles adicionales

Si deseas cargar un árbol distinta del conjunto mencionado, puedes usar los controles en la sección "Cargar árbol personalizado". Con tres botones puedes cargar, abrir y descargar la árbol especificada.

Esta árbol se monta en la siguiente ubicación: `HKEY_LOCAL_MACHINE\z<nombre de la árbol>`

### Cerrar el panel de control

Cuando termines de modificar el registro de la imagen, no tienes que preocuparte por árboles cargadas al desmontar la imagen. Al cerrar este panel, todas los árboles cargadas se descargan automáticamente.

Este panel debe cerrarse antes de poder cerrar el programa, realizar operaciones con la imagen de Windows o cargar proyectos o modos.