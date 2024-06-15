# Release highlights

This new version of DISMTools comes with new features that enhance image management and servicing tasks. Here are some of its key changes.

If you want to take a look at everything that has changed though, check out the [release notes page](https://github.com/CodingWonders/DISMTools/releases/latest) for more information.

## Quickly test your Windows images

With the new ISO creation tools, you can test your Windows images quickly and easily by simulating a deployment to a virtual machine (VM) or a system that you may have lying around. This will let you verify everything is good with your Windows image before moving on to larger deployments or to further customizations.

<p align="center">
	<img src="../../res/whats_new/WhatsNew_1.png" />
</p>

<!-- This will also turn that system into a guinea pig. -->

[Check it out](../../img_tasks/tools/isocreator)

## Search through items quickly

The new search capabilities in the information dialogs of DISMTools 0.5 let you get the results that **you want** out of the rest, which may not be interesting for you.

Simply type your query into the search box and you'll then get the results you wanted.

<p align="center">
	<img src="../../res/whats_new/WhatsNew_2.png" />
</p>

[Learn more](../../img_tasks/info/infodlgs)

## Improvements in AppX addition

This new release improves the AppX addition technologies, supporting new application types and giving you more information.

AppX addition now supports encrypted application packages during the management of active installations, and the downloader for App Installer (`.appinstaller`) packages now reports more information regarding the transfer, like the download speed or the download URL. The downloader now reports download errors as well.

<p align="center">
	<img src="../../res/whats_new/WhatsNew_3.png" />
</p>

- [Learn more about encrypted application support](../../img_tasks/appx/add_provisionedappxpackage)
- [Learn more about App Installer files](../../img_tasks/appx/appx)

<!-- Room for more features -->

# Thanks to the contributors

The following people have helped shape this version of DISMTools by reporting issues or suggesting new features or changes:

- [pm67310](https://forums.mydigitallife.net/members/pm67310.238741/) for spotting an issue with AppX package addition,
- [Fraaaaaunimib](https://github.com/Fraaaaaunimib) for spotting issues with the program and custom themes,
- [CodenameFlux](https://reddit.com/u/CodenameFlux) for spotting a CSS layout issue in the Help documentation and suggesting a change in the log view font and said documentation contents,
- [arielsil](https://github.com/arielsil) for spotting an issue in the AppX package information dialog,
- [AnubyteCode](https://github.com/AnubyteCode) for spotting issues regarding DISM component listings,
- [liliactr](https://forums.mydigitallife.net/members/liliactr.89713/) for spotting splash screen issues, and
- [Xhib-ba](https://github.com/Xhib-ba) for spotting issues with DISM operations and deployed images

If you want to appear in this list, you can report issues or suggestions in any channel you prefer (via the [MDL forum thread](https://forums.mydigitallife.net/threads/dismtools.87263/), via the [GitHub repository](https://github.com/CodingWonders/DISMTools), or via any announcements on the [DISMTools subreddit](https://reddit.com/r/DISMTools) or on the [Windows](https://reddit.com/r/Windows), [Windows11](https://reddit.com/r/Windows11) and [Windows10](https://reddit.com/r/Windows10) subreddits (as comments)) or submit new code changes (read the [contribution guidelines](https://github.com/CodingWonders/DISMTools/blob/stable/CONTRIBUTING.md) for more information).