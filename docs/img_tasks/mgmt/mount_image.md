# Mounting an image

<p align="center">
	<img src="../../res/getting_started/mount_an_image.png" />
</p>

One essential task to perform is mounting a Windows image, and DISMTools can assist you in performing this process.

## Usage

1. Specify the source image file to mount. It can be a WIM, VHD, ESD, SWM, or ISO file. However, SWM, ESD and ISO files require prior processing before mounting them
2. Specify the index to mount in the Options group. You can easily view all indexes of an image in the list on the right, and select an index from there too
3. Specify the directory to mount the image to. If you want to use the mount directory provided by the project, click "Use defaults"

## SWM and ESD processing

If you specify an SWM or ESD file when mounting an image, DISMTools will detect it and perform the following:

- If the source image is a SWM file, the program loads the [SWM file merger](../tools/swm2wim.md) dialog and populates all required fields
- If the source image is an ESD file, the program loads the [image conversion](../tools/wim2esd.md) dialog and populates all required fields

In either case, you can simply click OK to begin the required process, or can review all options. After performing said process, this dialog is shown again with the source image field populated.

## ISO file processing

If all you have is an ISO file, you can still use it with DISMTools in versions 0.7.3 and higher. Use it as a file picker filter, and the program will automatically grab all WIM and ESD files from there. The files that it grabs are copied to your project, in a folder called `IsoFileContents`. After the ISO file is processed, you must set the source image to one of the resulting files, and perform additional processing steps described earlier, if necessary.