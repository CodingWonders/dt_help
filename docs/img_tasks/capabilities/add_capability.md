# Adding capabilities

<p align="center">
	<img src="../../res/img_tasks/capabilities/add_capability.png" />
</p>

With DISMTools you can add capabilities, or Features on Demand (FoDs), to a Windows image or installation. Capabilities are features ready to be added at any time. More on capabilities [here](https://example.com).

This action can be accessed by clicking Commands > Capabilities > Add capability...

## Target OS support

This action is supported on the following platforms:

| Platform | Supported? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ❌ |
| Windows 8/Server 2012 | ❌ |
| Windows 8.1/Server 2012 R2 | ❌ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>This action is supported on DISMTools 0.3 and newer</i>

## Usage

You need to specify the capabilities you want to add to your Windows image or installation, and specify some settings in order to get the result you want.

## Options

- You can specify a **source** where you have the necessary files for capability addition. You can browse your file system for an appropriate source, or get the source from group policy
- If you strictly want this operation to use your specified source and not Windows Update, tick the **Windows Update access limit** option (online installations only)
- If you want, you can **commit the image after adding the capabilities** (Windows images only)

## Related topics

- [Command-line help](https://example.com)