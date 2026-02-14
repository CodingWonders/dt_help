# Iniciando instalaciones locales

Puedes iniciar la instalación de tu sistema operativo de 2 formas:

- Arrancando a medios de instalación,
- Iniciando la instalación desde dentro de un entorno completo de Windows (DISMTools 0.6.1 y posteriores), o
- Arrancando a la imagen de arranque del archivo de disco de instalación a través del **Entorno de Ejecución Previo al Arranque** (PXE) (DISMTools 0.7 y posteriores)

En DISMTools 0.7.1 y posteriores, realizar estas tareas se ha vuelto mucho más fácil gracias a una nueva aplicación de autorrecuperación incluida en la raíz de los medios de instalación:

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/autorun/autorun_mainscreen.png" />
</p>

## Iniciando desde un entorno completo de Windows

DISMTools 0.6.1 y posteriores vienen con un programa que prepara tu computadora para la instalación del sistema operativo. Se llama *HotInstall*, y el proceso de preparación de la computadora es el siguiente:

**NOTA:** HotInstall no es compatible con unidades Ventoy, debido a la forma en que funcionan

**IMPORTANTE:** HotInstall **NO** realizará una actualización. Solo preparará tu computadora para una instalación limpia del sistema operativo.

1. Inicia `setup.exe` en la raíz de la unidad DVD o USB. Si ves una notificación al insertar los medios de instalación, también puedes hacer clic en ella para iniciar el instalador, aprovechando efectivamente AutoRun:

    ![Inicio de HotInstall](../../../../res/img_tasks/tools/isocreator/hotinstall/hotinstall_dvdstart.png)

2. Acepta los disclaimers y haz clic en Siguiente:

    ![Disclaimer de HotInstall](../../../../res/img_tasks/tools/isocreator/hotinstall/hotinstall_disclaimers.png)

3. Revisa que el archivo ISO contenga la imagen de instalación que deseas probar, y haz clic en Siguiente. En esta pantalla, también puedes exportar todos tus controladores de terceros a una carpeta, en caso de que los necesites más tarde:

    ![Revisión de imagen de HotInstall](../../../../res/img_tasks/tools/isocreator/hotinstall/hotinstall_review_image_info.png)
    
4. Espera a que tu computadora se prepare para la instalación. Este proceso tomará algún tiempo, dependiendo del rendimiento de tu computadora:

    ![Progreso de HotInstall](../../../../res/img_tasks/tools/isocreator/hotinstall/hotinstall_progress.png)

Después de reiniciar tu computadora, elige "Instalación del Sistema Operativo DISMTools" (si no está seleccionada por defecto) y presiona Intro. La primera etapa de la instalación comenzará:

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/hotinstall/hotinstall_bootmgr.png" />
</p>

## Seleccionando el disco y la partición

El Ayudante PE obtendrá los discos disponibles en tu computadora:

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/dt_pe/dt_pe_disk_chooser.png" />
</p>

En esta pantalla, también puedes detenerte un momento para tomar acciones si algo no se ve bien con el listado de discos, o si deseas ver qué discos tienen suficiente espacio libre para la instalación de tu imagen de Windows:

- Si no ves el disco que deseas usar, podría ser porque tu computadora usa un controlador de disco de terceros. Si ese es el caso, escribe `DIM` y presiona Intro para abrir el Módulo de Instalación de Controladores. Puedes encontrar más información sobre cómo usar esta herramienta en la sección Herramientas Externas de la documentación
- (**Solo para instalaciones iniciadas con HotInstall**) Si deseas ver el espacio libre en tus discos, escribe `DSCR` y presiona Intro. Esto te mostrará el informe del Verificador de Espacio de Disco generado por HotInstall:

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/hotinstall/hotinstall_dscr.png" />
</p>

Después de seleccionar el disco, se te pedirá que selecciones la partición donde se instalará el sistema operativo. Puedes optar por limpiar todas las particiones de tu disco, o puedes optar por formatear una partición específica:

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/dt_pe/dt_pe_part_chooser.png" />
</p>

**IMPORTANTE:** todas las acciones a partir de este punto son irreversibles. Asegúrate de que has hecho una copia de seguridad de tus datos, y de que has seleccionado el disco correcto, antes de continuar.

## Eligiendo el índice de la imagen de Windows

Después de seleccionar el disco y la partición, se te pedirá que elijas el índice de la imagen de Windows que deseas aplicar. El Ayudante PE te mostrará información básica del índice, incluyendo el nombre que le has dado a la imagen:

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/dt_pe/dt_pe_image_chooser.png" />
</p>

También puedes ver más información sobre la imagen escribiendo `INFO` y presionando Intro:

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/DT_PE_ImageInfo.png" />
</p>

Después de elegir el índice, el Ayudante PE aplicará la imagen al disco o partición seleccionados, ejecutará pruebas de mantenimiento, y creará archivos de arranque.

Después de que todo esté hecho, tu computadora se reiniciará automáticamente en 10 segundos:

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/dt_pe/dt_pe_comp_restart.png" />
</p>

A partir de este punto, puedes quitar los medios de instalación y permitir que tu computadora termine la configuración del sistema operativo.

## Pruebas de Mantenimiento

Las pruebas de mantenimiento se realizan durante la instalación del sistema operativo para asegurarse de que la imagen que ha sido aplicada es válida. Solo se ejecutan si las arquitecturas del PE y de la imagen son iguales, y deben pasar para completar exitosamente la instalación del sistema operativo.

Windows Setup también realiza pruebas de mantenimiento justo antes del primer reinicio.

Si estas pruebas fallan, es posible que necesites reparar el almacén de componentes de tu imagen de Windows.