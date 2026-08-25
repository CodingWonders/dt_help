# Capability information

<p align="center">
    <img src="../../res/img_tasks/info/cap_info.png" />
</p>

With DISMTools you can get the information about the capabilities present in Windows images and installations of every type.

*This action is supported on DISMTools 0.3.1 and newer.*

**NOTE:** this action is not supported on Windows images and installations earlier than Windows 10 or Server 2016

## Usage

- When no capabilities are selected or when the dialog is launched for the first time in the execution of the program, you'll only see brief information about all capabilities, which includes the capability identity and its state
- To get information about a specific capability, **select it from the list**. You'll then see that information on the right

## Additional search functionality

With the state filter functionality introduced in DISMTools 0.6 you can get the information you want based on a capability's state. To filter capabilities by state, **type `state:` and provide one of the following state values**:

- `installed`
- `notpresent`
- `installpending`

To get capabilities in a certain state containing a given name, you need to type the `state` flag after the name.

## Filter assistants

To invoke the capability filter assistant, click the wand next to the search box. Then, select the field you want to filter by, and values, and the program will automatically generate the query for you.

## Related content

- [Image information dialogs](../info/infodlgs.md)