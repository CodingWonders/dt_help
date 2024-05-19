# Modo de administración de imágenes fuera de línea

DISMTools 0.4 y versiones posteriores le permiten administrar instalaciones en cualquier partición (referido como una "instalación fuera de línea") usando la misma interfaz a la que está acostumbrado cuando administra proyectos estándar e imágenes de Windows.

<p align="center">
	<img src="../../res/img_tasks/offline_inst_mgmt/offline_inst_mgmt.png" />
</p>

## Acceder a este modo

Puede acceder a este modo de 2 formas: haciendo clic en "Administrar instalación fuera de línea" en la pantalla principal o en el menú Archivo.

<p align="center">
	<td>
		<tr>
			<img src="../../res/img_tasks/offline_inst_mgmt/off_inst_mgmt_link.png" />
		</tr>
		<tr>
			<img src="../../res/img_tasks/offline_inst_mgmt/off_inst_mgmt_menu_entry.png" />
		</tr>
	</td>
</p>

Luego, tiene que escoger el disco que contenga la instalación de Windows que desea administrar:

<p align="center">
	<img src="../../res/img_tasks/offline_inst_mgmt/off_inst_mgmt_choose_disk.png" />
</p>

### Discos no soportados

No puede realizar administración de una instalación en un disco si cumple al menos uno de los siguientes criterios:

- El disco contiene una instalación de Windows Vista o anterior de Windows
- El disco que contenga la instalación no está formateado con NTFS
- El disco que contenga la instalación se ha montado como un medio removible
- El disco que contenga la instalación se ha montado con privilegios de solo lectura

## Diferencias con la administración de proyectos estándar

Hay algunas diferencias entre la administración de instalaciones fuera de línea y un proyecto estándar, que serán mencionadas abajo:

- No puede guardar en el modo de administración de instalaciones fuera de línea debido a que todas las opciones de guardado están deshabilitadas