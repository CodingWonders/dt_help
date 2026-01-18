# Herramienta de preparación para Sysprep

La Herramienta de Preparación para Sysprep es una utilidad incluida en DISMTools 0.7.1 y versiones posteriores que prepara un equipo de referencia para la generalización con Sysprep. Es útil para administradores que no usan Configuration Manager u otras soluciones similares y desean una imagen de Windows con aplicaciones preinstaladas.

## Uso

### Preparar un equipo de referencia para Sysprep

Para usar la herramienta, el equipo debe estar en **modo de auditoría**. Para entrar en modo de auditoría desde la OOBE, pulsa <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>F3</kbd>. El equipo se reiniciará y arrancará automáticamente en modo de auditoría.

*Ten en cuenta que la instalación no debe ser desatendida. Si lo es, no podrás entrar en modo de auditoría. Si añadiste un archivo de respuesta, elimínalo antes de instalar el sistema. Para eliminar archivos de respuesta, ve a Comandos -> Archivos de respuesta desatendida -> Remove applied answer file.*

Puedes comprobar si la OOBE es desatendida en el equipo de referencia observando si es necesario interactuar con ella. Por ejemplo, aquí:

<p align="center">
<img src="/res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_InteractiveOOBE.png" />
</p>

<p align="center">
<img src="/res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_Reboot.png" />
</p>

<p align="center">
<img src="/res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_AuditMode.png" />
</p>

Si ves la pantalla anterior, has entrado correctamente en modo de auditoría. No interactúes con la ventana de Sysprep por ahora; muévela fuera del área o ciérrala si lo prefieres.

Procede a instalar las aplicaciones que quieras incluir en la imagen de Windows.

**Notas importantes al instalar aplicaciones:**

- Evita aplicaciones de Microsoft Store, ya que suelen provocar fallos en Sysprep. Si una aplicación de escritorio instala una aplicación de Microsoft Store (por ejemplo, para integrar menús contextuales en Windows 11), elimina dicha aplicación antes de ejecutar la herramienta.
- En la misma línea, evita usar WinGet para instalar aplicaciones. `winget` se instala como una aplicación de Microsoft Store.
- Algunas aplicaciones, como Visual Studio Code, ofrecen variantes de instalación por usuario y a nivel máquina. Siempre utiliza la variante a nivel máquina si está disponible.

### Iniciar la Herramienta de Preparación para Sysprep

La herramienta se añade automáticamente a las ISOs por el Preinstallation Environment Helper. Para iniciarla, abre la aplicación de Autorun (generalmente haciendo doble clic en la ISO en el Explorador, o ejecutando `<ISO letter>:\autorun.exe`) y selecciona *Prepare System for Image Capture*:

<p align="center">
<img src="/res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_AutorunEntry.png" />
</p>

En DISMTools 0.7.2 y posteriores, puedes elegir entre dos modos de ejecución:

- **Modo automático**: ejecuta la herramienta con mínima interacción y opciones por defecto. Si una comprobación falla o devuelve una advertencia, la herramienta te permite pausar y revisar los resultados antes de continuar.
- **Modo manual**: ejecuta la herramienta con interacción completa del usuario.

En cualquiera de los modos puedes marcar *Capturar imagen tras preparar el sistema* para capturar la imagen tras completar Sysprep. Más información sobre captura de imágenes en la [referencia del script de administración](../cmdline/scriptref.md).

La guía continúa en modo manual.

Llegarás al asistente:

<p align="center">
<img src="/res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_Home.png" />
</p>

La herramienta realizará comprobaciones sobre el equipo antes de continuar: estados de instalación, controladores de terceros, pertenencia a dominio, etc. Verás los resultados cuando finalicen:

<p align="center">
<img src="/res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_CheckScreen.png" />
</p>

Para ver más detalles de una comprobación, haz clic en su entrada de la lista:

<p align="center">
<img src="/res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_CheckScreenDetails.png" />
</p>

Cada comprobación muestra tres campos de estado:

- **Compatible**: Indica si la comprobación pasó o falló
- **Detalles**: Muestra lo que la comprobación informó
- **Severidad**: Indica la gravedad de los posibles problemas. Hay tres niveles:
    - **Información**: La comprobación es informativa. Aparece cuando la comprobación pasa, no era necesaria o reporta algo que no impedirá Sysprep
    - **Advertencia**: Se detectó un posible problema que puede hacer fallar a Sysprep. Puedes continuar a pesar de las advertencias, pero no es recomendable
    - **Crítico**: La comprobación detectó un problema que hará fallar a Sysprep. No puedes continuar mientras exista un error crítico

Es importante que ninguna comprobación devuelva un nivel *Critical*. Los detalles de comprobación, cuando no sean informativos, suelen incluir pasos para resolver el problema.

Continuando en el asistente, llegarás a la página donde se configuran las opciones que se pasarán a Sysprep:

<p align="center">
<img src="/res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_AdvancedPrepSettings.png" />
</p>

Normalmente no es necesario modificar nada aquí; las opciones por defecto son válidas para la mayoría de casos. Si necesitas personalizar el comportamiento de Sysprep, puedes hacerlo en esta pantalla.

Finalmente, espera a que la herramienta complete su trabajo:

<p align="center">
<img src="/res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_Preparation.png" />
</p>

<p align="center">
<img src="/res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_Finish.png" />
</p>

Tras el apagado del equipo, podrás capturar la imagen con tu método preferido. Si deseas modificar la imagen sin conexión, arranca en el Preinstallation Environment de DISMTools y captura todo el disco con el script de **captura de imágenes**. [Consulta la referencia del script de administración](../cmdline/scriptref.md) para más detalles.

## Contenido relacionado

Puedes descargar la herramienta para ejecutarla de forma independiente aquí: [Sysprep Preparator Repository](https://github.com/CodingWonders/SysprepPreparator).
