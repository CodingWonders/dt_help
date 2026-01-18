# Añadir paquetes

<p align="center">
	<img src="/res/img_tasks/packages/add_package.png" />
</p>

Con DISMTools puedes añadir paquetes para incorporar funcionalidades adicionales y/o actualizaciones a una imagen o instalación de Windows. Esta acción está disponible en Comandos > Paquetes del sistema operativo > Añadir paquete... o mediante el botón "Añadir paquete...".

## Compatibilidad por sistema operativo

Esta acción es compatible con las siguientes plataformas:

| Plataforma | ¿Soportado? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Esta acción es compatible con todas las versiones de DISMTools</i>

## Uso

Debes especificar la fuente de los paquetes que deseas añadir. A continuación, puedes optar por **escanear recursivamente la fuente en busca de paquetes y añadirlos** o **seleccionar los paquetes que quieras añadir** desde la lista.

## Opciones

- **Ignorar las comprobaciones de aplicabilidad** no se recomienda, ya que omite dependencias necesarias y, en la mayoría de los casos, la adición fallará
- Si una operación requiere arrancar en la imagen para finalizar (operaciones online), puedes **omitir la instalación del paquete**
- Si lo deseas, puedes **confirmar (commit) los cambios en la imagen** tras añadir los paquetes

## Archivos Microsoft Update Manifest

Con DISMTools también puedes añadir archivos Microsoft Update Manifest haciendo clic en el botón correspondiente en la esquina inferior izquierda.

<p align="center">
	<img src="/res/img_tasks/packages/mum_addition.png" />
</p>

*Esta acción es compatible con DISMTools 0.5.1 y posteriores*

Esto es para uso avanzado únicamente.

## Temas relacionados

- [Ayuda de línea de comandos](https://example.com)
