# Crear un archivo ISO

Para crear un nuevo archivo ISO, realiza los siguientes pasos:

1. **Selecciona tu imagen de Windows.** Puedes buscar una imagen en tu equipo, elegir una desde el selector emergente de imágenes montadas o usar la actualmente cargada. Al seleccionar la imagen verás información sobre cada índice.
2. **Elige la arquitectura para el Entorno de Preinstalación (PE)** utilizando la lista de arquitecturas. Se recomienda seleccionar la arquitectura compatible con la imagen.
3. (Opcional) **Selecciona un archivo de respuesta desatendida para aplicar**.
4. **Elige la ubicación destino del archivo ISO.** Si el archivo destino existe, se te preguntará si deseas reemplazarlo al pulsar Crear.

En DISMTools 0.6.1 y posteriores, también puedes especificar dos opciones:

- **Copiar a unidades Ventoy**: aprovecha unidades Ventoy para instalación de sistemas operativos; una vez generado el ISO se copiará automáticamente a todas las unidades Ventoy conectadas.
- **Usar binarios de arranque recién firmados**: los ISOs generados incluirán binarios EFI firmados con el certificado *Windows UEFI CA 2023*. Esta opción no está marcada por defecto (se explica más adelante).

El proceso puede tardar entre 5 y 10 minutos, según el tamaño de la imagen y la velocidad del disco.

#### Información sobre Windows UEFI CA 2023

Los nuevos binarios EFI están firmados con la CA Windows UEFI 2023, que reemplaza a la autoridad de certificación de 2011 (la cual expira en junio de 2026).

Los binarios firmados con la CA 2023 ya están incluidos en equipos fabricados desde 2024 y en las versiones 10.1.26100.2454+ del ADK de Windows; son una opción recomendada para evitar problemas de arranque en sistemas con listas de revocación actualizadas.

Puedes comprobar si un sistema UEFI con Secure Boot soporta la CA 2023 mediante PowerShell o el Registro.

- Para verificar en PowerShell ejecuta:

```powershell
[System.Text.Encoding]::ASCII.GetString((Get-SecureBootUEFI db).bytes) -match 'Windows UEFI CA 2023'
```

<p align="center">
    <img src="https://techcommunity.microsoft.com/t5/s/gxcuf89792/images/bS00MTIxNzM1LTU3MzgxN2kwQ0ZBNzNGQ0FEMjU2RTBE?revision=7" />
    <p align="center"><i>Ejemplo de salida del comando. Fuente: Microsoft Tech Community</i></p>
</p>

El comando devuelve `True` o `False` según el certificado esté instalado o no.

- Para verificar en el Registro:
  1. Abre el Editor del Registro y ve a `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecureBoot\Servicing`
  2. Busca el valor `UEFICA2023Status`

En sistemas con la CA 2023 instalada, su valor será "Updated":

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/uefica2023/uefica2023status.png" />
</p>

Más información: [Revoking vulnerable Windows boot managers](https://techcommunity.microsoft.com/blog/windows-itpro-blog/revoking-vulnerable-windows-boot-managers/4121735) y [Secure Boot playbook for certificates expiring in 2026](https://techcommunity.microsoft.com/blog/Windows-ITPro-blog/secure-boot-playbook-for-certificates-expiring-in-2026/4469235).

En DISMTools 0.7.2+ puede aparecer esta advertencia:

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/uefica2023/uefica2023warning.png" />
</p>

La advertencia aparece si creas un ISO en un sistema UEFI con Secure Boot activado que no soporta la CA 2023 y marcas "Use newly-signed boot binaries".

Microsoft y los OEM publican actualizaciones de software y firmware para añadir soporte; actualiza tu sistema y firmware o evita usar los binarios actualizados para compatibilidad (aunque esto podría impedir el arranque en sistemas que hayan revocado los certificados de 2011).

### Continuar con la instalación

Tanto si iniciaste la instalación con HotInstall como arrancando desde un medio, el proceso será el mismo. El PE Helper guía el proceso, que incluye:

1. Seleccionar disco y partición
2. Elegir el índice de la imagen de Windows a aplicar
3. Aplicar la imagen
4. Ejecutar pruebas de servicio
5. Crear archivos de arranque
6. Reiniciar el sistema

El proceso difiere si usas los PXE Helpers.

### Elegir el método de instalación

**NOTA:** esta pantalla no aparece si iniciaste con HotInstall

Al arrancar el Entorno de Preinstalación verás una pantalla para elegir el método (local o por red):

- Teclea `1` y pulsa Enter para instalación local
- Teclea `2` y pulsa Enter para instalación por red
- Teclea `C` y pulsa Enter para abrir la línea de comandos
- Teclea `S` y pulsa Enter para apagar
- Teclea `R` y pulsa Enter para reiniciar

<p align="center">
    <img src="/res/img_tasks/tools/isocreator/dt_pe/dt_pe_choose_install_option.png" />
</p>

Consulta *Installing the operating system* para más detalles.

## Observaciones

- **Asegúrate de confirmar (commit) los cambios no guardados en tu imagen antes de crear el ISO**