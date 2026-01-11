# Windows Deployment Services Helper

The WDS Helper allows you to deploy Windows images over the network using Windows Deployment Services (WDS). It is a part of the ISO creation tools and is available in DISMTools 0.7 and later.

## Setting up the WDS server

**NOTE:** this section was previously the continuation of the DHCP server preparation guide in earlier 0.7 previews. This guide assumes that you have already set up a DHCP server. If you haven't, please refer to the [DHCP server preparation guide](./setup.md).

Now that the server can use your switch, we'll need to configure it so that it can work with WDS. To do this, open the WDS management tool, and select your server. Then, right-click it and select "Configure Server":

![Configure Server](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_configure_server.png)

Next, select the mode in which the server will operate. This cannot be changed afterwards without removing the server and reconfiguring it, so make sure that you select the correct mode.

If you have a different server that acts as a Domain Controller (DC) using Active Directory, or if the current server already acts as the DC, leave the first option checked. Otherwise, if you don't have a Domain Controller, or if you just want to tinker with network-based deployment, choose Standalone mode:

![Server Modes](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_server_modes.png)

*For this guide, we'll go with the Standalone mode, since we don't have a domain controller*

Afterwards, select the path in which the remote installation files will be stored. By default, the `RemoteInstall` folder will be stored on the root of the system drive. Change it if it's necessary, but for our case it's fine:

![Remote Install Location](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_server_remoteinstall.png)

The following step is very important, and depends on where you configured the DHCP server. If the WDS server is also the DHCP server, then leave both options checked. Otherwise, only leave the first option checked, and configure DHCP option 60 on the DHCP server. More on these options later in the guide:

![Proxy DHCP](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_server_proxy_dhcp.png)

Finally, you need to configure initial PXE settings to respond to both known and unknown client computers. Additionally, you can choose to require administrator approval for unknown clients. This gives you greater control over which devices can connect and which ones can't. You can modify the initial PXE settings later if you wish:

![Initial PXE Settings](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_server_pxe_initial_settings.png)

After clicking Next, the server will be configured and the WDS service will start. However, you may encounter this problem when trying to start the service:

![WDS Service Startup Error](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_server_startup_error.png)

If this happens, you can try starting the service manually by going here:

![Service Manual Startup](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_manual_start.png)

## Adding the Windows images

Before booting the clients to perform network-based deployments, we'll first need to add the Windows images. Here's how you can do it:

1. Insert or mount the ISO file that was just created, and copy all the WIM files to any folder on your server:

    ![Copy Files](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_copy_images.png)

2. Then, in WDS, go to "(Your Server) -> Boot images", right-click the empty area and select "Add boot image..."

    ![Add Boot Image](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_add_boot_image.png)

3. Next, select the boot image (`boot.wim`) and finish the wizard:

    ![Boot Image Location](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_boot_image_location.png)

4. Afterwards, go to "(Your Server) -> Install Images", right-click the empty area and select "Add install image..."

    ![Add Install Image](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_add_install_image.png)

5. This will require the creation of an image group. Name it however you want, and then specify the install image to add (`install.wim`):

    ![Image Group](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_add_image_group.png)
    
    ![Install Image Location](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_install_image_location.png)

6. The install image may contain more than 1 index. Check the ones that you want to deploy using WDS and finish the wizard. You can also provide custom names and descriptions for each of the indexes when deploying them through the network:

    ![Indexes](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_install_image_indexes.png)
    
Finally, you should have this setup:

![Image Setup](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_final_image_config.png)

You can now start the PXE clients. In the server, you also need to start the server component of the WDS Helper. To do this, right-click `wdshelper_server.ps1` in `<Drive Root>\pxehelpers\wds`, and select "Run with PowerShell"

![WDSH Server Startup](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wdsh_server_startup.png)

### Beginning installation via PXE

If you followed each step right, you should now see a screen like the following one:

![WDS Startup](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wds_startup.png)

If so, press <kbd>ENTER</kbd> now and wait for the DISMTools PE to start up. Once it starts up, select option 2 for network installation:

![DT PE Network](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/dt_pe_netinstall.png)

Eventually, you'll arrive at this screen. Provide the server IP address, the port to which the server is listening (usually port 8080), the name of the user that's hosting the images (in most cases, `Administrator`), and the password:

![WDSHC AuthInfo](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wdsh_client_authinfo.png)

Choose your image from the list that will then appear, and the group it's in; and press ENTER:

![WDSHC Install Images](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wdsh_client_install_images.png)

After preparing the deployment of the image file, configure your disks accordingly:

![WDSHC Disk Configuration](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wdsh_client_diskconfig.png)

Then, select the index:

![WDSHC Install Image Index](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wdsh_client_select_image_index.png)

And, finally, wait for the image to be applied:

![WDSHC Applying Image](../../../../../res/img_tasks/tools/isocreator/netinstall/wds/wdsh_client_apply_image.png)