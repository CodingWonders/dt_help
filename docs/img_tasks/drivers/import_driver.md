# Importing drivers

<p align="center">
	<img src="../../res/img_tasks/drivers/import_driver.png" />
</p>

With DISMTools you can easily import all third-party drivers of a Windows image to another image. This guarantees that the resulting image will have the same hardware compatibility as the source image. This action can be accessed by clicking Commands > Drivers > Import driver packages...

## Target OS support

This action is supported on the following platforms:

| Platform | Supported? |
|:--:|:--:|
| Windows 7/Server 2008 R2 | ✔ |
| Windows 8/Server 2012 | ✔ |
| Windows 8.1/Server 2012 R2 | ✔ |
| Windows 10/Server 2016/2019/2022 | ✔ |
| Windows 11/Server 2025 | ✔ |

<i>This action is supported on DISMTools 0.4.1 and newer</i>

## Usage

1. Specify the source from which to export the drivers:

	- **Image file** will import all third-party drivers of another image. You will need to specify the source image, which you can pick from the list of mounted images

    <p align="center">
        <img src="../../res/img_tasks/drivers/import_driver_winimage.png" />
    </p>
	
	- **Online installation** will import all third-party drivers of your active installation

    <p align="center">
        <img src="../../res/img_tasks/drivers/import_driver_active.png" />
    </p>
	
	- **Offline installation** will import all third-party drivers of the desired deployed image. Simply specify the source drive

    <p align="center">
        <img src="../../res/img_tasks/drivers/import_driver_deployed.png" />
    </p>
	
2. Click OK after you've made your selection

## Remarks

- Once drivers have been imported, the target image **should not be used** on computers other than the computer with the drivers of the source image, **unless they are removed**