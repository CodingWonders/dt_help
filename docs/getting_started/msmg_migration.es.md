# Desde MSMG Toolkit

<p align="center">
	<img src="/res/getting_started/msmg_toolkit.png" />
</p>

MSMG Toolkit es una interfaz de usuario de código abierto para operaciones con DISM que permite integrar paquetes, gestionar características y más. Si vienes de esta utilidad a DISMTools, estos son algunos cambios y diferencias:

## Interfaces de usuario

MSMG Toolkit ofrece una interfaz de usuario en terminal (TUI) con menús que se manejan mediante teclado. Aunque es práctica, no ofrece la misma experiencia visual que una interfaz gráfica (GUI), como la de DISMTools u otras UIs.

<p align="center">
	<img src="/res/product.png" />
</p>

## Operaciones

Con MSMG Toolkit debes copiar los archivos del medio de instalación de Windows a la carpeta `ISO` del directorio de ejecución del Toolkit y luego especificar la imagen de Windows a personalizar. En DISMTools no es necesario: basta con copiar la imagen `install.wim` desde la carpeta `sources` a cualquier ubicación, crear un proyecto y montar la imagen en él.

Si cargas una imagen en MSMG Toolkit y cierras el programa, la imagen se desmonta. Si fuerzas el cierre y vuelves a iniciar la herramienta, puede eliminar TODOS los archivos de la imagen, dejándola **inválida** e **irreparable**, porque el Toolkit se ejecuta como `TrustedInstaller` por defecto. Con DISMTools no necesitas preocuparte por eso: una vez montada una imagen en un proyecto permanecerá hasta que decidas desmontarla. Además, el programa **preserva las imágenes montadas** al iniciar, salvo que sea necesario [recargar la sesión de mantenimiento](../img_tasks/mgmt/remount_image.md) para remontear una imagen.

Con MSMG Toolkit solo puedes gestionar imágenes de Windows; con DISMTools puedes gestionar tanto imágenes como instalaciones activas o offline.