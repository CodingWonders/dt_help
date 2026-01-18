# Ayudante de Windows Deployment Services

El Ayudante de WDS permite desplegar imágenes de Windows por red usando Windows Deployment Services (WDS). Forma parte de las herramientas de creación de ISO y está disponible en DISMTools 0.7 y posteriores.

## Configurar el servidor WDS

**NOTA:** esta sección era en versiones previas la continuación de la guía de preparación del servidor DHCP. Esta guía asume que ya has configurado un servidor DHCP. Si no es así, consulta la [guía de preparación del servidor DHCP](./setup.md).

Ahora que el servidor puede usar tu conmutador (switch), debemos configurarlo para que funcione con WDS. Abre la herramienta de administración de WDS y selecciona tu servidor. Haz clic derecho y elige "Configure Server":

![Configure Server](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_configure_server.png)

A continuación, selecciona el modo en el que operará el servidor. Este modo no puede cambiarse posteriormente sin quitar y volver a configurar el servidor, así que selecciona el modo correcto.

Si dispones de un servidor distinto que actúe como Controlador de Dominio (DC) con Active Directory, o si el servidor actual ya actúa como DC, deja marcada la primera opción. Si no tienes un Controlador de Dominio, o sólo quieres experimentar con despliegues por red, elige el modo Standalone:

![Server Modes](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_server_modes.png)

*Para esta guía usaremos el modo Standalone, ya que no contamos con un controlador de dominio.*

Seguidamente, selecciona la ruta donde se almacenarán los archivos de instalación remota. Por defecto, la carpeta `RemoteInstall` se crea en la raíz del disco del sistema. Cámbiala si es necesario; para nuestro ejemplo está bien la ubicación por defecto:

![Remote Install Location](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_server_remoteinstall.png)

El siguiente paso es importante y depende de cómo hayas configurado el servidor DHCP. Si el servidor WDS también es el servidor DHCP, deja marcadas ambas opciones. En caso contrario, deja marcada sólo la primera opción y configura la opción 60 en el servidor DHCP. Más adelante trataremos estas opciones con detalle:

![Proxy DHCP](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_server_proxy_dhcp.png)

Finalmente, configura las opciones PXE iniciales para responder tanto a equipos conocidos como desconocidos. Además, puedes exigir la aprobación del administrador para clientes desconocidos, lo que te da mayor control sobre qué dispositivos pueden conectarse. Estas opciones se pueden modificar más adelante:

![Initial PXE Settings](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_server_pxe_initial_settings.png)

Tras hacer clic en Siguiente, el servidor quedará configurado y el servicio WDS se iniciará. Es posible que encuentres un problema al intentar arrancar el servicio:

![WDS Service Startup Error](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_server_startup_error.png)

Si esto ocurre, intenta iniciar el servicio manualmente desde aquí:

![Service Manual Startup](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_manual_start.png)

## Añadir las imágenes de Windows

Antes de arrancar los clientes para realizar despliegues por red, primero debemos añadir las imágenes de Windows. Hazlo así:

1. Inserta o monta el archivo ISO recién creado y copia todos los archivos WIM a una carpeta en el servidor:

    ![Copy Files](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_copy_images.png)

2. En WDS, ve a "(Your Server) -> Boot images", haz clic derecho en el área vacía y selecciona "Add boot image..."

    ![Add Boot Image](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_add_boot_image.png)

3. Selecciona la imagen de arranque (`boot.wim`) y finaliza el asistente:

    ![Boot Image Location](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_boot_image_location.png)

4. Después, ve a "(Your Server) -> Install Images", haz clic derecho en el área vacía y selecciona "Add install image..."

    ![Add Install Image](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_add_install_image.png)

5. Esto requerirá crear un grupo de imágenes. Ponle el nombre que prefieras y especifica la imagen de instalación a añadir (`install.wim`):

    ![Image Group](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_add_image_group.png)
    
    ![Install Image Location](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_install_image_location.png)

6. La imagen de instalación puede contener más de un índice. Marca los índices que quieras desplegar con WDS y finaliza el asistente. También puedes proporcionar nombres y descripciones personalizados para cada índice:

    ![Indexes](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_install_image_indexes.png)
    
Finalmente, deberías tener esta configuración:

![Image Setup](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_final_image_config.png)

Ahora puedes arrancar los clientes PXE. En el servidor, además, debes iniciar el componente servidor del WDS Helper. Para ello, haz clic derecho en `wdshelper_server.ps1` dentro de `<Drive Root>\pxehelpers\wds` y selecciona "Run with PowerShell"

![WDSH Server Startup](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wdsh_server_startup.png)

### Iniciar la instalación vía PXE

Si seguiste cada paso correctamente, deberías ver una pantalla como la siguiente:

![WDS Startup](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_startup.png)

Pulsa <kbd>INTRO</kbd> y espera a que arranque el entorno WinPE de DISMTools. Una vez arrancado, selecciona la opción 2 para instalación por red:

![DT PE Network](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dt_pe_netinstall.png)

Llegarás a esta pantalla: indica la dirección IP del servidor, el puerto en el que escucha (normalmente 8080), el nombre del usuario que hospeda las imágenes (por lo general `Administrator`) y la contraseña:

![WDSHC AuthInfo](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wdsh_client_authinfo.png)

Elige la imagen del listado y el grupo al que pertenece; pulsa INTRO:

![WDSHC Install Images](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wdsh_client_install_images.png)

Tras preparar el despliegue de la imagen, configura los discos según sea necesario:

![WDSHC Disk Configuration](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wdsh_client_diskconfig.png)

Selecciona el índice:

![WDSHC Install Image Index](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wdsh_client_select_image_index.png)

Y, finalmente, espera a que la imagen se aplique:

![WDSHC Applying Image](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wdsh_client_apply_image.png)
