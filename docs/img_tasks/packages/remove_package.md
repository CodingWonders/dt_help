# Removing packages

<p align="center">
	<img src="../../res/img_tasks/packages/remove_package.png" />
</p>

With DISMTools you can remove packages from a Windows image or installation. This action can be accessed by clicking Commands > OS packages > Remove package..., or by clicking the "Remove package..." button.

## Target OS support

This action is supported on the following platforms:

| Platform | Supported? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>This action is supported on DISMTools 0.1.1 and newer</i>

## Usage

You can either specify the names of installed packages to remove, or specify a package source and select the files you want to remove from the image or installation.

**NOTE:** if you proceed with the latter option, you may select packages that aren't even installed in the image or installation. However, DISMTools will skip these

## Related topics

- [Command-line help](https://example.com)