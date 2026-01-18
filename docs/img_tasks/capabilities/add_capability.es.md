# Adding capabilities

<p align="center">
	<img src="/res/img_tasks/capabilities/add_capability.png" />
</p>

Con DISMTools puedes añadir capacidades, o Características bajo Demanda (FoD), a una imagen de Windows o instalación. Las capacidades son características listas para añadir en cualquier momento. Más sobre capacidades [aquí](https://example.com).

Esta acción se puede acceder haciendo clic en Comandos > Capacidades > Añadir capacidad...

## Soporte del sistema operativo objetivo

Esta acción es compatible con las siguientes plataformas:

| Plataforma | ¿Soportado? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ❌ |
| Windows 8/Server 2012 | ❌ |
| Windows 8.1/Server 2012 R2 | ❌ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Esta acción es compatible con DISMTools 0.3 y versiones posteriores</i>

## Uso

Necesitas especificar las capacidades que deseas añadir a tu imagen de Windows o instalación, y especificar algunos ajustes para obtener el resultado que deseas.

## Opciones

- Puedes especificar una **fuente** donde tengas los archivos necesarios para la adición de capacidades. Puedes examinar tu sistema de archivos para una fuente apropiada, u obtener la fuente de la política de grupo
- Si realmente quieres que esta operación use tu fuente especificada y no Windows Update, marca la opción **Límite de acceso a Windows Update** (solo instalaciones en línea)
- Si deseas, puedes **confirmar la imagen después de añadir las capacidades** (solo imágenes de Windows)

## Temas relacionados

- [Ayuda de línea de comandos](https://example.com)