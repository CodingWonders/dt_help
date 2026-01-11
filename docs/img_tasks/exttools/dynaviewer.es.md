## Visor de registros DynaLog

El Visor de registros DynaLog (*DynaViewer*) es una herramienta para ver y analizar los registros diagnósticos generados por DISMTools. Puedes acceder a él desde:

- **Help > Open diagnostic logs in log viewer**
- Ejecutando `DynaViewer.exe` en `<program directory>\tools\DynaLogViewer`

Verás la siguiente ventana:

<p align="center">
    <img src="/res/img_tasks/exttools/dynaviewer/DynaViewer.png" />
</p>

## Uso

Al iniciar DynaViewer puedes abrir un archivo de registro mediante el botón "Open".

El archivo principal suele ser `DT_DynaLog.log`. DynaLog crea copias de seguridad de registros con más de dos semanas; tanto el archivo principal como las copias se almacenan en `<program directory>\logs`.

También puedes ejecutar DynaViewer desde la línea de comandos (ver más abajo).

Tras cargar un registro, verás datos como:

- Marcas de tiempo (UTC)
- ID de proceso (PID)
- Método padre/llamador
- Mensaje descriptivo del evento

Al hacer doble clic en una entrada se abre una ventana con información detallada:

<p align="center">
    <img src="/res/img_tasks/exttools/dynaviewer/DynaViewer_EventProps.png" />
</p>

Si el archivo se ha modificado externamente, pulsa "Refresh" para recargarlo.

Se recomienda adjuntar registros DynaLog al informar de errores para facilitar el diagnóstico. En caso de un fallo interno, DISMTools intenta copiar el último registro al escritorio.

DynaLog puede integrarse con otras aplicaciones que implementen su framework de registro.

## Compatibilidad con versiones antiguas de Windows

DISMTools incluye dos versiones del Visor dirigidas a distintos frameworks:

- La versión principal targetiza .NET 4.8 y funciona en Windows 7 SP1 y posteriores (excepto algunas builds antiguas de Windows 10). El código fuente está disponible en el repositorio.
- Una versión alternativa targetiza .NET 2 para sistemas muy antiguos; su código fuente se distribuye como ZIP.

## Uso desde la línea de comandos

```
DynaViewer.exe "file" [options]
```

Opciones principales:

- `/selectfirst=<n>` — selecciona las primeras *n* entradas del archivo
- `/selectlast=<n>` — selecciona las últimas *n* entradas (útil en informes de errores para incluir las entradas más recientes)

## Formato del registro DynaLog

Cada evento tiene el formato:

```
[Timestamp] [Process ID] [Main Method Caller (Parent Method)] Message
```

Ejemplo de registro desde código C#:

```csharp
DynaLog.LogMessage("Este es un mensaje de registro");
```

Para ignorar el método padre en un evento, pasa `false` como segundo parámetro:

```csharp
DynaLog.LogMessage("Mensaje ignorando padre", false);
```

DynaLog puede desactivarse con `DisableLogging` y reactivarse con `EnableLogging`.

### Historial de versiones del formato

| Version | Usado por DISMTools | Cambios |
|:------:|:-------------------:|:------:|
| 1.0.2  | 0.7 Preview 5+, 0.6.2 Update 2+ | Añadido campo ID de proceso (PID) |
| 1.0.1  | 0.7 Preview 1 - Preview 4, 0.6.2 Update 1 | Cultura invariante para fechas, añadido DynaViewer |
| 1.0    | 0.6.1 - 0.6.2 (Release) | Añadido logging en todo el código, mejoras de velocidad |
| 0.6    | 0.6 | Versión inicial |
