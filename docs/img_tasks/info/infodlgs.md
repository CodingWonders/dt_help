# Information dialogs

<p align="center">
    <img src="../../res/img_tasks/info/info_dlgs.png" />
</p>

Like their names suggest, information dialogs let you easily get specific information from a Windows image or installation with powerful and easy to use interfaces.

*The overall action is supported on DISMTools 0.3.1 and newer.*

## Available dialogs

The following dialogs let you get specific information from a Windows image or installation:

| Dialog | Purpose | Remarks |
|:--|:--:|:--|
| [Image information](./img_info.md) | Lets you get the information of any image file | <p align="center">-</p> |
| [Package information](./pkg_info.md) | Lets you get the information of either installed packages or packages you want to add | <ul><li>Capability information can't be obtained on Windows 8.1/Server 2012 R2 hosts</li></ul>|
| [Feature information](./feat_info.md) | Lets you get the information of all features present in a Windows image | <p align="center">-</p> |
| [AppX package information](./appxpkg_info.md) | Lets you get the information of installed AppX packages | <ul><li>This action is only supported on Windows 8 and newer systems</li><li>You can't get information of the AppX packages you want to add</li></ul> |
| [Capability information](./cap_info.md) | Lets you get the information of all capabilities present in a Windows image | <ul><li>This action is only supported on Windows 10 and newer</li></ul> |
| [Driver information](./drv_info.md) | Lets you get the information of either installed drivers or the driver packages you want to add | <ul><li>The amount of installed drivers depends on the settings of the background processes</li></ul> |
| [Windows PE information](./winpe_info.md) | Lets you get the information of the target path and the scratch space amount on a Windows PE image | <ul><li>This action is only supported on Windows PE images</li></ul> |

## Saving image information

DISMTools 0.3.3 and later let you save this information to a file.

<p align="center">
    <img src="../../res/img_tasks/info/info_save.png" />
</p>

This action will generate an **image information report**, which you can view at any time.

DISMTools 0.4 expands this functionality by showing a preview of the information report after completing the process.

## Searching through this information

DISMTools 0.5 introduces **Search capabilities** to the information dialogs, allowing you to get the results you want more easily.

This search technology uses **linear search**, a method that is easy to implement (code-wise) and fast at returning results.

<!-- Anything is better than Windows Search though! -->

To get started, simply click on the search box text and start typing.

<p align="center">
    <img src="../../res/img_tasks/info/search_example.gif" />
</p>

The following items support this functionality:

- Installed packages
- Features
- Installed AppX packages (only if the extended AppX getter script is not run)
- Capabilities
- Installed drivers

For features and capabilities, you can now use **state filters** with DISMTools 0.6.

## Looking up an item online

DISMTools 0.7.2 and later let you look up a selected item online using your preferred search engine. The following items support this functionality:

- Features
- Capabilities

<p align="center">
    <img src="../../res/img_tasks/info/item_online_lookup.png" />
</p>

You can pick from 5 search engines in Options -> Image operations:

| Search Engine | Available since |
|:--|:--:|
| Google | 0.7.2 |
| Bing | 0.7.2 |
| DuckDuckGo | 0.7.2 |
| Startpage | 0.7.2 |
| Brave Search | 0.7.2 |

Artificial Intelligence (AI) overview features are disabled by default for both Google and Brave Search.

<p align="center">
    <img src="../../res/img_tasks/info/online_lookup_options.png" />
</p>