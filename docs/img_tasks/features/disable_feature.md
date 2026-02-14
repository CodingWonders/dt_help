# Disabling features

<p align="center">
	<img src="../../res/img_tasks/features/disable_feature.png" />
</p>

With DISMTools you can disable features of an image to remove optional components to a Windows installation, or to cancel the addition of optional components previously not installed. This action can be accessed by clicking Commands > OS packages > Disable feature..., or by clicking the "Disable feature..." button.

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

You need to specify the features you want to enable on your Windows image or installation, and specify settings in order to get the result you want.

## Options

- If the parent package is not a Windows Foundation package, the name of the **parent package** needs to be provided. You can perform a quick package lookup to specify the name of the parent package

<p align="center">
	<img src="../../res/img_tasks/features/pkg_lookup.png" />
</p>

- To remove features without removing their manifests from the image, check the "Remove feature without removing manifest" option. This will mark the selected features as "Removed"

**NOTE:** if you're disabling features from an online installation, you may need to restart your system for the changes to take effect

## Related topics

- [Command-line help](https://example.com)