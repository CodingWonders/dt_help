# Preparar el servidor

El primer paso es preparar el servidor para el arranque PXE y, si no está configurada, la infraestructura de red. Esta sección cubre ambas tareas.

## Comprobación de roles del servidor

Para desplegar sistemas operativos por red necesitarás los siguientes roles en el servidor:

- DHCP (Dynamic Host Configuration Protocol)
- Windows Deployment Services (WDS)

**NOTA:** puedes disponer de un servidor distinto que actúe como servidor DHCP. En ese caso, sólo necesitas el rol WDS.

Deberías poder comprobar si están instalados buscando las herramientas de administración:

![DHCP Requirement](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dhcp_req.png)

![WDS Requirement](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_req.png)

**NOTA:** si no usas WDS, no instales el rol WDS. Esta guía asume que usarás WDS. Sin embargo, DHCP sigue siendo obligatorio para el arranque PXE.

Si no están presentes, evalúa la situación actual del servidor. Para ello:

1. Abre Server Manager
2. Haz clic en "Add roles and features" y ejecuta una instalación basada en roles o en características
3. Selecciona tu servidor y comprueba qué roles están presentes. Ambos deben estar instalados:

    ![Server Roles](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/roles.png)
    
Según el caso:

- *Si no están instalados:*

    1. Marca DHCP y WDS e incluye las herramientas de administración
    2. Continúa sin modificar características a menos que necesites habilitar/deshabilitar alguna
    3. Lee las instrucciones para DHCP con atención
    4. En la configuración del rol WDS, deja marcados los roles de Deployment y Transport
    5. Continúa con la instalación. Tras la instalación, verás que uno de los roles necesita configuración: el rol DHCP.
    6. Realiza la configuración del servidor DHCP según las indicaciones:

        ![DHCP Configuration](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dhcp_config.png)
    
    7. Haz clic en "Commit" y después en "Close":
    
        ![DHCP Configuration 2](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dhcp_postconfig_commit.png)
    
- *Si están instalados, pero faltan las herramientas de administración:*

    Habilita las características `DHCPServer-Tools` y `Microsoft-Windows-Deployment-Services-Admin-Pack`. Puedes hacerlo [habilitando las características](../../../../features/enable_feature.md) desde el [modo de gestión de instalaciones en línea](../../../../online_inst_mgmt.md).
    
    Es posible que debas reiniciar el servidor tras habilitar las características.

## Preparar la infraestructura de red

Si ya cuentas con una infraestructura de red preparada para despliegues remotos, puedes omitir este paso. Si quieres practicar despliegues remotos en casa con conexión inalámbrica, sigue estos pasos para crear un conmutador virtual (*vSwitch*).

**Notas:**

- Estos pasos funcionan sólo con Hyper‑V
- Tras reiniciar el equipo anfitrión, las máquinas virtuales conectadas al conmutador pueden perder acceso a Internet. Aun así, el conmutador seguirá funcionando para la instalación remota
- Puede haber consumo adicional de datos

Para crear el conmutador virtual:

1. En Hyper‑V Manager, abre el Virtual Switch Manager y crea un conmutador **Internal**. Asigna el nombre que desees y haz clic en OK. Deberías ver algo así:

    ![vSwitch](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/viridian_new_vswitch.png)

2. Tras crear el conmutador, pulsa <kbd>Win</kbd> + <kbd>R</kbd> y ejecuta `ncpa.cpl`. Haz doble clic en la interfaz inalámbrica y abre las propiedades del adaptador
3. Habilita Internet Connection Sharing (ICS) usando el conmutador recién creado. La IP resultante de ICS suele ser `192.168.137.1`

Por último, configura el servidor para usar el nuevo conmutador:

![Connect To Switch](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/viridian_connect_to_switch.png)

Enciende la VM del servidor y ejecuta `ipconfig /all` para comprobar que el adaptador de red virtual detecta la dirección utilizada por ICS como puerta de enlace predeterminada. Si es así, prueba a hacer ping:

![Connect To Switch](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/viridian_server_ipconfig.png)

