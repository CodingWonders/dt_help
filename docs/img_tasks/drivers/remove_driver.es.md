# Eliminar controladores

<p align="center">
	<img src="/res/img_tasks/drivers/remove_driver.png" />
</p>

Con DISMTools puedes eliminar controladores de terceros de una imagen de Windows. Accede a Comandos > Drivers > Remove driver...

## Compatibilidad del sistema operativo destino

Esta acción es compatible en las siguientes plataformas:

| Platform | Supported? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Esta acción está soportada en DISMTools 0.3 y posteriores</i>

**NOTA:** al eliminar controladores en instalaciones activas no se invoca DISM; se utiliza la utilidad PnP (`pnputil.exe`). DISMTools adapta los argumentos según la versión de Windows. Esta operación en instalaciones activas está soportada desde DISMTools 0.7.

## Uso

Especifica paquetes de controladores y/o carpetas a eliminar de la imagen.

Hay 4 modos de vista disponibles:

- Sin controladores críticos de arranque ni controladores incluidos (inbox)
- Controladores de terceros, controladores críticos de arranque, sin inbox
- Controladores de terceros, sin controladores críticos de arranque, con inbox
- Controladores de terceros, controladores críticos de arranque e inbox

No se recomienda eliminar controladores críticos de arranque ni controladores inbox, ya que podrían dejar la imagen sin capacidad de arranque. Por ello no se muestran por defecto, salvo que actives la opción de proceso en segundo plano **Detect all drivers**.

## Contenido relacionado

- [Ayuda de línea de comandos](https://example.com)