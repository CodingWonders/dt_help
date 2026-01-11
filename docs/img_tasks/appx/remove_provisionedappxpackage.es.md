# Eliminar paquetes AppX aprovisionados

<p align="center">
    <img src="/res/img_tasks/appx/remove_provisionedappxpackage.png" />
</p>

Con DISMTools puedes eliminar paquetes AppX aprovisionados usando una lista con casillas. Esta acción está en Comandos > App packages > Remove provisioning for app package...

Esta acción evita que las aplicaciones afectadas se registren para nuevos usuarios, aunque seguirán registradas para los usuarios existentes.

## Compatibilidad del sistema operativo destino

Esta acción es compatible con las siguientes plataformas:

| Platform | Supported? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ❌ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

**NOTA:** si eliminas paquetes AppX en una instalación Windows Server Core, debe estar instalada la característica Desktop Experience. **No elimines Desktop Experience antes de quitar los paquetes AppX que desees.**

<i>Esta acción está soportada en DISMTools 0.2 y posteriores</i>

## Uso

Especifica las aplicaciones para las que quieres eliminar el aprovisionamiento y pulsa OK.

## ¿Sabías que?

- Puedes hacer clic derecho sobre un paquete en la lista para abrir su directorio o ver sus assets de logo.

<p align="center">
    <img src="https://user-images.githubusercontent.com/101426328/236633802-3c27947c-e282-4258-9ca3-0d6711fc436f.png" />
</p>

<p align="center">
    <img src="https://github.com/CodingWonders/DISMTools/assets/101426328/751b80d9-ee8f-4552-8f91-6f5ebbfaf0da" />
</p>

## Eliminación completa de una aplicación

Para eliminar completamente una aplicación, usa PowerShell:

1. Abre PowerShell como administrador
2. Ejecuta: `Get-AppxPackage -Name <pkgName> | Remove-AppxPackage` (donde `<pkgName>` es el nombre del paquete AppX a eliminar)

## Preguntas

**P: ¿Cómo determina el programa si una aplicación está registrada a un usuario?**

**R:** El programa determina el estado de registro contando los archivos `.pckgdep` en la carpeta `<mountPath>\ProgramData\Microsoft\Windows\AppRepository\Packages\<pkgName>` (donde `<mountPath>` es el directorio de montaje de la imagen o el disco local de una instalación activa, y `<pkgName>` el nombre del paquete). No puedes acceder a `AppRepository` desde el Explorador, pero sí a sus subdirectorios usando herramientas de terceros.

Al acceder verás archivos `.pckgdep` cuyos nombres comienzan por `S-1-...` (un SID, identificador de cuenta). Más información sobre SIDs en: https://devblogs.microsoft.com/oldnewthing/20230613-00/?p=108335. Para listar SIDs locales, ejecuta `wmic useraccount get name,sid`.

## Contenido relacionado

- [Ayuda de línea de comandos](https://example.com)
