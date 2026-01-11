# Capturing an image

<p align="center">
	<img src="../../res/img_tasks/mgmt/capture_image.png" />
</p>

With DISMTools you can easily capture a Windows installation directory to an image file.

## Usage

1. Specify the source directory to capture and the image file to capture the contents to
2. Specify a name for the new Windows image and, if you want, a description

## Options

The options you can perform when applying the image follow the command-line guides, which you can take a look at [here](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14?view=windows-11#capture-image).

## Configuration lists

This task lets you specify configuration lists to exclude certain files. This is useful to avoid experiencing image capture errors (mostly with user OneDrive folders on Windows installations) or to avoid having an extremely large resulting image.

Refer to the [DISM Configuration List Editor](../tools/configlisteditor.md) utility and the [configuration list reference](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism-configuration-list-and-wimscriptini-files-winnext?view=windows-11) for more information.