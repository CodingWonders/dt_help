# Testing your Windows images with the ISO creation tools

<p align="center">
	<img src="../../../res/img_tasks/tools/isocreator/isocreator.png" />
</p>

If you want to test the changes made to a Windows image, you can easily do so with the ISO creation tools, which include the **ISO creator** and the **Preinstallation Environment (PE) Helper**.

You will need the Windows Assessment and Deployment Kit (ADK), which you can download using the convenient link on the bottom left.

*This tool is available in DISMTools 0.5*

## Usage

To create a new ISO file, do the following:

1. **Pick your Windows image.** You can either browse through your computer for a Windows image to copy, pick an image from the pop-up mounted image picker, or pick the currently loaded one. Once you pick a Windows image, you will see information about each index in the image
2. **Choose the architecture for the Preinstallation Environment** by using the architecture list. It is recommended to pick the one that the image supports
3. **Choose the target location of the ISO file.** If the target image exists, you will be asked if you want to replace it when clicking Create

This process can take between 5 to 10 minutes, depending on the size of the Windows image and the speed of your computer's disk drive.

### The Preinstallation Environment (PE) Helper

All ISO creation and OS installation procedures are performed by a script known as the **Preinstallation Environment (PE) Helper**. This has 2 modes: environment generation and OS installation.

#### Environment generation

The PE Helper will do the following during this phase:

1. Copy PE files to a temporary directory in the program files directory
2. Mount the Windows PE image
3. Copy operating system packages to the temporary directory
4. Add the following packages: .NET Framework (`WinPE-NetFx`), WMI support (`WinPE-WMI`), PowerShell (`WinPE-PowerShell`) and Deployment Image Servicing and Management (DISM) cmdlets (`WinPE-DismCmdlets`)
5. Perform the following customizations: set up a custom wallpaper, configure startup and command prompt settings and scratch space
6. Save changes and unmount the WinPE image
7. Copy the source image file to test
8. Copy scripts, including the PE Helper
9. Create the ISO file

#### OS installation

During OS installation, the PE helper will do the following:

1. Ask you what disk and partition will be used for OS installation
2. Write disk configuration tailored to the system configuration (BIOS/UEFI)
3. Ask you the index of the source image to apply
4. Apply the source image
5. Run serviceability tests
6. Create boot files tailored to the system configuration (BIOS/UEFI)
7. Reboot your system

<p align="center">
	<img src="../../../res/img_tasks/tools/isocreator/DISMTools_PE.png" />
</p>

#### Serviceability tests

Serviceability tests are performed during OS installation to make sure that the image that has been applied is valid. They are only run if the architectures of the PE and the image are the same, and must pass in order to successfully complete the installation of the operating system.

If these tests fail, you may need to repair the component store of your Windows image.

### Driver Installation Module

The **Driver Installation Module** (DIM) is a quick and easy way of adding device drivers to booted Windows Preinstallation Environments:

<p align="center">
	<img src="../../../res/img_tasks/tools/isocreator/dim/DIM_MainScreen.png" />
</p>

While full functionality is achieved with the DISMTools Preinstallation Environment, you can still use the DIM in every Preinstallation Environment. Do note, however, that this is only compatible with the 32-bit and 64-bit desktop architectures (x86 and amd64).

#### Usage

1. Click the "Add" button and choose between a single driver file or an entire folder

	- If you choose a folder, the Driver Installation Module will perform a recursive scan for INF files. This may pick up invalid INF files you may have

2. Perform any changes with the "Edit" and "Remove" buttons
3. Click the "Install" button and let the program add the drivers

After driver installation, you will see an installation summary:

<p align="center">
	<img src="../../../res/img_tasks/tools/isocreator/dim/DIM_Summary.png" />
</p>

Later, after applying your Windows image, the Preinstallation Environment Helper will add those drivers to the target image.

#### Practical use: computers with third-party disk controllers

A practical use of the Driver Installation Module is to add compatibility for disk controllers that are not shipped with Windows PEs by default. This is the case if the test system is relatively new.

<p align="center">
	<img src="../../../res/img_tasks/tools/isocreator/dim/practical_use/disk_before.jpg" />
</p>

Here's how you can proceed:

1. Boot to a live Linux environment and use the partition manager that may come with it to grab the model of the desired drive. If you don't have a Linux ISO available, we recommend [GParted Live](https://gparted.org/livecd.php) for its simplicity and its small size

	![GParted](../../../res/img_tasks/tools/isocreator/dim/practical_use/diskinfo.jpg)
	
2. Additionally, you may want to get information about the model of the computer. In most Linux systems, you can run `sudo lshw` in the terminal

	![Computer info](../../../res/img_tasks/tools/isocreator/dim/practical_use/compinfo.jpg)
	
	After getting the model of the computer, go to the computer manufacturer's website to download compatible drivers. **Make sure that you extract them and that you DON'T install them to your system by accident**. After that, copy the drivers to wherever you want
	
3. Open the Driver Installation Module, add the folder containing the drivers and click Install

	![DIM Installation](../../../res/img_tasks/tools/isocreator/dim/practical_use/dim_install.jpg)
	
4. Check disks once again

	![Disk Listing](../../../res/img_tasks/tools/isocreator/dim/practical_use/disk_after.jpg)
	
<!-- And, yes, I know how to make screenshots -->

## Remarks

- **Please make sure to commit your unsaved changes to your image before creating the ISO file**