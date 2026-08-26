# Preinstallation Environment Command-line Administration Script Reference

This page contains reference documentation for Administration Scripts included with the DISMTools Preinstallation Environment. You can access these by going to the `scripts` folder on the root of the boot drive (type `cd \scripts` to go there).

<p align="center">
    <img src="../../../../res/img_tasks/tools/isocreator/cmdline/cmdline_scriptref.png" />
</p>

## Available scripts

Currently, 4 scripts are included:

### Initialize Networking (`initializenetwork.bat`)

This script initializes the networking stack in the Preinstallation Environment for use with network-ready applications, and also enables the firewall.

### Full Disk Copy (`fullcopy.bat`)

This script performs a full disk copy from one disk to another with robocopy.

Usage:

1. Enter the source drive letter
2. Enter the destination drive letter
3. Wait for the process to complete

### Capture Image (`imagecapture.bat`)

This script captures a Windows system drive into a WIM file that can be used later. This tool can also be launched automatically after Sysprep completes, using the [Sysprep Preparation Tool](../exttools/sysprep.md).

Usage:

1. Enter the source drive letter (the Windows installation to capture), or an action to perform:
    - Type `DIM` to run the Driver Installation Module in case you don't see your drives
    - Type `NET` to map a network share in the environment. If successful, it will be used as the destination for the WIM file automatically
    - Type `WDS` to run the WDS Image Capture wizard. This will let you upload the captured image directly to a WDS server   
2. Enter the destination drive letter (where to save the WIM file)
3. Enter the WIM file name (for example, `install.wim`)
4. Enter the image name (for example, `Windows 11 Pro`), or continue with default values by pressing ENTER
5. Enter the image description (for example, `Windows 11 Pro`), or continue with default values by pressing ENTER
6. Wait for the process to complete

After DISM completes, you will see a result screen.

### Create Boot Files (`createbootfiles.bat`)

This script allows you to reconfigure a disk to make it bootable by copying the boot files of the installation to its System Reserved partition (MSR) or EFI System Partition (ESP), based on the firmware type that you pass to it as an argument.

Usage:

- Pass one of the following values as an argument:

    | Value                   | Operating mode |
    |:------------------------|:--------------:|
    | `BIOS`, `MBR`, `LEGACY` | Legacy mode    |
    | `UEFI`, `GPT`           | UEFI mode      |

Once the script launches:

1. Provide the number of the source disk
2. Provide the number of the destination MSR/ESP partition in the selected disk
3. Provide the letter of the volume to copy boot files from
4. Wait for the tool to do its work, and restart the computer

### BitLocker Utilities (`bdemgr`)

This set of scripts allows you to manage BitLocker-encrypted drives in the Preinstallation Environment. Use one of the following commands (or aliases) depending on what you want to do:

| Command | Alias | Description |
|:--------|:------|:------------|
| `bdemgr info` | `bdeinfo` | Displays information about the BitLocker-encrypted drive |
| `bdemgr unlock` | `bdeunlock` | Unlocks the BitLocker-encrypted drive |
| `bdemgr lock` | `bdelock` | Locks the BitLocker-encrypted drive |
| `bdemgr encrypt` | `bdeencrypt` | Encrypts the drive with BitLocker |
| `bdemgr decrypt` | `bdedecrypt` | Decrypts the BitLocker-encrypted drive |

For more general information about BitLocker utilities, simply type `bdemgr`. For each task, select the volume to perform the operation on, and follow the instructions.

For encryption and decryption tasks, you will have to wait for the process to complete. The time you will have to wait depends on the used disk space and the speed of the drive. Real-time progress is displayed in the encryption and decryption windows.

!!! warning

    It is recommended that you perform the encryption or decryption tasks as soon as you load the Preinstallation Environment. If a drive is very slow, it can take longer than the allotted 72 hours (3 days) that the Preinstallation Environment is available. If the environment restarts before the process completes, you will have to start over.