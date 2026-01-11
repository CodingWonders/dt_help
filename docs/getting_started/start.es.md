## Primeros pasos

### El tour de DISMTools

DISMTools 0.7 introduce un nuevo tour que puedes seguir para realizar tareas básicas. Este tour ofrece contenido en texto y vídeo, y se centra en un procedimiento de ejemplo para crear una imagen de Windows personalizada.

Puedes acceder a él [aquí](https://dismtools.com/tour)        <!-- Usamos un tour personalizado; la dirección puede no existir todavía -->

El tour existente se mantendrá por compatibilidad. Continúa leyendo si prefieres seguir el flujo clásico.

Tras completar la instalación, puedes ejecutar el programa. Se recomiendan los pasos siguientes para comenzar:

### Crear tu primer proyecto

Con el programa abierto, empieza por **crear un proyecto**. Usa el primer enlace en la pantalla principal o ve a Archivo -> Nuevo proyecto...

Verás la siguiente pantalla, donde debes proporcionar un nombre y una ubicación.

<p align="center">
	<img src="/res/getting_started/create_a_project.png"/>
</p>

Después de rellenar ambos campos, haz clic en Aceptar. El proyecto se creará y pasarás a la vista del proyecto.

<p align="center">
	<img src="/res/getting_started/project_view.png"/>
</p>

Para cargar este proyecto más adelante, ve a "Abrir un proyecto existente..." y especifica la ubicación del proyecto.

Si has cargado un proyecto recientemente, se añadirá a la lista de Recientes. Para abrir un proyecto haz doble clic en su entrada; para eliminar una entrada, selecciónala y haz clic en Quitar entrada.

<p align="center">
	<img src="/res/getting_started/recents_list.png"/>
</p>

### Cargar una imagen de Windows

Lo primero que debes hacer después de crear un proyecto es cargar una imagen en él. Hay 2 formas de hacerlo:

#### Montar una imagen de Windows

Para montar una imagen de Windows, haz clic en el botón "Montar imagen..." o en el enlace del panel izquierdo. Verás esta pantalla:

<p align="center">
	<img src="/res/getting_started/mount_an_image.png" />
</p>

Especifica el archivo de imagen fuente que deseas montar y la ruta donde montar la imagen. También puedes configurar más opciones en este diálogo si lo deseas. Consulta la guía de montaje de imágenes para más información.

**INFO:** la forma más sencilla de obtener una imagen de Windows es extrayendo el archivo `sources\install.wim` de los medios de instalación de Windows. Esto se puede hacer montando el ISO en el Explorador de archivos o usando herramientas de terceros como 7-Zip.

Cuando termines, haz clic en Aceptar y espera a que la imagen se monte.

#### Cargar un directorio de montaje ya existente

Desde DISMTools 0.2, el programa permite cargar un directorio de montaje y usarlo en tu proyecto si ya has montado una imagen de Windows en él.

Para ello, cambia a la pestaña "Imagen" en la izquierda y haz clic en el enlace inferior. A continuación, especifica el directorio de montaje y pulsa Aceptar. ¡Listo!

<p align="center">
	<img src="/res/getting_started/load_mount_directory.png" />
</p>

Para buscar imágenes montadas disponibles, usa el [**gestor de imágenes montadas**](../img_tasks/tools/mimgmgr.md).

**NOTA:** desde la versión 0.3.2, el enlace mencionado abrirá un selector emergente de imágenes montadas en lugar de un selector de carpetas, lo que facilita este proceso. Simplemente selecciona una imagen montada de la lista y haz clic en Aceptar:

<p align="center">
	<img src="/res/getting_started/load_mount_directory_new.png" />
</p>

## Buenas prácticas

Al crear un proyecto y/o gestionar imágenes de Windows, ten en cuenta estas buenas prácticas:

### Rutas del proyecto

- Almacena tu proyecto en una ubicación cuya longitud no supere la limitación de ruta `MAX_PATH` (260 caracteres): [limitación de longitud de ruta](https://learn.microsoft.com/es-es/windows/win32/fileio/maximum-file-path-limitation)

	- Un buen lugar para almacenar tu proyecto es la raíz de la unidad preferida o una carpeta a un nivel de profundidad. Por ejemplo: `D:\` o `E:\Projects\`
	- Puedes desactivar esta limitación si usas Windows 10, versión 1607 o posterior, siguiendo [estas guías](https://learn.microsoft.com/es-es/windows/win32/fileio/maximum-file-path-limitation?tabs=registry#enable-long-paths-in-windows-10-version-1607-and-later)

### Operaciones DISM

- Un programa antivirus podría impedir la realización de tareas sobre la imagen, por lo que se recomienda establecer una exclusión en la ruta de montaje de la imagen
- No se recomienda montar más de 20 imágenes al mismo tiempo, ya que puede causar una degradación significativa del rendimiento
- Debes ejecutar este programa y, en cualquier momento, DISM con privilegios de administrador, independientemente de los privilegios que tengas
- Si has montado la imagen con permisos de escritura habilitados, es recomendable confirmar tus cambios con frecuencia. De este modo, si la imagen se corrompe, será más fácil recuperarla
- No se recomienda almacenar archivos en recursos de red; puede ser más rápido realizar la mayoría de operaciones si los archivos se copian a un disco local

### Mantenimiento desde Windows PE

Si planeas mantener imágenes desde un Entorno de Preinstalación de Windows (WinPE), ten en cuenta estos requisitos al planificar tu estrategia:

- **Arrancar Windows PE desde un disco local:** puedes asignar memoria adicional a tu instalación de Windows PE cuando arranques desde un disco local para aumentar el rendimiento; y puedes crear carpetas temporales para almacenar actualizaciones grandes
- **Arrancar Windows PE desde un medio de solo lectura:** si planeas arrancar la instalación de Windows PE desde medios ópticos, asegúrate de que tu equipo tenga memoria suficiente
- **Agregar un archivo de paginación a tu instalación PE:** para mejorar la gestión de memoria, considera crear un archivo de paginación; consulta la referencia del comando [`wpeutil`](https://learn.microsoft.com/es-es/windows-hardware/manufacture/desktop/wpeutil-command-line-options?view=windows-11#createpagefile) para más información
- **Especificar un directorio temporal (scratch):** para algunas operaciones, como añadir paquetes, es mejor crear y especificar un directorio temporal para almacenar archivos temporales. Si no se especifica, Windows PE crea un directorio temporal del tamaño que indicaste al configurar el espacio; sin embargo, podrías quedarte sin espacio en tu entorno PE