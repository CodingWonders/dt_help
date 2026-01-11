# Gestor de imágenes montadas

<p align="center">
	<img src="../../res/img_tasks/tools/mimgmgr/mimgmgr.png" />
</p>

El gestor de imágenes montadas te permite administrar fácilmente las imágenes montadas. Con esta herramienta puedes realizar las siguientes tareas:

- Desmontar una imagen de Windows
- Recargar la sesión de mantenimiento/reparar el almacén de componentes
- Habilitar permisos de escritura en imágenes montadas como solo lectura
- Acceder al directorio de montaje de una imagen
- Eliminar imágenes de volumen (para imágenes con múltiples índices)
- Cargar un directorio de montaje en proyectos sin imágenes cargadas
- Obtener información del archivo de imagen
- Guardar información de la imagen
- [Crear archivos ISO](./isocreator.md)

## Operaciones

### Desmontar una imagen de Windows

Puedes desmontar una imagen de Windows guardando los cambios, descartándolos o usando más opciones; esta última abre el diálogo de desmontaje de imagen:

<p align="center">
	<img src="../../res/img_tasks/tools/mimgmgr/img_unmount.png" />
</p>

Para imágenes montadas como solo lectura, al pulsar este botón se desmontará directamente descartando cambios. Para más información, consulta la página [desmontar imagen](../mgmt/unmount_image.md).

### Recargar la sesión de mantenimiento / reparar el almacén de componentes

Según el estado de la imagen montada, el programa te permitirá realizar una u otra acción.

- Si su estado es **Needs remount**, podrás recargar la sesión de mantenimiento de la imagen montada
- Si su estado es **Invalid**, **puedes** tener la opción de reparar el almacén de componentes de la imagen montada. Esta posibilidad depende de si la imagen es reparable. Si no puede repararse, la única opción será descartarla

### Habilitar permisos de escritura

Si quieres realizar cambios en una imagen montada como solo lectura, debes **habilitar permisos de escritura**. Este proceso desmontará la imagen y la montará de nuevo con permisos de escritura. Ten en cuenta que la imagen **debe estar presente en su ubicación** y **no debe estar en un medio de solo lectura** para que el proceso tenga éxito.

### Acceder al directorio de montaje

Esto abrirá el directorio de montaje en el Explorador de archivos, permitiéndote navegar por los ficheros de la imagen de Windows. **Es similar a una instalación activa, así que no elimines archivos si no sabes para qué sirven.**

### Eliminar imágenes de volumen

Si la imagen montada contiene más de un índice, puedes eliminar imágenes de volumen fácilmente. Especifica los índices a eliminar y haz clic en OK. Para más información, consulta la página [eliminar imagen de volumen](../mgmt/delete_image.md).

### Cargar imágenes montadas

Si has abierto un proyecto sin imágenes cargadas, puedes cargar fácilmente la imagen montada que quieras en el proyecto.

## Versión de línea de comandos

DISMTools 0.3 introduce una versión en línea de comandos del gestor de imágenes montadas con la que también puedes administrar las imágenes montadas.

### Diferencias respecto a la versión GUI

- La lista de imágenes montadas no se actualiza automáticamente en la versión CLI

### Acceder a esta versión

Puedes acceder a la versión CLI del gestor de imágenes montadas desde la Consola de Comandos en el menú Tools escribiendo `mimgmgr`. Verás un resumen de las imágenes montadas:

<p align="center">
	<img src="../../res/img_tasks/tools/mimgmgr/cli/mimgmgr_defaultview.png" />
</p>

### Uso

Al cargar esta versión del gestor de imágenes montadas, debes **marcar una imagen para gestionar**. Puedes hacerlo pulsando la tecla M y seleccionando la imagen por su número. Si la lista se ha modificado en segundo plano, verás la lista actualizada.

<p align="center">
	<img src="../../res/img_tasks/tools/mimgmgr/cli/mimgmgr_mark_image.png" />
</p>

Tras marcar una imagen, podrás realizar acciones de gestión sobre ella.

<p align="center">
	<img src="../../res/img_tasks/tools/mimgmgr/cli/mimgmgr_marked_image.png" />
</p>

### Tareas

Estas son las tareas que puedes realizar con esta versión del gestor de imágenes montadas:

