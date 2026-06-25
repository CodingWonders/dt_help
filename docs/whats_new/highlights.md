# Release highlights

This new version of DISMTools comes with new features that enhance image management and servicing tasks. Here are some of its key changes.

If you want to take a look at everything that has changed though, check out the [release notes page](https://github.com/CodingWonders/DISMTools/releases/latest) for more information.

## The PE Helper: configurable and more powerful than ever

DISMTools 0.8 introduces several changes to the PE Helper and its components that make it more configurable to suit your needs. With the introduction of policies, it is much easier to configure the behavior of the DISMTools Preinstallation Environment. There are 10 policies available to you, ranging from keyboard layouts (which you can now set as defaults), to the behavior of the PE Helper when it comes to partition table overrides, to the behavior of PXE Helpers, and more. You can configure these quickly using a convenient UI, and you can even make these permanent by saving them to program configuration.

The PXE Helpers have also been improved. You can now set the default port for the server components, and it is much easier to upload installation images to a WDS server, from both DISMTools and the Autorun application in the disc. Additionally, the WDS Helper Client now supports partition table overrides, similarly to the PE Helper; and now shows you installation images and image groups graphically, making it easier to select the image you want to install.

The Sysprep Preparation Tool has also been improved. With support for `CopyProfile`, you can now make most changes made to the administrator account profile be copied to the default user profile, so that new user profiles will enjoy the same customizations. For example, any settings changed in the File Explorer (such as the launch folder) will be copied to the default user profile. It also supports removing AppX packages that can cause Sysprep to fail from a machine before preparing it.

<p align="center">
  <img src="../res/whats_new/WhatsNew_1.png">
</p>

## Unattended answer file creation: now super-powered

Unattended answer file features have seen several, and major, improvements with version 0.8.

When joining domains, you can now pick user account objects that are not necessarily in organizational units. But, when they are, you will also see them sorted alphabetically. More account checks have been added, mainly to detect those that don't require a password. And, to test domain name resolution, you can quickly invoke `nslookup` using your provided domain suffix.

Moving on to starter scripts, there are **more than 25 starter scripts available to you**. You can also create your starter scripts using your Visual Basic scripts or JScript files, if you still depend on said scripts, and you can do so more comfortably with the new functionality in the Starter Script Editor, such as dark mode support. If one script needs to run before or after a set of scripts, you can quickly change the order of execution to suit your needs.

Next, when creating local user accounts, you can now configure their display names separately. You should use a custom display name when you have an account whose name contains either spaces or special characters, to avoid issues with certain programs or scripts and environment variables, and potentially more issues. For example, for a user named *John Doe* you can use an account name of *johndoe* and use the former name as the display name.

Finally, when applying unattended answer files, you now have control over whether to copy them to the image's Sysprep directory.

<p align="center">
  <img src="../res/whats_new/WhatsNew_2.png">
</p>

Learn more about the improved answer file features:

- [Domain join](../img_tasks/unattend/unatt_create.md#active-directory-domain-services-domain-join)
- [Starter scripts](../img_tasks/unattend/unatt_create.md#starter-script-reference)

## Work more comfortably with Windows images

DISMTools 0.8 introduces several improvements to core Windows image management flows that make working with images more comfortable.

With the information filter assistants, you can search information about Windows images much more easily. These assistants are available in the feature, capability, and driver information dialogs; and are there to help you quickly find the information you are looking for. Need to filter drivers by class name? You are just a few clicks away from doing that. Want to find a specific set of enabled features with a specific name? You can do that too.

Several parts of the program have been improved in terms of performance. You can now load and switch between projects and modes much faster. Saving service changes is also much faster, and saving information now happens asynchronously, giving you a smoother experience.

You can now save system service information to reports similar to the ones you can save for images. You can also mark services for deletion (*though don't go mad and delete every service. Don't*).

A major improvement is the support for **Full Flash Utility (FFU)** files, as another entry in sector-based Windows images, suitable for both desktop and mobile system provisioning (*though only desktop provisioning is supported as mobile provisioning is for Windows phones*). Variants of popular tasks, such as applying images or capturing images, have been introduced to support FFU files, and the program can now also show you information about them (such as the physical disk layout); giving you the edge. A new task has also been introduced to optimize Windows images, and also has a variant for FFU files.

Need to export certain drivers from an active installation? You can now export drivers using a class name filter. Class name filter selectors also detect third-party classes defined by drivers. For example, if you want to export [NPU](https://en.wikipedia.org/wiki/Neural_processing_unit) and compute accelerator devices, you can now do that by filtering for the *ComputeAccelerator* class. Finally, exporting and viewing information about drivers now works with Windows 7 images.

<p align="center">
  <img src="../res/whats_new/WhatsNew_3.png">
</p>

## Overall refinements

This release also focuses on refining existing tasks and functionality to improve the user experience. For example, the program is more reliable and components have been updated to their latest versions.

<!-- Room for more features -->

# Thanks to the contributors

The following people have helped shape this version of DISMTools by reporting issues or suggesting new features or changes:

[TackleBarry80](https://github.com/TackleBarry80), [Dede333](https://github.com/Dede333), [charlezmmonroe-byte](https://github.com/charlezmmonroe-byte)

To contribute to the software, you can report issues or suggestions in any channel you prefer (via the [MDL forum thread](https://forums.mydigitallife.net/threads/dismtools.87263/), via the [GitHub repository](https://github.com/CodingWonders/DISMTools), or via any announcements on the [DISMTools subreddit](https://reddit.com/r/DISMTools) or on the [Windows](https://reddit.com/r/Windows), [Windows11](https://reddit.com/r/Windows11) and [Windows10](https://reddit.com/r/Windows10) subreddits (as comments)) or submit new code changes (read the [contribution guidelines](https://github.com/CodingWonders/DISMTools/blob/stable/CONTRIBUTING.md) for more information).