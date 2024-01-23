# Reloading the servicing session of an image

<p align="center">
	<img src="../../../res/img_tasks/mgmt/remount_image.png" />
</p>

If the servicing session of an image requires reloading, you can easily bring it back. This is a quick action that does not require any user input.

## Usage

You can easily reload the servicing session of an image in 3 ways:

- In the [mounted image manager](../../tools/mimgmgr), select the image you want to reload the servicing session of and click "Reload servicing"
- If you have a project with an image mounted that requires a servicing session reload, click "Reload servicing session" or reload the project
- In the CLI version of the mounted image manager, mark the image you want to reload the servicing session of and press R

<p align="center">
	<img src="../../../res/img_tasks/mgmt/mimgmgr_reload.png" />
</p>

During startup, the program will also attempt to reload the servicing session of all images so that you can quickly begin working on them.