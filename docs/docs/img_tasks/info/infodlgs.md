# Information dialogs

<p align="center">
    <img src="../../../res/img_tasks/info/info_dlgs.png" />
</p>

Like their names suggest, information dialogs let you easily get specific information from a Windows image or installation with powerful and easy to use interfaces.

*The overall action is supported on DISMTools 0.3.1 and newer.*

## Available dialogs

The following dialogs let you get specific information from a Windows image or installation:

| Dialog | Purpose | Remarks |
|:--|:--:|:--|
| [Image information](./img_info.md) | Lets you get the information of any image file | <p align="center">-</p> |
| [Package information](./pkg_info.md) | Lets you get the information of either installed packages or packages you want to add | <ul><li>Capability information can't be obtained on Windows 8.1/Server 2012 R2 hosts</li></ul>|
| [Feature information](./feat_info.md) | Lets you get the information of all features present in a Windows image | <p align="center">-</p> |
| [AppX package information](./appxpkg_info.md) | Lets you get the information of installed AppX packages | <ul><li>This action is only supported on Windows 8 and newer systems</li><li>You can't get information of the AppX packages you want to add</li></ul> |
| [Capability information](./cap_info.md) | Lets you get the information of all capabilities present in a Windows image | <ul><li>This action is only supported on Windows 10 and newer</li></ul> |
| [Driver information](./drv_info.md) | Lets you get the information of either installed drivers or the driver packages you want to add | <ul><li>The amount of installed drivers depends on the settings of the background processes</li></ul> |
| [Windows PE information](./winpe_info.md) | Lets you get the information of the target path and the scratch space amount on a Windows PE image | <ul><li>This action is only supported on Windows PE images</li></ul> |

## Saving image information

DISMTools 0.3.3 and later let you save this information to a file.

<p align="center">
    <img src="../../../res/img_tasks/info/info_save.png" />
</p>

This action will generate an **image information report**, which you can view at any time.

DISMTools 0.4 expands this functionality by showing a preview of the information report after completing the process. It also lets you print it from said preview window.

<p align="center">
    <img src="https://github.com/CodingWonders/DISMTools/assets/101426328/34f899eb-fccd-4f2b-a787-cf4b10389f4b" />
</p>

<p align="center">
    <img src="https://github.com/CodingWonders/DISMTools/assets/101426328/c236375b-ce3d-46bb-8ef4-e9749205265d" />
</p>