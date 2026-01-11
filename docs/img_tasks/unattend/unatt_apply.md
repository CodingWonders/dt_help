# Applying unattended answer files

<p align="center">
    <img src="../../res/img_tasks/unattend/unatt_apply/apply_task.png" />
</p>

With the application task you can easily apply your unattended answer files to your Windows images.

*This task is available in DISMTools 0.5.1 and later*

## Usage

1. Specify the unattended answer file to apply
2. Click OK

## Applying unattended answer files with the ISO creation tools

You can also copy your unattended answer file to a test ISO using the ISO creator. Simply check the "Unattended answer file" option and specify an answer file:

<p align="center">
    <img src="../../res/img_tasks/unattend/unatt_apply/apply_isocreate.png" />
</p>

Then, after installing the operating system and performing serviceability tests, the Operatins System installer will apply your unattended answer file. Make sure that you leave the medium containing the answer file, or it may not be fully applied.