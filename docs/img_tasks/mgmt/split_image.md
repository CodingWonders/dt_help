# Splitting an image into SWM files

<p align="center">
	<img src="../../res/img_tasks/mgmt/split_image.png" />
</p>

With DISMTools you can easily split a WIM file into SWM files. Splitting an image offers some advantages, like being able to fit them in CDs.

## Usage

1. Specify the source image to split. It must be a WIM file
2. Specify the maximum size of the split images. Do note that, if the image has a large file that can't fit within the maximum size limit, a split file may be larger than the rest
3. Specify the target of the SWM files. When you browse for such path, DISMTools sets a naming pattern consisting of the file name of the source image with an underscore (`_`). This lets you easily reference those SWM files when performing other operations

## Options

- If you want, you can check the integrity of the source image before proceeding with the split operation

## Related content

- [Merging SWM files](../tools/swm2wim.md)