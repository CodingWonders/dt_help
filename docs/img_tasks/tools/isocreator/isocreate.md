# Creating an ISO file

To create a new ISO file, do the following:

1. **Pick your Windows image.** You can either browse through your computer for a Windows image to copy, pick an image from the pop-up mounted image picker, or pick the currently loaded one. Once you pick a Windows image, you will see information about each index in the image
2. **Choose the architecture for the Preinstallation Environment** by using the architecture list. It is recommended to pick the one that the image supports
3. (Optional) **Choose an unattended answer file to apply**
4. **Choose the target location of the ISO file.** If the target image exists, you will be asked if you want to replace it when clicking Create

With DISMTools 0.6.1 and later, you can also specify 2 options:

- **Copy to Ventoy drives** lets you take advantage of your [Ventoy](https://ventoy.net/en) drives for operating system installation. After the ISO is generated, it will be copied automatically to all Ventoy drives you have plugged into your computer
- **Use newly-signed boot binaries** will make the ISO files that you create ship with EFI boot binaries signed with the *Windows UEFI CA 2023* code-signing certificate. This is not checked by default because of reasons that are mentioned later in this document

This process can take between 5 to 10 minutes, depending on the size of the Windows image and the speed of your computer's disk drive.

#### Windows UEFI CA 2023 information

New EFI boot binaries are signed with the Windows UEFI CA 2023 certificate. These boot binaries replace previous ones signed with a certificate authority from 2011. This certificate authority will expire in June 2026.

EFI boot binaries signed with the 2023 CA are already included in computers manufactured since 2024. These are also present in versions 10.1.26100.2454 and later of the Windows ADK and are an option for ISO file creation. These **are recommended** as well to avoid boot issues if a system has had updates to its Secure Boot revocation lists.

You can determine whether a UEFI system with Secure Boot features support for the 2023 CA in 2 ways: via the Registry and PowerShell.

- To verify in PowerShell, run this command:

```powershell
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
- Type `S` and press Enter to shut down the computer
- Type `R` and press Enter to restart the computer

<p align="center">
    <img src="../../../res/img_tasks/tools/isocreator/dt_pe/dt_pe_choose_install_option.png" />
</p>

Refer to the *Installing the operating system* section for more information about the 2 installation modes.

## Remarks

- **Please make sure to commit your unsaved changes to your image before creating the ISO file**