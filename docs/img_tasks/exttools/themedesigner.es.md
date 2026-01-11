# Diseñador de temas de DISMTools

El Diseñador de temas de DISMTools es una herramienta para crear y editar temas. Puedes acceder a él desde:

- `Tools > Options > Personalization` y pulsar "Design your themes"
- Ejecutando `DT_ThemeDesigner.exe` en `<program directory>\tools\ThemeDesigner`

Verás esta ventana:

<p align="center">
    <img src="/res/img_tasks/exttools/themedesigner/ThemeDesigner.png" />
</p>

## Uso

Al iniciar el Diseñador de temas puedes crear, abrir y guardar temas usando los iconos de la barra de herramientas.

Empieza por elegir un nombre para el tema (por ejemplo, "The Color of Passion" para una paleta roja). Luego define los colores, agrupados en:

- **Colores de fondo (secciones exterior e interior)**
- **Color de primer plano (foreground)**
- **Colores de acento** (actualmente se admiten 4 colores de acento)

Si creas un tema oscuro, marca **DISMTools should use dark mode glyphs** para que los iconos y glifos sean visibles.

Para cambiar colores haz clic en "Change" junto a las vistas previas; verás una previsualización en tiempo real. Si te convence, pulsa "Save".

## Instalar el tema

Copía el archivo del tema a `<program directory>\bin\themes` y reinicia el programa. El tema aparecerá en la lista de personalización; selecciona el modo (claro/oscuro) según corresponda.

<p align="center">
    <img src="/res/img_tasks/exttools/themedesigner/ThemeDesigner_SetCustomTheme.png" />
</p>

¡Disfruta tu nuevo tema!

<p align="center">
    <img src="/res/img_tasks/exttools/themedesigner/ThemeDesigner_CustomTheme.png" />
</p>

**NOTA:** los temas creados no funcionan en DISMTools 0.6.2 y anteriores por la ausencia del motor de temas.

## Ejecución en versiones antiguas de Windows

DISMTools incluye dos versiones del Diseñador de temas dirigidas a distintos frameworks:

- Versión principal: .NET 4.8 (Windows 7 SP1+ salvo Windows 10 1507/1511)
- Versión alternativa: .NET 2 (funciona en Windows 98 SE)

<p align="center">
    <img src="/res/img_tasks/exttools/themedesigner/ThemeDesigner_Win9x.png" />
</p>

## Formato del tema

Los temas se almacenan en archivos INI editables. Ejemplo:

```ini
[Theme Information]
Name="Example Theme"

[Theme Colors]
IsDark=0 ; 1 para modo oscuro, 0 para claro
BackgroundColor="#abcdef"
SectionBackgroundColor="#abcdef"
ForegroundColor="#000000"
AccentColor1="#143A10"
AccentColor2="#246B1C"
AccentColor3="#057F1A"
AccentColor4="#005522"
```

En Windows 9X pueden aparecer artefactos al abrir archivos UTF-8 en editores que solo soportan ASCII. Los valores de color son hex RGB; no hay soporte alpha.

Para elementos deshabilitados, el motor calcula un color inactivo según el color de primer plano usando este criterio:

1. Determina si el color es claro u oscuro con la fórmula:

    $$ (Rojo \times 0.299 + Verde \times 0.587 + Azul \times 0.114) \geq 128 $$

    - Si es claro, se usa factor 0.7 para calcular el color inactivo
    - Si es oscuro, se usa factor 1.3 y se evita el desbordamiento limitando el valor a 255

2. Se crea el color inactivo usando el canal alpha original y el valor calculado para R/G/B

Los temas no persisten tras actualizaciones: haz copia de seguridad y vuelve a instalarlos si es necesario. El formato puede cambiar en el futuro.

### Historial de formato

| Version | Used by DISMTools versions | Notes |
|:-------:|:--------------------------:|-------|
| 1.0     | 0.7                        | Versión inicial |

Usa esta tabla para seguir cambios del formato.