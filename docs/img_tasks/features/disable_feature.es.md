# Deshabilitar características

<p align="center">
<img src="/res/img_tasks/features/disable_feature.png" />
</p>

Con DISMTools puedes deshabilitar características de una imagen para eliminar componentes opcionales de una instalación de Windows o cancelar la adición de componentes opcionales previamente instalados. Esta acción está disponible en Comandos > Paquetes del sistema operativo > Deshabilitar característica... o mediante el botón "Deshabilitar característica...".

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

Debes especificar las características que quieres deshabilitar en la imagen o instalación de Windows y ajustar las opciones según el resultado esperado.

## Opciones

- Si el paquete padre no es un paquete Windows Foundation, debes indicar el nombre del **paquete padre**. Puedes realizar una búsqueda rápida de paquetes para localizarlo.

<p align="center">
<img src="/res/img_tasks/features/pkg_lookup.png" />
</p>

- Para eliminar características sin borrar sus manifiestos de la imagen, marca la opción **Eliminar característica sin borrar manifiesto**. Esto marcará las características seleccionadas como "Removed".

**NOTA:** si deshabilitas características en una instalación en línea, puede ser necesario reiniciar el sistema para que los cambios surtan efecto.

## Temas relacionados

- [Ayuda de línea de comandos](https://example.com)
