# Creating an ISO file

To create a new ISO file, do the following:

1. **Pick your Windows image.** You can either browse through your computer for a Windows image to copy, pick an image from the pop-up mounted image picker, or pick the currently loaded one. Once you pick a Windows image, you will see information about each index in the image
2. **Choose the architecture for the Preinstallation Environment** by using the architecture list. It is recommended to pick the one that the image supports
3. (Optional) **Choose an unattended answer file to apply**
4. **Choose the target location of the ISO file.** If the target image exists, you will be asked if you want to replace it when clicking Create

With DISMTools 0.6.1 and later, you can also specify 2 options:

- **Copy to Ventoy drives** lets you take advantage of your [Ventoy](https://ventoy.net/en) drives for operating system installation. After the ISO is generated, it will be copied automatically to all Ventoy drives you have plugged into your computer
- **Use newly-signed boot binaries** will make the ISO files that you create ship with EFI boot binaries signed with the *Windows UEFI CA 2023* code-signing certificate. This is not checked by default because of reasons that are mentioned later in this document
- **Include essential drivers from this system** will export SCSI adapters, storage controllers, and network adapters from your system to the Preinstallation Environment, and to the target Windows image

This process can take between 5 to 10 minutes, depending on the size of the Windows image and the speed of your computer's disk drive.

#### Windows UEFI CA 2023 information

New EFI boot binaries are signed with the Windows UEFI CA 2023 certificate. These boot binaries replace previous ones signed with a certificate authority from 2011. This certificate authority will expire in June 2026.

EFI boot binaries signed with the 2023 CA are already included in computers manufactured since 2024. These are also present in versions 10.1.26100.2454 and later of the Windows ADK and are an option for ISO file creation. These **are recommended** as well to avoid boot issues if a system has had updates to its Secure Boot revocation lists.

You can determine whether a UEFI system with Secure Boot features support for the 2023 CA in 2 ways: via the Registry and PowerShell.

- To verify in PowerShell, run this command:

```powershell linenums="1"
[System.Text.Encoding]::ASCII.GetString((Get-SecureBootUEFI db).bytes) -match 'Windows UEFI CA 2023'
```

<p align="center">
    <img src="https://techcommunity.microsoft.com/t5/s/gxcuf89792/images/bS00MTIxNzM1LTU3MzgxN2kwQ0ZBNzNGQ0FEMjU2RTBE?revision=7" />   
    <p align="center"><i>Example output of command. Source: Microsoft Tech Community</i></p>
</p>

This command will return either `True` or `False`, depending on whether or not you have this certificate installed.

- To verify in the Registry, do the following:
    1. Open the Registry Editor, then go to `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecureBoot\Servicing`
    2. Look for a value called "UEFICA2023Status"

On systems with the UEFI CA 2023 certificate installed, this value will be set to "Updated":

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/uefica2023/uefica2023status.png" />
</p>

You can learn more here: [Revoking vulnerable Windows boot managers](https://techcommunity.microsoft.com/blog/windows-itpro-blog/revoking-vulnerable-windows-boot-managers/4121735); [Secure Boot playbook for certificates expiring in 2026](https://techcommunity.microsoft.com/blog/Windows-ITPro-blog/secure-boot-playbook-for-certificates-expiring-in-2026/4469235)

In DISMTools 0.7.2 and later, you may see the following warning:

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/uefica2023/uefica2023warning.png" />
</p>

This warning will show if you're creating an ISO file on a UEFI system with Secure Boot enabled that does not support the UEFI CA 2023 binaries; if you check the "Use newly-signed boot binaries" option.

You can also check the state of certificates in DB by navigating through your UEFI firmware settings. Here is an example:

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/uefica2023/uefica23_pcuefi_sbadmin.png" />
</p>

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/uefica2023/uefica23_pcuefi_sbdb.png" />
</p>

Both Microsoft and OEMs are providing both software and firmware updates to computers in order to add support for the 2023 binaries and to update the revocation lists. To fix this problem, make sure your OS and your firmware are updated. Alternatively, you might be able to continue *without* using the updated boot binaries, but this may cause new systems to not boot to the resulting ISO files if they have revoked the 2011 certificates.

### Continuing the installation

Whether you've started the installation with HotInstall or by booting to installation media, the installation process will be the same. The Preinstallation Environment Helper will guide you through the installation process, which includes:

1. Selecting the disk and partition where the operating system will be installed
2. Choosing the index of the Windows image to apply
3. Applying the Windows image
4. Running serviceability tests
5. Creating boot files
6. Rebooting your system

The installation process is different if you use the PXE Helpers.

### Choosing an installation method

**NOTE:** the following screen will not appear if you started the installation with HotInstall

When you boot up the Preinstallation Environment, you will be presented with a screen that lets you choose your preferred installation method, whether it is a local installation or a network-based one.

- Type `1` and press Enter to start a local installation
- Type `2` and press Enter to start a network-based installation
- Type `C` and press Enter to open the command line
- Type `K` and press Enter to open the keyboard layout selection menu
- Type `S` and press Enter to shut down the computer
- Type `R` and press Enter to restart the computer

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/dt_pe/dt_pe_choose_install_option.png" />
</p>

Refer to the *Installing the operating system* section for more information about the 2 installation modes.

#### Changing keyboard layouts

The keyboard layout that the Preinstallation Environment will use can be configured in one of 2 ways:

- By pressing <kbd>K</kbd> at the installation method selection screen, which will open the following menu:

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/dt_pe/dt_pe_change_keyboard_layout.png" />
</p>

- By configuring the default keyboard layout via policies. Refer to the next section for more information.

Regardless of the method you choose to change the keyboard layout, the Preinstallation Environment will open a new Command Prompt window with the new keyboard layout. From then on, use this new Command Prompt window to perform any tasks in the Preinstallation Environment.

### Preinstallation Environment policies

DISMTools 0.8 and later versions allow you to configure the Preinstallation Environment to your liking with policies. The policies you can configure are available by clicking *Customize Environment...* in the ISO Creator, and are as follows:

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/dt_pe/policy/dt_pe_policy.png" />
</p>

**Policy version:** *0.8.1.26082*

- **Custom wallpaper**: allows you to set a custom wallpaper (in JPG format) for the Preinstallation Environment, using the wallpaper overrides introduced in version 0.7.3. You can pick any image you like, but you can also go with your current wallpaper, assuming it's in JPG format.
- **Show version information on the top-left corner of the primary screen**: this will show the version of the Preinstallation Environment in the top-left corner of the primary screen, like this:

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/dt_pe/policy/dt_pe_policy_watermark.png" />
</p>

- **Display images and groups in a WDS server in a graphical view**: this will make the PXE Helpers display images and groups from a WDS server in a graphical view, instead of a text-based one, like this:

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/dt_pe/policy/dt_pe_policy_wdshc_graphoview.png" />
</p>

- **Show a report with hardware IDs of unknown devices when launching the Driver Installation Module**: this will make the Driver Installation Module show a report with hardware IDs of unknown devices when launched, which can be useful for finding drivers for those devices. The report will look like this:

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/dt_pe/policy/dt_pe_policy_dim_hwid.png" />
</p>

- **Copy unattended answer files specified in the ISO creator to the Sysprep directory of the target system**: this will make the Preinstallation Environment Helper copy any unattended answer file specified in the ISO Creator to the Sysprep directory of the target system, in addition to the Panther directory. In many cases you may want to leave this option unchecked because it may cause conflicts with Sysprep if there is an answer file in its directory.
- **Default partition table override**: this allows you to specify the default partition table override for the partitioning step of the installation process. The following options are:

    - *Do not use a partition table override*: the partitioning step will use a partition table suitable for the target system, based on its firmware type
    - *Default to using a MBR partition table regardless of the firmware type*
    - *Default to using a GPT partition table regardless of the firmware type*

- **On supported UEFI systems with Secure Boot and Windows UEFI CA 2023 certificates**: this allows you to specify whether or not to use the new boot binaries signed with the Windows UEFI CA 2023 certificate, on supported systems. The following options are available:

    - *Ask me which version of the boot binary to use*
    - *Default to boot binaries signed with Microsoft Windows Production PCA 2011*
    - *Default to boot binaries signed with Windows UEFI CA 2023, if available on my target image*

- **Amount of connection attempts that should be considered when connecting to a WDS server**: this allows you to specify how many times the WDS Helper should attempt to connect to a WDS server before giving up. You can set it within a range of 2 to 16 attempts, with a default of 5 attempts.
- **Port to be used by PXE Helper clients to send requests by default**: this allows you to specify the default port that PXE Helper clients should use to send requests to the server components. The default port is 8080.

    !!! note
        The client will set the port you specify as the default in the connection screen and will use it as long as you don't specify a different port in the connection screen itself.

- **Default keyboard layout**: this allows you to specify the default keyboard layout to be used in the Preinstallation Environment. The specified keyboard layout will be the default one, but users can change it in the installation method selection screen if they want to.

    !!! note
        The keyboard layout you specify can also be used to override keyboard preferences in the target image, if it does not have an answer file that sets it to something else.

- **Conflict resolution for unattended answer files**: if an answer file exists in both the root of the ISO file and in the Windows image, this option allows you to specify which one should be used. The following options are available:

    - *Ask me how to resolve the conflict*
    - *Handle the conflict by using the answer file of the ISO file*
    - *Handle the conflict by using the answer file of the Windows image file*

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/dt_pe/policy/dt_pe_policy_answerfile_conflict_question.png" />
</p>

!!! warning
    You should not assume what the answer files in both locations contain, and you may experience unexpected behavior if you use the wrong answer file. It is recommended to always check the contents of both answer files before deciding which one to use.

    When being asked how to resolve the conflict, you can invoke a review by pressing `R`.

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/dt_pe/policy/dt_pe_policy_answerfile_review.png" />
</p>

Preinstallation Environment policies are stored in the system registry, under `HKEY_LOCAL_MACHINE\SOFTWARE\DISMTools\Preinstallation Environment\Policies`. The policies use the following names in the registry:

| Policy | Value name |
| --- | --- |
| Show version information on the top-left corner of the primary screen | `ShowWatermark` |
| Display images and groups in a WDS server in a graphical view | `WDSHCGraphoView` |
| Show a report with hardware IDs of unknown devices when launching the Driver Installation Module | `DTDimShowPnputilOut` |
| Copy unattended answer files specified in the ISO creator to the Sysprep directory of the target system | `AutoUnattendCopytoSysprep` |
| Default partition table override | `PartTableOverridePreference` |
| On supported UEFI systems with Secure Boot and Windows UEFI CA 2023 certificates | `UEFICA23Preference` |
| Amount of connection attempts that should be considered when connecting to a WDS server | `WDSHCConnAttempts` |
| Port to be used by PXE Helper clients to send requests by default | `PXEServerPort` |
| Default keyboard layout | `KeyboardLayoutCode` |
| Override keyboard layouts used by target images with the one I select here | `KeyboardLayoutOverrideExistingLayout` |
| Unattended answer file conflict resolution | `AnswerFileConflictResponse` |

The policies you configure from the ISO creator are known as *custom policies*. You can also make policy changes permanent by configuring them as *default policies* in the application settings. To save the settings as default policies, click *Save to default policies*.

## Remarks

- **Please make sure to commit your unsaved changes to your image before creating the ISO file**