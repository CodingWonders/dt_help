# DISM Configuration List Editor

<p align="center">
	<img src="../../res/img_tasks/tools/configlisteditor/configlisteditor.png" />
</p>

The DISM Configuration List Editor lets you easily create configuration lists to exclude files and folder during tasks like [capturing an image](../mgmt/capture_image.md). You can either use the graphical interface to exclude files, or edit the configuration list file manually.

*This tool is available on DISMTools 0.3.1 and newer.*

## Usage

To create a new configuration list file that already defines files and folders to exclude, click the "New" button. All unsaved configuration lists will not be saved if you continue.

### Adding an entry

You can easily add a new entry to exclude by typing it in the code view or by using the graphical interface.

When using the graphical interface, you can specify any entry using the file picker. Then, review the entry to add and decide if you want to add it.

<p align="center">
	<img src="../../res/img_tasks/tools/configlisteditor/new_entry.png" />
</p>

### Excluding OneDrive folders

DISMTools 0.4.2 introduces the ability to automatically exclude user OneDrive folders, which might cause errors in the tasks in which you can specify these files:

<p align="center">
	<img src="../../res/img_tasks/tools/configlisteditor/onedrive_exclusion.png" />
</p>

To exclude user OneDrive folders in a drive, simply browse through your computer until you find it, and then click Exclude. User OneDrive folders will be automatically detected and added to the configuration list file.

## Related content

- [Configuration list reference](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism-configuration-list-and-wimscriptini-files-winnext?view=windows-11)