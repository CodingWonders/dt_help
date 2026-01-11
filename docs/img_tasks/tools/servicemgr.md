# System Service Manager

The System Service Manager lets you view and modify information about the services in a Windows image. Use the Manager to modify start type properties, or to simply view information about them.

<p align="center">
    <img src="../../res/img_tasks/tools/servicemgr/servicemgr.png" />
</p>

You can access the System Service Manager by going to *Tools -> Manage system services*.

*This tool is available in DISMTools 0.7.1 and later.*

**NOTE:** when working with online installations, performing these steps will open the default service panel (`services.msc`), as it is more than enough.

## Service Information available

The System Service Manager displays the following information about each service:

- **Service Information** tab:
    - Service name
    - Display name
    - Description
    - Image Path (Path to executable)
    - Object Name (the account the service runs under)
    - Start Type
    - Delayed Start (**only for Automatic start type**)
    - Service Type (kernel device driver, file system driver, adapter, Windows application, Windows service)
- **Required Privileges** tab:
    - Lists the privileges required by the service to run
- **Error Control** tab:
    - Service Control Manager error control (ignore, log but continue, continue starting up in Last Known Good Configuration, or fail startup)
    - Failure Actions:
        - Action on first error
        - Action on second error
        - Action on subsequent errors
        - Reset fail count after (in minutes)
        - Restart service after (in minutes)
- **Service Dependencies** tab:
    - Lists services that depend on this service
    - Lists services that this service depends on

    For both service dependencies and dependents, you will see the service name, the display name, and the service type.
    
- **Service Groups** tab:
    - Lists the group the service belongs to, if any, and other services in the same group
    - Lists registered Service Host (svchost) groups

## Modifying a service

You can modify the start type of a service from one of 5 types:

- **Boot Loader**: device drivers that are loaded by the boot loader
- **I/O System**: device drivers that are loaded by the I/O subsystem
- **Automatic**: services that start automatically during system startup
- **Manual**: services that are started manually by the user or by an application
- **Disabled**: services that are disabled and cannot be started

Items marked as Windows applications or services should not have their start types set to Boot Loader or I/O System. When specifying an Automatic start type, you can also check Delayed Start.

This is the only field you can modify for the moment. More modifyable fields may be added in future versions.

To save the new list of services, click *Save*. The process of saving service changes will take around 20-25 seconds.

## Restoring previous service information

When saving service information, a backup of the current service configuration is created. To restore this backup:

1. Use the Image Registry control panel to load the `SYSTEM` hive of the target image
2. Merge the `.reg` file in your desktop by double-clicking it
3. Unload the `SYSTEM` hive from the control panel and commit the changes

While restoring the backup, you may see an error. This is normal, and many services will be restored correctly despite the error.

It is important that you test your Windows image after modifying services to see if it works as expected. Don't tinker with services too much.