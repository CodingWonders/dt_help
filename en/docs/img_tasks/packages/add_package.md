# Adding packages

<p align="center">
	<img src="../../../res/img_tasks/packages/add_package.png" />
</p>

With DISMTools you can add packages to add additional functionality and/or updates to a Windows image or installation. This action can be accessed by clicking Commands > OS packages > Add package..., or by clicking the "Add package..." button.

## Target OS support

This action is supported on the following platforms:

| Platform | Supported? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>This action is supported on all versions of DISMTools</i>

## Usage

You need to specify the source of the packages you want to add. Then, you can choose between **scanning the source recursively for packages and adding them** or **choosing the ones you want to add** from the list.

## Options

- **Ignoring applicability checks** is not recommended, because it will ignore all dependencies a package needs and will, in most cases, fail its addition
- If an operation requires that you boot to the image in order to finish (requires online operations), you can **skip package installation**
- If you want, you can **commit the changes to the image** after adding the packages

## Related topics

- [Command-line help](https://example.com)
