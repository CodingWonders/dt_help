# Información de capacidades

<p align="center">
    <img src="/res/img_tasks/info/cap_info.png" />
</p>

Con DISMTools puedes obtener información sobre las capacidades presentes en imágenes e instalaciones de Windows de todo tipo.

*Esta acción es compatible con DISMTools 0.3.1 y posteriores.*

**NOTA:** esta acción no está soportada en imágenes o instalaciones anteriores a Windows 10 o Server 2016.

## Uso

- Cuando no hay capacidades seleccionadas o si el diálogo se abre por primera vez en la ejecución, verás información breve sobre todas las capacidades (identidad y estado).
- Para obtener información de una capacidad concreta, **selecciónala en la lista**; verás sus detalles a la derecha.

## Información sobre tamaños de descarga e instalación

En las versiones de la serie 0.3 que soportan esta acción (0.3.1–0.3.3) existía un problema por el que los tamaños de descarga e instalación podían desbordar, devolviendo valores negativos. Esto era causado por la librería gestionada de la API DISM.

DISMTools 0.4 no está afectado gracias a una versión actualizada de dicha librería que corrige el problema.

## Funcionalidad adicional de búsqueda

Con los filtros de estado introducidos en DISMTools 0.6 puedes obtener información en función del estado de una capacidad. Para filtrar por estado, **escribe `state:` y proporciona uno de los siguientes valores**:

- `installed`
- `notpresent`
- `installpending`

Si quieres buscar capacidades en un estado concreto que contengan un nombre, escribe el flag `state` después del nombre.

## Contenido relacionado

- [Diálogos de información de imagen](../info/infodlgs.md)