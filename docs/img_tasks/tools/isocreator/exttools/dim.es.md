# Módulo de Instalación de Controladores

El **Módulo de Instalación de Controladores** (DIM) es una forma rápida y sencilla de añadir controladores de dispositivos a entornos de preinstalación de Windows iniciados:

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/dim/DIM_MainScreen.png" />
</p>

Aunque la funcionalidad completa se logra con el Entorno de Preinstalación de DISMTools, aún puedes usar el DIM en cualquier Entorno de Preinstalación. Esto es compatible con las arquitecturas x86, amd64 y arm64.

*NOTA: El soporte para arm64 del DIM llegó en la versión 0.6.2.*

#### Uso

1. Haz clic en el botón "Add" y elige entre un archivo de controlador único o una carpeta completa

    - Si eliges una carpeta, el Módulo de Instalación de Controladores realizará un escaneo recursivo en busca de archivos INF. Esto puede recoger archivos INF inválidos que puedas tener

2. Realiza cualquier cambio con los botones "Edit" y "Remove"
3. Haz clic en el botón "Install" y deja que el programa añada los controladores

Después de la instalación de controladores, verás un resumen de instalación:

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/dim/DIM_Summary.png" />
</p>

Más tarde, después de aplicar tu imagen de Windows, el Ayudante del Entorno de Preinstalación añadirá esos controladores a la imagen objetivo.

#### Uso práctico: computadoras con controladores de disco de terceros

Un uso práctico del Módulo de Instalación de Controladores es añadir compatibilidad para controladores de disco que no se incluyen con los Windows PE por defecto. Este es el caso si el sistema de prueba es relativamente nuevo.

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/dim/practical_use/disk_before.jpg" />
</p>

Aquí está cómo puedes proceder:

1. Inicia en un entorno Linux vivo y usa el administrador de particiones que pueda venir con él para obtener el modelo de la unidad deseada. Si no tienes un ISO de Linux disponible, recomendamos [GParted Live](https://gparted.org/livecd.php) por su simplicidad y su pequeño tamaño

    ![GParted](../../../../res/img_tasks/tools/isocreator/dim/practical_use/diskinfo.jpg)
    
2. Además, puedes querer obtener información sobre el modelo de la computadora. En la mayoría de los sistemas Linux, puedes ejecutar `sudo lshw` en el terminal

    ![Información de la computadora](../../../../res/img_tasks/tools/isocreator/dim/practical_use/compinfo.jpg)
    
    Después de obtener el modelo de la computadora, ve al sitio web del fabricante de la computadora para descargar controladores compatibles. **Asegúrate de que los extraigas y que NO los instales en tu sistema por accidente**. Después de eso, copia los controladores a donde quieras
    
3. Abre el Módulo de Instalación de Controladores, añade la carpeta que contiene los controladores y haz clic en Install

    ![Instalación DIM](../../../../res/img_tasks/tools/isocreator/dim/practical_use/dim_install.jpg)
    
4. Verifica los discos una vez más

    ![Lista de discos](../../../../res/img_tasks/tools/isocreator/dim/practical_use/disk_after.jpg)
    
<!-- Y sí, sé cómo hacer capturas de pantalla -->