**Consejo:** si quieres que la dirección IP del servidor no cambie (sea estática), o si no puede obtener la puerta de enlace por DHCP, ve a las propiedades IPv4 del adaptador virtual y configura los valores manualmente:

![Static IP](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/viridian_server_static_ip.png)

Si el servidor puede hacer ping al equipo anfitrión, tienes un vSwitch funcional. Conecta el resto de máquinas virtuales al mismo conmutador para usarlas.

## Configurar los ámbitos (scopes) de DHCP

**NOTA:** el contenido de esta sección, introducido en las primeras previews de la versión 0.7, se movió a la guía de WDS para mostrar configuraciones que funcionan con otros proveedores. Esta guía solo trata cómo crear ámbitos DHCP para PXE.

Un servidor DHCP necesita ámbitos con capacidad suficiente para albergar el número máximo de clientes previstos. Si ya configuraste ámbitos, puedes omitir este paso; en caso contrario, sigue leyendo.

Abre la consola de DHCP, selecciona el servidor y ve a IPv4. Crearemos un ámbito IPv4 básico usando transmisiones unicast (lo más habitual).

![DHCPv4 panel](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dhcp_ipv4_scope_panel.png)

Haz clic derecho en IPv4 y selecciona New Scope. En el asistente, sigue estos pasos:

1. Asigna un nombre al ámbito y una descripción opcional:

    ![Scope Identification](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dhcp_ipv4_scope_name.png)

2. Proporciona un rango de direcciones IP para clientes (la **pool**). Debe coincidir con la máscara de subred configurada en el servidor. En esta guía crearemos un ámbito para 51 clientes:

    ![Address Pool](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dhcp_ipv4_scope_addressrange.png)
    
3. Si no quieres asignar direcciones dentro de cierto rango, añade exclusiones. En esta guía no añadiremos exclusiones:

    ![Address Pool Exclusions](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dhcp_ipv4_scope_excludedrange.png)
    
4. Configura la duración del lease. El valor por defecto (8 días) suele ser suficiente:

    ![Address Lease Duration](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dhcp_ipv4_scope_leases.png)

5. Cuando se te pregunte si quieres configurar más detalles del ámbito, selecciona Yes y pulsa Next. Indica la puerta de enlace predeterminada para el ámbito. Si seguiste la guía del vSwitch, la puerta de enlace será la IP que gestiona ICS en el equipo anfitrión. Este valor también suele ser la dirección DNS si la configuraste anteriormente:

    ![Gateway](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dhcp_ipv4_scope_gateway.png)

6. Tras configurar la puerta de enlace y el DNS, deja WINS tal cual y pulsa Next. Cuando te pregunten si activar el ámbito, selecciona No y pulsa Next:

    ![Activation](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dhcp_ipv4_scope_activate.png)

7. En el ámbito recién creado, haz clic derecho en Scope Options y selecciona "Configure Options...":

    ![Configure Options](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dhcp_scope_options_menu_item.png)
    
8. Configura las siguientes opciones según tu solución de despliegue:

    | Provider | Option | Value |
    |----------|--------|-------|
    | <all>    | 66     | IP del servidor TFTP |
    | WDS      | 67     | `boot\\<arch>\\wdsnbp.com` |
    | FOG      | 67     | `ipxe.efi` (u otros binarios NBP de [iPXE](https://ipxe.org/)) |
    
    Por ejemplo, para WDS:
    
    ![Required scopes](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dhcp_scope_options_required.png)

9. Finalmente, haz clic derecho sobre el ámbito y selecciona "Activate"

## Observaciones finales

Puedes aplicar las configuraciones anteriores a nivel de ámbito o de forma global. Si vas a usar ambas plataformas, prepara scripts que automaticen estas tareas. Ejemplo:

```powershell
Set-DhcpServerv4OptionValue [-ScopeId "<IP Scope>"] -OptionId 66 -Value "<TFTP Server IP>"
Set-DhcpServerv4OptionValue [-ScopeId "<IP Scope>"] -OptionId 67 -Value "<TFTP NBP for provider>"
```

Solo incluye el parámetro `-ScopeId` si quieres configurar la opción para un ámbito concreto.
