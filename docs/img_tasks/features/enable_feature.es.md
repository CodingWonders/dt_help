# Habilitar características

<p align="center">
<img src="/res/img_tasks/features/enable_feature.png" />
</p>

Con DISMTools puedes habilitar características en una imagen para añadir componentes opcionales a una instalación de Windows. Esta acción está disponible en Comandos > OS packages > Enable feature... o mediante el botón "Enable feature...".

## Compatibilidad del sistema operativo destino

Esta acción es compatible en las siguientes plataformas:

| Plataforma | Compatible? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Esta acción es compatible con DISMTools 0.1.1 y posteriores</i>

## Uso

Debes especificar las características que quieres habilitar en la imagen o instalación de Windows y configurar las opciones para obtener el resultado deseado.

## Opciones

- Si el paquete padre no es un paquete Windows Foundation, debes indicar el nombre del **paquete padre**. Puedes realizar una búsqueda rápida de paquetes para localizarlo.

<p align="center">
<img src="/res/img_tasks/features/pkg_lookup.png" />
</p>

- Si una característica que aparece en la lista fue previamente eliminada de la imagen o instalación, debes proporcionar una **fuente de la característica** (por ejemplo, un archivo CAB o una ruta de instalación).
- Para forzar el uso exclusivo de la fuente y evitar contactar con Windows Update, desmarca la opción **Contactar Windows Update** (esto solo aplica a instalaciones en línea).
- Si quieres habilitar también las características padre de las especificadas, marca **Habilitar todas las características padre**.
- Opcionalmente, puedes **confirmar (commit) la imagen tras habilitar las características** (solo imágenes de Windows).

## Temas relacionados

- [Ayuda de línea de comandos](https://example.com)
