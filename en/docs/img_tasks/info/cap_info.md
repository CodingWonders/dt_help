# Capability information

<p align="center">
    <img src="../../../res/img_tasks/info/cap_info.png" />
</p>

With DISMTools you can get the information about the capabilities present in Windows images and installations of every type.

*This action is supported on DISMTools 0.3.1 and newer.*

**NOTE:** this action is not supported on Windows images and installations earlier than Windows 10 or Server 2016

## Usage

- When no capabilities are selected or when the dialog is launched for the first time in the execution of the program, you'll only see brief information about all capabilities, which includes the capability identity and its state
- To get information about a specific capability, **select it from the list**. You'll then see that information on the right

## Information regarding download and install sizes

In DISMTools versions from the 0.3 series that support this action (0.3.1-0.3.3) have an issue where the download and install sizes could overflow, returning negative values. This issue is caused by the managed DISM API library. 

DISMTools 0.4 is not affected by this issue due to it having an updated version of that library that fixes this issue.

## Related content

- [Image information dialogs](../info/infodlgs.md)