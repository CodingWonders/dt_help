# Administrador de servicios del sistema

El Administrador de servicios del sistema te permite ver y modificar información sobre los servicios en una imagen de Windows. Usa el administrador para cambiar el tipo de inicio de los servicios o simplemente para consultar su información.

<p align="center">
    <img src="../../res/img_tasks/tools/servicemgr/servicemgr.png" />
</p>

Puedes acceder al Administrador de servicios desde *Herramientas -> Administrar servicios del sistema*.

*Esta herramienta está disponible en DISMTools 0.7.1 y posteriores.*

**NOTA:** al trabajar con instalaciones en línea, realizar estas acciones abrirá el panel de servicios por defecto (`services.msc`), que suele ser suficiente.

## Información de servicio disponible

El Administrador de servicios muestra la siguiente información sobre cada servicio:

- Pestaña **Información del servicio**:
    - Nombre del servicio
    - Nombre para mostrar
    - Descripción
    - Ruta de la imagen (ruta al ejecutable)
    - Nombre de objeto (la cuenta bajo la que se ejecuta el servicio)
    - Tipo de inicio
    - Inicio diferido (**solo para tipo de inicio Automático**)
    - Tipo de servicio (controlador de dispositivo de kernel, controlador de sistema de archivos, adaptador, aplicación de Windows, servicio de Windows)
- Pestaña **Permisos requeridos**:
    - Lista los privilegios requeridos por el servicio para su ejecución
- Pestaña **Control de errores**:
    - Control de errores del Administrador de control de servicios (ignorar, registrar y continuar, continuar arrancando en Last Known Good Configuration o fallar al iniciar)
    - Acciones en caso de fallo:
        - Acción en el primer error
        - Acción en el segundo error
        - Acción en errores posteriores
        - Restablecer contador de fallos tras (en minutos)
        - Reiniciar servicio tras (en minutos)
- Pestaña **Dependencias del servicio**:
    - Lista servicios que dependen de este servicio
    - Lista servicios de los que depende este servicio

    Para dependencias y dependientes verás el nombre del servicio, el nombre para mostrar y el tipo de servicio.
    
- Pestaña **Grupos del servicio**:
    - Lista el grupo al que pertenece el servicio, si existe, y otros servicios en el mismo grupo
    - Lista los grupos registrados del host de servicios (svchost)

## Modificar un servicio

Puedes modificar el tipo de inicio de un servicio entre 5 tipos:

- **Cargador de arranque**: controladores que carga el gestor de arranque
- **Sistema E/S**: controladores que carga el subsistema de E/S
- **Automático**: servicios que se inician automáticamente durante el arranque
- **Manual**: servicios que se inician manualmente por el usuario o por una aplicación
- **Deshabilitado**: servicios deshabilitados que no pueden iniciarse

Los elementos marcados como aplicaciones o servicios de Windows no deben establecerse como Cargador de arranque o Sistema E/S. Al especificar el tipo de inicio Automático, también puedes marcar Inicio diferido.

Este es el único campo que puedes modificar por ahora. En versiones futuras podrían añadirse más campos editables.

Para guardar la nueva lista de servicios, haz clic en *Save*. El proceso de guardar los cambios tarda aproximadamente 20-25 segundos.

## Restaurar información de servicio previa

Al guardar la información de servicios se crea una copia de seguridad de la configuración actual. Para restaurarla:

1. Usa el panel del registro de la imagen para cargar la árbol `SYSTEM` de la imagen objetivo
2. Fusiona el archivo `.reg` en tu escritorio haciendo doble clic
3. Descarga la árbol `SYSTEM` desde el panel y confirma los cambios

Al restaurar la copia es posible que aparezca un error. Esto es normal y muchos servicios se restaurarán correctamente pese al error.

Es importante probar la imagen de Windows después de modificar servicios para verificar que funciona como se espera. No modifiques servicios de forma indiscriminada.