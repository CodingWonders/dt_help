# Appending mount directories to a Windows image

<p align="center">
	<img src="../../res/img_tasks/mgmt/append_image.png" />
</p>

If you have made some changes to your Windows image that you want to save to a new index in the source image, you can do that easily with this dialog.

<i>This action is supported on DISMTools 0.5 and newer.</i>

## Usage

This procedure is similar to the one you would follow when [capturing a directory or a drive to an image](./capture_image.md).

1. Specify the source directory to append and the image file to append the contents to
2. Specify a name for the new Windows image and, if you want, a description

## Options

The options you can perform when applying the image follow the command-line guides, which you can take a look at [here](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14?view=windows-11#append-image).

## Configuration lists

This task lets you specify configuration lists to exclude certain files. This is useful to avoid experiencing image appendix errors (mostly with user OneDrive folders on Windows installations) or to avoid having an extremely large resulting image.

Refer to the [DISM Configuration List Editor](../tools/configlisteditor.md) utility and the [configuration list reference](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism-configuration-list-and-wimscriptini-files-winnext?view=windows-11) for more information.