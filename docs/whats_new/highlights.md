# Release highlights

This new version of DISMTools comes with new features that enhance image management and servicing tasks. Here are some of its key changes.

If you want to take a look at everything that has changed though, check out the [release notes page](https://github.com/CodingWonders/DISMTools/releases/latest) for more information.

## The PE Helper: do more at once

DISMTools 0.8.1 offers new functionality to the PE Helper. Concurrent ISO creation is now supported, allowing you to create multiple bootable ISOs at once (the maximum amount of tasks being configurable up to 10).

The Preinstallation Environment also offers better integration with BitLocker encrypted volumes, with a suite of tools designed for you to work with such volumes. Unlock, lock, encrypt, decrypt, and query information about your encrypted volumes; all from one environment. BitLocker integration doesn't stop at the Preinstallation Environment. The Sysprep Preparation Tool can now detect if the system volume is encrypted and will decrypt it before running Sysprep.

The PE Helper also includes policies for installation images, in case your media contains multiple installation images, so it automatically picks either the largest file, or the most recent one, depending on your preference.

Additionally, when capturing images, you can now specify descriptions.

<p align="center">
  <img src="../res/whats_new/WhatsNew_1.png">
</p>

## Unattended answer file creation: empowering social-based IT

Unattended answer file features have seen several, and major, improvements with version 0.8.1.

Starter Scripts have been added to prevent automatic device installation, and to allow further customizations. Your Starter Scripts can also be uploaded to a new free service: the *Starter Script Library*. If you think your script is useful to others, you can upload it to the library and share it with the community.

To offer functionality to upload to the Starter Script Library, the Starter Script Editor has been improved. Additionally, it allows you to scan your script code for security issues (using 100 pre-defined rules, as well as the rules you make), find and replace text, and navigate through the document outline (with function signature support for VBScript code).

<p align="center">
  <img src="../res/whats_new/WhatsNew_2.png">
</p>

## Work more comfortably with Windows images

DISMTools 0.8.1 introduces several improvements to core Windows image management flows that make working with images more comfortable.

Offline installation management capabilities have been improved to allow you to quickly switch between different drives. It also detects BitLocker encrypted volumes and will prompt you to unlock them before proceeding with the operation. Once an installation has already been managed, an encrypted drive can be locked automatically, if you prefer to do so.

Information tasks have seen several improvements. AppX package information of active installations can now be filtered by registration status, to get packages that are registered to any user, to your user, to a specific user, or to no user at all. Driver information tasks now allow you to specify multiple class names, as well as select multiple driver files in file pickers. Non-driver INF files are now skipped more gracefully, and driver file information reports allow you to jump between driver files as sections in reports. You can also look up the hardware IDs online from your report.

Driver export tasks have been improved to support multiple driver class names, while allowing you to organize the exported drivers into subfolders based on their class names.

## Overall refinements

This release also focuses on refining existing tasks and functionality to improve the user experience. For example, the program is more reliable and components have been updated to their latest versions.

<!-- Room for more features -->

## Thanks to the contributors

The following people have helped shape this version of DISMTools by reporting issues or suggesting new features or changes:

[Deadstar95 (*DaleCooper*)](https://github.com/Deadstar95), [Abs313a](https://github.com/Abs313a)

To contribute to the software, you can report issues or suggestions in any channel you prefer (via the [MDL forum thread](https://forums.mydigitallife.net/threads/dismtools.87263/), via the [GitHub repository](https://github.com/CodingWonders/DISMTools), or via any announcements on the [DISMTools subreddit](https://reddit.com/r/DISMTools) or on the [Windows](https://reddit.com/r/Windows), [Windows11](https://reddit.com/r/Windows11) and [Windows10](https://reddit.com/r/Windows10) subreddits (as comments)) or submit new code changes (read the [contribution guidelines](https://github.com/CodingWonders/DISMTools/blob/stable/CONTRIBUTING.md) for more information).