# Getting started with Windows servicing

## Context

In 2007, Microsoft introduced Windows Vista, which would make lots of changes to the way it would be deployed to systems. The Windows Imaging format (WIM for short) made installation and management faster and easier, since WIM files would contain an entire Windows installation; as opposed to the old method of copying files from installation media.

With Windows Vista, Microsoft also introduced the Automated Installation Kit (AIK), which contains the deployment tools necessary for that operating system. Tools, such as ImageX (deploys images), Package Manager (deploys packages), IntlCfg (configures regional settings) or more; were included with this kit. However, Microsoft wanted to create a solution that would streamline the deployment process.

Their answer was the **Deployment Image Servicing and Management** (DISM) tool, which does every action performed by the aforementioned utilities in a single command-line program. DISM was released alongside Windows 7, and has been improved since; with the addition of the API, PowerShell cmdlets and more.

Nowadays, if you want to manage Windows images, DISM is one tool to master.

## Interfaces

A couple of DISM graphical user interfaces have been developed to simplify tasks with DISM. The most well-known tool is [NTLite](https://ntlite.com), which allows you to integrate packages, features and updates; and allows for unattended installations.

Open-source alternatives are also available, such as:

- MSMG Toolkit
- [DISM GUI](https://github.com/mikecel79/DISMGUI)
- [DISM++](https://github.com/Chuyu-Team/Dism-Multi-language)

And, since you're browsing this site, **DISMTools** is another new alternative.

## Useful resources

- [DISM command-line help](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/deployment-image-servicing-and-management--dism--command-line-options)