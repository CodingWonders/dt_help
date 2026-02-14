# System Environment Variable Manager

The System Environment Variable Manager lets you view and modify information about the environment variables in a Windows image. Use the Manager to view and/or modify environment names and values.

<p align="center">
    <img src="../../res/img_tasks/tools/envvarmgr/envvarmgr.png" />
</p>

You can access the Environment Variable Manager by going to *Tools -> Manage system environment variables*.

*This tool is available in DISMTools 0.7.1 and later.*

**NOTE:** when working with online installations, performing these steps will open the advanced system properties.

User variables will be applied to default user profiles.

## Usage

To modify variable information, select the variable from either the machine scope or user scope list. You can then modify the variable name and value. To save the updated variable, click **Save Variable**.

To save the list of variables to the target image, click **Save** on the bottom right.

You can also move and/or copy variables between the machine scope and user scope lists by using the **Move to User Scope**, **Copy to User Scope**, **Move to Machine Scope**, and **Copy to Machine Scope** buttons. These buttons are disabled when a variable is in both scopes (is hierarchical).

With hierarchical variables, the machine scope values are used first, then the user scope ones. Values in the machine scope may be overridden by user scope values, or prepended to them, when the user profile is loaded.

- For example, `PATH` values in machine and user scopes are combined

Variables that contain references to additional environment variables in the system will be left unexpanded. The Manager, when saving the variables, will save such variables as expand string values in the registry. Otherwise, variables will be saved as string values.

To add or remove variables, click the **Add user variable...** or **Add machine variable...** buttons, or select a variable and click **Remove user variable** or **Remove machine variable**.

## Restoring previous variable information

When saving variables, backups of both machine and user scope variables are saved to your desktop. To restore these backups:

1. Use the Image Registry control panel to load the `SYSTEM` and `NTUSER.DAT` hives of the target image
2. Merge the `.reg` files in your desktop by double-clicking them
3. Unload the `SYSTEM` and `NTUSER.DAT` hives from the control panel and commit the changes

While restoring the backup, you may see an error. This is normal, and many variables will be restored correctly despite the error. Of course, you can always look at the REG files themselves and use the service manager to restore the variables.