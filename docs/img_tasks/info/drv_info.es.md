# Información de controladores

<p align="center">
    <img src="/res/img_tasks/info/drv_info.png" />
</p>

Con DISMTools puedes obtener información sobre controladores instalados o sobre archivos de controladores que quieras añadir o analizar. Esto es válido para imágenes e instalaciones de Windows de todo tipo.

*Esta acción es compatible con DISMTools 0.3.1 y posteriores.*

## Uso

- Al abrir el diálogo por primera vez verás el menú principal (captura más arriba). Desde él puedes acceder a uno de los dos modos de información mediante su enlace correspondiente:

    - **Obtener información de los controladores instalados en la imagen** abre la vista de controladores instalados. Todos los controladores instalados en la imagen o instalación se muestran en la lista izquierda; para ver detalles, **selecciónalos**.

    <p align="center">
        <img src="/res/img_tasks/info/get_instdrvinfo.png" />
    </p>

    - **Obtener información sobre archivos de controladores** abre la vista de archivos de controlador. En este modo debes especificar y añadir los controladores a la lista mediante el selector de archivos o arrastrándolos desde una aplicación con privilegios elevados. Si el programa detecta información del archivo, podrás verla al seleccionarlo; si no, la entrada se elimina.

    <p align="center">
        <img src="/res/img_tasks/info/get_drvfileinfo.png" />
    </p>

- Puedes volver a la pantalla principal mediante el enlace superior izquierdo.

**NOTA:** la cantidad de controladores listados depende de la configuración de los procesos en segundo plano. Por defecto no se listan los controladores incluidos en la distribución de Windows, para reducir el tiempo de análisis. El programa permite configurar estos procesos para detectar todos los controladores.

## Navegar por los targets de hardware

Un paquete de controladores puede dirigirse a múltiples dispositivos; obtener información detallada de cada target puede ser lento o complejo.

Para ello, DISMTools ofrece controles en la parte superior para recorrer todos los targets.

<p align="center">
    <img src="/res/img_tasks/info/drvpkg_hw_target_controls.png" />
</p>

Los controles realizan lo siguiente:

- El botón Siguiente avanza al siguiente target (deshabilitado al llegar al último)
- El botón Anterior retrocede al anterior (deshabilitado en el primero)
- El botón Saltar a permite ir a un target específico

<p align="center">
    <img src="https://github.com/CodingWonders/DISMTools/assets/101426328/8da4493d-fabe-49db-97f2-e075cb10b79e" />
</p>

## Guardar esta información

Puedes guardar la información en un archivo de reporte con el botón Save (inferior derecho). Esta opción está deshabilitada en la vista de archivos de controlador si no se han especificado controladores.

Si los procesos en segundo plano no detectan todos los controladores, se te preguntará si deseas guardar la información de todos ellos.

## Funcionalidad adicional de búsqueda

Con la búsqueda introducida en DISMTools 0.5 puedes buscar entre tus controladores instalados con mayor facilidad. Por defecto busca en la primera columna; para buscar por nombre de archivo original (segunda columna), **precede la consulta con `og:`**.

## Contenido relacionado

- [Diálogos de información de imagen](../info/infodlgs.md)