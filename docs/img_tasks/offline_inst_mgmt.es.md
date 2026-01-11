# Modo de gestión de instalación offline

DISMTools 0.4 y posteriores permiten gestionar instalaciones en cualquier partición (denominadas "instalaciones offline") utilizando la misma interfaz que usas para proyectos e imágenes de Windows.

<p align="center">
	<img src="/res/img_tasks/offline_inst_mgmt/offline_inst_mgmt.png" />
</p>

## Acceso a este modo

Puedes acceder a este modo de dos formas: haciendo clic en "Gestionar instalación offline" en la pantalla principal o desde el menú Archivo.

<p align="center">
	<td>
		<tr>
			<img src="/res/img_tasks/offline_inst_mgmt/off_inst_mgmt_link.png" />
		</tr>
		<tr>
			<img src="/res/img_tasks/offline_inst_mgmt/off_inst_mgmt_menu_entry.png" />
		</tr>
	</td>
</p>

A continuación debes elegir el disco que contiene la instalación de Windows que quieres gestionar:

<p align="center">
	<img src="/res/img_tasks/offline_inst_mgmt/off_inst_mgmt_choose_disk.png" />
</p>

### Unidades no soportadas

No se podrá gestionar una instalación en una unidad si cumple al menos uno de los siguientes criterios:

- La unidad contiene una instalación de Windows Vista o una versión anterior
- La unidad que contiene la instalación no está formateada como NTFS
- La unidad que contiene la instalación está montada como medio extraíble
- La unidad que contiene la instalación está montada con privilegios de solo lectura

## Diferencias respecto a la gestión de proyectos

Existen algunas diferencias entre gestionar una instalación offline y un proyecto estándar, que se detallan a continuación:

- No puedes guardar en el modo de gestión de instalación offline, porque todas las operaciones de confirmación están deshabilitadas