# Getting started

If you don't know anything about Windows servicing, or come from other servicing tools, click on a section below to know what's different in this utility:

- [Getting started with Windows servicing](./new_to_servicing.md)
- I come from other tools
	- [Coming from NTLite](./ntlite_migration.md)
	- [Coming from MSMG Toolkit](./msmg_migration.md)

If you want to know about something else, keep on reading.

## First steps

### The DISMTools tour

DISMTools 0.7 introduces a new tour that you can follow in order to perform basic tasks. This tour features text and video forms, and focuses on an example procedure to create a customized Windows image.

You can access it [here](https://dismtools.com/tour)		<!-- Let's use a custom tour and hope that address redirection works as expected - this is a non-existent site (yet!) -->

The existing tour will be kept for legacy purposes for now. Keep reading if you want to follow this instead.

After installation has completed, you may run the program. The following steps are recommended to be done in order to get started

### Creating your first project

With the program up and running, you'll begin by **creating a project**. Use the first link in the main screen, or go to File -> New project...

You'll see the following screen, in which you need to provide a name and a location.

<p align="center">
	<img src="../res/getting_started/create_a_project.png"/>
</p>

After providing data on both fields, click OK. The project will be created and you'll be at the project screen.

<p align="center">
	<img src="../res/getting_started/project_view.png"/>
</p>

To load this project later, go to "Open an existing project..." and specify the project location.

If you have loaded a project recently, it's added to the Recents list. To access a project, double-click its entry in the list; and to remove an entry select it and click Remove entry.

<p align="center">
	<img src="../res/getting_started/recents_list.png"/>
</p>

### Loading a Windows image

The first thing you need to do after creating a project is to load an image to it. There are 2 ways to do this:

#### Mounting a Windows image

To mount a Windows image, either click the "Mount image..." button, or click the link in the left panel. You'll see this screen:

<p align="center">
	<img src="../res/getting_started/mount_an_image.png" />
</p>

Specify the source image file you want to mount and the path you want to mount the image to. You can also configure more settings from this dialog, if you wish. Follow the image mount guide for more information.

**INFO:** the easiest way of getting a Windows image is by extracting the `sources\install.wim` file from Windows installation media. This can be easily done by mounting the ISO in the File Explorer or by using 3rd party tools, like 7-Zip.

Once you're done, click OK and wait for the image to be mounted. Finally, you have finished!

#### Loading an already existing mount directory

Since DISMTools 0.2, the program lets you load a mount directory and use it in your project if you've already mounted a Windows image to it.

To do this, switch to the "Image" tab on the left and click the link on the bottom. Next, specify the mount directory and click OK. That's it!

<p align="center">
	<img src="../res/getting_started/load_mount_directory.png" />
</p>

To look for available mounted images, use the [**mounted image manager**](../img_tasks/tools/mimgmgr.md).

**NOTE:** since version 0.3.2, the aforementioned link will open a popup mounted image picker, instead of a folder browser, that makes this process easier. Simply select a mounted image from the list and click OK:

<p align="center">
	<img src="../res/getting_started/load_mount_directory_new.png" />
</p>

## Best practices

When creating a project and/or managing Windows images, consider these best practices:

### Project paths

- Store your project on a location whose length is not greater than the `MAX_PATH` [path length limitation](https://learn.microsoft.com/en-us/windows/win32/fileio/maximum-file-path-limitation) (260 characters)

	- A great place to store your project on would be at the root of your preferred drive, or in a folder 1 level deep. Such examples would be: `D:\` or `E:\Projects\`
	- You can disable this limitation if you're using Windows 10, version 1607 or later, by following [these guides](https://learn.microsoft.com/en-us/windows/win32/fileio/maximum-file-path-limitation?tabs=registry#enable-long-paths-in-windows-10-version-1607-and-later)

### DISM operations

- An antivirus program may prevent you from doing an image task, so it's recommended to set an exclusion to the mount path of the image
- It's not recommended to mount more than 20 images at the same time, as it can cause significant performance degradation
- You must run this program and, at any time, DISM as an administrator, no matter what privileges you may have
- If you have mounted the image with write privileges enabled, it's best to commit your changes often. That way, if the image becomes corrupt, it's easier to recover it
- It's not recommended to store files on network shares, as it can be faster to perform most operations if the files are copied to a local disk

### Servicing from Windows PE
	
If you plan on servicing images from a Windows Preinstallation Environment (WinPE), consider these requirements while planning your strategy:

- **Booting Windows PE from a local disk:** you can allocate additional memory to your Windows PE installation when booting it from a local disk, to increase performance; and you can create temporary folders to store large updates
- **Booting Windows PE from read-only media:** if you plan on booting the Windows PE installation from optical media, ensure that your computer has enough memory
- **Add a page file to your PE installation:** to improve memory management, consider creating a page file. See the [`wpeutil` command reference](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/wpeutil-command-line-options?view=windows-11#createpagefile) for more information
- **Specify a scratch directory:** for some operations, like adding packages, it is best to create and specify a scratch directory to store temporary files on. If not specified, Windows PE creates a scratch directory of the size you specified when setting the scratch space. However, you may run out of space on your PE environment