# Editor de listas de configuración de DISM

<p align="center">
	<img src="/res/img_tasks/tools/configlisteditor/configlisteditor.png" />
</p>

El Editor de listas de configuración de DISM te permite crear fácilmente listas de exclusión de archivos y carpetas para tareas como la [captura de una imagen](../mgmt/capture_image.md). Puedes usar la interfaz gráfica para añadir exclusiones o editar el archivo de lista manualmente.

*Esta herramienta está disponible en DISMTools 0.3.1 y posteriores.*

## Uso

Para crear una nueva lista de configuración que ya incluya archivos y carpetas a excluir, haz clic en "Nuevo". Ten en cuenta que las listas sin guardar no se conservarán si continúas sin guardar.

### Añadir una entrada

Puedes añadir una entrada escribiéndola en la vista de código o usando la interfaz gráfica.

Con la interfaz gráfica puedes seleccionar archivos mediante el selector; revisa la entrada antes de añadirla.

<p align="center">
	<img src="/res/img_tasks/tools/configlisteditor/new_entry.png" />
</p>

### Excluir carpetas de OneDrive

DISMTools 0.4.2 añade la capacidad de excluir automáticamente las carpetas OneDrive de usuario, ya que pueden provocar errores en determinadas tareas:

<p align="center">
	<img src="/res/img_tasks/tools/configlisteditor/onedrive_exclusion.png" />
</p>

Para excluir las carpetas OneDrive de un disco, busca la ruta correspondiente y pulsa Excluir. Las carpetas OneDrive de usuario se detectarán automáticamente y se añadirán a la lista de configuración.

## Contenido relacionado

- [Referencia de listas de configuración](https://learn.microsoft.com/es-es/windows-hardware/manufacture/desktop/dism-configuration-list-and-wimscriptini-files-winnext?view=windows-11)