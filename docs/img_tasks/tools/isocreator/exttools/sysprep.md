# Sysprep Preparation Tool

The Sysprep Preparation Tool is a utility included with DISMTools 0.7.1 and later versions that prepares a reference computer for Sysprep generalization. This is useful for system administrators who are not using Microsoft Configuration Manager, or a similar solution, and want a Windows image with preinstalled applications.

## Usage

### Preparing a reference computer for Sysprep

To use the Sysprep Preparation Tool, the computer must be in **audit mode**. To enter audit mode at the OOBE, press <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>F3</kbd>. The computer will restart and boot into audit mode automatically.

*Do note that the installation must not be unattended. If it is, you will not be able to enter audit mode. If you had added an answer file, you'll need to remove it before installing the system. To remove answer files, go to Commands -> Unattended answer files -> Remove applied answer file.*

You can determine if the OOBE is unattended in the reference computer by determining if you need to interact with it. For example, here:

<p align="center">
	<img src="../../../../res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_InteractiveOOBE.png" />
</p>

<p align="center">
	<img src="../../../../res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_Reboot.png" />
</p>

<p align="center">
	<img src="../../../../res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_AuditMode.png" />
</p>

If you see the above screen, you have successfully entered audit mode. Don't touch the Sysprep window as you don't need it for now. Either move it out of the way or close it.

Now, go ahead and install the applications you want to have preinstalled in your Windows image.

**Important notes when installing applications:**

- Try to avoid Microsoft Store applications as they cause Sysprep to fail. If a desktop application installs a Microsoft Store application (for example, to provide context menu integration with Windows 11), remove said application before running the tool
	- In that similar vein, avoid using WinGet to install applications. The `winget` source is a Microsoft Store application
- Some applications, like Visual Studio Code, come in both user and machine-wide installation variants. Always use the machine-wide installation variant, if available

### Launching the Sysprep Preparation Tool

The Sysprep Preparation Tool is automatically added to ISOs by the Preinstallation Environment Helper. To launch the tool, open the Autorun application (usually by double-clicking the ISO in the File Explorer, or by running `<ISO letter>:\autorun.exe`), and select *Prepare System for Image Capture*:

<p align="center">
	<img src="../../../../res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_AutorunEntry.png" />
</p>

In DISMTools 0.7.2 and later, you can pick from 2 modes in which the tool can run:

- **Automatic mode** will run the tool with minimal user interaction and default settings. If a check fails or returns a warning, the tool will let you pause and review the results before proceeding
- **Manual mode** will run the tool with full user interaction

Whichever mode you choose, you can also prepare the boot image of the installation media for image capture after Sysprep completes by checking *Capture image after preparing the system*. You can learn more about image capture in the [administration script reference](../cmdline/scriptref.md).

The guide will continue in manual mode.

You will arrive at the wizard.

<p align="center">
	<img src="../../../../res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_Home.png" />
</p>

The tool will perform checks on your computer before proceeding. These range from setup states, to third-party drivers, to domain join; and more. You will see the results of these checks after they complete:

<p align="center">
	<img src="../../../../res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_CheckScreen.png" />
</p>

To learn more about a check, click on its entry in the list:

<p align="center">
	<img src="../../../../res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_CheckScreenDetails.png" />
</p>

A check has 3 fields indicating status:

- **Compatible**: Indicates whether the check passed or failed
- **Details**: Indicates what the check reported
- **Severity**: Indicates how severe possible issues can be. There are 3 levels of severity:
	- **Information**: The check is informational only. You will see an *Information* severity level if a check passes or if it didn't need to be run, or if it reported something but won't cause Sysprep to fail
	- **Warning**: The check found a possible issue that may cause Sysprep to fail. You can choose to proceed past warnings, but it's not recommended
	- **Critical**: The check found an issue that will cause Sysprep to fail. You cannot proceed past critical issues. With a critical severity level, a check automatically fails

It is important that none of the checks return a *Critical* severity level. Check details, when not informational, will often include steps that will help you resolve the issue.

Continuing with the wizard, you will arrive at this page, where you can configure options that will be passed to Sysprep:

<p align="center">
	<img src="../../../../res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_AdvancedPrepSettings.png" />
</p>

Normally, you don't need to configure anything here. The default options are suitable for most use cases. However, if you need to customize Sysprep's behavior, you can do so here.

Finally, wait for the tool to complete its work:

<p align="center">
	<img src="../../../../res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_Preparation.png" />
</p>

<p align="center">
	<img src="../../../../res/img_tasks/tools/isocreator/syspreppreparator/SysprepPreparator_Finish.png" />
</p>

After your computer shuts down, you can capture its image with your preferred method. If you want to make further modifications in an offline manner, boot into the DISMTools Preinstallation Environment and capture the entire drive to an image using the **Image Capture** Administration Script. [Refer to the Command-line Administration Script Reference for more information on this script](../cmdline/scriptref.md).

## Related content

You can download this tool to run it independently here: [Sysprep Preparator Repository](https://github.com/CodingWonders/SysprepPreparator).