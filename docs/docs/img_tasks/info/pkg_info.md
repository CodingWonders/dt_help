# Package information

<p align="center">
    <img src="../../../res/img_tasks/info/pkg_info.png" />
</p>

With DISMTools you can get the information about installed packages, or about package files that you want to add or are interested in learning more about. This supports Windows images and installations of every type.

*This action is supported on DISMTools 0.3.1 and newer.*

**NOTE:** capability information can't be gathered on Windows versions earlier than Windows 10 or Server 2016

## Usage

- When launching the dialog for the first time in the execution of the program, you'll see the main menu (shown in the screenshot above). From here you can access one of the 2 information modes by clicking its respective link:

    - **I want to get information about the installed packages in the image** opens the installed package view. All installed packages of the image or installation are shown in the list on the left side. To get information about an installed package, **select it from the list**. You'll then see its information on the right

    <p align="center">
        <img src="../../../res/img_tasks/info/get_instpkginfo.png" />
    </p>

    - **I want to get information about package files** opens the package file view. In this mode, **you have to specify the packages and add them to the list**, which you can do by specifying them from the file picker, or by dropping them from an **elevated** program. If the program successfully detected information about a package file, you'll be able to see its information by selecting it. Otherwise, the entry is automatically removed

    <p align="center">
        <img src="../../../res/img_tasks/info/get_pkgfileinfo.png" />
    </p>

- You can go back to the main screen by clicking the link on the top left

## Saving this information

You can save this information to a report file by clicking the Save button on the bottom right and specifying a target file. Do note that this option is disabled in the package file view if no packages were specified.

## Questions

- **Q: Why can't I drop files from a normal program?**
- **A:** this is a common issue where you can't drop content from a non-elevated program to an elevated program. The workaround is to run the program you're dropping the content from as an administrator. If you opened the program from the Run dialog, you can easily launch it as Admin by holding the CTRL + Shift keys and pressing Enter

## Related content

- [Image information dialogs](../info/infodlgs.md)