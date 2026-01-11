# Importar controladores

<p align="center">
    <img src="/res/img_tasks/drivers/import_driver.png" />
</p>

Con DISMTools puedes importar controladores de terceros de una imagen a otra, garantizando compatibilidad hardware similar a la imagen origen. Accede a Comandos > Drivers > Import driver packages...

## Compatibilidad del sistema operativo destino

Esta acción es compatible en las siguientes plataformas:

| Platform | Supported? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Esta acción está soportada en DISMTools 0.4.1 y posteriores</i>

## Uso

1. Especifica la fuente desde la que importar los controladores:

    - **Archivo de imagen:** importa todos los controladores de terceros de otra imagen; selecciona la imagen desde la lista de imágenes montadas.

    <p align="center">
        <img src="/res/img_tasks/drivers/import_driver_winimage.png" />
    </p>
    
    - **Instalación en línea:** importa los controladores de tu instalación activa.

    <p align="center">
        <img src="/res/img_tasks/drivers/import_driver_active.png" />
    </p>
    
    - **Instalación offline:** importa los controladores desde una instalación desplegada existente; especifica la unidad origen.

    <p align="center">
        <img src="/res/img_tasks/drivers/import_driver_deployed.png" />
    </p>
    
2. Pulsa OK tras seleccionar la fuente.

## Observaciones

- Tras importar controladores, la imagen destino **no debería usarse** en equipos distintos al de la imagen origen, salvo que se eliminen controladores no deseados.