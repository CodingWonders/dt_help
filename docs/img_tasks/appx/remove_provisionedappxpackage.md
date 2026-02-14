# Removing provisioned AppX packages

<p align="center">
	<img src="../../res/img_tasks/appx/remove_provisionedappxpackage.png" />
</p>

With DISMTools you can remove provisioned AppX packages by using a checked list. This action can be accessed by clicking Commands > App packages > Remove provisioning for app package...

This action will keep affected applications from being registered to new users, but they will still be registered to existing users.

## Target OS support

This action is supported on the following platforms:

| Platform | Supported? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ❌ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

**NOTE:** if you are removing AppX packages from a Windows Server Core installation, the Desktop Experience feature needs to be installed. **Do not remove the Desktop Experience feature before removing the desired AppX packages.**

<i>This action is supported on DISMTools 0.2 and newer</i>

## Usage

Simply specify the applications you want to remove provisioning for, and then click OK.

## Did you know?

- You can right-click a package in the list to open its directory, or to view its logo assets

<p align="center">
	<img src="https://user-images.githubusercontent.com/101426328/236633802-3c27947c-e282-4258-9ca3-0d6711fc436f.png" />
</p>

<p align="center">
	<img src="https://github.com/CodingWonders/DISMTools/assets/101426328/751b80d9-ee8f-4552-8f91-6f5ebbfaf0da" />
</p>

## Full removal of an application

To fully remove an application, you need to use PowerShell:

1. Open PowerShell as an administrator
2. Type the following command: `Get-AppxPackage -Name <pkgName> | Remove-AppxPackage` (where `<pkgName>` is the name of the desired AppX package to remove)

## Questions

**Q: How does the program determine whether an application is registered to a user?**

**A:** The program determines the registration status of an application by detecting the amount of `.pckgdep` files in the `<mountPath>\ProgramData\Microsoft\Windows\AppRepository\Packages\<pkgName>` folder (where `<mountPath>` is the mount directory of a Windows image or the local disk of an active installation, and `<pkgName>` being the name of the application package). You can't access the `AppRepository` folder in Windows Explorer, but you can access its subdirectories by using 3rd party tools.

When accessing this directory, you'll see `.pckgdep` files whose names begin with `S-1-...`. This is an SID, or a user account identifier. You can view more information about SIDs [here](https://devblogs.microsoft.com/oldnewthing/20230613-00/?p=108335), or detect if you have been assigned a given SID by opening a command prompt window and typing `wmic useraccount get name,sid`.

## Related topics

- [Command-line help](https://example.com)

