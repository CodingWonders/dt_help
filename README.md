# DISMTools help documentation

This is the in-progress help documentation content for DISMTools, which will be fully available on a future release.

## Contributing, building, and testing

- Requirements: [Python for Windows](https://www.python.org), [MkDocs](https://www.mkdocs.org)

> **NOTE:** be sure to add the Python directory to the PATH environment variable. Python Setup should have an option available. If so, check it

1. Create your fork of this repo and clone it to your system
2. Open the `docs` directory
3. Open a terminal window in that directory and type `mkdocs serve`
4. Go to the IP address shown in the output (for example, localhost:8000)
5. Create your changes and test
6. Once you've done your contributions, create a pull request

## Additional notes

- When adding full-window screenshots, ShareX is recommended and must be configured for window transparency capture. Go to the capture settings and enable such option

    > **NOTE:** ShareX must be run as an administrator

- When adding images to the help content, it's recommended to align it to the center. For that, use this block:

    ```html
    <p align="center">
        <img src="<path_or_url_to_image>" />
    </p>
    ```

- Structure of folders:

    - `cli_tools`: Location for CLI tools that come with DISMTools
    - `getting_started`: Location for documentation files to help you get started, including migration from other tools
    - `img`: Location of the favicon. **Do not modify**
    - `img_tasks`: Location of all image tasks
    - `res`: Location of all resources

- When creating documentation related to an image task, name it like its respective DISM command. For example, the page for adding AppX packages is called `add_provisionedappxpackage.md`

## Related links

- [DISM documentation](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism-reference--deployment-image-servicing-and-management?view=windows-11)