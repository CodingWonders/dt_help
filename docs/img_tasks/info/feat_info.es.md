# Información de características

<p align="center">
    <img src="/res/img_tasks/info/feat_info.png" />
</p>

Con DISMTools puedes obtener información sobre las características presentes en imágenes e instalaciones de Windows de todo tipo.

*Esta acción está soportada en DISMTools 0.3.1 y posteriores.*

## Uso

- Cuando no hay características seleccionadas o al abrir el diálogo por primera vez verás información breve sobre todas las características (nombre y estado).
- Para obtener información de una característica concreta, **selecciónala en la lista**; sus detalles aparecerán a la derecha.

## Mejor visualización de propiedades personalizadas

DISMTools 0.5 introduce una nueva vista para propiedades personalizadas de características que facilita la comprensión de su jerarquía mediante un árbol.

<p align="center">
    <img src="/res/img_tasks/info/cprop_viewer.png" />
</p>

## Funcionalidad adicional de búsqueda

Con los filtros por estado introducidos en DISMTools 0.6 puedes obtener información basada en el estado de una característica. Para filtrar por estado, **escribe `state:` y uno de los valores siguientes**:

- `enabled`
- `disabled`
- `enablepending`

<p align="center">
    <img src="/res/img_tasks/info/feat_info_state_filter.gif" />
</p>

Para buscar características en un estado concreto que contengan un nombre, escribe el flag `state` tras el nombre.

<p align="center">
    <img src="/res/img_tasks/info/feat_info_state_filter_example.png" />
</p>

## Contenido relacionado

- [Diálogos de información de imagen](../info/infodlgs.md)