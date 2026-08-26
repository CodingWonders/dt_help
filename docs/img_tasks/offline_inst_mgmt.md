# Offline installation management mode

DISMTools 0.4 and later let you manage installations in any partition (referred to as an "offline installation") using the same interface you are used to when managing standard projects and Windows images.

<p align="center">
	<img src="../res/img_tasks/offline_inst_mgmt/offline_inst_mgmt.png" />
</p>

## Accessing this mode

You can access this mode in 2 ways: by clicking "Manage offline installation" in the home screen or in the File menu.

<p align="center">
	<td>
		<tr>
			<img src="../res/img_tasks/offline_inst_mgmt/off_inst_mgmt_link.png" />
		</tr>
		<tr>
			<img src="../res/img_tasks/offline_inst_mgmt/off_inst_mgmt_menu_entry.png" />
		</tr>
	</td>
</p>

Then, you have to choose the disk containing the Windows installation you want to manage:

<p align="center">
	<img src="../res/img_tasks/offline_inst_mgmt/off_inst_mgmt_choose_disk.png" />
</p>

### Unsupported drives

You can't perform management of an installation on a drive if it meets at least one criterion out of the following:

- The drive contains an installation of Windows Vista or an earlier version of Windows
- The drive containing the installation is not formatted as NTFS
- The drive containing the installation is mounted with read-only privileges

## BitLocker volume support

DISMTools can detect if a volume connected to the system is encrypted with BitLocker. You will see "BITLOCKER" in the drive format field on all volumes that are encrypted and locked. To continue, you will need to provide the numerical password:

<p align="center">
	<img src="../res/img_tasks/offline_inst_mgmt/off_inst_mgmt_bitlocker.png" />
</p>

After an installation in an encrypted volume has been managed, the volume will be locked again.

!!! note

	You can prevent DISMTools from locking BitLocker volumes after leaving offline installation management from Options > Image operations

## Differences with standard project management

There are some differences between managing an offline installation and a standard project, which will be mentioned below:

- You can't save in the offline installation management mode, because all commit operations are disabled