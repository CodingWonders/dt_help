# Establecer la edición de la imagen

<p align="center">
    <img src="/res/img_tasks/editions/set_imageedition.png" />
</p>

Con DISMTools puedes establecer la edición de una imagen de Windows. Esta acción está disponible en Comandos > Windows editions > Upgrade image...

## Compatibilidad por sistema operativo

Esta acción es compatible con las siguientes plataformas:

| Platform | Supported? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Esta acción es compatible con DISMTools 0.6.2 y posteriores</i>

## Uso

Simplemente especifica la edición a la que deseas actualizar la imagen de Windows y algunas opciones adicionales (según los casos indicados más adelante).

## Opciones

**NOTA:** estas opciones solo se aplican a instalaciones activas de Windows Server.

<p align="center">
    <img src="/res/img_tasks/editions/set_imageedition_server.png" />
</p>

- Usa *Copy the End-User License Agreement (EULA) to the following location* si deseas copiar el EULA a una ubicación específica
- Usa *Accept the End-User License Agreement (EULA) and use the following product key* si deseas aceptar el EULA. Esto es necesario para cambiar la edición en una imagen en línea

## Observaciones

Si la imagen o instalación de Windows ya dispone de la edición más alta, no podrás realizar esta tarea. Comprueba los objetivos de actualización primero siguiendo las instrucciones en la página de resumen de ediciones.