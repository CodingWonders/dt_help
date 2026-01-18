# Referencia de Scripts de Administración de Línea de Comandos del Entorno de Preinstalación

Esta página contiene documentación de referencia para Scripts de Administración incluidos con el Entorno de Preinstalación de DISMTools. Puedes acceder a ellos yendo a la carpeta `scripts` en la raíz de la unidad de arranque (escribe `cd \scripts` para ir allí).

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/cmdline/cmdline_scriptref.png" />
</p>

## Scripts disponibles

Actualmente, se incluyen 3 scripts:

### Inicializar Red (`initializenetwork.bat`)

Este script inicializa la pila de red en el Entorno de Preinstalación para uso con aplicaciones listas para red, y también habilita el firewall.

### Copia Completa de Disco (`fullcopy.bat`)

Este script realiza una copia completa de disco de un disco a otro con robocopy.

Uso:

1. Ingresa la letra de unidad de origen
2. Ingresa la letra de unidad de destino
3. Espera a que el proceso se complete

### Capturar Imagen (`imagecapture.bat`)

Este script captura una unidad de sistema Windows en un archivo WIM que puede usarse más tarde. En DISMTools 0.7.2 y posteriores, esta herramienta puede lanzarse automáticamente después de que Sysprep se complete.

Uso:

1. Ingresa la letra de unidad de origen (la instalación de Windows a capturar), o una acción a realizar:
    - Escribe `DIM` para ejecutar el Módulo de Instalación de Controladores en caso de que no veas tus unidades
    - Escribe `NET` para mapear un recurso compartido de red en el entorno. Si tiene éxito, se usará automáticamente como destino para el archivo WIM
    - Escribe `WDS` para ejecutar el asistente de Captura de Imagen WDS. Esto te permitirá subir la imagen capturada directamente a un servidor WDS   
2. Ingresa la letra de unidad de destino (donde guardar el archivo WIM)
3. Ingresa el nombre del archivo WIM (por ejemplo, `install.wim`)
4. Ingresa el nombre de la imagen (por ejemplo, `Windows 11 Pro`)
5. Espera a que el proceso se complete

Después de que DISM se complete, verás una pantalla de resultado.
