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

## Improved functionality when creating answer files

The unattended answer file creation wizard now lets you quickly pick Ireland as the home location to show privacy settings that are only shown by default on EEA countries, and now lets you **create your own starter scripts** with the new Starter Script Editor:

<p align="center">
  <img src="../res/whats_new/WhatsNew_2.png">
</p>

[Learn more about the Starter Script Editor](../img_tasks/exttools/sse.md)

## New ways of filtering information

DISMTools 0.7.3 introduces several new operators that you can use when getting installed driver information to filter results based on provider name, class name, signature status, and more.

[Learn more about the new driver information filters](../img_tasks/info/drv_info.md)

## Improved DPI handling

Work has been done in DISMTools 0.7.3 to make it handle HiDPI panels more properly. The end-result is that the program now looks incredible on such display panels. If you have a small display panel with a high resolution, try cranking up that DPI setting now.

## More search engines and more control are in your hands

DISMTools 0.7.3 introduces several new search engines that you can use when searching items in information dialogs online and lets you configure what engines are available based on how much you tolerate artificial intelligence (AI) features in them. This gives you complete control of your privacy when using search engines. So, if you're privacy-conscious, lower the tolerance settings.

## The data you provide to extend the program now persists during updates

DISMTools 0.7.3 makes available a directory that you can use to store user data. This data is used to extend the program's functionality. Starter scripts that you create can be saved there and you will be able to use them all the time, even after program updates. The same goes for themes that you create using the theme designer, and for the wallpaper overrides of the DISMTools Preinstallation Environment.

## Overall refinements

This release also focuses on refining existing tasks and functionality to improve the user experience. For example, the program is more reliable and components have been updated to their latest versions.

<!-- Room for more features -->

# Thanks to the contributors

<!-- The following people have helped shape this version of DISMTools by reporting issues or suggesting new features or changes:

[Real-MullaC](https://github.com/Real-MullaC), [bovirus](https://github.com/bovirus), [jekovcar](https://github.com/jekovcar), [rayman95 (MDL Forums)](https://forums.mydigitallife.net/members/rayman95.1153686/)

If you want to appear in this list, you can report issues or suggestions in any channel you prefer (via the [MDL forum thread](https://forums.mydigitallife.net/threads/dismtools.87263/), via the [GitHub repository](https://github.com/CodingWonders/DISMTools), or via any announcements on the [DISMTools subreddit](https://reddit.com/r/DISMTools) or on the [Windows](https://reddit.com/r/Windows), [Windows11](https://reddit.com/r/Windows11) and [Windows10](https://reddit.com/r/Windows10) subreddits (as comments)) or submit new code changes (read the [contribution guidelines](https://github.com/CodingWonders/DISMTools/blob/stable/CONTRIBUTING.md) for more information). -->

To contribute to the software, you can report issues or suggestions in any channel you prefer (via the [MDL forum thread](https://forums.mydigitallife.net/threads/dismtools.87263/), via the [GitHub repository](https://github.com/CodingWonders/DISMTools), or via any announcements on the [DISMTools subreddit](https://reddit.com/r/DISMTools) or on the [Windows](https://reddit.com/r/Windows), [Windows11](https://reddit.com/r/Windows11) and [Windows10](https://reddit.com/r/Windows10) subreddits (as comments)) or submit new code changes (read the [contribution guidelines](https://github.com/CodingWonders/DISMTools/blob/stable/CONTRIBUTING.md) for more information).