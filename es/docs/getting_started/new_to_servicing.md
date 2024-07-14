# Comenzar con el servicio de Windows

## Contexto

En 2007, Microsoft introdujo Windows Vista, que haría múltiples cambios en la manera en la que iba a ser implementada a sistemas. El formato Windows Imaging (abreviado a WIM) hizo la instalación y la administración más rápida y sencilla, debido a que archivos WIM contenían una instalación completa de Windows; en vez del antiguo método de copiar archivos de los medios de instalación

Con Windows Vista, Microsoft también introdujo el Kit de Instalación Automatizada (AIK), que contiene las herramientas de implementación necesarias para dicho sistema operativo. Herramientas como ImageX (que implementa imágenes), Package Manager (que implementa paquetes), IntlCfg (que configura opciones regionales) o más; fueron incluidos con este kit. Sin embargo, Microsoft quiso crear una solución que simplificaría el proceso de implementación.

Su resupuesta era la herramienta **Administración y mantenimiento de imágenes de implementación** (DISM), que realiza cada acción de las herramientas ya mencionadas en un solo programa de línea de comandos. DISM fue lanzado junto a Windows 7, y se ha ido mejorando desde entonces; con la introducción de la API, comandos (cmdlets) de PowerShell, y más.

Hoy en día, si quiere administrar imágenes de Windows, DISM es una herramienta que aprender.

## Interfaces

Unas cuantas interfaces gráficas de DISM también han sido desarrolladas para simplificar tareas con dicho programa. La herramienta más conocida es [NTLite](https://ntlite.com), que le permite integrar paquetes, características y actualizaciones; y permite instalaciones desatendidas.

Además hay disponibles alternativas de código abierto, como:

- MSMG Toolkit
- [DISM GUI](https://github.com/mikecel79/DISMGUI)
- [DISM++](https://github.com/Chuyu-Team/Dism-Multi-language)

Y, debido a que está viendo este sitio, **DISMTools** es otra nueva alternativa.

## Recursos útiles

- [Ayuda de línea de comandos de DISM](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/deployment-image-servicing-and-management--dism--command-line-options)