# Comencemos

Si no sabe nada acerca del servicio de Windows, o si viene de otras herramientas, haga clic en una sección de abajo para aprender más:

- [Comenzar con el servicio de Windows](./new_to_servicing.md)
- Vengo de otras herramientas
	- [Viniendo de NTLite](./ntlite_migration.md)
	- [Viniendo de MSMG Toolkit](./msmg_migration.md)

Si quiere saber acerca de algo más, continúe leyendo.

## Primeros pasos

Tras finalizar la instalación, puede ejecutar el programa. Se recomienda realizar los siguientes pasos para comenzar

### Crear su primer proyecto

Con el programa cargado, puede comenzar **creando un proyecto**. Utilice el primer enlace de la pantalla principal, o vaya a Archivo -> Nuevo proyecto...

Verá la siguiente pantalla, en la que necesita proporcionar un nombre y una ubicación.

<p align="center">
	<img src="../../res/getting_started/create_a_project.png"/>
</p>

Tras especificar ambos campos, haga clic en Aceptar. El proyecto será creado y usted estará en la pantalla de proyectos.

<p align="center">
	<img src="../../res/getting_started/project_view.png"/>
</p>

Para cargar este proyecto más tarde, vaya a "Abrir un proyecto existente..." y especifique la ubicación del proyecto.

Si ha cargado un proyecto recientemente, se añade al listado de Recientes. Para acceder a un proyecto, haga doble-clic en su entrada en la lista; y para eliminarlo, seleccione la entrada y haga clic en Eliminar entrada.

<p align="center">
	<img src="../../res/getting_started/recents_list.png"/>
</p>

### Cargar una imagen de Windows

Lo primero que debe hacer después de crear un proyecto es cargar una imagen en él. Hay 2 maneras de hacerlo:

#### Montando una imagen de Windows

Para montar una imagen de Windows, haga clic en "Montar imagen..." o haga clic en el enlace del panel de la izquierda. Verá esta pantalla:

<p align="center">
	<img src="../../res/getting_started/mount_an_image.png" />
</p>

Especifique el archivo de imagen de origen que desea montar y la ubicación en la que desea montar la imagen. También puede configurar más opciones en este diálogo si lo desea. Siga la guía de montaje de imágenes para más información.

**INFORMACIÓN:** la manera más sencilla de obtener una imagen de Windows es extrayendo el archivo `sources\install.wim` de los medios de instalación de Windows. Esto puede ser realizado con facilidad montando la imagen ISO en el Explorador de archivos o utilizando programas de terceros, como 7-Zip.

Cuando haya terminado, haga clic en Aceptar y espere hasta que se haya montado la imagen. ¡Terminó!

#### Cargando un directorio de montaje existente

Desde la versión 0.2, el programa le permite cargar un directorio de montaje y usarlo en su proyecto si ya montó una imagen de Windows en él.

Para ello, cambie a la pestaña "Imagen" en la izquierda y haga clic en el enlace de abajo. Después, especifique el directorio de montaje y haga clic en Aceptar. ¡Eso es todo!

<p align="center">
	<img src="../../res/getting_started/load_mount_directory.png" />
</p>

Para consultar las imágenes montadas, utilice el [**administrador de imágenes montadas**](../img_tasks/tools/mimgmgr.md).

**NOTA:** desde la versión 0.3.2, el enlace anteriormente mencionado abrirá un escogedor de imágenes, en vez de un examinador de carpetas, que hace este proceso más fácil. Simplemente escoja una imagen montada de la lista y haga clic en Aceptar:

<p align="center">
	<img src="../../res/getting_started/load_mount_directory_new.png" />
</p>

## Mejores prácticas

Cuando crea un projecto y/o administra imágenes de Windows, considere estas mejores prácticas:

### Rutas de proyectos

- Almacene su proyecto en una ubicación cuya longitud no exceda la [limitación de longitud de rutas](https://learn.microsoft.com/es-es/windows/win32/fileio/maximum-file-path-limitation) `MAX_PATH` (260 caracteres)

	- Un buen lugar donde almacenar su proyecto puede estar en la raíz de su disco preferido o en una carpeta con 1 nivel de profundidad. Dichos ejemplos pueden ser: `D:\` o `E:\Projects\`
	- Puede deshabilitar esta limitación si utiliza Windows 10, versión 1607 o posterior, siguiendo [estas guías](https://learn.microsoft.com/es-es/windows/win32/fileio/maximum-file-path-limitation?tabs=registry#enable-long-paths-in-windows-10-version-1607-and-later)

### Operaciones de DISM

- Un programa de antivirus podría no dejarle hacer una tarea de imagen, así que se recomienda establecer una exclusión a la ruta de montaje de la imagen
- No se recomienda montar más de 20 imágenes al mismo tiempo, porque podría causar en una ralentización del sistema.
- Debe ejecutar este programa y, en cualquier momento, DISM como un administrador, independientemente de los privilegios que posea
- Si ha montado una imagen con permisos de escritura, es mejor guardar sus cambios de vez en cuando. Así, si la imagen se corrompe, es más fácil recuperarla
- No se recomienda almacenar archivos que quiera utilizar en unidades de red, dado a que puede ser más rápido realizar la mayoría de operaciones si dichos archivos están copiados a un disco local

### Servicio de Windows PE
	
Si planea ofrecer servicio a imágenes desde el entorno de preinstalación de Windows (WinPE), considere estos requisitos al planear su estrategia:

- **Iniciar Windows PE desde un disco local:** puede alocar memoria adicional a su instalación de Windows PE al iniciarla desde un disco local, para aumentar el rendimiento; y puede crear carpetas temporales para almacenar actualizaciones grandes
- **Iniciar Windows PE desde medios de solo lectura:** si piensa iniciar la instalación de Windows PE desde medios ópticos, asegúrese de que su equipo tenga suficiente memoria
- **Añadir un archivo de paginación a su instalación de Windows PE:** para mejorar la administración de memoria, considere crear un archivo de paginación. Consulte la [referencia del comando `wpeutil`](https://learn.microsoft.com/es-es/windows-hardware/manufacture/desktop/wpeutil-command-line-options?view=windows-11#createpagefile) para más información
- **Especificar un directorio temporal:** para algunas operaciones, como añadir paquetes, es mejor crear y especificar un directorio temporal en la que almacenar archivos temporales. Si no se especifica, Windows PE crea un directorio temporal del tamaño que especificó al [establecer el espacio temporal](../img_tasks/winpe/set_scratchspace.md). Sin embargo, se puede quedar sin espacio en su entorno de Windows PE