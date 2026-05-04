# Release highlights

This new version of DISMTools comes with new features that enhance image management and servicing tasks. Here are some of its key changes.

If you want to take a look at everything that has changed though, check out the [release notes page](https://github.com/CodingWonders/DISMTools/releases/latest) for more information.

## The PE Helper: smarter and more capable in every release

DISMTools 0.7.3 offers several improvements to the PE Helper and its components. Using **wallpaper overrides**, you can now customize the DISMTools Preinstallation Environment in new ways. Give it your background (whether you made it, you downloaded it, or you generated it with AI), and it will apply it. Depending on the target OS to apply, you can now use UEFI boot binaries signed with either Microsoft Windows Production PCA 2011 or Windows UEFI CA 2023.

If an operating system were to be installed on one computer from another and both use different firmware types, leverage **partition table overrides** to use the ideal way of partitioning a disk and creating boot files.

The Sysprep Preparation Tool can now prepare the DISMTools Preinstallation Environment to make it recognize all your drives by adding all [SCSI](https://en.wikipedia.org/wiki/SCSI) adapters and storage controllers that may be installed in the reference system.

<p align="center">
  <img src="../res/whats_new/WhatsNew_1.png">
</p>

## Unattended answer file creation: now super-powered

Unattended answer file features have seen several, and major, improvements with version 0.8.

When joining domains, you can now pick user account objects that are not necessarily in organizational units. But, when they are, you will also see them sorted alphabetically. More account checks have been added, mainly to detect those that don't require a password. And, to test domain name resolution, you can quickly invoke `nslookup` using your provided domain suffix.

Moving on to starter scripts, there are **more than 20 starter scripts available to you**. You can also create your starter scripts using your Visual Basic scripts or JScript files, if you still depend on said scripts, and you can do so more comfortably with the new functionality in the Starter Script Editor, such as dark mode support. If one script needs to run before or after a set of scripts, you can quickly change the order of execution to suit your needs.

Next, when creating local user accounts, you can now configure their display names separately. You should use a custom display name when you have an account whose name contains either spaces or special characters, to avoid issues with certain programs or scripts and environment variables, and potentially more issues. For example, for a user named *John Doe* you can use an account name of *johndoe* and use the former name as the display name.

Finally, when applying unattended answer files, you now have control over whether to copy them to the image's Sysprep directory.

[Learn more about the improved answer file features](../img_tasks/exttools/sse.md)

## Build information queries much more easily

DISMTools 0.8 makes making search queries easier with the information filter assistants.

## New image formats are now supported

DISMTools 0.8 massively improves support for **Full Flash Utility (FFU)** files as another entry in sector-based Windows images.

## Overall refinements

This release also focuses on refining existing tasks and functionality to improve the user experience. For example, the program is more reliable and components have been updated to their latest versions.

<!-- Room for more features -->

# Thanks to the contributors

<!-- The following people have helped shape this version of DISMTools by reporting issues or suggesting new features or changes:

[Real-MullaC](https://github.com/Real-MullaC), [bovirus](https://github.com/bovirus), [jekovcar](https://github.com/jekovcar), [rayman95 (MDL Forums)](https://forums.mydigitallife.net/members/rayman95.1153686/)

If you want to appear in this list, you can report issues or suggestions in any channel you prefer (via the [MDL forum thread](https://forums.mydigitallife.net/threads/dismtools.87263/), via the [GitHub repository](https://github.com/CodingWonders/DISMTools), or via any announcements on the [DISMTools subreddit](https://reddit.com/r/DISMTools) or on the [Windows](https://reddit.com/r/Windows), [Windows11](https://reddit.com/r/Windows11) and [Windows10](https://reddit.com/r/Windows10) subreddits (as comments)) or submit new code changes (read the [contribution guidelines](https://github.com/CodingWonders/DISMTools/blob/stable/CONTRIBUTING.md) for more information). -->

To contribute to the software, you can report issues or suggestions in any channel you prefer (via the [MDL forum thread](https://forums.mydigitallife.net/threads/dismtools.87263/), via the [GitHub repository](https://github.com/CodingWonders/DISMTools), or via any announcements on the [DISMTools subreddit](https://reddit.com/r/DISMTools) or on the [Windows](https://reddit.com/r/Windows), [Windows11](https://reddit.com/r/Windows11) and [Windows10](https://reddit.com/r/Windows10) subreddits (as comments)) or submit new code changes (read the [contribution guidelines](https://github.com/CodingWonders/DISMTools/blob/stable/CONTRIBUTING.md) for more information).