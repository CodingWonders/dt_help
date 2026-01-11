# Preinstallation Environment Command-line Administration Script Reference

This page contains reference documentation for Administration Scripts included with the DISMTools Preinstallation Environment. You can access these by going to the `scripts` folder on the root of the boot drive (type `cd \scripts` to go there).

<p align="center">
    <img src="../../../../res/img_tasks/tools/isocreator/cmdline/cmdline_scriptref.png" />
</p>

## Available scripts

Currently, 3 scripts are included:

### Initialize Networking (`initializenetwork.bat`)

This script initializes the networking stack in the Preinstallation Environment for use with network-ready applications, and also enables the firewall.

### Full Disk Copy (`fullcopy.bat`)

This script performs a full disk copy from one disk to another with robocopy.

Usage:

1. Enter the source drive letter
2. Enter the destination drive letter
3. Wait for the process to complete

### Capture Image (`imagecapture.bat`)

This script captures a Windows system drive into a WIM file that can be used later. In DISMTools 0.7.2 and later, this tool can be launched automatically after Sysprep completes.

Usage:

1. Enter the source drive letter (the Windows installation to capture), or an action to perform:
    - Type `DIM` to run the Driver Installation Module in case you don't see your drives
    - Type `NET` to map a network share in the environment. If successful, it will be used as the destination for the WIM file automatically
    - Type `WDS` to run the WDS Image Capture wizard. This will let you upload the captured image directly to a WDS server   
2. Enter the destination drive letter (where to save the WIM file)
3. Enter the WIM file name (for example, `install.wim`)
4. Enter the image name (for example, `Windows 11 Pro`)
5. Wait for the process to complete

After DISM completes, you will see a result screen.
