# Applying an image

<p align="center">
	<img src="../../res/img_tasks/mgmt/apply_image.png" />
</p>

With DISMTools you can easily apply your Windows images to a directory or a drive.

## Usage

1. Specify the source image file to apply. It can be a WIM, SWM or ESD file. If you have loaded a project with an image already mounted, you can also use it
2. Specify the index to apply in the Options group by picking an entry in the "Image index:" combo box
3. Specify the directory to apply the image to

## Options

The options you can perform when applying the image follow the command-line guides, which you can take a look at [here](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14?view=windows-11#apply-image).

## SWM naming patterns

When you specify a SWM file, you can specify the naming pattern to use when applying the image.

The program will automatically perform operations required so that you can easily apply it. However, if you want to review these operations, keep reading this section.

To reference SWM files, check the "Reference SWM files" check box, and specify the naming pattern of the SWM files. You can either use the file name of the image as a naming pattern, or specify a naming pattern manually. Click the "Scan pattern" button to test your naming pattern and, if files are found, entries will appear on the list below.

<p align="center">
	<img src="../../res/img_tasks/mgmt/apply_image_swm_pattern.png" />
</p>

## FFU Support

DISMTools 0.8 introduces a variant of the image application task for Full Flash Utility (FFU) files. You can access this variant by going to *Image tasks -> Image management -> Apply FFU or SFU file...*, or by clicking the "Apply image" button and selecting the FFU option:

<p align="center">
	<img src="../../res/img_tasks/mgmt/apply_image_ffu_cmdmenu.png" />
</p>

<p align="center">
	<img src="../../res/img_tasks/mgmt/apply_image_ffu_btn.png" />
</p>

<p align="center">
	<img src="../../res/img_tasks/mgmt/apply_image_ffu.png" />
</p>

### Usage

1. Specify the source FFU file to apply. If you have loaded a project with an image already mounted, you can also use it
2. Specify the drive to apply the image to