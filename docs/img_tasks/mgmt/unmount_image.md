# Unmounting an image

<p align="center">
	<img src="../../res/img_tasks/mgmt/unmount_image.png" />
</p>

When you've finished working on a Windows image, you can easily unmount it.

## Usage

1. If you want to unmount the image loaded in a project, leave the first mount directory option. Otherwise, select the second option and specify the mount directory containing the image you want to unmount
2. Specify the unmount operation. You can either save changes and unmount the image, or discard those changes and unmount the image

### Picking a mounted image

If you don't know the mount directory of the image you want to unmount, click "Pick...", and you'll see a chooser from which you can select the image to unmount:

<p align="center">
	<img src="../../res/img_tasks/mgmt/unmount_image_picker.png" />
</p>

## Commit operation options

These options only apply to the commit operation.

- If you want to check the integrity of the image before proceeding with the unmount operation, check "Check image integrity"
- If you want to isolate your changes from the rest of the indexes by creating a new one, check "Append changes to another index"

## The unmount operation and read-only images

If you want to unmount a read-only mounted image, you won't see this dialog and the image will be directly unmounted discarding changes.