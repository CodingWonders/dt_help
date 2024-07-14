# Viniendo de MSMG Toolkit

<p align="center">
	<img src="../../res/getting_started/msmg_toolkit.png" />
</p>

MSMG Toolkit es una interfaz de usuario gratuita y de código abierto para operaciones de DISM, que le permite integrar paquetes, administrar características, y más. Si viene de esta herramienta, le interesaría saber algunos cambios:

## Interfaces de usuario

MSMG Toolkit es una interfaz de usuario de terminal (TUI) con menús que puede operar pulsando una tecla. Esto es intuitivo, pero no tan intuitivo como una interfaz gráfica de usuario (GUI), que DISMTools y otras interfaces son.

<p align="center">
	<img src="../../res/product.png" />
</p>

## Operaciones

Con MSMG Toolkit, debe copiar los archivos de un disco de instalación de Windows a la carpeta `ISO` del directorio del programa y especificar una imagen de Windows a personalizar. En cambio, con DISMTools, no tiene que hacer eso. Solo debe copiar la imagen de Windows que desee de la carpeta `sources` del disco de instalación de Windows a cualquier ubicación, crear un proyecto, y montar una imagen en él.

Si usted ha cargado una imagen de Windows en MSMG Toolkit y cerró el programa, lo desmontará. Si fuerza el cierre del programa y lo inicia de nuevo, eliminará TODOS los archivos de la imagen de Windows, haciéndola **inválida** e **imposible de reparar**. Esto puede ser realizado porque el programa se inicia como `TrustedInstaller` por defecto. Con DISMTools no debe preocuparse de eso. Tras montar una imagen en un proyecto, permanecerá ahí, incluso si cierra el programa; hasta que decida desmontarla. También, el programa **no modificará la imagen** al iniciarse, excepto cuando se [recargue la sesión de servicio](../img_tasks/mgmt/remount_image.md) si las imágenes necesitan una recarga.

Con MSMG Toolkit, usted solo puede administrar imágenes de Windows. En cambio, con DISMTools, usted puede administrar imágenes de Windows e instalaciones de cualquier tipo.