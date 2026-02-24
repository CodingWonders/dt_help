# Driver information

<p align="center">
    <img src="../../res/img_tasks/info/drv_info.png" />
</p>

With DISMTools you can get the information about installed drivers, or about driver files that you want to add or are interested in learning more about. This supports Windows images and installations of every type.

*This action is supported on DISMTools 0.3.1 and newer.*

## Usage

- When launching the dialog for the first time in the execution of the program, you'll see the main menu (shown in the screenshot above). From here you can access one of the 2 information modes by clicking its respective link:

    - **I want to get information about the installed drivers in the image** opens the installed driver view. All installed drivers of the image or installation are shown in the list on the left side. To get information about an installed driver, **select it from the list**. You'll then see its information on the right

    <p align="center">
        <img src="../../res/img_tasks/info/get_instdrvinfo.png" />
    </p>

    - **I want to get information about driver files** opens the driver file view. In this mode, **you have to specify the drivers and add them to the list**, which you can do by specifying them from the file picker, or by dropping them from an **elevated** program. If the program successfully detected information about a driver file, you'll be able to see its information by selecting it. Otherwise, the entry is automatically removed

    <p align="center">
        <img src="../../res/img_tasks/info/get_drvfileinfo.png" />
    </p>

- You can go back to the main screen by clicking the link on the top left

**NOTE:** the amount of installed drivers that are listed is determined by the background process settings. By default, drivers that come with the Windows distribution aren't listed, to decrease the time background processes take when getting driver information. The program will give you the option to configure these processes to detect all drivers.

## Going through hardware targets

A driver package (file) may target multiple devices. Thus, knowing more about a specific target may take a long time and be more complicated.

When that is the case, DISMTools lets you easily go through all targets thanks to the controls on the top.

<p align="center">
    <img src="../../res/img_tasks/info/drvpkg_hw_target_controls.png" />
</p>

The controls do the following:

- The Next button goes to the next hardware target. This button is disabled when you get to the last hardware target
- The Previous button goes to the previous hardware target. This button is disabled when you get to the first hardware target
- The Jump button lets you jump to a specific hardware target

<p align="center">
    <img src="https://github.com/CodingWonders/DISMTools/assets/101426328/8da4493d-fabe-49db-97f2-e075cb10b79e" />
</p>

## Saving this information

You can save this information to a report file by clicking the Save button on the bottom right and specifying a target file. Do note that this option is disabled in the driver file view if no drivers were specified.

Also note that, if you have background processes configured to not detect all drivers, you will be asked if you want to save the information of all of them.

## Search filters

DISMTools 0.5 introduced search filters and functionality to search through installed drivers. When performing your search queries, you can use the following filters to specify where you want to search, depending on which version of DISMTools you are using:

| Filter               | Description                                           | Version introduced |
|----------------------|-------------------------------------------------------|--------------------|
| `og:`                | Search through the original file names of the drivers | 0.5                |
| `prov:`              | Filter by the provider name of a driver               | 0.7.3 Preview 2    |
| `cn:`, `classname:`  | Filter by the class name of a driver                  | 0.7.3 Preview 2    |
| `inbox:`, `noinbox:` | Filter by driver inbox status                         | 0.7.3 Preview 2    |
| `bc:`, `nobc:`       | Filter by driver boot critical status                 | 0.7.3 Preview 2    |
| `date:`              | Filter by driver release date                         | 0.7.3 Preview 4    |
| `sig:`, `nosig:`     | Filter by driver signature status                     | 0.7.3 Preview 4    |

When filtering drivers by *date*, you have to use one of the following PowerShell-like sub-operators in this format:

```
date:<sub-operator>[comparer]-<field>
```

| Sub-operator           | Description                                                            |
|------------------------|------------------------------------------------------------------------|
| `eq[comparer]-<field>` | Search for drivers released in the specified `<field>` value           |
| `ne[comparer]-<field>` | Search for drivers not released in the specified `<field>` value       |
| `lt[comparer]-<field>` | Search for drivers released before the specified `<field>` value       |
| `le[comparer]-<field>` | Search for drivers released before or on the specified `<field>` value |
| `gt[comparer]-<field>` | Search for drivers released after the specified `<field>` value        |
| `ge[comparer]-<field>` | Search for drivers released after or on the specified `<field>` value  |

The `[comparer]` value can be one of the following:

- `y` to compare by year
- `m` to compare by month
- No value to compare by date

When comparing by date, the field value has to be in European format (*dd/MM/yyyy*), but you can use shorter variants of that format. Some examples of driver search queries are the following:

<!-- sorry Americans for not using your date format -->

| Task                                                                                                        | Query                                       |
|-------------------------------------------------------------------------------------------------------------|---------------------------------------------|
| Show installed drivers with original file names that contain "iaStor" (*Intel RST/VMD storage controllers*) | `og:iaStor`                                 |
| Show installed drivers provided by NVIDIA                                                                   | `prov:nvidia`                               |
| Show installed SCSI adapters and other storage controllers                                                  | `cn:scsiadapter` or `classname:scsiadapter` |
| Show installed drivers released before 2020                                                                 | `date:lt-01/01/2020` or `date:lty-2020`     |
| Show installed drivers released in the month of September                                                   | `date:eqm-9`                                |

## Related content

- [Image information dialogs](../info/infodlgs.md)