- Si quieres cambiar a otra imagen, puedes **marcarla** (tecla M)
- Dependiendo del estado de la imagen (tecla R):

	- Si necesita recargar la sesión de mantenimiento (`Status: NeedsRemount`), puedes **recargarla**
	- Si necesita reparar el almacén de componentes (`Status: Invalid`), puedes **repararla**
  
- Cuando hayas terminado, puedes **desmontarla** (tecla U)
- Puedes **acceder a su directorio de montaje** (tecla A)
- Si la imagen contiene múltiples índices (imágenes de volumen), puedes eliminarlos (tecla V) o cambiar a otro índice (tecla S, *DISMTools 0.3.3 y posteriores*)
- Si las imágenes fueron montadas o desmontadas por un programa externo, puedes **actualizar la lista de imágenes montadas** (tecla L)
- Si la imagen está montada con privilegios de solo lectura, puedes **habilitar permisos de escritura** (tecla E)

Luego, pulsa ENTER para ejecutar la acción.

#### Desmontar una imagen

**NOTA:** si la imagen está montada con privilegios de solo lectura, esta acción la desmontará directamente descartando cambios

<p align="center">
	<img src="../../res/img_tasks/tools/mimgmgr/cli/mimgmgr_unmount_image.png" />
</p>

En este menú:

- Puedes **confirmar los cambios de una imagen y desmontarla** (tecla C)
- Puedes **descartar los cambios de una imagen y desmontarla** (tecla D)
- Puedes **configurar opciones de desmontaje** (tecla S)

**Opciones de desmontaje**

**NOTA:** estas opciones solo aplican a la operación de confirmación. No puedes cambiar opciones para imágenes montadas como solo lectura.

<p align="center">
	<img src="../../res/img_tasks/tools/mimgmgr/cli/mimgmgr_unmount_settings.png" />
</p>

Estas son las mismas opciones que encontrarás en el [diálogo de desmontaje de imagen](../mgmt/unmount_image.md). Configúralas y pulsa ENTER para ejecutar el desmontaje.

#### Eliminar imágenes de volumen

**NOTA:** esta tarea solo aplica a imágenes con múltiples índices

<p align="center">
	<img src="../../res/img_tasks/tools/mimgmgr/cli/mimgmgr_delete_image.png" />
</p>

En este menú puedes **marcar las imágenes de volumen (índices) a eliminar** (tecla M) y **proceder con la operación de eliminación** (tecla P).

Ten en cuenta que proceder con la operación de volumen desmontará la imagen **descartando cambios**. Asegúrate de haberlos guardado antes de comenzar.

Durante esta operación puedes ver la imagen que se está eliminando. Al finalizar volverás al menú principal.

<p align="center">
	<img src="https://github.com/CodingWonders/DISMTools/assets/101426328/abb6704d-2e2b-493f-a80a-431b04fee453" />
</p>

**Marcar imágenes de volumen para eliminar**

Desde la lista de índices mostrada puedes elegir las imágenes de volumen a eliminar indicando su número. Puedes especificar varios índices separando los números con comas (`,`) y luego pulsar ENTER:

<p align="center">
	<img src="../../res/img_tasks/tools/mimgmgr/cli/mimgmgr_delete_image_indexmark.png" />
</p>

#### Cambiar índices

**NOTA:** esta tarea solo aplica a imágenes con múltiples índices

<p align="center">
	<img src="../../res/img_tasks/tools/mimgmgr/cli/mimgmgr_switch_image.png" />
</p>

En este menú puedes **especificar el índice destino a montar** (tecla S), **indicar la operación de desmontaje** (tecla C) y **proceder con la operación de cambio** (tecla P).

**Especificar el índice destino**

Desde la lista de índices mostrada puedes escoger el índice objetivo indicando su número. Finalmente, pulsa ENTER:

<p align="center">
	<img src="../../res/img_tasks/tools/mimgmgr/cli/mimgmgr_delete_image_indexmark.png" />
</p>

#### Habilitar permisos de escritura

Este es un proceso automatizado que desmonta una imagen montada como solo lectura y la monta de nuevo con permisos de escritura. **Asegúrate de que la ubicación del archivo fuente siga disponible antes de continuar**.