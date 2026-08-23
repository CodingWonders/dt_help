# AppX package information

<p align="center">
    <img src="../../res/img_tasks/info/appxpkg_info.png" />
</p>

With DISMTools you can get the information about the installed AppX packages in Windows images and installations of every type.

*This action is supported on DISMTools 0.3.1 and newer.*

**NOTE:** this action is not supported on Windows images and installations earlier than Windows 8 or Server 2012

## Usage

- When the dialog is launched for the first time in the execution of the program, you'll only see a listing of all AppX packages
- To get information about a specific AppX package, **select it from the list**. You'll then see that information on the right

Do note that the amount of AppX packages that you see in the list depends on the configuration of background processes.

## Store logo asset information

DISMTools tries to detect the main store logo asset when you select an AppX package. Do note that the program makes guesses as to what is the main asset, and those guesses may be incorrect.

If you are given an incorrect store logo asset, please report an issue [here](https://github.com/CodingWonders/DISMTools/issues/new?assignees=CodingWonders&labels=bug&projects=&template=store-logo-asset-preview-issue.md&title=). Do note that you need a GitHub account to report feedback.

## Searching through this information

To find specific AppX packages by name, use the search box.

### Search filters

You can filter AppX package information by registration status by using one of the following filters:

- `regto:anyone` shows all AppX packages that have been registered to, at least, one user
- `regto:noone` shows all AppX packages that have not been registered to any user
- `regto:me` shows all AppX packages that have been registered to the current user
- `regto:<user>` shows all AppX packages that have been registered to a specific user, where `<user>` can be one of the following values:

    - A user name
    - A user's Security Identifier (SID)

!!! note

    Registration filters by user name or SID are only accessible if DISMTools is configured to map registration information to users in a system.

Use the filter assistant, by clicking the wand next to the search box, to easily find the user you want to filter by:

<p align="center">
    <img src="../../res/img_tasks/info/appxpkg_info_regto_modes.png" />
</p>

<p align="center">
    <img src="../../res/img_tasks/info/appxpkg_info_regto_users.png" />
</p>

## Related content

- [Image information dialogs](../info/infodlgs.md)