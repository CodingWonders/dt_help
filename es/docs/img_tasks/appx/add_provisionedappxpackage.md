# Adding provisioned AppX packages

<p align="center">
	<img src="../../../res/img_tasks/appx/add_provisionedappxpackage.png" />
</p>

With DISMTools you can add provisioned AppX packages using an intuitive UI. This action can be accessed by clicking Commands > App packages > Add provisioned app package...

## Target OS support

This action is supported on the following platforms:

| Platform | Supported? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ❌ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

**NOTE:** if you are adding provisioned AppX packages to an online installation, you may need to enable sideloading of applications. Otherwise, you may get error code `0xc1570113`. More information can be found [here](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/sideload-apps-with-dism-s14?view=windows-11#configure-pcs-for-developing-windows-apps). You may also need to properly **register the application to the operating system** for it to fully work, a guide for which is explained later in this page.

<i>This action is supported on DISMTools 0.2 and newer</i>

## Usage

- Add any application file you want to add to a Windows image, which can be in the `.appx`, `.msix`, `.appxbundle` or `.msixbundle` format, to the **AppX package list**. This can be done by using the buttons on the bottom of the dialog, or by dropping them from an **elevated** application.
- If an application contains dependencies, be sure to add these to the **AppX dependency list**, by using the buttons below or by dropping them from an elevated application

### App Installer support

DISMTools 0.3.2 expands the AppX addition capabilities by supporting App Installer files. Simply specify an `.appinstaller` file or drop it in the package addition list view, and let the program deal with it.

You can learn more about App Installer files [here](./appx.md#app-installer-files).

## Options

- A **license file** may be required for an application to be installed, which you can specify in the license file text box. Otherwise, select "Skip license"
- If you want, you can **provide a custom data file**
- If you want to provision applications in some regions, specify them, separated by a semi-colon (;); following the [ISO 3166-1 Alpha 2](https://en.wikipedia.org/wiki/ISO_3166-1) or [Alpha 3](https://en.wikipedia.org/wiki/ISO_3166-1) codes

**NOTE:** specifying a region requires DISM for Windows 10 and/or a Windows 10 or later image.

- If you want, you can **commit the image after adding the selected AppX packages**.

## Questions

**Q: Where can I download app packages?**

**A:** You can make use of the [Microsoft Store Generation Project](https://store.rg-adguard.net/) and the [web version of the Microsoft Store](https://apps.microsoft.com/store/apps). Follow these steps:

1. Load the Microsoft Apps website and search for the application you are looking for
2. Once you've found your desired application, **copy its link**. It will be useful for the generation project
3. Load the generation project website and paste the link you've copied
4. If the server returns results, download the desired version of the AppX package **and its dependencies**

<p align="center">
	<img src="../../../res/img_tasks/appx/microsoft_apps.png" />
</p>

<p align="center">
	<img src="../../../res/img_tasks/appx/store_rg-adguard.png" />
</p>

If your browser complains about the safety of the files, confirm you want to download them.

**Q: I've installed an application on an online installation using this method, but the application doesn't work. Why?**

**A:** This may occur because the application is not fully registered. To do this, you need to make use of the registry and PowerShell:

1. Open the Registry Editor, go to `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications` and grab the name of the application you want to register
2. Next, open PowerShell as an administrator and type the following:

```powershell
Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\*<PackageName>*\' -Name "Path" | Add-AppxPackage -DisableDevelopmentMode -Register
```

(where `*<PackageName>*` is the name of the package you want to register)

- If the command complains about `%SYSTEMDRIVE%` being in the `Path` value, replace it with the drive you've booted to, like this:

```powershell
(Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\*<PackageName>*\' -Name "Path").Replace('%SYSTEMDRIVE%', 'C:').Trim() | Add-AppxPackage -DisableDevelopmentMode -Register
```

(obviously, replace "C:" with your boot drive)

- If the command complains about a missing dependency, download it, then add it using DISM, then use the same procedure

The application should be fully registered now. Do note that the application will still not work if you are logged into the built-in Administrator account. In that case, you need to create a new user.

## Related topics

- [Command-line help](https://example.com)