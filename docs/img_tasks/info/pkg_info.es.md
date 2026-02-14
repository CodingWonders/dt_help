# Información de paquetes

<p align="center">
    <img src="/res/img_tasks/info/pkg_info.png" />
</p>

Con DISMTools puedes obtener información sobre los paquetes instalados en una imagen o instalación de Windows, así como sobre archivos de paquetes que quieras añadir o analizar. Esta funcionalidad es compatible con imágenes e instalaciones de todo tipo.

*Esta acción está soportada en DISMTools 0.3.1 y posteriores.*

**NOTA:** la información de capacidades no puede obtenerse en hosts anteriores a Windows 10 o Server 2016.

## Uso

- Al abrir el diálogo por primera vez verás el menú principal (captura arriba). Desde aquí puedes acceder a uno de los dos modos de información haciendo clic en su enlace:

    - **Obtener información de paquetes instalados en la imagen** abre la vista de paquetes instalados. Todos los paquetes instalados de la imagen o instalación aparecen en la lista izquierda; selecciona uno para ver sus detalles a la derecha.

    <p align="center">
        <img src="/res/img_tasks/info/get_instpkginfo.png" />
    </p>

    - **Obtener información de archivos de paquetes** abre la vista de archivos de paquete. En este modo debes especificar los paquetes y añadirlos a la lista, bien mediante el selector de archivos o arrastrándolos desde una aplicación con privilegios elevados. Si el programa detecta la información del paquete, podrás verla al seleccionarlo; en caso contrario, la entrada se eliminará.

    <p align="center">
        <img src="/res/img_tasks/info/get_pkgfileinfo.png" />
    </p>

- Puedes volver a la pantalla principal haciendo clic en el enlace superior izquierdo.

## Guardar esta información

Puedes exportar esta información a un archivo de informe pulsando el botón Save (inferior derecho) y especificando un destino. Esta opción está deshabilitada en la vista de archivos de paquete si no se han especificado paquetes.

## Preguntas frecuentes

- **P: ¿Por qué no puedo arrastrar archivos desde un programa normal?**
- **R:** no es posible arrastrar contenido desde un programa sin privilegios a otro con privilegios elevados. Ejecuta el programa desde el que arrastras como administrador (p. ej. con CTRL+Shift+Enter) para evitar el problema.

## Mejor visualización de propiedades personalizadas

DISMTools 0.5 introduce una nueva vista para propiedades personalizadas de características, que muestra la jerarquía en un árbol para facilitar su comprensión.

<p align="center">
    <img src="/res/img_tasks/info/cprop_viewer.png" />
</p>

## Contenido relacionado

- [Diálogos de información de imagen](../info/infodlgs.md)