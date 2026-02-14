# Feature information

<p align="center">
    <img src="../../res/img_tasks/info/feat_info.png" />
</p>

With DISMTools you can get the information about the features present in Windows images and installations of every type.

*This action is supported on DISMTools 0.3.1 and newer.*

## Usage

- When no features are selected or when the dialog is launched for the first time in the execution of the program, you'll only see brief information about all features, which includes the feature name and its state
- To get information about a specific feature, **select it from the list**. You'll then see that information on the right

## A better way of viewing custom properties

DISMTools 0.5 introduces a new way of viewing custom properties of features. This new view allows you to better understand the hierarchy of the properties in a tree view.

<p align="center">
    <img src="../../res/img_tasks/info/cprop_viewer.png" />
</p>

## Additional search functionality

With the state filter functionality introduced in DISMTools 0.6 you can get the information you want based on a feature's state. To filter features by state, **type `state:` and provide one of the following state values**:

- `enabled`
- `disabled`
- `enablepending`
- `enablepending`

<p align="center">
	<img src="../../res/img_tasks/info/feat_info_state_filter.gif" />
</p>

To get features in a certain state containing a given name, you need to type the `state` flag after the name:

<p align="center">
    <img src="../../res/img_tasks/info/feat_info_state_filter_example.png" />
</p>

## Related content

- [Image information dialogs](../info/infodlgs.md)