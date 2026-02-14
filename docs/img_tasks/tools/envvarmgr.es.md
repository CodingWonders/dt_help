# Administrador de variables de entorno del sistema

El Administrador de variables de entorno del sistema te permite ver y modificar la información sobre las variables de entorno en una imagen de Windows. Utiliza el administrador para ver y/o modificar nombres y valores de variables.

<p align="center">
    <img src="/res/img_tasks/tools/envvarmgr/envvarmgr.png" />
</p>

Puedes acceder al Administrador de variables de entorno en *Herramientas -> Administrar variables de entorno del sistema*.

*Esta herramienta está disponible en DISMTools 0.7.1 y posteriores.*

**NOTA:** al trabajar con instalaciones en línea, realizar estas acciones abrirá las propiedades avanzadas del sistema.

Las variables de usuario se aplicarán a los perfiles de usuario por defecto.

## Uso

Para modificar una variable, selecciónala en la lista de ámbito del equipo (machine) o de usuario (user). Luego puedes cambiar el nombre y el valor de la variable. Para guardar la variable actualizada, haz clic en **Save Variable**.

Para guardar la lista de variables en la imagen objetivo, haz clic en **Save** en la esquina inferior derecha.

También puedes mover o copiar variables entre los ámbitos machine y user usando los botones **Move to User Scope**, **Copy to User Scope**, **Move to Machine Scope** y **Copy to Machine Scope**. Estos botones están deshabilitados cuando una variable existe en ambos ámbitos (es jerárquica).

Con variables jerárquicas se usan primero los valores del ámbito machine y luego los del ámbito user. Los valores del ámbito machine pueden ser sobrescritos por los del ámbito user, o bien estos últimos pueden ser antepuestos al cargarse el perfil de usuario.

- Por ejemplo, los valores de `PATH` en los ámbitos machine y user se combinan

Las variables que contienen referencias a otras variables del sistema se guardarán sin expandir. Al guardar, el Administrador escribirá dichas variables como valores de tipo expand string en el registro; en caso contrario se guardarán como valores de cadena.

Para agregar o eliminar variables, haz clic en **Add user variable...** o **Add machine variable...**, o selecciona una variable y pulsa **Remove user variable** o **Remove machine variable**.

## Restaurar información de variables previa

Al guardar variables, se crean copias de seguridad de los ámbitos machine y user en tu escritorio. Para restaurarlas:

1. Usa el panel Image Registry para cargar los árboles `SYSTEM` y `NTUSER.DAT` de la imagen objetivo
2. Fusiona los archivos `.reg` en tu escritorio haciendo doble clic
3. Descarga los árboles `SYSTEM` y `NTUSER.DAT` desde el panel y confirma los cambios

Al restaurar la copia es posible que aparezca un error. Esto es normal y muchas variables se restaurarán correctamente pese al error. También puedes inspeccionar los archivos REG y usar el gestor de servicios para restaurar variables si fuera necesario.