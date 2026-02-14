# Introducción al mantenimiento de Windows

## Contexto

En 2007 Microsoft lanzó Windows Vista, que introdujo numerosos cambios en la forma de desplegar el sistema en equipos. El formato Windows Imaging (WIM) facilitó y aceleró la instalación y la gestión, ya que los archivos WIM contienen una instalación completa de Windows, a diferencia del método antiguo de copiar archivos desde el medio de instalación.

Con Windows Vista, Microsoft también presentó el Kit de Instalación Automatizada (AIK), que incluye las herramientas de despliegue necesarias para ese sistema operativo. Herramientas como ImageX (para desplegar imágenes), Package Manager (para paquetes), IntlCfg (configura ajustes regionales), entre otras, formaban parte de este kit. Sin embargo, Microsoft buscaba una solución que unificara y simplificara el proceso de despliegue.

La respuesta fue la herramienta **Deployment Image Servicing and Management** (DISM), que agrupa en un único programa de línea de comandos las acciones que antes realizaban varias utilidades. DISM se lanzó junto con Windows 7 y ha ido mejorando, añadiendo una API, cmdlets de PowerShell y más funcionalidades.

Hoy en día, si vas a gestionar imágenes de Windows, DISM es una herramienta esencial.

## Interfaces

Se han desarrollado varias interfaces gráficas para DISM que facilitan su uso. La herramienta más conocida es [NTLite](https://ntlite.com), que permite integrar paquetes, características y actualizaciones, y soporta instalaciones desatendidas.

También existen alternativas de código abierto, como:

- MSMG Toolkit
- [DISM GUI](https://github.com/mikecel79/DISMGUI)
- [DISM++](https://github.com/Chuyu-Team/Dism-Multi-language)

Y, dado que estás navegando por este sitio, **DISMTools** es otra alternativa disponible.

## Recursos útiles

- [Ayuda de DISM en línea (línea de comandos)](https://docs.microsoft.com/es-es/windows-hardware/manufacture/desktop/deployment-image-servicing-and-management--dism--command-line-options)