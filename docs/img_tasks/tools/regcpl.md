# Managing image registry hives

<p align="center">
	<img src="../../res/img_tasks/tools/regcpl/regcpl.png" />
</p>

The image registry control panel lets you perform changes to the registry of the image or offline installation you are managing quickly and easily.

*This tool is available in DISMTools 0.6 and later.*

## Usage

You can load and unload registry hives of our default set (`SOFTWARE`, `SYSTEM`, `DEFAULT`, and `NTUSER.DAT`), or any hive of the image with the click of a button. These hives are stored in `<Image Path>\Windows\system32\config`.

After loading a hive, you can load the registry editor to the mounted hive with the click of another button.

### Loading additional registry hives

If you are interested in loading a registry hive different from the aforementioned set, you can load other hives using the controls in the "Load Custom Hive" section. And, with clicks on 3 buttons, you can load, open, and unload the specified hive.

This hive is loaded on the following location: `HKEY_LOCAL_MACHINE\z<name of the hive>`

### Closing the control panel

When you are done modifying the registry of the image, you don't need to worry about any loaded hives when you unmount your image. When you close this control panel, all loaded hives are automatically unloaded.

This control panel needs to be closed before you can close the program, perform any operations with the Windows image, or load any projects or modes.