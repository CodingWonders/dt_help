# Añadir controladores
<p align="center">
	<img src="/res/img_tasks/drivers/add_driver.png" />
</p>
Con DISMTools puedes añadir controladores de terceros a una imagen de Windows. Esta acción está disponible en Comandos > Drivers > Add driver...

## Compatibilidad del sistema operativo destino

Esta acción es compatible en las siguientes plataformas:

| Plataforma | Compatible? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Esta acción es compatible con DISMTools 0.3 y posteriores</i>

**NOTA:** DISM no se invocará al añadir controladores a instalaciones activas. En su lugar se usará la utilidad PnP (`pnputil.exe`). DISMTools ajustará los argumentos según la versión del sistema. Esta operación en instalaciones activas está soportada a partir de DISMTools 0.7.

## Uso

Añade paquetes de controladores y/o carpetas arrastrándolos o añadiéndolos a la lista **driver files**. Las carpetas se añadirán a **driver folders** para permitir un escaneo recursivo en busca de paquetes.

Es posible que debas ajustar opciones adicionales para obtener el resultado deseado.

## Opciones

- Si estás probando un controlador, puedes forzar la instalación de controladores no firmados en sistemas x64 (no recomendado para entornos de producción).
- Opcionalmente, puedes **confirmar (commit) la imagen después de añadir los controladores**.

## Temas relacionados

- [Ayuda de línea de comandos](https://example.com)
```markdown
# Añadir controladores

<p align="center">
	<img src="/res/img_tasks/drivers/add_driver.png" />
</p>

Con DISMTools puedes añadir controladores de terceros a una imagen de Windows. Esta acción está disponible en Comandos > Drivers > Add driver...

## Compatibilidad del sistema operativo destino

Esta acción es compatible en las siguientes plataformas:

| Platform | Supported? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>Esta acción es compatible con DISMTools 0.3 y posteriores</i>

**NOTA:** DISM no se invocará al añadir controladores a instalaciones activas. En su lugar se usará la utilidad PnP (`pnputil.exe`). DISMTools adaptará los argumentos según la versión del sistema (los argumentos difieren entre Windows 8 y Windows 10+). Esta operación en instalaciones activas está soportada a partir de DISMTools 0.7.

## Uso

Debes especificar paquetes de controladores y/o carpetas para añadir a la imagen arrastrándolos o añadiéndolos a la lista **driver files**. Las carpetas se añaden automáticamente a **driver folders**, permitiendo escanearlas recursivamente en busca de paquetes.

También puede ser necesario ajustar opciones para obtener el resultado deseado.

## Opciones

- Si estás probando un controlador, puedes omitir la comprobación de firma en sistemas x64 forzando la instalación de controladores sin firmar, aunque podría causar inestabilidad.
- Opcionalmente, puedes **confirmar (commit) la imagen después de añadir los controladores**.

## Temas relacionados

- [Ayuda de línea de comandos](https://example.com)