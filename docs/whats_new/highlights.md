# Release highlights

This new version of DISMTools comes with new features that enhance image management and servicing tasks. Here are some of its key changes.

If you want to take a look at everything that has changed though, check out the [release notes page](https://github.com/CodingWonders/DISMTools/releases/latest) for more information.

## The PE Helper: do more at once

DISMTools 0.8.2 offers new functionality to the PE Helper. Rollback environments are now created by HotInstall and the Sysprep Preparation Tool, improving the reliability of reverting boot configuration changes. The Sysprep Preparation Tool has also seen some visual improvements and now clears the Windows Update queue and clears BITS transfers.

The ISO creation features, in addition to supporting multiple concurrent ISO creation, now allow you to add multiple Windows images (in both WIM and ESD formats) to your ISO file. You can also recall other ISO creation jobs by double-clicking them in the list of ISO creation jobs.

Uploading images to WDS servers has also seen reliability improvements. All images are now supported. Go ahead and upload your Windows images there!

## Work more comfortably with Windows images

DISMTools 0.8.2 introduces several improvements to core Windows image management flows that make working with images more comfortable.

There are cases where you may want services in an image to work in Safe Mode, such as the Windows Installer service, for removing a specific MSI file. You can now configure services to start in Safe Mode from the Service Manager, as well as any dependencies. Speaking of dependencies and dependents, the Service Manager now allows you to visualize service relationships in a diagram, which can be exported as an image or a Mermaid diagram.

Downloading items from DISMTools, such as when adding App Installer packages, is now smarter, detecting if your network connection is metered and asking you if you want to continue with the download.

Feature sources are used more intelligently now, now being only required when a feature needs it for installation.

## Overall refinements

This release also focuses on refining existing tasks and functionality to improve the user experience. For example, the program is more reliable and components have been updated to their latest versions.

<!-- Room for more features -->

## Thanks to the contributors

The following people have helped shape this version of DISMTools by reporting issues or suggesting new features or changes:

[MinDeaDBlood](https://github.com/MinDeaDBlood)

To contribute to the software, you can report issues or suggestions in any channel you prefer (via the [MDL forum thread](https://forums.mydigitallife.net/threads/dismtools.87263/), via the [GitHub repository](https://github.com/CodingWonders/DISMTools), or via any announcements on the [DISMTools subreddit](https://reddit.com/r/DISMTools) or on the [Windows](https://reddit.com/r/Windows), [Windows11](https://reddit.com/r/Windows11) and [Windows10](https://reddit.com/r/Windows10) subreddits (as comments)) or submit new code changes (read the [contribution guidelines](https://github.com/CodingWonders/DISMTools/blob/stable/CONTRIBUTING.md) for more information).